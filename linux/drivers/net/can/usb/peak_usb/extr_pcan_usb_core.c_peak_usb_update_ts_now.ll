; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/peak_usb/extr_pcan_usb_core.c_peak_usb_update_ts_now.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/peak_usb/extr_pcan_usb_core.c_peak_usb_update_ts_now.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.peak_time_ref = type { i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @peak_usb_update_ts_now(%struct.peak_time_ref* %0, i32 %1) #0 {
  %3 = alloca %struct.peak_time_ref*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.peak_time_ref* %0, %struct.peak_time_ref** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.peak_time_ref*, %struct.peak_time_ref** %3, align 8
  %8 = getelementptr inbounds %struct.peak_time_ref, %struct.peak_time_ref* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 8
  %9 = load %struct.peak_time_ref*, %struct.peak_time_ref** %3, align 8
  %10 = getelementptr inbounds %struct.peak_time_ref, %struct.peak_time_ref* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  %12 = call i64 @ktime_to_ns(i32 %11)
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %45

14:                                               ; preds = %2
  %15 = load %struct.peak_time_ref*, %struct.peak_time_ref** %3, align 8
  %16 = getelementptr inbounds %struct.peak_time_ref, %struct.peak_time_ref* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.peak_time_ref*, %struct.peak_time_ref** %3, align 8
  %19 = getelementptr inbounds %struct.peak_time_ref, %struct.peak_time_ref* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %17, %20
  store i32 %21, i32* %5, align 4
  %22 = load %struct.peak_time_ref*, %struct.peak_time_ref** %3, align 8
  %23 = getelementptr inbounds %struct.peak_time_ref, %struct.peak_time_ref* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.peak_time_ref*, %struct.peak_time_ref** %3, align 8
  %26 = getelementptr inbounds %struct.peak_time_ref, %struct.peak_time_ref* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %14
  %30 = load %struct.peak_time_ref*, %struct.peak_time_ref** %3, align 8
  %31 = getelementptr inbounds %struct.peak_time_ref, %struct.peak_time_ref* %30, i32 0, i32 3
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 1, %34
  %36 = sub nsw i32 %35, 1
  %37 = load i32, i32* %5, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %29, %14
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.peak_time_ref*, %struct.peak_time_ref** %3, align 8
  %42 = getelementptr inbounds %struct.peak_time_ref, %struct.peak_time_ref* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, %40
  store i32 %44, i32* %42, align 8
  br label %45

45:                                               ; preds = %39, %2
  ret void
}

declare dso_local i64 @ktime_to_ns(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
