; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_common.c_ath9k_cmn_update_txpow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_common.c_ath9k_cmn_update_txpow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i64 }
%struct.ath_regulatory = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_cmn_update_txpow(%struct.ath_hw* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca %struct.ath_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.ath_regulatory*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64* %3, i64** %8, align 8
  %10 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %11 = call %struct.ath_regulatory* @ath9k_hw_regulatory(%struct.ath_hw* %10)
  store %struct.ath_regulatory* %11, %struct.ath_regulatory** %9, align 8
  %12 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %13 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %4
  %17 = load %struct.ath_regulatory*, %struct.ath_regulatory** %9, align 8
  %18 = getelementptr inbounds %struct.ath_regulatory, %struct.ath_regulatory* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %7, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @ath9k_hw_set_txpowerlimit(%struct.ath_hw* %23, i64 %24, i32 0)
  br label %26

26:                                               ; preds = %22, %16, %4
  %27 = load %struct.ath_regulatory*, %struct.ath_regulatory** %9, align 8
  %28 = getelementptr inbounds %struct.ath_regulatory, %struct.ath_regulatory* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64*, i64** %8, align 8
  store i64 %29, i64* %30, align 8
  ret void
}

declare dso_local %struct.ath_regulatory* @ath9k_hw_regulatory(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_set_txpowerlimit(%struct.ath_hw*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
