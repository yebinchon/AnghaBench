; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/peak_usb/extr_pcan_usb_core.c_peak_usb_get_ts_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/peak_usb/extr_pcan_usb_core.c_peak_usb_get_ts_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.peak_time_ref = type { i64, i32, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @peak_usb_get_ts_time(%struct.peak_time_ref* %0, i64 %1, i32* %2) #0 {
  %4 = alloca %struct.peak_time_ref*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.peak_time_ref* %0, %struct.peak_time_ref** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.peak_time_ref*, %struct.peak_time_ref** %4, align 8
  %9 = getelementptr inbounds %struct.peak_time_ref, %struct.peak_time_ref* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 8
  %11 = call i64 @ktime_to_ns(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %63

13:                                               ; preds = %3
  %14 = load i64, i64* %5, align 8
  %15 = load %struct.peak_time_ref*, %struct.peak_time_ref** %4, align 8
  %16 = getelementptr inbounds %struct.peak_time_ref, %struct.peak_time_ref* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = sub nsw i64 %14, %17
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %7, align 4
  %20 = load i64, i64* %5, align 8
  %21 = load %struct.peak_time_ref*, %struct.peak_time_ref** %4, align 8
  %22 = getelementptr inbounds %struct.peak_time_ref, %struct.peak_time_ref* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %20, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %13
  %26 = load %struct.peak_time_ref*, %struct.peak_time_ref** %4, align 8
  %27 = getelementptr inbounds %struct.peak_time_ref, %struct.peak_time_ref* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = shl i32 1, %30
  %32 = sub nsw i32 %31, 1
  %33 = load i32, i32* %7, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %25, %13
  %36 = load %struct.peak_time_ref*, %struct.peak_time_ref** %4, align 8
  %37 = getelementptr inbounds %struct.peak_time_ref, %struct.peak_time_ref* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %40, %38
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %7, align 4
  %43 = load %struct.peak_time_ref*, %struct.peak_time_ref** %4, align 8
  %44 = getelementptr inbounds %struct.peak_time_ref, %struct.peak_time_ref* %43, i32 0, i32 2
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %7, align 4
  %49 = mul nsw i32 %48, %47
  store i32 %49, i32* %7, align 4
  %50 = load %struct.peak_time_ref*, %struct.peak_time_ref** %4, align 8
  %51 = getelementptr inbounds %struct.peak_time_ref, %struct.peak_time_ref* %50, i32 0, i32 2
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %7, align 4
  %56 = ashr i32 %55, %54
  store i32 %56, i32* %7, align 4
  %57 = load %struct.peak_time_ref*, %struct.peak_time_ref** %4, align 8
  %58 = getelementptr inbounds %struct.peak_time_ref, %struct.peak_time_ref* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @ktime_add_us(i32 %59, i32 %60)
  %62 = load i32*, i32** %6, align 8
  store i32 %61, i32* %62, align 4
  br label %66

63:                                               ; preds = %3
  %64 = call i32 (...) @ktime_get()
  %65 = load i32*, i32** %6, align 8
  store i32 %64, i32* %65, align 4
  br label %66

66:                                               ; preds = %63, %35
  ret void
}

declare dso_local i64 @ktime_to_ns(i32) #1

declare dso_local i32 @ktime_add_us(i32, i32) #1

declare dso_local i32 @ktime_get(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
