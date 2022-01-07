; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_mac80211.c_iwlagn_mac_set_rekey_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_mac80211.c_iwlagn_mac_set_rekey_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.cfg80211_gtk_rekey_data = type { i32, i32, i32 }
%struct.iwl_priv = type { i32, i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ieee80211_vif* }

@iwlwifi_mod_params = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@IWL_RXON_CTX_BSS = common dso_local global i64 0, align 8
@NL80211_KEK_LEN = common dso_local global i32 0, align 4
@NL80211_KCK_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"leave\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.cfg80211_gtk_rekey_data*)* @iwlagn_mac_set_rekey_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwlagn_mac_set_rekey_data(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.cfg80211_gtk_rekey_data* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.cfg80211_gtk_rekey_data*, align 8
  %7 = alloca %struct.iwl_priv*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store %struct.cfg80211_gtk_rekey_data* %2, %struct.cfg80211_gtk_rekey_data** %6, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %9 = call %struct.iwl_priv* @IWL_MAC80211_GET_DVM(%struct.ieee80211_hw* %8)
  store %struct.iwl_priv* %9, %struct.iwl_priv** %7, align 8
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @iwlwifi_mod_params, i32 0, i32 0), align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %60

13:                                               ; preds = %3
  %14 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %15 = call i32 @IWL_DEBUG_MAC80211(%struct.iwl_priv* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %17 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %16, i32 0, i32 1
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %20 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %19, i32 0, i32 5
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = load i64, i64* @IWL_RXON_CTX_BSS, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %24, align 8
  %26 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %27 = icmp ne %struct.ieee80211_vif* %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %13
  br label %54

29:                                               ; preds = %13
  %30 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %31 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.cfg80211_gtk_rekey_data*, %struct.cfg80211_gtk_rekey_data** %6, align 8
  %34 = getelementptr inbounds %struct.cfg80211_gtk_rekey_data, %struct.cfg80211_gtk_rekey_data* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @NL80211_KEK_LEN, align 4
  %37 = call i32 @memcpy(i32 %32, i32 %35, i32 %36)
  %38 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %39 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.cfg80211_gtk_rekey_data*, %struct.cfg80211_gtk_rekey_data** %6, align 8
  %42 = getelementptr inbounds %struct.cfg80211_gtk_rekey_data, %struct.cfg80211_gtk_rekey_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @NL80211_KCK_LEN, align 4
  %45 = call i32 @memcpy(i32 %40, i32 %43, i32 %44)
  %46 = load %struct.cfg80211_gtk_rekey_data*, %struct.cfg80211_gtk_rekey_data** %6, align 8
  %47 = getelementptr inbounds %struct.cfg80211_gtk_rekey_data, %struct.cfg80211_gtk_rekey_data* %46, i32 0, i32 0
  %48 = call i32 @be64_to_cpup(i32* %47)
  %49 = call i32 @cpu_to_le64(i32 %48)
  %50 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %51 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %53 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %52, i32 0, i32 0
  store i32 1, i32* %53, align 8
  br label %54

54:                                               ; preds = %29, %28
  %55 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %56 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %55, i32 0, i32 1
  %57 = call i32 @mutex_unlock(i32* %56)
  %58 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %59 = call i32 @IWL_DEBUG_MAC80211(%struct.iwl_priv* %58, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %60

60:                                               ; preds = %54, %12
  ret void
}

declare dso_local %struct.iwl_priv* @IWL_MAC80211_GET_DVM(%struct.ieee80211_hw*) #1

declare dso_local i32 @IWL_DEBUG_MAC80211(%struct.iwl_priv*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @be64_to_cpup(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
