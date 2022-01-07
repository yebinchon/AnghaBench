; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-nvm-parse.c_iwl_init_sbands.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-nvm-parse.c_iwl_init_sbands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.iwl_trans = type { %struct.iwl_cfg*, %struct.device* }
%struct.iwl_cfg = type { i32 }
%struct.device = type { i32 }
%struct.iwl_nvm_data = type { i64, i64, %struct.ieee80211_supported_band* }
%struct.ieee80211_supported_band = type { i64, i32, i32, i32, i32* }

@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@iwl_cfg80211_rates = common dso_local global i32* null, align 8
@RATES_24_OFFS = common dso_local global i64 0, align 8
@N_RATES_24 = common dso_local global i32 0, align 4
@iwlwifi_mod_params = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@RATES_52_OFFS = common dso_local global i64 0, align 8
@N_RATES_52 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"NVM: used only %d of %d channels\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_trans*, %struct.iwl_nvm_data*, i8*, i32, i32, i32, i32)* @iwl_init_sbands to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_init_sbands(%struct.iwl_trans* %0, %struct.iwl_nvm_data* %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.iwl_trans*, align 8
  %9 = alloca %struct.iwl_nvm_data*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.device*, align 8
  %16 = alloca %struct.iwl_cfg*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.ieee80211_supported_band*, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %8, align 8
  store %struct.iwl_nvm_data* %1, %struct.iwl_nvm_data** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %20 = load %struct.iwl_trans*, %struct.iwl_trans** %8, align 8
  %21 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %20, i32 0, i32 1
  %22 = load %struct.device*, %struct.device** %21, align 8
  store %struct.device* %22, %struct.device** %15, align 8
  %23 = load %struct.iwl_trans*, %struct.iwl_trans** %8, align 8
  %24 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %23, i32 0, i32 0
  %25 = load %struct.iwl_cfg*, %struct.iwl_cfg** %24, align 8
  store %struct.iwl_cfg* %25, %struct.iwl_cfg** %16, align 8
  store i32 0, i32* %18, align 4
  %26 = load %struct.device*, %struct.device** %15, align 8
  %27 = load %struct.iwl_cfg*, %struct.iwl_cfg** %16, align 8
  %28 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %9, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* %14, align 4
  %32 = call i32 @iwl_init_channel_map(%struct.device* %26, %struct.iwl_cfg* %27, %struct.iwl_nvm_data* %28, i8* %29, i32 %30, i32 %31)
  store i32 %32, i32* %17, align 4
  %33 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %9, align 8
  %34 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %33, i32 0, i32 2
  %35 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %34, align 8
  %36 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %37 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %35, i64 %36
  store %struct.ieee80211_supported_band* %37, %struct.ieee80211_supported_band** %19, align 8
  %38 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %39 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %19, align 8
  %40 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load i32*, i32** @iwl_cfg80211_rates, align 8
  %42 = load i64, i64* @RATES_24_OFFS, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %19, align 8
  %45 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %44, i32 0, i32 4
  store i32* %43, i32** %45, align 8
  %46 = load i32, i32* @N_RATES_24, align 4
  %47 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %19, align 8
  %48 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 8
  %49 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %9, align 8
  %50 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %19, align 8
  %51 = load i32, i32* %17, align 4
  %52 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %53 = call i64 @iwl_init_sband_channels(%struct.iwl_nvm_data* %49, %struct.ieee80211_supported_band* %50, i32 %51, i64 %52)
  %54 = load i32, i32* %18, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %55, %53
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %18, align 4
  %58 = load %struct.iwl_trans*, %struct.iwl_trans** %8, align 8
  %59 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %9, align 8
  %60 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %19, align 8
  %61 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %60, i32 0, i32 2
  %62 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %12, align 4
  %65 = call i32 @iwl_init_ht_hw_capab(%struct.iwl_trans* %58, %struct.iwl_nvm_data* %59, i32* %61, i64 %62, i32 %63, i32 %64)
  %66 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %9, align 8
  %67 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %7
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @iwlwifi_mod_params, i32 0, i32 0), align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %70
  %74 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %19, align 8
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %12, align 4
  %77 = call i32 @iwl_init_he_hw_capab(%struct.ieee80211_supported_band* %74, i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %73, %70, %7
  %79 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %9, align 8
  %80 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %79, i32 0, i32 2
  %81 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %80, align 8
  %82 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %83 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %81, i64 %82
  store %struct.ieee80211_supported_band* %83, %struct.ieee80211_supported_band** %19, align 8
  %84 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %85 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %19, align 8
  %86 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  %87 = load i32*, i32** @iwl_cfg80211_rates, align 8
  %88 = load i64, i64* @RATES_52_OFFS, align 8
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  %90 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %19, align 8
  %91 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %90, i32 0, i32 4
  store i32* %89, i32** %91, align 8
  %92 = load i32, i32* @N_RATES_52, align 4
  %93 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %19, align 8
  %94 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %93, i32 0, i32 3
  store i32 %92, i32* %94, align 8
  %95 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %9, align 8
  %96 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %19, align 8
  %97 = load i32, i32* %17, align 4
  %98 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %99 = call i64 @iwl_init_sband_channels(%struct.iwl_nvm_data* %95, %struct.ieee80211_supported_band* %96, i32 %97, i64 %98)
  %100 = load i32, i32* %18, align 4
  %101 = sext i32 %100 to i64
  %102 = add nsw i64 %101, %99
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %18, align 4
  %104 = load %struct.iwl_trans*, %struct.iwl_trans** %8, align 8
  %105 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %9, align 8
  %106 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %19, align 8
  %107 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %106, i32 0, i32 2
  %108 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %109 = load i32, i32* %11, align 4
  %110 = load i32, i32* %12, align 4
  %111 = call i32 @iwl_init_ht_hw_capab(%struct.iwl_trans* %104, %struct.iwl_nvm_data* %105, i32* %107, i64 %108, i32 %109, i32 %110)
  %112 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %9, align 8
  %113 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %127

116:                                              ; preds = %78
  %117 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @iwlwifi_mod_params, i32 0, i32 1), align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %127, label %119

119:                                              ; preds = %116
  %120 = load %struct.iwl_trans*, %struct.iwl_trans** %8, align 8
  %121 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %9, align 8
  %122 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %19, align 8
  %123 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %122, i32 0, i32 1
  %124 = load i32, i32* %11, align 4
  %125 = load i32, i32* %12, align 4
  %126 = call i32 @iwl_init_vht_hw_capab(%struct.iwl_trans* %120, %struct.iwl_nvm_data* %121, i32* %123, i32 %124, i32 %125)
  br label %127

127:                                              ; preds = %119, %116, %78
  %128 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %9, align 8
  %129 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %140

132:                                              ; preds = %127
  %133 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @iwlwifi_mod_params, i32 0, i32 0), align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %140, label %135

135:                                              ; preds = %132
  %136 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %19, align 8
  %137 = load i32, i32* %11, align 4
  %138 = load i32, i32* %12, align 4
  %139 = call i32 @iwl_init_he_hw_capab(%struct.ieee80211_supported_band* %136, i32 %137, i32 %138)
  br label %140

140:                                              ; preds = %135, %132, %127
  %141 = load i32, i32* %17, align 4
  %142 = load i32, i32* %18, align 4
  %143 = icmp ne i32 %141, %142
  br i1 %143, label %144, label %149

144:                                              ; preds = %140
  %145 = load %struct.device*, %struct.device** %15, align 8
  %146 = load i32, i32* %18, align 4
  %147 = load i32, i32* %17, align 4
  %148 = call i32 @IWL_ERR_DEV(%struct.device* %145, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %146, i32 %147)
  br label %149

149:                                              ; preds = %144, %140
  ret void
}

declare dso_local i32 @iwl_init_channel_map(%struct.device*, %struct.iwl_cfg*, %struct.iwl_nvm_data*, i8*, i32, i32) #1

declare dso_local i64 @iwl_init_sband_channels(%struct.iwl_nvm_data*, %struct.ieee80211_supported_band*, i32, i64) #1

declare dso_local i32 @iwl_init_ht_hw_capab(%struct.iwl_trans*, %struct.iwl_nvm_data*, i32*, i64, i32, i32) #1

declare dso_local i32 @iwl_init_he_hw_capab(%struct.ieee80211_supported_band*, i32, i32) #1

declare dso_local i32 @iwl_init_vht_hw_capab(%struct.iwl_trans*, %struct.iwl_nvm_data*, i32*, i32, i32) #1

declare dso_local i32 @IWL_ERR_DEV(%struct.device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
