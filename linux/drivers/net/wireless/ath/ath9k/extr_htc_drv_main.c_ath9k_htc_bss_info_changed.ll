; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_main.c_ath9k_htc_bss_info_changed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_main.c_ath9k_htc_bss_info_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ath9k_htc_priv* }
%struct.ath9k_htc_priv = type { i32, i32, i32, i32, i32, %struct.TYPE_4__, i32, %struct.ath_hw*, %struct.TYPE_3__, i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ath_hw = type { i64, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ieee80211_vif = type { i64 }
%struct.ieee80211_bss_conf = type { i64, i64, i64, i32, i64 }
%struct.ath_common = type { i32, i32, i32 }

@BSS_CHANGED_ASSOC = common dso_local global i32 0, align 4
@CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"BSS Changed ASSOC %d\0A\00", align 1
@ATH_OP_PRIM_STA_VIF = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@BSS_CHANGED_IBSS = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@BSS_CHANGED_BEACON_ENABLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Beacon enabled for BSS: %pM\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Beacon disabled for BSS: %pM\0A\00", align 1
@BSS_CHANGED_BEACON_INT = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@NL80211_IFTYPE_MESH_POINT = common dso_local global i64 0, align 8
@OP_TSF_RESET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"Beacon interval changed for BSS: %pM\0A\00", align 1
@BSS_CHANGED_ERP_SLOT = common dso_local global i32 0, align 4
@UPDATE = common dso_local global i32 0, align 4
@BSS_CHANGED_HT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_bss_conf*, i32)* @ath9k_htc_bss_info_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_htc_bss_info_changed(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_bss_conf* %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_bss_conf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ath9k_htc_priv*, align 8
  %10 = alloca %struct.ath_hw*, align 8
  %11 = alloca %struct.ath_common*, align 8
  %12 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_bss_conf* %2, %struct.ieee80211_bss_conf** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %14 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %13, i32 0, i32 0
  %15 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %14, align 8
  store %struct.ath9k_htc_priv* %15, %struct.ath9k_htc_priv** %9, align 8
  %16 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %17 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %16, i32 0, i32 7
  %18 = load %struct.ath_hw*, %struct.ath_hw** %17, align 8
  store %struct.ath_hw* %18, %struct.ath_hw** %10, align 8
  %19 = load %struct.ath_hw*, %struct.ath_hw** %10, align 8
  %20 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %19)
  store %struct.ath_common* %20, %struct.ath_common** %11, align 8
  %21 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %22 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %21, i32 0, i32 4
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %25 = call i32 @ath9k_htc_ps_wakeup(%struct.ath9k_htc_priv* %24)
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @BSS_CHANGED_ASSOC, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %96

30:                                               ; preds = %4
  %31 = load %struct.ath_common*, %struct.ath_common** %11, align 8
  %32 = load i32, i32* @CONFIG, align 4
  %33 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %34 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @ath_dbg(%struct.ath_common* %31, i32 %32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %35)
  %37 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %38 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %30
  %42 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %43 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 8
  br label %51

46:                                               ; preds = %30
  %47 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %48 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %48, align 8
  br label %51

51:                                               ; preds = %46, %41
  %52 = phi i32 [ %44, %41 ], [ %49, %46 ]
  %53 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %54 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %53, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %51
  %58 = load i32, i32* @ATH_OP_PRIM_STA_VIF, align 4
  %59 = load %struct.ath_common*, %struct.ath_common** %11, align 8
  %60 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %59, i32 0, i32 2
  %61 = call i32 @clear_bit(i32 %58, i32* %60)
  br label %62

62:                                               ; preds = %57, %51
  %63 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %64 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %63, i32 0, i32 7
  %65 = load %struct.ath_hw*, %struct.ath_hw** %64, align 8
  %66 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %95

70:                                               ; preds = %62
  %71 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %72 = call i32 @ath9k_htc_choose_set_bssid(%struct.ath9k_htc_priv* %71)
  %73 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %74 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %70
  %78 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %79 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %84 = call i32 @ath9k_htc_start_ani(%struct.ath9k_htc_priv* %83)
  br label %94

85:                                               ; preds = %77, %70
  %86 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %87 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %92 = call i32 @ath9k_htc_stop_ani(%struct.ath9k_htc_priv* %91)
  br label %93

93:                                               ; preds = %90, %85
  br label %94

94:                                               ; preds = %93, %82
  br label %95

95:                                               ; preds = %94, %62
  br label %96

96:                                               ; preds = %95, %4
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* @BSS_CHANGED_IBSS, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %126

101:                                              ; preds = %96
  %102 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %103 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %102, i32 0, i32 7
  %104 = load %struct.ath_hw*, %struct.ath_hw** %103, align 8
  %105 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %125

109:                                              ; preds = %101
  %110 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %111 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.ath_common*, %struct.ath_common** %11, align 8
  %114 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 4
  %115 = load %struct.ath_common*, %struct.ath_common** %11, align 8
  %116 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %119 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load i32, i32* @ETH_ALEN, align 4
  %122 = call i32 @memcpy(i32 %117, i64 %120, i32 %121)
  %123 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %124 = call i32 @ath9k_htc_set_bssid(%struct.ath9k_htc_priv* %123)
  br label %125

125:                                              ; preds = %109, %101
  br label %126

126:                                              ; preds = %125, %96
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* @BSS_CHANGED_BEACON_ENABLED, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %152

131:                                              ; preds = %126
  %132 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %133 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %152

136:                                              ; preds = %131
  %137 = load %struct.ath_common*, %struct.ath_common** %11, align 8
  %138 = load i32, i32* @CONFIG, align 4
  %139 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %140 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = call i32 @ath_dbg(%struct.ath_common* %137, i32 %138, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %141)
  %143 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %144 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %145 = call i32 @ath9k_htc_set_tsfadjust(%struct.ath9k_htc_priv* %143, %struct.ieee80211_vif* %144)
  %146 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %147 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %146, i32 0, i32 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 0
  store i32 1, i32* %148, align 8
  %149 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %150 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %151 = call i32 @ath9k_htc_beacon_config(%struct.ath9k_htc_priv* %149, %struct.ieee80211_vif* %150)
  br label %152

152:                                              ; preds = %136, %131, %126
  %153 = load i32, i32* %8, align 4
  %154 = load i32, i32* @BSS_CHANGED_BEACON_ENABLED, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %190

157:                                              ; preds = %152
  %158 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %159 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %190, label %162

162:                                              ; preds = %157
  %163 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %164 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %167 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = add nsw i32 %165, %168
  %170 = icmp sle i32 %169, 1
  br i1 %170, label %176, label %171

171:                                              ; preds = %162
  %172 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %173 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %172, i32 0, i32 9
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %189

176:                                              ; preds = %171, %162
  %177 = load %struct.ath_common*, %struct.ath_common** %11, align 8
  %178 = load i32, i32* @CONFIG, align 4
  %179 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %180 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = call i32 @ath_dbg(%struct.ath_common* %177, i32 %178, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %181)
  %183 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %184 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %183, i32 0, i32 8
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 0
  store i32 0, i32* %185, align 8
  %186 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %187 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %188 = call i32 @ath9k_htc_beacon_config(%struct.ath9k_htc_priv* %186, %struct.ieee80211_vif* %187)
  br label %189

189:                                              ; preds = %176, %171
  br label %190

190:                                              ; preds = %189, %157, %152
  %191 = load i32, i32* %8, align 4
  %192 = load i32, i32* @BSS_CHANGED_BEACON_INT, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %253

195:                                              ; preds = %190
  %196 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %197 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 4
  %199 = icmp eq i32 %198, 1
  br i1 %199, label %200, label %243

200:                                              ; preds = %195
  %201 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %202 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %201, i32 0, i32 7
  %203 = load %struct.ath_hw*, %struct.ath_hw** %202, align 8
  %204 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %208, label %219

208:                                              ; preds = %200
  %209 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %210 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %214, label %219

214:                                              ; preds = %208
  %215 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %216 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = icmp eq i32 %217, 1
  br i1 %218, label %238, label %219

219:                                              ; preds = %214, %208, %200
  %220 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %221 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %220, i32 0, i32 7
  %222 = load %struct.ath_hw*, %struct.ath_hw** %221, align 8
  %223 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = load i64, i64* @NL80211_IFTYPE_MESH_POINT, align 8
  %226 = icmp eq i64 %224, %225
  br i1 %226, label %227, label %243

227:                                              ; preds = %219
  %228 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %229 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = load i64, i64* @NL80211_IFTYPE_MESH_POINT, align 8
  %232 = icmp eq i64 %230, %231
  br i1 %232, label %233, label %243

233:                                              ; preds = %227
  %234 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %235 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 8
  %237 = icmp eq i32 %236, 1
  br i1 %237, label %238, label %243

238:                                              ; preds = %233, %214
  %239 = load i32, i32* @OP_TSF_RESET, align 4
  %240 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %241 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %240, i32 0, i32 6
  %242 = call i32 @set_bit(i32 %239, i32* %241)
  br label %243

243:                                              ; preds = %238, %233, %227, %219, %195
  %244 = load %struct.ath_common*, %struct.ath_common** %11, align 8
  %245 = load i32, i32* @CONFIG, align 4
  %246 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %247 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %246, i32 0, i32 1
  %248 = load i64, i64* %247, align 8
  %249 = call i32 @ath_dbg(%struct.ath_common* %244, i32 %245, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i64 %248)
  %250 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %251 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %252 = call i32 @ath9k_htc_beacon_config(%struct.ath9k_htc_priv* %250, %struct.ieee80211_vif* %251)
  br label %253

253:                                              ; preds = %243, %190
  %254 = load i32, i32* %8, align 4
  %255 = load i32, i32* @BSS_CHANGED_ERP_SLOT, align 4
  %256 = and i32 %254, %255
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %287

258:                                              ; preds = %253
  %259 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %260 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %264

263:                                              ; preds = %258
  store i32 9, i32* %12, align 4
  br label %265

264:                                              ; preds = %258
  store i32 20, i32* %12, align 4
  br label %265

265:                                              ; preds = %264, %263
  %266 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %267 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %266, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %270 = icmp eq i64 %268, %269
  br i1 %270, label %271, label %280

271:                                              ; preds = %265
  %272 = load i32, i32* %12, align 4
  %273 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %274 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %273, i32 0, i32 5
  %275 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %274, i32 0, i32 0
  store i32 %272, i32* %275, align 4
  %276 = load i32, i32* @UPDATE, align 4
  %277 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %278 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %277, i32 0, i32 5
  %279 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %278, i32 0, i32 1
  store i32 %276, i32* %279, align 4
  br label %286

280:                                              ; preds = %265
  %281 = load i32, i32* %12, align 4
  %282 = load %struct.ath_hw*, %struct.ath_hw** %10, align 8
  %283 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %282, i32 0, i32 1
  store i32 %281, i32* %283, align 8
  %284 = load %struct.ath_hw*, %struct.ath_hw** %10, align 8
  %285 = call i32 @ath9k_hw_init_global_settings(%struct.ath_hw* %284)
  br label %286

286:                                              ; preds = %280, %271
  br label %287

287:                                              ; preds = %286, %253
  %288 = load i32, i32* %8, align 4
  %289 = load i32, i32* @BSS_CHANGED_HT, align 4
  %290 = and i32 %288, %289
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %297

292:                                              ; preds = %287
  %293 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %294 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %295 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %296 = call i32 @ath9k_htc_update_rate(%struct.ath9k_htc_priv* %293, %struct.ieee80211_vif* %294, %struct.ieee80211_bss_conf* %295)
  br label %297

297:                                              ; preds = %292, %287
  %298 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %299 = call i32 @ath9k_htc_ps_restore(%struct.ath9k_htc_priv* %298)
  %300 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %301 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %300, i32 0, i32 4
  %302 = call i32 @mutex_unlock(i32* %301)
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ath9k_htc_ps_wakeup(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i64) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @ath9k_htc_choose_set_bssid(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @ath9k_htc_start_ani(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @ath9k_htc_stop_ani(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @memcpy(i32, i64, i32) #1

declare dso_local i32 @ath9k_htc_set_bssid(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @ath9k_htc_set_tsfadjust(%struct.ath9k_htc_priv*, %struct.ieee80211_vif*) #1

declare dso_local i32 @ath9k_htc_beacon_config(%struct.ath9k_htc_priv*, %struct.ieee80211_vif*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @ath9k_hw_init_global_settings(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_htc_update_rate(%struct.ath9k_htc_priv*, %struct.ieee80211_vif*, %struct.ieee80211_bss_conf*) #1

declare dso_local i32 @ath9k_htc_ps_restore(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
