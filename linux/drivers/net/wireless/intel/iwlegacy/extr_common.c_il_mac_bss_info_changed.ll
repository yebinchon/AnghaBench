; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_common.c_il_mac_bss_info_changed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_common.c_il_mac_bss_info_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.il_priv* }
%struct.il_priv = type { i32, i8*, i64, i32, %struct.TYPE_9__*, %struct.TYPE_10__, i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32 (%struct.il_priv*, %struct.ieee80211_vif*, i32)*, i32 (%struct.il_priv*)*, i32 (%struct.il_priv*)*, i32 (%struct.il_priv*)* }
%struct.TYPE_10__ = type { i8*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.ieee80211_vif = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.ieee80211_bss_conf = type { %struct.TYPE_10__*, i32, i64, i32, i64, i64, i64, i32 }

@.str = private unnamed_addr constant [21 x i8] c"enter: changes 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"leave - not alive\0A\00", align 1
@BSS_CHANGED_QOS = common dso_local global i32 0, align 4
@BSS_CHANGED_BEACON_ENABLED = common dso_local global i32 0, align 4
@BSS_CHANGED_BSSID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"BSSID %pM\0A\00", align 1
@IL_STOP_REASON_PASSIVE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"leave - scan abort failed\0A\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@BSS_CHANGED_BEACON = common dso_local global i32 0, align 4
@BSS_CHANGED_ERP_PREAMBLE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"ERP_PREAMBLE %d\0A\00", align 1
@RXON_FLG_SHORT_PREAMBLE_MSK = common dso_local global i32 0, align 4
@BSS_CHANGED_ERP_CTS_PROT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"ERP_CTS %d\0A\00", align 1
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@RXON_FLG_TGG_PROTECT_MSK = common dso_local global i32 0, align 4
@RXON_FLG_SELF_CTS_EN = common dso_local global i32 0, align 4
@BSS_CHANGED_BASIC_RATES = common dso_local global i32 0, align 4
@BSS_CHANGED_HT = common dso_local global i32 0, align 4
@BSS_CHANGED_ASSOC = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"ASSOC %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"Changes (%#x) while associated\0A\00", align 1
@BSS_CHANGED_IBSS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [31 x i8] c"failed to %s IBSS station %pM\0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"leave\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @il_mac_bss_info_changed(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_bss_conf* %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_bss_conf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.il_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_bss_conf* %2, %struct.ieee80211_bss_conf** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %13 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %12, i32 0, i32 0
  %14 = load %struct.il_priv*, %struct.il_priv** %13, align 8
  store %struct.il_priv* %14, %struct.il_priv** %9, align 8
  %15 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %16 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %15, i32 0, i32 3
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load i32, i32* %8, align 4
  %19 = call i32 (i8*, ...) @D_MAC80211(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %21 = call i32 @il_is_alive(%struct.il_priv* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %4
  %24 = call i32 (i8*, ...) @D_MAC80211(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %25 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %26 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %25, i32 0, i32 3
  %27 = call i32 @mutex_unlock(i32* %26)
  br label %386

28:                                               ; preds = %4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @BSS_CHANGED_QOS, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %28
  %34 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %35 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %34, i32 0, i32 8
  %36 = load i64, i64* %11, align 8
  %37 = call i32 @spin_lock_irqsave(i32* %35, i64 %36)
  %38 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %39 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %38, i32 0, i32 7
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %42 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %41, i32 0, i32 9
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 4
  %44 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %45 = call i32 @il_update_qos(%struct.il_priv* %44)
  %46 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %47 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %46, i32 0, i32 8
  %48 = load i64, i64* %11, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  br label %50

50:                                               ; preds = %33, %28
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @BSS_CHANGED_BEACON_ENABLED, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %50
  %56 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %57 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %63 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %62, i32 0, i32 0
  store i32 1, i32* %63, align 8
  br label %67

64:                                               ; preds = %55
  %65 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %66 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %65, i32 0, i32 0
  store i32 0, i32* %66, align 8
  br label %67

67:                                               ; preds = %64, %61
  br label %68

68:                                               ; preds = %67, %50
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @BSS_CHANGED_BSSID, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %114

73:                                               ; preds = %68
  %74 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %75 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %74, i32 0, i32 0
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %75, align 8
  %77 = call i32 (i8*, ...) @D_MAC80211(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_10__* %76)
  %78 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %79 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %78, i32 0, i32 0
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %79, align 8
  %81 = call i64 @is_zero_ether_addr(%struct.TYPE_10__* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %73
  %84 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %85 = load i32, i32* @IL_STOP_REASON_PASSIVE, align 4
  %86 = call i32 @il_wake_queues_by_reason(%struct.il_priv* %84, i32 %85)
  br label %87

87:                                               ; preds = %83, %73
  %88 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %89 = call i64 @il_scan_cancel_timeout(%struct.il_priv* %88, i32 100)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %87
  %92 = call i32 (i8*, ...) @D_MAC80211(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %93 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %94 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %93, i32 0, i32 3
  %95 = call i32 @mutex_unlock(i32* %94)
  br label %386

96:                                               ; preds = %87
  %97 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %98 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %97, i32 0, i32 5
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %102 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %101, i32 0, i32 0
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %102, align 8
  %104 = load i32, i32* @ETH_ALEN, align 4
  %105 = call i32 @memcpy(i8* %100, %struct.TYPE_10__* %103, i32 %104)
  %106 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %107 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %106, i32 0, i32 1
  %108 = load i8*, i8** %107, align 8
  %109 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %110 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %109, i32 0, i32 0
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %110, align 8
  %112 = load i32, i32* @ETH_ALEN, align 4
  %113 = call i32 @memcpy(i8* %108, %struct.TYPE_10__* %111, i32 %112)
  br label %114

114:                                              ; preds = %96, %68
  %115 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %116 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %129

120:                                              ; preds = %114
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* @BSS_CHANGED_BEACON, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %120
  %126 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %127 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %128 = call i32 @il_beacon_update(%struct.ieee80211_hw* %126, %struct.ieee80211_vif* %127)
  br label %129

129:                                              ; preds = %125, %120, %114
  %130 = load i32, i32* %8, align 4
  %131 = load i32, i32* @BSS_CHANGED_ERP_PREAMBLE, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %159

134:                                              ; preds = %129
  %135 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %136 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %135, i32 0, i32 6
  %137 = load i64, i64* %136, align 8
  %138 = call i32 (i8*, ...) @D_MAC80211(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i64 %137)
  %139 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %140 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %139, i32 0, i32 6
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %150

143:                                              ; preds = %134
  %144 = load i32, i32* @RXON_FLG_SHORT_PREAMBLE_MSK, align 4
  %145 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %146 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %145, i32 0, i32 5
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = or i32 %148, %144
  store i32 %149, i32* %147, align 8
  br label %158

150:                                              ; preds = %134
  %151 = load i32, i32* @RXON_FLG_SHORT_PREAMBLE_MSK, align 4
  %152 = xor i32 %151, -1
  %153 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %154 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %153, i32 0, i32 5
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = and i32 %156, %152
  store i32 %157, i32* %155, align 8
  br label %158

158:                                              ; preds = %150, %143
  br label %159

159:                                              ; preds = %158, %129
  %160 = load i32, i32* %8, align 4
  %161 = load i32, i32* @BSS_CHANGED_ERP_CTS_PROT, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %215

164:                                              ; preds = %159
  %165 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %166 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %165, i32 0, i32 5
  %167 = load i64, i64* %166, align 8
  %168 = call i32 (i8*, ...) @D_MAC80211(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i64 %167)
  %169 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %170 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %169, i32 0, i32 5
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %186

173:                                              ; preds = %164
  %174 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %175 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %174, i32 0, i32 2
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %178 = icmp ne i64 %176, %177
  br i1 %178, label %179, label %186

179:                                              ; preds = %173
  %180 = load i32, i32* @RXON_FLG_TGG_PROTECT_MSK, align 4
  %181 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %182 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %181, i32 0, i32 5
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = or i32 %184, %180
  store i32 %185, i32* %183, align 8
  br label %194

186:                                              ; preds = %173, %164
  %187 = load i32, i32* @RXON_FLG_TGG_PROTECT_MSK, align 4
  %188 = xor i32 %187, -1
  %189 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %190 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %189, i32 0, i32 5
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = and i32 %192, %188
  store i32 %193, i32* %191, align 8
  br label %194

194:                                              ; preds = %186, %179
  %195 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %196 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %195, i32 0, i32 5
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %206

199:                                              ; preds = %194
  %200 = load i32, i32* @RXON_FLG_SELF_CTS_EN, align 4
  %201 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %202 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %201, i32 0, i32 5
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 8
  %205 = or i32 %204, %200
  store i32 %205, i32* %203, align 8
  br label %214

206:                                              ; preds = %194
  %207 = load i32, i32* @RXON_FLG_SELF_CTS_EN, align 4
  %208 = xor i32 %207, -1
  %209 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %210 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %209, i32 0, i32 5
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 8
  %213 = and i32 %212, %208
  store i32 %213, i32* %211, align 8
  br label %214

214:                                              ; preds = %206, %199
  br label %215

215:                                              ; preds = %214, %159
  %216 = load i32, i32* %8, align 4
  %217 = load i32, i32* @BSS_CHANGED_BASIC_RATES, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %215
  br label %221

221:                                              ; preds = %220, %215
  %222 = load i32, i32* %8, align 4
  %223 = load i32, i32* @BSS_CHANGED_HT, align 4
  %224 = and i32 %222, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %245

226:                                              ; preds = %221
  %227 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %228 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %229 = call i32 @il_ht_conf(%struct.il_priv* %227, %struct.ieee80211_vif* %228)
  %230 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %231 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %230, i32 0, i32 4
  %232 = load %struct.TYPE_9__*, %struct.TYPE_9__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i32 0, i32 3
  %234 = load i32 (%struct.il_priv*)*, i32 (%struct.il_priv*)** %233, align 8
  %235 = icmp ne i32 (%struct.il_priv*)* %234, null
  br i1 %235, label %236, label %244

236:                                              ; preds = %226
  %237 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %238 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %237, i32 0, i32 4
  %239 = load %struct.TYPE_9__*, %struct.TYPE_9__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %239, i32 0, i32 3
  %241 = load i32 (%struct.il_priv*)*, i32 (%struct.il_priv*)** %240, align 8
  %242 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %243 = call i32 %241(%struct.il_priv* %242)
  br label %244

244:                                              ; preds = %236, %226
  br label %245

245:                                              ; preds = %244, %221
  %246 = load i32, i32* %8, align 4
  %247 = load i32, i32* @BSS_CHANGED_ASSOC, align 4
  %248 = and i32 %246, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %282

250:                                              ; preds = %245
  %251 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %252 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %251, i32 0, i32 4
  %253 = load i64, i64* %252, align 8
  %254 = call i32 (i8*, ...) @D_MAC80211(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i64 %253)
  %255 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %256 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %255, i32 0, i32 4
  %257 = load i64, i64* %256, align 8
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %277

259:                                              ; preds = %250
  %260 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %261 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %260, i32 0, i32 3
  %262 = load i32, i32* %261, align 8
  %263 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %264 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %263, i32 0, i32 7
  store i32 %262, i32* %264, align 4
  %265 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %266 = call i32 @il_is_rfkill(%struct.il_priv* %265)
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %276, label %268

268:                                              ; preds = %259
  %269 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %270 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %269, i32 0, i32 4
  %271 = load %struct.TYPE_9__*, %struct.TYPE_9__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %271, i32 0, i32 2
  %273 = load i32 (%struct.il_priv*)*, i32 (%struct.il_priv*)** %272, align 8
  %274 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %275 = call i32 %273(%struct.il_priv* %274)
  br label %276

276:                                              ; preds = %268, %259
  br label %281

277:                                              ; preds = %250
  %278 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %279 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %280 = call i32 @il_set_no_assoc(%struct.il_priv* %278, %struct.ieee80211_vif* %279)
  br label %281

281:                                              ; preds = %277, %276
  br label %282

282:                                              ; preds = %281, %245
  %283 = load i32, i32* %8, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %309

285:                                              ; preds = %282
  %286 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %287 = call i64 @il_is_associated(%struct.il_priv* %286)
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %309

289:                                              ; preds = %285
  %290 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %291 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %290, i32 0, i32 2
  %292 = load i64, i64* %291, align 8
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %309

294:                                              ; preds = %289
  %295 = load i32, i32* %8, align 4
  %296 = call i32 (i8*, ...) @D_MAC80211(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %295)
  %297 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %298 = call i32 @il_send_rxon_assoc(%struct.il_priv* %297)
  store i32 %298, i32* %10, align 4
  %299 = load i32, i32* %10, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %308, label %301

301:                                              ; preds = %294
  %302 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %303 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %302, i32 0, i32 6
  %304 = bitcast i32* %303 to i8*
  %305 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %306 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %305, i32 0, i32 5
  %307 = call i32 @memcpy(i8* %304, %struct.TYPE_10__* %306, i32 4)
  br label %308

308:                                              ; preds = %301, %294
  br label %309

309:                                              ; preds = %308, %289, %285, %282
  %310 = load i32, i32* %8, align 4
  %311 = load i32, i32* @BSS_CHANGED_BEACON_ENABLED, align 4
  %312 = and i32 %310, %311
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %350

314:                                              ; preds = %309
  %315 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %316 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %315, i32 0, i32 1
  %317 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %316, i32 0, i32 0
  %318 = load i64, i64* %317, align 8
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %320, label %345

320:                                              ; preds = %314
  %321 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %322 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %321, i32 0, i32 5
  %323 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %322, i32 0, i32 0
  %324 = load i8*, i8** %323, align 8
  %325 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %326 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %325, i32 0, i32 0
  %327 = load %struct.TYPE_10__*, %struct.TYPE_10__** %326, align 8
  %328 = load i32, i32* @ETH_ALEN, align 4
  %329 = call i32 @memcpy(i8* %324, %struct.TYPE_10__* %327, i32 %328)
  %330 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %331 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %330, i32 0, i32 1
  %332 = load i8*, i8** %331, align 8
  %333 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %334 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %333, i32 0, i32 0
  %335 = load %struct.TYPE_10__*, %struct.TYPE_10__** %334, align 8
  %336 = load i32, i32* @ETH_ALEN, align 4
  %337 = call i32 @memcpy(i8* %332, %struct.TYPE_10__* %335, i32 %336)
  %338 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %339 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %338, i32 0, i32 4
  %340 = load %struct.TYPE_9__*, %struct.TYPE_9__** %339, align 8
  %341 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %340, i32 0, i32 1
  %342 = load i32 (%struct.il_priv*)*, i32 (%struct.il_priv*)** %341, align 8
  %343 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %344 = call i32 %342(%struct.il_priv* %343)
  br label %349

345:                                              ; preds = %314
  %346 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %347 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %348 = call i32 @il_set_no_assoc(%struct.il_priv* %346, %struct.ieee80211_vif* %347)
  br label %349

349:                                              ; preds = %345, %320
  br label %350

350:                                              ; preds = %349, %309
  %351 = load i32, i32* %8, align 4
  %352 = load i32, i32* @BSS_CHANGED_IBSS, align 4
  %353 = and i32 %351, %352
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %381

355:                                              ; preds = %350
  %356 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %357 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %356, i32 0, i32 4
  %358 = load %struct.TYPE_9__*, %struct.TYPE_9__** %357, align 8
  %359 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %358, i32 0, i32 0
  %360 = load i32 (%struct.il_priv*, %struct.ieee80211_vif*, i32)*, i32 (%struct.il_priv*, %struct.ieee80211_vif*, i32)** %359, align 8
  %361 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %362 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %363 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %364 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %363, i32 0, i32 1
  %365 = load i32, i32* %364, align 8
  %366 = call i32 %360(%struct.il_priv* %361, %struct.ieee80211_vif* %362, i32 %365)
  store i32 %366, i32* %10, align 4
  %367 = load i32, i32* %10, align 4
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %380

369:                                              ; preds = %355
  %370 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %371 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %370, i32 0, i32 1
  %372 = load i32, i32* %371, align 8
  %373 = icmp ne i32 %372, 0
  %374 = zext i1 %373 to i64
  %375 = select i1 %373, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)
  %376 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %377 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %376, i32 0, i32 0
  %378 = load %struct.TYPE_10__*, %struct.TYPE_10__** %377, align 8
  %379 = call i32 @IL_ERR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i8* %375, %struct.TYPE_10__* %378)
  br label %380

380:                                              ; preds = %369, %355
  br label %381

381:                                              ; preds = %380, %350
  %382 = call i32 (i8*, ...) @D_MAC80211(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  %383 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %384 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %383, i32 0, i32 3
  %385 = call i32 @mutex_unlock(i32* %384)
  br label %386

386:                                              ; preds = %381, %91, %23
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @D_MAC80211(i8*, ...) #1

declare dso_local i32 @il_is_alive(%struct.il_priv*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @il_update_qos(%struct.il_priv*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @is_zero_ether_addr(%struct.TYPE_10__*) #1

declare dso_local i32 @il_wake_queues_by_reason(%struct.il_priv*, i32) #1

declare dso_local i64 @il_scan_cancel_timeout(%struct.il_priv*, i32) #1

declare dso_local i32 @memcpy(i8*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @il_beacon_update(%struct.ieee80211_hw*, %struct.ieee80211_vif*) #1

declare dso_local i32 @il_ht_conf(%struct.il_priv*, %struct.ieee80211_vif*) #1

declare dso_local i32 @il_is_rfkill(%struct.il_priv*) #1

declare dso_local i32 @il_set_no_assoc(%struct.il_priv*, %struct.ieee80211_vif*) #1

declare dso_local i64 @il_is_associated(%struct.il_priv*) #1

declare dso_local i32 @il_send_rxon_assoc(%struct.il_priv*) #1

declare dso_local i32 @IL_ERR(i8*, i8*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
