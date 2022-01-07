; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-nvm-parse.c_iwl_init_he_hw_capab.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-nvm-parse.c_iwl_init_he_hw_capab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.ieee80211_supported_band = type { i32, %struct.TYPE_7__* }

@iwl_he_capa = common dso_local global %struct.TYPE_7__* null, align 8
@ANT_AB = common dso_local global i32 0, align 4
@IEEE80211_HE_PHY_CAP1_MIDAMBLE_RX_TX_MAX_NSTS = common dso_local global i32 0, align 4
@IEEE80211_HE_PHY_CAP2_MIDAMBLE_RX_TX_MAX_NSTS = common dso_local global i32 0, align 4
@IEEE80211_HE_PHY_CAP7_MAX_NC_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_supported_band*, i32, i32)* @iwl_init_he_hw_capab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_init_he_hw_capab(%struct.ieee80211_supported_band* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_supported_band*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ieee80211_supported_band* %0, %struct.ieee80211_supported_band** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** @iwl_he_capa, align 8
  %9 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %4, align 8
  %10 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %9, i32 0, i32 1
  store %struct.TYPE_7__* %8, %struct.TYPE_7__** %10, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** @iwl_he_capa, align 8
  %12 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %11)
  %13 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %4, align 8
  %14 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = and i32 %15, %16
  %18 = load i32, i32* @ANT_AB, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %71

20:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %67, %20
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %4, align 8
  %24 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %70

27:                                               ; preds = %21
  %28 = load i32, i32* @IEEE80211_HE_PHY_CAP1_MIDAMBLE_RX_TX_MAX_NSTS, align 4
  %29 = xor i32 %28, -1
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** @iwl_he_capa, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, %29
  store i32 %40, i32* %38, align 4
  %41 = load i32, i32* @IEEE80211_HE_PHY_CAP2_MIDAMBLE_RX_TX_MAX_NSTS, align 4
  %42 = xor i32 %41, -1
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** @iwl_he_capa, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 2
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, %42
  store i32 %53, i32* %51, align 4
  %54 = load i32, i32* @IEEE80211_HE_PHY_CAP7_MAX_NC_MASK, align 4
  %55 = xor i32 %54, -1
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** @iwl_he_capa, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 7
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, %55
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %27
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %7, align 4
  br label %21

70:                                               ; preds = %21
  br label %71

71:                                               ; preds = %70, %3
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
