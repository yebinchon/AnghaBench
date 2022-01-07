; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/extr_mwl8k.c_mwl8k_add_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/extr_mwl8k.c_mwl8k_add_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwl8k_ampdu_stream = type { i64, i32, i32, %struct.ieee80211_sta* }
%struct.ieee80211_hw = type { i32, %struct.mwl8k_priv* }
%struct.mwl8k_priv = type { %struct.mwl8k_ampdu_stream* }
%struct.ieee80211_sta = type { i32 }

@MWL8K_NUM_AMPDU_STREAMS = common dso_local global i32 0, align 4
@AMPDU_NO_STREAM = common dso_local global i64 0, align 8
@AMPDU_STREAM_NEW = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"Added a new stream for %pM %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mwl8k_ampdu_stream* (%struct.ieee80211_hw*, %struct.ieee80211_sta*, i32)* @mwl8k_add_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mwl8k_ampdu_stream* @mwl8k_add_stream(%struct.ieee80211_hw* %0, %struct.ieee80211_sta* %1, i32 %2) #0 {
  %4 = alloca %struct.mwl8k_ampdu_stream*, align 8
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_sta*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mwl8k_ampdu_stream*, align 8
  %9 = alloca %struct.mwl8k_priv*, align 8
  %10 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %12 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %11, i32 0, i32 1
  %13 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %12, align 8
  store %struct.mwl8k_priv* %13, %struct.mwl8k_priv** %9, align 8
  store i32 0, i32* %10, align 4
  br label %14

14:                                               ; preds = %53, %3
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* @MWL8K_NUM_AMPDU_STREAMS, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %56

18:                                               ; preds = %14
  %19 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %9, align 8
  %20 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %19, i32 0, i32 0
  %21 = load %struct.mwl8k_ampdu_stream*, %struct.mwl8k_ampdu_stream** %20, align 8
  %22 = load i32, i32* %10, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.mwl8k_ampdu_stream, %struct.mwl8k_ampdu_stream* %21, i64 %23
  store %struct.mwl8k_ampdu_stream* %24, %struct.mwl8k_ampdu_stream** %8, align 8
  %25 = load %struct.mwl8k_ampdu_stream*, %struct.mwl8k_ampdu_stream** %8, align 8
  %26 = getelementptr inbounds %struct.mwl8k_ampdu_stream, %struct.mwl8k_ampdu_stream* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @AMPDU_NO_STREAM, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %52

30:                                               ; preds = %18
  %31 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %32 = load %struct.mwl8k_ampdu_stream*, %struct.mwl8k_ampdu_stream** %8, align 8
  %33 = getelementptr inbounds %struct.mwl8k_ampdu_stream, %struct.mwl8k_ampdu_stream* %32, i32 0, i32 3
  store %struct.ieee80211_sta* %31, %struct.ieee80211_sta** %33, align 8
  %34 = load i64, i64* @AMPDU_STREAM_NEW, align 8
  %35 = load %struct.mwl8k_ampdu_stream*, %struct.mwl8k_ampdu_stream** %8, align 8
  %36 = getelementptr inbounds %struct.mwl8k_ampdu_stream, %struct.mwl8k_ampdu_stream* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.mwl8k_ampdu_stream*, %struct.mwl8k_ampdu_stream** %8, align 8
  %39 = getelementptr inbounds %struct.mwl8k_ampdu_stream, %struct.mwl8k_ampdu_stream* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load %struct.mwl8k_ampdu_stream*, %struct.mwl8k_ampdu_stream** %8, align 8
  %42 = getelementptr inbounds %struct.mwl8k_ampdu_stream, %struct.mwl8k_ampdu_stream* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  %43 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %44 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %47 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @wiphy_debug(i32 %45, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %49)
  %51 = load %struct.mwl8k_ampdu_stream*, %struct.mwl8k_ampdu_stream** %8, align 8
  store %struct.mwl8k_ampdu_stream* %51, %struct.mwl8k_ampdu_stream** %4, align 8
  br label %57

52:                                               ; preds = %18
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %10, align 4
  br label %14

56:                                               ; preds = %14
  store %struct.mwl8k_ampdu_stream* null, %struct.mwl8k_ampdu_stream** %4, align 8
  br label %57

57:                                               ; preds = %56, %30
  %58 = load %struct.mwl8k_ampdu_stream*, %struct.mwl8k_ampdu_stream** %4, align 8
  ret %struct.mwl8k_ampdu_stream* %58
}

declare dso_local i32 @wiphy_debug(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
