; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_ushc.c_ushc_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_ushc.c_ushc_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.ushc_data = type { i32, i32, i32, i32, i32, i32, i32 }

@DISCONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @ushc_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ushc_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.ushc_data*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %4 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %5 = call %struct.ushc_data* @usb_get_intfdata(%struct.usb_interface* %4)
  store %struct.ushc_data* %5, %struct.ushc_data** %3, align 8
  %6 = load %struct.ushc_data*, %struct.ushc_data** %3, align 8
  %7 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %6, i32 0, i32 5
  %8 = call i32 @spin_lock_irq(i32* %7)
  %9 = load i32, i32* @DISCONNECTED, align 4
  %10 = load %struct.ushc_data*, %struct.ushc_data** %3, align 8
  %11 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %10, i32 0, i32 6
  %12 = call i32 @set_bit(i32 %9, i32* %11)
  %13 = load %struct.ushc_data*, %struct.ushc_data** %3, align 8
  %14 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %13, i32 0, i32 5
  %15 = call i32 @spin_unlock_irq(i32* %14)
  %16 = load %struct.ushc_data*, %struct.ushc_data** %3, align 8
  %17 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @usb_kill_urb(i32 %18)
  %20 = load %struct.ushc_data*, %struct.ushc_data** %3, align 8
  %21 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @usb_kill_urb(i32 %22)
  %24 = load %struct.ushc_data*, %struct.ushc_data** %3, align 8
  %25 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @usb_kill_urb(i32 %26)
  %28 = load %struct.ushc_data*, %struct.ushc_data** %3, align 8
  %29 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @usb_kill_urb(i32 %30)
  %32 = load %struct.ushc_data*, %struct.ushc_data** %3, align 8
  %33 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @mmc_remove_host(i32 %34)
  %36 = load %struct.ushc_data*, %struct.ushc_data** %3, align 8
  %37 = call i32 @ushc_clean_up(%struct.ushc_data* %36)
  ret void
}

declare dso_local %struct.ushc_data* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @usb_kill_urb(i32) #1

declare dso_local i32 @mmc_remove_host(i32) #1

declare dso_local i32 @ushc_clean_up(%struct.ushc_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
