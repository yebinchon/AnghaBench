; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_base.c_ath5k_get_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_base.c_ath5k_get_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_rate = type { i32 }
%struct.ieee80211_hw = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__** }
%struct.TYPE_4__ = type { %struct.ieee80211_rate* }
%struct.ieee80211_tx_info = type { i64 }
%struct.ath5k_buf = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ieee80211_rate* (%struct.ieee80211_hw*, %struct.ieee80211_tx_info*, %struct.ath5k_buf*, i32)* @ath5k_get_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ieee80211_rate* @ath5k_get_rate(%struct.ieee80211_hw* %0, %struct.ieee80211_tx_info* %1, %struct.ath5k_buf* %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_rate*, align 8
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca %struct.ieee80211_tx_info*, align 8
  %8 = alloca %struct.ath5k_buf*, align 8
  %9 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store %struct.ieee80211_tx_info* %1, %struct.ieee80211_tx_info** %7, align 8
  store %struct.ath5k_buf* %2, %struct.ath5k_buf** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load %struct.ath5k_buf*, %struct.ath5k_buf** %8, align 8
  %11 = getelementptr inbounds %struct.ath5k_buf, %struct.ath5k_buf* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = load i32, i32* %9, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ult i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store %struct.ieee80211_rate* null, %struct.ieee80211_rate** %5, align 8
  br label %42

20:                                               ; preds = %4
  %21 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %22 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %24, align 8
  %26 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %27 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %25, i64 %28
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %31, align 8
  %33 = load %struct.ath5k_buf*, %struct.ath5k_buf** %8, align 8
  %34 = getelementptr inbounds %struct.ath5k_buf, %struct.ath5k_buf* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %32, i64 %40
  store %struct.ieee80211_rate* %41, %struct.ieee80211_rate** %5, align 8
  br label %42

42:                                               ; preds = %20, %19
  %43 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %5, align 8
  ret %struct.ieee80211_rate* %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
