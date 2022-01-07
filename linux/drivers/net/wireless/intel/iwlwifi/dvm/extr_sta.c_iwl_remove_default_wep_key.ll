; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_sta.c_iwl_remove_default_wep_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_sta.c_iwl_remove_default_wep_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32 }
%struct.iwl_rxon_context = type { i32* }
%struct.ieee80211_key_conf = type { i64 }

@.str = private unnamed_addr constant [34 x i8] c"Removing default WEP key: idx=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Not sending REPLY_WEPKEY command due to RFKILL.\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Remove default WEP key: idx=%d ret=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_remove_default_wep_key(%struct.iwl_priv* %0, %struct.iwl_rxon_context* %1, %struct.ieee80211_key_conf* %2) #0 {
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
  %12 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %13 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %7, align 8
  %14 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_WEP(%struct.iwl_priv* %12, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %15)
  %17 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %6, align 8
  %18 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %7, align 8
  %21 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  %24 = call i32 @memset(i32* %23, i32 0, i32 4)
  %25 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %26 = call i64 @iwl_is_rfkill(%struct.iwl_priv* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %30 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_WEP(%struct.iwl_priv* %29, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %42

31:                                               ; preds = %3
  %32 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %33 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %6, align 8
  %34 = call i32 @iwl_send_static_wepkey_cmd(%struct.iwl_priv* %32, %struct.iwl_rxon_context* %33, i32 1)
  store i32 %34, i32* %8, align 4
  %35 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %36 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %7, align 8
  %37 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_WEP(%struct.iwl_priv* %35, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i64 %38, i32 %39)
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %31, %28
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @IWL_DEBUG_WEP(%struct.iwl_priv*, i8*, ...) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @iwl_is_rfkill(%struct.iwl_priv*) #1

declare dso_local i32 @iwl_send_static_wepkey_cmd(%struct.iwl_priv*, %struct.iwl_rxon_context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
