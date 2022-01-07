; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_get_lower_threshold.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_get_lower_threshold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sq_threshold_params = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, %struct.sq_threshold_params*, i64)* @ath6kl_wmi_get_lower_threshold to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ath6kl_wmi_get_lower_threshold(i64 %0, %struct.sq_threshold_params* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.sq_threshold_params*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store %struct.sq_threshold_params* %1, %struct.sq_threshold_params** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.sq_threshold_params*, %struct.sq_threshold_params** %5, align 8
  %10 = getelementptr inbounds %struct.sq_threshold_params, %struct.sq_threshold_params* %9, i32 0, i32 0
  %11 = load i64*, i64** %10, align 8
  %12 = load i64, i64* %6, align 8
  %13 = sub i64 %12, 1
  %14 = getelementptr inbounds i64, i64* %11, i64 %13
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %8, align 8
  store i64 0, i64* %7, align 8
  br label %16

16:                                               ; preds = %37, %3
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* %6, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %40

20:                                               ; preds = %16
  %21 = load i64, i64* %4, align 8
  %22 = load %struct.sq_threshold_params*, %struct.sq_threshold_params** %5, align 8
  %23 = getelementptr inbounds %struct.sq_threshold_params, %struct.sq_threshold_params* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr inbounds i64, i64* %24, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %21, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %20
  %30 = load %struct.sq_threshold_params*, %struct.sq_threshold_params** %5, align 8
  %31 = getelementptr inbounds %struct.sq_threshold_params, %struct.sq_threshold_params* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = load i64, i64* %7, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %8, align 8
  br label %40

36:                                               ; preds = %20
  br label %37

37:                                               ; preds = %36
  %38 = load i64, i64* %7, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %7, align 8
  br label %16

40:                                               ; preds = %29, %16
  %41 = load i64, i64* %8, align 8
  ret i64 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
