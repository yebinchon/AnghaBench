; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/peak_usb/extr_pcan_usb_core.c_peak_usb_init_time_ref.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/peak_usb/extr_pcan_usb_core.c_peak_usb_init_time_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.peak_time_ref = type { %struct.peak_usb_adapter* }
%struct.peak_usb_adapter = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @peak_usb_init_time_ref(%struct.peak_time_ref* %0, %struct.peak_usb_adapter* %1) #0 {
  %3 = alloca %struct.peak_time_ref*, align 8
  %4 = alloca %struct.peak_usb_adapter*, align 8
  store %struct.peak_time_ref* %0, %struct.peak_time_ref** %3, align 8
  store %struct.peak_usb_adapter* %1, %struct.peak_usb_adapter** %4, align 8
  %5 = load %struct.peak_time_ref*, %struct.peak_time_ref** %3, align 8
  %6 = icmp ne %struct.peak_time_ref* %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = load %struct.peak_time_ref*, %struct.peak_time_ref** %3, align 8
  %9 = call i32 @memset(%struct.peak_time_ref* %8, i32 0, i32 8)
  %10 = load %struct.peak_usb_adapter*, %struct.peak_usb_adapter** %4, align 8
  %11 = load %struct.peak_time_ref*, %struct.peak_time_ref** %3, align 8
  %12 = getelementptr inbounds %struct.peak_time_ref, %struct.peak_time_ref* %11, i32 0, i32 0
  store %struct.peak_usb_adapter* %10, %struct.peak_usb_adapter** %12, align 8
  br label %13

13:                                               ; preds = %7, %2
  ret void
}

declare dso_local i32 @memset(%struct.peak_time_ref*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
