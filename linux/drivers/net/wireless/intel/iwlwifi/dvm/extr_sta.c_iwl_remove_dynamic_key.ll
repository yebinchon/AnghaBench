; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_sta.c_iwl_remove_dynamic_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_sta.c_iwl_remove_dynamic_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.iwl_rxon_context = type { i32, i32 }
%struct.ieee80211_key_conf = type { i32, i32, i32 }
%struct.ieee80211_sta = type { i32 }
%struct.iwl_addsta_cmd = type { i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@IWL_INVALID_STATION = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@IWL_STA_UCODE_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Remove dynamic key: idx=%d sta=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"offset %d not used in uCode key table.\0A\00", align 1
@STA_KEY_FLG_KEYID_POS = common dso_local global i32 0, align 4
@STA_KEY_FLG_MAP_KEY_MSK = common dso_local global i32 0, align 4
@STA_KEY_FLG_NO_ENC = common dso_local global i32 0, align 4
@STA_KEY_FLG_INVALID = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_PAIRWISE = common dso_local global i32 0, align 4
@STA_KEY_MULTICAST_MSK = common dso_local global i32 0, align 4
@STA_MODIFY_KEY_MASK = common dso_local global i32 0, align 4
@STA_CONTROL_MODIFY_MSK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_remove_dynamic_key(%struct.iwl_priv* %0, %struct.iwl_rxon_context* %1, %struct.ieee80211_key_conf* %2, %struct.ieee80211_sta* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwl_priv*, align 8
  %7 = alloca %struct.iwl_rxon_context*, align 8
  %8 = alloca %struct.ieee80211_key_conf*, align 8
  %9 = alloca %struct.ieee80211_sta*, align 8
  %10 = alloca %struct.iwl_addsta_cmd, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.iwl_priv* %0, %struct.iwl_priv** %6, align 8
  store %struct.iwl_rxon_context* %1, %struct.iwl_rxon_context** %7, align 8
  store %struct.ieee80211_key_conf* %2, %struct.ieee80211_key_conf** %8, align 8
  store %struct.ieee80211_sta* %3, %struct.ieee80211_sta** %9, align 8
  %13 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %14 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %7, align 8
  %15 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %18 = call i64 @iwlagn_key_sta_id(%struct.iwl_priv* %13, i32 %16, %struct.ieee80211_sta* %17)
  store i64 %18, i64* %11, align 8
  %19 = load i64, i64* %11, align 8
  %20 = load i64, i64* @IWL_INVALID_STATION, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i32, i32* @ENOENT, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %123

25:                                               ; preds = %4
  %26 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %27 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %26, i32 0, i32 2
  %28 = call i32 @spin_lock_bh(i32* %27)
  %29 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %30 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %29, i32 0, i32 3
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load i64, i64* %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = call i32 @memcpy(%struct.iwl_addsta_cmd* %10, i32* %34, i32 16)
  %36 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %37 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %36, i32 0, i32 3
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = load i64, i64* %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @IWL_STA_UCODE_ACTIVE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %25
  %47 = load i64, i64* @IWL_INVALID_STATION, align 8
  store i64 %47, i64* %11, align 8
  br label %48

48:                                               ; preds = %46, %25
  %49 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %50 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %49, i32 0, i32 2
  %51 = call i32 @spin_unlock_bh(i32* %50)
  %52 = load i64, i64* %11, align 8
  %53 = load i64, i64* @IWL_INVALID_STATION, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  store i32 0, i32* %5, align 4
  br label %123

56:                                               ; preds = %48
  %57 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %58 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %57, i32 0, i32 1
  %59 = call i32 @lockdep_assert_held(i32* %58)
  %60 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %7, align 8
  %61 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %61, align 4
  %64 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %65 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %8, align 8
  %66 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i64, i64* %11, align 8
  %69 = call i32 @IWL_DEBUG_WEP(%struct.iwl_priv* %64, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %67, i64 %68)
  %70 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %8, align 8
  %71 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %74 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %73, i32 0, i32 0
  %75 = call i32 @test_and_clear_bit(i32 %72, i32* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %56
  %78 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %79 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %8, align 8
  %80 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @IWL_ERR(%struct.iwl_priv* %78, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %77, %56
  %84 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %8, align 8
  %85 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @STA_KEY_FLG_KEYID_POS, align 4
  %88 = shl i32 %86, %87
  %89 = call i32 @cpu_to_le16(i32 %88)
  store i32 %89, i32* %12, align 4
  %90 = load i32, i32* @STA_KEY_FLG_MAP_KEY_MSK, align 4
  %91 = load i32, i32* @STA_KEY_FLG_NO_ENC, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @STA_KEY_FLG_INVALID, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* %12, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %12, align 4
  %97 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %8, align 8
  %98 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @IEEE80211_KEY_FLAG_PAIRWISE, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %83
  %104 = load i32, i32* @STA_KEY_MULTICAST_MSK, align 4
  %105 = load i32, i32* %12, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %12, align 4
  br label %107

107:                                              ; preds = %103, %83
  %108 = load i32, i32* %12, align 4
  %109 = getelementptr inbounds %struct.iwl_addsta_cmd, %struct.iwl_addsta_cmd* %10, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 4
  %111 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %8, align 8
  %112 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = getelementptr inbounds %struct.iwl_addsta_cmd, %struct.iwl_addsta_cmd* %10, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* @STA_MODIFY_KEY_MASK, align 4
  %117 = getelementptr inbounds %struct.iwl_addsta_cmd, %struct.iwl_addsta_cmd* %10, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 4
  %119 = load i32, i32* @STA_CONTROL_MODIFY_MSK, align 4
  %120 = getelementptr inbounds %struct.iwl_addsta_cmd, %struct.iwl_addsta_cmd* %10, i32 0, i32 0
  store i32 %119, i32* %120, align 4
  %121 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %122 = call i32 @iwl_send_add_sta(%struct.iwl_priv* %121, %struct.iwl_addsta_cmd* %10, i32 0)
  store i32 %122, i32* %5, align 4
  br label %123

123:                                              ; preds = %107, %55, %22
  %124 = load i32, i32* %5, align 4
  ret i32 %124
}

declare dso_local i64 @iwlagn_key_sta_id(%struct.iwl_priv*, i32, %struct.ieee80211_sta*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @memcpy(%struct.iwl_addsta_cmd*, i32*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @IWL_DEBUG_WEP(%struct.iwl_priv*, i8*, i32, i64) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_priv*, i8*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @iwl_send_add_sta(%struct.iwl_priv*, %struct.iwl_addsta_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
