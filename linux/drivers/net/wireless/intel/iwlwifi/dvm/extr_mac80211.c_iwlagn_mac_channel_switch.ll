; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_mac80211.c_iwlagn_mac_channel_switch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_mac80211.c_iwlagn_mac_channel_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ieee80211_conf }
%struct.ieee80211_conf = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_channel_switch = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i64, i32 }
%struct.iwl_priv = type { i32, i64, i32, %struct.TYPE_9__*, %struct.iwl_ht_config, %struct.iwl_rxon_context* }
%struct.TYPE_9__ = type { i64 (%struct.iwl_priv*, %struct.ieee80211_channel_switch*)* }
%struct.iwl_ht_config = type { i32 }
%struct.iwl_rxon_context = type { i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@IWL_RXON_CTX_BSS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@STATUS_EXIT_PENDING = common dso_local global i32 0, align 4
@STATUS_SCANNING = common dso_local global i32 0, align 4
@STATUS_CHANNEL_SWITCH_PENDING = common dso_local global i32 0, align 4
@IEEE80211_HT_PARAM_CHA_SEC_NONE = common dso_local global i32 0, align 4
@IEEE80211_HT_PARAM_CHA_SEC_BELOW = common dso_local global i32 0, align 4
@IEEE80211_HT_PARAM_CHA_SEC_ABOVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"leave\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_channel_switch*)* @iwlagn_mac_channel_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwlagn_mac_channel_switch(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_channel_switch* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.ieee80211_channel_switch*, align 8
  %7 = alloca %struct.iwl_priv*, align 8
  %8 = alloca %struct.ieee80211_conf*, align 8
  %9 = alloca %struct.ieee80211_channel*, align 8
  %10 = alloca %struct.iwl_ht_config*, align 8
  %11 = alloca %struct.iwl_rxon_context*, align 8
  %12 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store %struct.ieee80211_channel_switch* %2, %struct.ieee80211_channel_switch** %6, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %14 = call %struct.iwl_priv* @IWL_MAC80211_GET_DVM(%struct.ieee80211_hw* %13)
  store %struct.iwl_priv* %14, %struct.iwl_priv** %7, align 8
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %16 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %15, i32 0, i32 0
  store %struct.ieee80211_conf* %16, %struct.ieee80211_conf** %8, align 8
  %17 = load %struct.ieee80211_channel_switch*, %struct.ieee80211_channel_switch** %6, align 8
  %18 = getelementptr inbounds %struct.ieee80211_channel_switch, %struct.ieee80211_channel_switch* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %19, align 8
  store %struct.ieee80211_channel* %20, %struct.ieee80211_channel** %9, align 8
  %21 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %22 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %21, i32 0, i32 4
  store %struct.iwl_ht_config* %22, %struct.iwl_ht_config** %10, align 8
  %23 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %24 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %23, i32 0, i32 5
  %25 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %24, align 8
  %26 = load i64, i64* @IWL_RXON_CTX_BSS, align 8
  %27 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %25, i64 %26
  store %struct.iwl_rxon_context* %27, %struct.iwl_rxon_context** %11, align 8
  %28 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %29 = call i32 @IWL_DEBUG_MAC80211(%struct.iwl_priv* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %31 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %30, i32 0, i32 0
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %34 = call i64 @iwl_is_rfkill(%struct.iwl_priv* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %3
  br label %173

37:                                               ; preds = %3
  %38 = load i32, i32* @STATUS_EXIT_PENDING, align 4
  %39 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %40 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %39, i32 0, i32 2
  %41 = call i64 @test_bit(i32 %38, i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %55, label %43

43:                                               ; preds = %37
  %44 = load i32, i32* @STATUS_SCANNING, align 4
  %45 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %46 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %45, i32 0, i32 2
  %47 = call i64 @test_bit(i32 %44, i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %43
  %50 = load i32, i32* @STATUS_CHANNEL_SWITCH_PENDING, align 4
  %51 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %52 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %51, i32 0, i32 2
  %53 = call i64 @test_bit(i32 %50, i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49, %43, %37
  br label %173

56:                                               ; preds = %49
  %57 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %11, align 8
  %58 = call i32 @iwl_is_associated_ctx(%struct.iwl_rxon_context* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %56
  br label %173

61:                                               ; preds = %56
  %62 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %63 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %62, i32 0, i32 3
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load i64 (%struct.iwl_priv*, %struct.ieee80211_channel_switch*)*, i64 (%struct.iwl_priv*, %struct.ieee80211_channel_switch*)** %65, align 8
  %67 = icmp ne i64 (%struct.iwl_priv*, %struct.ieee80211_channel_switch*)* %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %61
  br label %173

69:                                               ; preds = %61
  %70 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %71 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %12, align 8
  %73 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %11, align 8
  %74 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i64 @le16_to_cpu(i32 %76)
  %78 = load i64, i64* %12, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %69
  br label %173

81:                                               ; preds = %69
  %82 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %8, align 8
  %83 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %86 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %85, i32 0, i32 4
  %87 = getelementptr inbounds %struct.iwl_ht_config, %struct.iwl_ht_config* %86, i32 0, i32 0
  store i32 %84, i32* %87, align 8
  %88 = load %struct.ieee80211_channel_switch*, %struct.ieee80211_channel_switch** %6, align 8
  %89 = getelementptr inbounds %struct.ieee80211_channel_switch, %struct.ieee80211_channel_switch* %88, i32 0, i32 0
  %90 = call i32 @cfg80211_get_chandef_type(%struct.TYPE_10__* %89)
  switch i32 %90, label %115 [
    i32 128, label %91
    i32 131, label %91
    i32 130, label %99
    i32 129, label %107
  ]

91:                                               ; preds = %81, %81
  %92 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %11, align 8
  %93 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  store i32 0, i32* %94, align 8
  %95 = load i32, i32* @IEEE80211_HT_PARAM_CHA_SEC_NONE, align 4
  %96 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %11, align 8
  %97 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 1
  store i32 %95, i32* %98, align 4
  br label %115

99:                                               ; preds = %81
  %100 = load i32, i32* @IEEE80211_HT_PARAM_CHA_SEC_BELOW, align 4
  %101 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %11, align 8
  %102 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 1
  store i32 %100, i32* %103, align 4
  %104 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %11, align 8
  %105 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  store i32 1, i32* %106, align 8
  br label %115

107:                                              ; preds = %81
  %108 = load i32, i32* @IEEE80211_HT_PARAM_CHA_SEC_ABOVE, align 4
  %109 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %11, align 8
  %110 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 1
  store i32 %108, i32* %111, align 4
  %112 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %11, align 8
  %113 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  store i32 1, i32* %114, align 8
  br label %115

115:                                              ; preds = %81, %107, %99, %91
  %116 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %11, align 8
  %117 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = call i64 @le16_to_cpu(i32 %119)
  %121 = load i64, i64* %12, align 8
  %122 = icmp ne i64 %120, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %115
  %124 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %11, align 8
  %125 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  store i64 0, i64* %126, align 8
  br label %127

127:                                              ; preds = %123, %115
  %128 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %129 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %130 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %11, align 8
  %131 = call i32 @iwl_set_rxon_channel(%struct.iwl_priv* %128, %struct.ieee80211_channel* %129, %struct.iwl_rxon_context* %130)
  %132 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %133 = load %struct.iwl_ht_config*, %struct.iwl_ht_config** %10, align 8
  %134 = call i32 @iwl_set_rxon_ht(%struct.iwl_priv* %132, %struct.iwl_ht_config* %133)
  %135 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %136 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %11, align 8
  %137 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %138 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %11, align 8
  %141 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @iwl_set_flags_for_band(%struct.iwl_priv* %135, %struct.iwl_rxon_context* %136, i32 %139, i32 %142)
  %144 = load i32, i32* @STATUS_CHANNEL_SWITCH_PENDING, align 4
  %145 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %146 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %145, i32 0, i32 2
  %147 = call i32 @set_bit(i32 %144, i32* %146)
  %148 = load i64, i64* %12, align 8
  %149 = call i64 @cpu_to_le16(i64 %148)
  %150 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %151 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %150, i32 0, i32 1
  store i64 %149, i64* %151, align 8
  %152 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %153 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %152, i32 0, i32 3
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 0
  %156 = load i64 (%struct.iwl_priv*, %struct.ieee80211_channel_switch*)*, i64 (%struct.iwl_priv*, %struct.ieee80211_channel_switch*)** %155, align 8
  %157 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %158 = load %struct.ieee80211_channel_switch*, %struct.ieee80211_channel_switch** %6, align 8
  %159 = call i64 %156(%struct.iwl_priv* %157, %struct.ieee80211_channel_switch* %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %172

161:                                              ; preds = %127
  %162 = load i32, i32* @STATUS_CHANNEL_SWITCH_PENDING, align 4
  %163 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %164 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %163, i32 0, i32 2
  %165 = call i32 @clear_bit(i32 %162, i32* %164)
  %166 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %167 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %166, i32 0, i32 1
  store i64 0, i64* %167, align 8
  %168 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %11, align 8
  %169 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @ieee80211_chswitch_done(i32 %170, i32 0)
  br label %172

172:                                              ; preds = %161, %127
  br label %173

173:                                              ; preds = %172, %80, %68, %60, %55, %36
  %174 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %175 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %174, i32 0, i32 0
  %176 = call i32 @mutex_unlock(i32* %175)
  %177 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %178 = call i32 @IWL_DEBUG_MAC80211(%struct.iwl_priv* %177, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local %struct.iwl_priv* @IWL_MAC80211_GET_DVM(%struct.ieee80211_hw*) #1

declare dso_local i32 @IWL_DEBUG_MAC80211(%struct.iwl_priv*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @iwl_is_rfkill(%struct.iwl_priv*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @iwl_is_associated_ctx(%struct.iwl_rxon_context*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @cfg80211_get_chandef_type(%struct.TYPE_10__*) #1

declare dso_local i32 @iwl_set_rxon_channel(%struct.iwl_priv*, %struct.ieee80211_channel*, %struct.iwl_rxon_context*) #1

declare dso_local i32 @iwl_set_rxon_ht(%struct.iwl_priv*, %struct.iwl_ht_config*) #1

declare dso_local i32 @iwl_set_flags_for_band(%struct.iwl_priv*, %struct.iwl_rxon_context*, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @cpu_to_le16(i64) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @ieee80211_chswitch_done(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
