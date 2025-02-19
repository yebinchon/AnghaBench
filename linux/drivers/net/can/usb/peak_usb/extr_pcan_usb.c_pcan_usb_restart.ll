; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/peak_usb/extr_pcan_usb.c_pcan_usb_restart.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/peak_usb/extr_pcan_usb.c_pcan_usb_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcan_usb = type { %struct.peak_usb_device }
%struct.peak_usb_device = type { i32 }
%struct.timer_list = type { i32 }

@restart_timer = common dso_local global i32 0, align 4
@pdev = common dso_local global %struct.pcan_usb* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @pcan_usb_restart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcan_usb_restart(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.pcan_usb*, align 8
  %4 = alloca %struct.peak_usb_device*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.pcan_usb*, %struct.pcan_usb** %3, align 8
  %6 = ptrtoint %struct.pcan_usb* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* @restart_timer, align 4
  %9 = call %struct.pcan_usb* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.pcan_usb* %9, %struct.pcan_usb** %3, align 8
  %10 = load %struct.pcan_usb*, %struct.pcan_usb** %3, align 8
  %11 = getelementptr inbounds %struct.pcan_usb, %struct.pcan_usb* %10, i32 0, i32 0
  store %struct.peak_usb_device* %11, %struct.peak_usb_device** %4, align 8
  %12 = load %struct.peak_usb_device*, %struct.peak_usb_device** %4, align 8
  %13 = call i32 @peak_usb_restart_complete(%struct.peak_usb_device* %12)
  ret void
}

declare dso_local %struct.pcan_usb* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @peak_usb_restart_complete(%struct.peak_usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
