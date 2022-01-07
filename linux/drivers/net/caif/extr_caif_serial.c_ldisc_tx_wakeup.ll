; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/caif/extr_caif_serial.c_ldisc_tx_wakeup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/caif/extr_caif_serial.c_ldisc_tx_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.ser_device* }
%struct.ser_device = type { %struct.tty_struct* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @ldisc_tx_wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ldisc_tx_wakeup(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.ser_device*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %4 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %5 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %4, i32 0, i32 0
  %6 = load %struct.ser_device*, %struct.ser_device** %5, align 8
  store %struct.ser_device* %6, %struct.ser_device** %3, align 8
  %7 = load %struct.ser_device*, %struct.ser_device** %3, align 8
  %8 = icmp eq %struct.ser_device* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @BUG_ON(i32 %9)
  %11 = load %struct.ser_device*, %struct.ser_device** %3, align 8
  %12 = getelementptr inbounds %struct.ser_device, %struct.ser_device* %11, i32 0, i32 0
  %13 = load %struct.tty_struct*, %struct.tty_struct** %12, align 8
  %14 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %15 = icmp ne %struct.tty_struct* %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @WARN_ON(i32 %16)
  %18 = load %struct.ser_device*, %struct.ser_device** %3, align 8
  %19 = call i32 @handle_tx(%struct.ser_device* %18)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @handle_tx(%struct.ser_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
