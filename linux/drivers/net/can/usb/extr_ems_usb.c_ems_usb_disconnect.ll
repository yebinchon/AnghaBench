; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_ems_usb.c_ems_usb_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_ems_usb.c_ems_usb_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.ems_usb = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @ems_usb_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ems_usb_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.ems_usb*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %4 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %5 = call %struct.ems_usb* @usb_get_intfdata(%struct.usb_interface* %4)
  store %struct.ems_usb* %5, %struct.ems_usb** %3, align 8
  %6 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %7 = call i32 @usb_set_intfdata(%struct.usb_interface* %6, i32* null)
  %8 = load %struct.ems_usb*, %struct.ems_usb** %3, align 8
  %9 = icmp ne %struct.ems_usb* %8, null
  br i1 %9, label %10, label %33

10:                                               ; preds = %1
  %11 = load %struct.ems_usb*, %struct.ems_usb** %3, align 8
  %12 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @unregister_netdev(i32 %13)
  %15 = load %struct.ems_usb*, %struct.ems_usb** %3, align 8
  %16 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @free_candev(i32 %17)
  %19 = load %struct.ems_usb*, %struct.ems_usb** %3, align 8
  %20 = call i32 @unlink_all_urbs(%struct.ems_usb* %19)
  %21 = load %struct.ems_usb*, %struct.ems_usb** %3, align 8
  %22 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @usb_free_urb(i32 %23)
  %25 = load %struct.ems_usb*, %struct.ems_usb** %3, align 8
  %26 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @kfree(i32 %27)
  %29 = load %struct.ems_usb*, %struct.ems_usb** %3, align 8
  %30 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @kfree(i32 %31)
  br label %33

33:                                               ; preds = %10, %1
  ret void
}

declare dso_local %struct.ems_usb* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @unregister_netdev(i32) #1

declare dso_local i32 @free_candev(i32) #1

declare dso_local i32 @unlink_all_urbs(%struct.ems_usb*) #1

declare dso_local i32 @usb_free_urb(i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
