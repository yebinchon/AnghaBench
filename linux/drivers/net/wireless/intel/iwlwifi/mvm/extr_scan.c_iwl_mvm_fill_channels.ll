; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_scan.c_iwl_mvm_fill_channels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_scan.c_iwl_mvm_fill_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ieee80211_supported_band* }
%struct.ieee80211_supported_band = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, i32*, i32)* @iwl_mvm_fill_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_fill_channels(%struct.iwl_mvm* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_supported_band*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %11 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %13, align 8
  %15 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %16 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %14, i64 %15
  store %struct.ieee80211_supported_band* %16, %struct.ieee80211_supported_band** %7, align 8
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %42, %3
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %20 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %24, %25
  br label %27

27:                                               ; preds = %23, %17
  %28 = phi i1 [ false, %17 ], [ %26, %23 ]
  br i1 %28, label %29, label %47

29:                                               ; preds = %27
  %30 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %31 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  store i32 %37, i32* %41, align 4
  br label %42

42:                                               ; preds = %29
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %9, align 4
  br label %17

47:                                               ; preds = %27
  %48 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %49 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %51, align 8
  %53 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %54 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %52, i64 %53
  store %struct.ieee80211_supported_band* %54, %struct.ieee80211_supported_band** %7, align 8
  store i32 0, i32* %8, align 4
  br label %55

55:                                               ; preds = %80, %47
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %58 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp slt i32 %56, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp slt i32 %62, %63
  br label %65

65:                                               ; preds = %61, %55
  %66 = phi i1 [ false, %55 ], [ %64, %61 ]
  br i1 %66, label %67, label %85

67:                                               ; preds = %65
  %68 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %69 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %68, i32 0, i32 1
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %5, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  store i32 %75, i32* %79, align 4
  br label %80

80:                                               ; preds = %67
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %9, align 4
  br label %55

85:                                               ; preds = %65
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
