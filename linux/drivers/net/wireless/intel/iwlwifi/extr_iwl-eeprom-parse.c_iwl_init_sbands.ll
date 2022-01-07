; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-eeprom-parse.c_iwl_init_sbands.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-eeprom-parse.c_iwl_init_sbands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { %struct.device* }
%struct.device = type { i32 }
%struct.iwl_cfg = type { i32 }
%struct.iwl_nvm_data = type { i32, i32, %struct.ieee80211_supported_band* }
%struct.ieee80211_supported_band = type { i64, i32, i32, i32* }

@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@iwl_cfg80211_rates = common dso_local global i32* null, align 8
@RATES_24_OFFS = common dso_local global i64 0, align 8
@N_RATES_24 = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@RATES_52_OFFS = common dso_local global i64 0, align 8
@N_RATES_52 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"EEPROM: used only %d of %d channels\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_trans*, %struct.iwl_cfg*, %struct.iwl_nvm_data*, i32*, i64)* @iwl_init_sbands to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_init_sbands(%struct.iwl_trans* %0, %struct.iwl_cfg* %1, %struct.iwl_nvm_data* %2, i32* %3, i64 %4) #0 {
  %6 = alloca %struct.iwl_trans*, align 8
  %7 = alloca %struct.iwl_cfg*, align 8
  %8 = alloca %struct.iwl_nvm_data*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ieee80211_supported_band*, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %6, align 8
  store %struct.iwl_cfg* %1, %struct.iwl_cfg** %7, align 8
  store %struct.iwl_nvm_data* %2, %struct.iwl_nvm_data** %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 %4, i64* %10, align 8
  %15 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %16 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %15, i32 0, i32 0
  %17 = load %struct.device*, %struct.device** %16, align 8
  store %struct.device* %17, %struct.device** %11, align 8
  %18 = load %struct.device*, %struct.device** %11, align 8
  %19 = load %struct.iwl_cfg*, %struct.iwl_cfg** %7, align 8
  %20 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %8, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = load i64, i64* %10, align 8
  %23 = call i32 @iwl_init_channel_map(%struct.device* %18, %struct.iwl_cfg* %19, %struct.iwl_nvm_data* %20, i32* %21, i64 %22)
  store i32 %23, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %24 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %8, align 8
  %25 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %24, i32 0, i32 2
  %26 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %25, align 8
  %27 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %28 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %26, i64 %27
  store %struct.ieee80211_supported_band* %28, %struct.ieee80211_supported_band** %14, align 8
  %29 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %30 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %14, align 8
  %31 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load i32*, i32** @iwl_cfg80211_rates, align 8
  %33 = load i64, i64* @RATES_24_OFFS, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %14, align 8
  %36 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %35, i32 0, i32 3
  store i32* %34, i32** %36, align 8
  %37 = load i32, i32* @N_RATES_24, align 4
  %38 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %14, align 8
  %39 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %8, align 8
  %41 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %14, align 8
  %42 = load i32, i32* %12, align 4
  %43 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %44 = call i64 @iwl_init_sband_channels(%struct.iwl_nvm_data* %40, %struct.ieee80211_supported_band* %41, i32 %42, i64 %43)
  %45 = load i32, i32* %13, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %44
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %13, align 4
  %49 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %50 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %8, align 8
  %51 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %14, align 8
  %52 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %51, i32 0, i32 1
  %53 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %54 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %8, align 8
  %55 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %8, align 8
  %58 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @iwl_init_ht_hw_capab(%struct.iwl_trans* %49, %struct.iwl_nvm_data* %50, i32* %52, i64 %53, i32 %56, i32 %59)
  %61 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %8, align 8
  %62 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %61, i32 0, i32 2
  %63 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %62, align 8
  %64 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %65 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %63, i64 %64
  store %struct.ieee80211_supported_band* %65, %struct.ieee80211_supported_band** %14, align 8
  %66 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %67 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %14, align 8
  %68 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  %69 = load i32*, i32** @iwl_cfg80211_rates, align 8
  %70 = load i64, i64* @RATES_52_OFFS, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %14, align 8
  %73 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %72, i32 0, i32 3
  store i32* %71, i32** %73, align 8
  %74 = load i32, i32* @N_RATES_52, align 4
  %75 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %14, align 8
  %76 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 4
  %77 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %8, align 8
  %78 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %14, align 8
  %79 = load i32, i32* %12, align 4
  %80 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %81 = call i64 @iwl_init_sband_channels(%struct.iwl_nvm_data* %77, %struct.ieee80211_supported_band* %78, i32 %79, i64 %80)
  %82 = load i32, i32* %13, align 4
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %83, %81
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %13, align 4
  %86 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %87 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %8, align 8
  %88 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %14, align 8
  %89 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %88, i32 0, i32 1
  %90 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %91 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %8, align 8
  %92 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %8, align 8
  %95 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @iwl_init_ht_hw_capab(%struct.iwl_trans* %86, %struct.iwl_nvm_data* %87, i32* %89, i64 %90, i32 %93, i32 %96)
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* %13, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %5
  %102 = load %struct.device*, %struct.device** %11, align 8
  %103 = load i32, i32* %13, align 4
  %104 = load i32, i32* %12, align 4
  %105 = call i32 @IWL_ERR_DEV(%struct.device* %102, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %103, i32 %104)
  br label %106

106:                                              ; preds = %101, %5
  ret void
}

declare dso_local i32 @iwl_init_channel_map(%struct.device*, %struct.iwl_cfg*, %struct.iwl_nvm_data*, i32*, i64) #1

declare dso_local i64 @iwl_init_sband_channels(%struct.iwl_nvm_data*, %struct.ieee80211_supported_band*, i32, i64) #1

declare dso_local i32 @iwl_init_ht_hw_capab(%struct.iwl_trans*, %struct.iwl_nvm_data*, i32*, i64, i32, i32) #1

declare dso_local i32 @IWL_ERR_DEV(%struct.device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
