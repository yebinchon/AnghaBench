; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_calib.c_ath9k_hw_getchan_noise.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_calib.c_ath9k_hw_getchan_noise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath9k_channel = type { i32 }

@ATH_DEFAULT_NOISE_FLOOR = common dso_local global i64 0, align 8
@ATH9K_NF_CAL_NOISE_THRESH = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ath9k_hw_getchan_noise(%struct.ath_hw* %0, %struct.ath9k_channel* %1, i64 %2) #0 {
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca %struct.ath9k_channel*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %4, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* @ATH_DEFAULT_NOISE_FLOOR, align 8
  store i64 %9, i64* %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %27

12:                                               ; preds = %3
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @ATH9K_NF_CAL_NOISE_THRESH, align 8
  %15 = sub nsw i64 %13, %14
  %16 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %17 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %18 = call i64 @ath9k_hw_get_default_nf(%struct.ath_hw* %16, %struct.ath9k_channel* %17, i32 0)
  %19 = sub nsw i64 %15, %18
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* %8, align 8
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %12
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* %7, align 8
  %25 = add nsw i64 %24, %23
  store i64 %25, i64* %7, align 8
  br label %26

26:                                               ; preds = %22, %12
  br label %27

27:                                               ; preds = %26, %3
  %28 = load i64, i64* %7, align 8
  ret i64 %28
}

declare dso_local i64 @ath9k_hw_get_default_nf(%struct.ath_hw*, %struct.ath9k_channel*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
