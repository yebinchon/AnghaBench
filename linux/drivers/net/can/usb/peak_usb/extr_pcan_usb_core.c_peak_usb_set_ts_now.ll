; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/peak_usb/extr_pcan_usb_core.c_peak_usb_set_ts_now.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/peak_usb/extr_pcan_usb_core.c_peak_usb_set_ts_now.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.peak_time_ref = type { i32, i32, i32, i8*, i64, i8* }

@NSEC_PER_SEC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @peak_usb_set_ts_now(%struct.peak_time_ref* %0, i32 %1) #0 {
  %3 = alloca %struct.peak_time_ref*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.peak_time_ref* %0, %struct.peak_time_ref** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.peak_time_ref*, %struct.peak_time_ref** %3, align 8
  %7 = getelementptr inbounds %struct.peak_time_ref, %struct.peak_time_ref* %6, i32 0, i32 5
  %8 = load i8*, i8** %7, align 8
  %9 = call i64 @ktime_to_ns(i8* %8)
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = call i8* (...) @ktime_get()
  %13 = load %struct.peak_time_ref*, %struct.peak_time_ref** %3, align 8
  %14 = getelementptr inbounds %struct.peak_time_ref, %struct.peak_time_ref* %13, i32 0, i32 5
  store i8* %12, i8** %14, align 8
  %15 = call i8* @ktime_set(i32 0, i32 0)
  %16 = load %struct.peak_time_ref*, %struct.peak_time_ref** %3, align 8
  %17 = getelementptr inbounds %struct.peak_time_ref, %struct.peak_time_ref* %16, i32 0, i32 3
  store i8* %15, i8** %17, align 8
  br label %54

18:                                               ; preds = %2
  %19 = load %struct.peak_time_ref*, %struct.peak_time_ref** %3, align 8
  %20 = getelementptr inbounds %struct.peak_time_ref, %struct.peak_time_ref* %19, i32 0, i32 3
  %21 = load i8*, i8** %20, align 8
  %22 = call i64 @ktime_to_ns(i8* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %46

24:                                               ; preds = %18
  %25 = load %struct.peak_time_ref*, %struct.peak_time_ref** %3, align 8
  %26 = getelementptr inbounds %struct.peak_time_ref, %struct.peak_time_ref* %25, i32 0, i32 3
  %27 = load i8*, i8** %26, align 8
  %28 = load %struct.peak_time_ref*, %struct.peak_time_ref** %3, align 8
  %29 = getelementptr inbounds %struct.peak_time_ref, %struct.peak_time_ref* %28, i32 0, i32 5
  %30 = load i8*, i8** %29, align 8
  %31 = call i8* @ktime_sub(i8* %27, i8* %30)
  store i8* %31, i8** %5, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = call i64 @ktime_to_ns(i8* %32)
  %34 = load i64, i64* @NSEC_PER_SEC, align 8
  %35 = mul i64 4200, %34
  %36 = icmp ugt i64 %33, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %24
  %38 = load %struct.peak_time_ref*, %struct.peak_time_ref** %3, align 8
  %39 = getelementptr inbounds %struct.peak_time_ref, %struct.peak_time_ref* %38, i32 0, i32 3
  %40 = load i8*, i8** %39, align 8
  %41 = load %struct.peak_time_ref*, %struct.peak_time_ref** %3, align 8
  %42 = getelementptr inbounds %struct.peak_time_ref, %struct.peak_time_ref* %41, i32 0, i32 5
  store i8* %40, i8** %42, align 8
  %43 = load %struct.peak_time_ref*, %struct.peak_time_ref** %3, align 8
  %44 = getelementptr inbounds %struct.peak_time_ref, %struct.peak_time_ref* %43, i32 0, i32 4
  store i64 0, i64* %44, align 8
  br label %45

45:                                               ; preds = %37, %24
  br label %46

46:                                               ; preds = %45, %18
  %47 = call i8* (...) @ktime_get()
  %48 = load %struct.peak_time_ref*, %struct.peak_time_ref** %3, align 8
  %49 = getelementptr inbounds %struct.peak_time_ref, %struct.peak_time_ref* %48, i32 0, i32 3
  store i8* %47, i8** %49, align 8
  %50 = load %struct.peak_time_ref*, %struct.peak_time_ref** %3, align 8
  %51 = getelementptr inbounds %struct.peak_time_ref, %struct.peak_time_ref* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 8
  br label %54

54:                                               ; preds = %46, %11
  %55 = load %struct.peak_time_ref*, %struct.peak_time_ref** %3, align 8
  %56 = getelementptr inbounds %struct.peak_time_ref, %struct.peak_time_ref* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.peak_time_ref*, %struct.peak_time_ref** %3, align 8
  %59 = getelementptr inbounds %struct.peak_time_ref, %struct.peak_time_ref* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.peak_time_ref*, %struct.peak_time_ref** %3, align 8
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @peak_usb_update_ts_now(%struct.peak_time_ref* %60, i32 %61)
  ret void
}

declare dso_local i64 @ktime_to_ns(i8*) #1

declare dso_local i8* @ktime_get(...) #1

declare dso_local i8* @ktime_set(i32, i32) #1

declare dso_local i8* @ktime_sub(i8*, i8*) #1

declare dso_local i32 @peak_usb_update_ts_now(%struct.peak_time_ref*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
