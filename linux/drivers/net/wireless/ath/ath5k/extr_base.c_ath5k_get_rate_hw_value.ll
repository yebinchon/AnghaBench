; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_base.c_ath5k_get_rate_hw_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_base.c_ath5k_get_rate_hw_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_tx_info = type { i32 }
%struct.ath5k_buf = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_rate = type { i32, i32 }

@IEEE80211_TX_RC_USE_SHORT_PREAMBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_tx_info*, %struct.ath5k_buf*, i32)* @ath5k_get_rate_hw_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath5k_get_rate_hw_value(%struct.ieee80211_hw* %0, %struct.ieee80211_tx_info* %1, %struct.ath5k_buf* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca %struct.ieee80211_tx_info*, align 8
  %8 = alloca %struct.ath5k_buf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ieee80211_rate*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store %struct.ieee80211_tx_info* %1, %struct.ieee80211_tx_info** %7, align 8
  store %struct.ath5k_buf* %2, %struct.ath5k_buf** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %14 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %15 = load %struct.ath5k_buf*, %struct.ath5k_buf** %8, align 8
  %16 = load i32, i32* %9, align 4
  %17 = call %struct.ieee80211_rate* @ath5k_get_rate(%struct.ieee80211_hw* %13, %struct.ieee80211_tx_info* %14, %struct.ath5k_buf* %15, i32 %16)
  store %struct.ieee80211_rate* %17, %struct.ieee80211_rate** %10, align 8
  %18 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %10, align 8
  %19 = icmp ne %struct.ieee80211_rate* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %45

21:                                               ; preds = %4
  %22 = load %struct.ath5k_buf*, %struct.ath5k_buf** %8, align 8
  %23 = getelementptr inbounds %struct.ath5k_buf, %struct.ath5k_buf* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* @IEEE80211_TX_RC_USE_SHORT_PREAMBLE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %21
  %35 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %10, align 8
  %36 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  br label %42

38:                                               ; preds = %21
  %39 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %10, align 8
  %40 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  br label %42

42:                                               ; preds = %38, %34
  %43 = phi i32 [ %37, %34 ], [ %41, %38 ]
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %42, %20
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local %struct.ieee80211_rate* @ath5k_get_rate(%struct.ieee80211_hw*, %struct.ieee80211_tx_info*, %struct.ath5k_buf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
