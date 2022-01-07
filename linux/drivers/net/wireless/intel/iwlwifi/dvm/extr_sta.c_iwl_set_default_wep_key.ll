; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_sta.c_iwl_set_default_wep_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_sta.c_iwl_set_default_wep_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32 }
%struct.iwl_rxon_context = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.ieee80211_key_conf = type { i64, i64, i32, i32 }

@WEP_KEY_LEN_128 = common dso_local global i64 0, align 8
@WEP_KEY_LEN_64 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"Bad WEP key length %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IWLAGN_HW_KEY_DEFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Set default WEP key: len=%d idx=%d ret=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_set_default_wep_key(%struct.iwl_priv* %0, %struct.iwl_rxon_context* %1, %struct.ieee80211_key_conf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_priv*, align 8
  %6 = alloca %struct.iwl_rxon_context*, align 8
  %7 = alloca %struct.ieee80211_key_conf*, align 8
  %8 = alloca i32, align 4
  store %struct.iwl_priv* %0, %struct.iwl_priv** %5, align 8
  store %struct.iwl_rxon_context* %1, %struct.iwl_rxon_context** %6, align 8
  store %struct.ieee80211_key_conf* %2, %struct.ieee80211_key_conf** %7, align 8
  %9 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %10 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %9, i32 0, i32 0
  %11 = call i32 @lockdep_assert_held(i32* %10)
  %12 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %7, align 8
  %13 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @WEP_KEY_LEN_128, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %31

17:                                               ; preds = %3
  %18 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %7, align 8
  %19 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @WEP_KEY_LEN_64, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %17
  %24 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %25 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %7, align 8
  %26 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 (%struct.iwl_priv*, i8*, i64, ...) @IWL_DEBUG_WEP(%struct.iwl_priv* %24, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %27)
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %73

31:                                               ; preds = %17, %3
  %32 = load i32, i32* @IWLAGN_HW_KEY_DEFAULT, align 4
  %33 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %7, align 8
  %34 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  %35 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %7, align 8
  %36 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %6, align 8
  %39 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %7, align 8
  %42 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i64 %37, i64* %45, align 8
  %46 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %6, align 8
  %47 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %7, align 8
  %50 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %7, align 8
  %55 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %54, i32 0, i32 2
  %56 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %7, align 8
  %57 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @memcpy(i32* %53, i32* %55, i64 %58)
  %60 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %61 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %6, align 8
  %62 = call i32 @iwl_send_static_wepkey_cmd(%struct.iwl_priv* %60, %struct.iwl_rxon_context* %61, i32 0)
  store i32 %62, i32* %8, align 4
  %63 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %64 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %7, align 8
  %65 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %7, align 8
  %68 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = call i32 (%struct.iwl_priv*, i8*, i64, ...) @IWL_DEBUG_WEP(%struct.iwl_priv* %63, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %66, i64 %69, i32 %70)
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %31, %23
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @IWL_DEBUG_WEP(%struct.iwl_priv*, i8*, i64, ...) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @iwl_send_static_wepkey_cmd(%struct.iwl_priv*, %struct.iwl_rxon_context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
