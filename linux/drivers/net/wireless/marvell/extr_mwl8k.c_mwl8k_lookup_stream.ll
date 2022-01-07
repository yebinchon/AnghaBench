; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/extr_mwl8k.c_mwl8k_lookup_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/extr_mwl8k.c_mwl8k_lookup_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwl8k_ampdu_stream = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_hw = type { %struct.mwl8k_priv* }
%struct.mwl8k_priv = type { %struct.mwl8k_ampdu_stream* }

@MWL8K_NUM_AMPDU_STREAMS = common dso_local global i32 0, align 4
@AMPDU_NO_STREAM = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mwl8k_ampdu_stream* (%struct.ieee80211_hw*, i64*, i64)* @mwl8k_lookup_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mwl8k_ampdu_stream* @mwl8k_lookup_stream(%struct.ieee80211_hw* %0, i64* %1, i64 %2) #0 {
  %4 = alloca %struct.mwl8k_ampdu_stream*, align 8
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mwl8k_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mwl8k_ampdu_stream*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %12 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %11, i32 0, i32 0
  %13 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %12, align 8
  store %struct.mwl8k_priv* %13, %struct.mwl8k_priv** %8, align 8
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %50, %3
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @MWL8K_NUM_AMPDU_STREAMS, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %53

18:                                               ; preds = %14
  %19 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %8, align 8
  %20 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %19, i32 0, i32 0
  %21 = load %struct.mwl8k_ampdu_stream*, %struct.mwl8k_ampdu_stream** %20, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.mwl8k_ampdu_stream, %struct.mwl8k_ampdu_stream* %21, i64 %23
  store %struct.mwl8k_ampdu_stream* %24, %struct.mwl8k_ampdu_stream** %10, align 8
  %25 = load %struct.mwl8k_ampdu_stream*, %struct.mwl8k_ampdu_stream** %10, align 8
  %26 = getelementptr inbounds %struct.mwl8k_ampdu_stream, %struct.mwl8k_ampdu_stream* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @AMPDU_NO_STREAM, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %18
  br label %50

31:                                               ; preds = %18
  %32 = load %struct.mwl8k_ampdu_stream*, %struct.mwl8k_ampdu_stream** %10, align 8
  %33 = getelementptr inbounds %struct.mwl8k_ampdu_stream, %struct.mwl8k_ampdu_stream* %32, i32 0, i32 2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i64*, i64** %6, align 8
  %38 = load i32, i32* @ETH_ALEN, align 4
  %39 = call i32 @memcmp(i32 %36, i64* %37, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %31
  %42 = load %struct.mwl8k_ampdu_stream*, %struct.mwl8k_ampdu_stream** %10, align 8
  %43 = getelementptr inbounds %struct.mwl8k_ampdu_stream, %struct.mwl8k_ampdu_stream* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %7, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load %struct.mwl8k_ampdu_stream*, %struct.mwl8k_ampdu_stream** %10, align 8
  store %struct.mwl8k_ampdu_stream* %48, %struct.mwl8k_ampdu_stream** %4, align 8
  br label %54

49:                                               ; preds = %41, %31
  br label %50

50:                                               ; preds = %49, %30
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %9, align 4
  br label %14

53:                                               ; preds = %14
  store %struct.mwl8k_ampdu_stream* null, %struct.mwl8k_ampdu_stream** %4, align 8
  br label %54

54:                                               ; preds = %53, %47
  %55 = load %struct.mwl8k_ampdu_stream*, %struct.mwl8k_ampdu_stream** %4, align 8
  ret %struct.mwl8k_ampdu_stream* %55
}

declare dso_local i32 @memcmp(i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
