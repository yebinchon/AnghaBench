; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_mac_add_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_mac_add_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i32, i32, i32 }
%struct.iwl_mvm = type { i32, i32, i32, %struct.iwl_mvm_vif*, %struct.ieee80211_vif*, i32*, i32 }
%struct.iwl_mvm_vif = type { i64, i32*, i32, i32, i32, %struct.TYPE_2__, i32, %struct.iwl_mvm* }
%struct.TYPE_2__ = type { i64, i32 }

@IWL_MVM_STATUS_IN_HW_RESTART = common dso_local global i32 0, align 4
@NL80211_IFTYPE_P2P_DEVICE = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to allocate bcast sta\0A\00", align 1
@IWL_STA_MULTICAST = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i32 0, align 4
@IEEE80211_VIF_BEACON_FILTER = common dso_local global i32 0, align 4
@IEEE80211_VIF_SUPPORTS_CQM_RSSI = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@iwl_mvm_channel_switch_disconnect_wk = common dso_local global i32 0, align 4
@NL80211_IFTYPE_MONITOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*)* @iwl_mvm_mac_add_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_mac_add_interface(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca %struct.iwl_mvm_vif*, align 8
  %7 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %4, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %9 = call %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw* %8)
  store %struct.iwl_mvm* %9, %struct.iwl_mvm** %5, align 8
  %10 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %11 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %10)
  store %struct.iwl_mvm_vif* %11, %struct.iwl_mvm_vif** %6, align 8
  %12 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %13 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %14 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %13, i32 0, i32 7
  store %struct.iwl_mvm* %12, %struct.iwl_mvm** %14, align 8
  %15 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %16 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @RCU_INIT_POINTER(i32 %17, i32* null)
  %19 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %20 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %19, i32 0, i32 1
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load i32, i32* @IWL_MVM_STATUS_IN_HW_RESTART, align 4
  %23 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %24 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %23, i32 0, i32 6
  %25 = call i64 @test_bit(i32 %22, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %2
  %28 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %29 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %28, i32 0, i32 5
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %33 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %32, i32 0, i32 5
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %36, %31
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %34, align 8
  br label %39

39:                                               ; preds = %27, %2
  %40 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %41 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %42 = call i32 @iwl_mvm_mac_ctxt_init(%struct.iwl_mvm* %40, %struct.ieee80211_vif* %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %265

46:                                               ; preds = %39
  %47 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %48 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %47, i32 0, i32 5
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %51 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %56 = call i32 @rcu_assign_pointer(i32 %54, %struct.ieee80211_vif* %55)
  %57 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %58 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @NL80211_IFTYPE_P2P_DEVICE, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %46
  %63 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %64 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 8
  br label %67

67:                                               ; preds = %62, %46
  %68 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %69 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @NL80211_IFTYPE_AP, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %79, label %73

73:                                               ; preds = %67
  %74 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %75 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @NL80211_IFTYPE_ADHOC, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %104

79:                                               ; preds = %73, %67
  %80 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %81 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %82 = call i32 @iwl_mvm_alloc_bcast_sta(%struct.iwl_mvm* %80, %struct.ieee80211_vif* %81)
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %79
  %86 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %87 = call i32 @IWL_ERR(%struct.iwl_mvm* %86, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %253

88:                                               ; preds = %79
  %89 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %90 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %91 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %90, i32 0, i32 4
  %92 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %93 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @IWL_STA_MULTICAST, align 4
  %96 = call i32 @iwl_mvm_allocate_int_sta(%struct.iwl_mvm* %89, i32* %91, i32 0, i32 %94, i32 %95)
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %88
  br label %253

100:                                              ; preds = %88
  %101 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %102 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %103 = call i32 @iwl_mvm_vif_dbgfs_register(%struct.iwl_mvm* %101, %struct.ieee80211_vif* %102)
  br label %265

104:                                              ; preds = %73
  %105 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %106 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %109 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 4
  %112 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %113 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %114 = call i32 @iwl_mvm_mac_ctxt_add(%struct.iwl_mvm* %112, %struct.ieee80211_vif* %113)
  store i32 %114, i32* %7, align 4
  %115 = load i32, i32* %7, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %104
  br label %253

118:                                              ; preds = %104
  %119 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %120 = call i32 @iwl_mvm_power_update_mac(%struct.iwl_mvm* %119)
  store i32 %120, i32* %7, align 4
  %121 = load i32, i32* %7, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %118
  br label %247

124:                                              ; preds = %118
  %125 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %126 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %127 = call i32 @iwl_mvm_disable_beacon_filter(%struct.iwl_mvm* %125, %struct.ieee80211_vif* %126, i32 0)
  store i32 %127, i32* %7, align 4
  %128 = load i32, i32* %7, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %124
  br label %247

131:                                              ; preds = %124
  %132 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %133 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %132, i32 0, i32 3
  %134 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %133, align 8
  %135 = icmp ne %struct.iwl_mvm_vif* %134, null
  br i1 %135, label %158, label %136

136:                                              ; preds = %131
  %137 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %138 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @NL80211_IFTYPE_STATION, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %158

142:                                              ; preds = %136
  %143 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %144 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %158, label %147

147:                                              ; preds = %142
  %148 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %149 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %150 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %149, i32 0, i32 3
  store %struct.iwl_mvm_vif* %148, %struct.iwl_mvm_vif** %150, align 8
  %151 = load i32, i32* @IEEE80211_VIF_BEACON_FILTER, align 4
  %152 = load i32, i32* @IEEE80211_VIF_SUPPORTS_CQM_RSSI, align 4
  %153 = or i32 %151, %152
  %154 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %155 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = or i32 %156, %153
  store i32 %157, i32* %155, align 4
  br label %158

158:                                              ; preds = %147, %142, %136, %131
  %159 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %160 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @NL80211_IFTYPE_P2P_DEVICE, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %199

164:                                              ; preds = %158
  %165 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %166 = call i32* @iwl_mvm_get_free_phy_ctxt(%struct.iwl_mvm* %165)
  %167 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %168 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %167, i32 0, i32 1
  store i32* %166, i32** %168, align 8
  %169 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %170 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %169, i32 0, i32 1
  %171 = load i32*, i32** %170, align 8
  %172 = icmp ne i32* %171, null
  br i1 %172, label %176, label %173

173:                                              ; preds = %164
  %174 = load i32, i32* @ENOSPC, align 4
  %175 = sub nsw i32 0, %174
  store i32 %175, i32* %7, align 4
  br label %229

176:                                              ; preds = %164
  %177 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %178 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %179 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %178, i32 0, i32 1
  %180 = load i32*, i32** %179, align 8
  %181 = call i32 @iwl_mvm_phy_ctxt_ref(%struct.iwl_mvm* %177, i32* %180)
  %182 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %183 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %184 = call i32 @iwl_mvm_binding_add_vif(%struct.iwl_mvm* %182, %struct.ieee80211_vif* %183)
  store i32 %184, i32* %7, align 4
  %185 = load i32, i32* %7, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %176
  br label %223

188:                                              ; preds = %176
  %189 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %190 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %191 = call i32 @iwl_mvm_add_p2p_bcast_sta(%struct.iwl_mvm* %189, %struct.ieee80211_vif* %190)
  store i32 %191, i32* %7, align 4
  %192 = load i32, i32* %7, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %188
  br label %219

195:                                              ; preds = %188
  %196 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %197 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %198 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %197, i32 0, i32 4
  store %struct.ieee80211_vif* %196, %struct.ieee80211_vif** %198, align 8
  br label %199

199:                                              ; preds = %195, %158
  %200 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %201 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %202 = call i32 @iwl_mvm_tcm_add_vif(%struct.iwl_mvm* %200, %struct.ieee80211_vif* %201)
  %203 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %204 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %203, i32 0, i32 2
  %205 = load i32, i32* @iwl_mvm_channel_switch_disconnect_wk, align 4
  %206 = call i32 @INIT_DELAYED_WORK(i32* %204, i32 %205)
  %207 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %208 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* @NL80211_IFTYPE_MONITOR, align 4
  %211 = icmp eq i32 %209, %210
  br i1 %211, label %212, label %215

212:                                              ; preds = %199
  %213 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %214 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %213, i32 0, i32 0
  store i32 1, i32* %214, align 8
  br label %215

215:                                              ; preds = %212, %199
  %216 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %217 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %218 = call i32 @iwl_mvm_vif_dbgfs_register(%struct.iwl_mvm* %216, %struct.ieee80211_vif* %217)
  br label %265

219:                                              ; preds = %194
  %220 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %221 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %222 = call i32 @iwl_mvm_binding_remove_vif(%struct.iwl_mvm* %220, %struct.ieee80211_vif* %221)
  br label %223

223:                                              ; preds = %219, %187
  %224 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %225 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %226 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %225, i32 0, i32 1
  %227 = load i32*, i32** %226, align 8
  %228 = call i32 @iwl_mvm_phy_ctxt_unref(%struct.iwl_mvm* %224, i32* %227)
  br label %229

229:                                              ; preds = %223, %173
  %230 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %231 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %230, i32 0, i32 3
  %232 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %231, align 8
  %233 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %234 = icmp eq %struct.iwl_mvm_vif* %232, %233
  br i1 %234, label %235, label %246

235:                                              ; preds = %229
  %236 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %237 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %236, i32 0, i32 3
  store %struct.iwl_mvm_vif* null, %struct.iwl_mvm_vif** %237, align 8
  %238 = load i32, i32* @IEEE80211_VIF_BEACON_FILTER, align 4
  %239 = load i32, i32* @IEEE80211_VIF_SUPPORTS_CQM_RSSI, align 4
  %240 = or i32 %238, %239
  %241 = xor i32 %240, -1
  %242 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %243 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = and i32 %244, %241
  store i32 %245, i32* %243, align 4
  br label %246

246:                                              ; preds = %235, %229
  br label %247

247:                                              ; preds = %246, %130, %123
  %248 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %249 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %248, i32 0, i32 1
  store i32* null, i32** %249, align 8
  %250 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %251 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %252 = call i32 @iwl_mvm_mac_ctxt_remove(%struct.iwl_mvm* %250, %struct.ieee80211_vif* %251)
  br label %253

253:                                              ; preds = %247, %117, %99, %85
  %254 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %255 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = load i32, i32* @NL80211_IFTYPE_P2P_DEVICE, align 4
  %258 = icmp ne i32 %256, %257
  br i1 %258, label %259, label %264

259:                                              ; preds = %253
  %260 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %261 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 8
  %263 = add nsw i32 %262, -1
  store i32 %263, i32* %261, align 8
  br label %264

264:                                              ; preds = %259, %253
  br label %265

265:                                              ; preds = %264, %215, %100, %45
  %266 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %267 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %266, i32 0, i32 1
  %268 = call i32 @mutex_unlock(i32* %267)
  %269 = load i32, i32* %7, align 4
  ret i32 %269
}

declare dso_local %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw*) #1

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @iwl_mvm_mac_ctxt_init(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.ieee80211_vif*) #1

declare dso_local i32 @iwl_mvm_alloc_bcast_sta(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*) #1

declare dso_local i32 @iwl_mvm_allocate_int_sta(%struct.iwl_mvm*, i32*, i32, i32, i32) #1

declare dso_local i32 @iwl_mvm_vif_dbgfs_register(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @iwl_mvm_mac_ctxt_add(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @iwl_mvm_power_update_mac(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_mvm_disable_beacon_filter(%struct.iwl_mvm*, %struct.ieee80211_vif*, i32) #1

declare dso_local i32* @iwl_mvm_get_free_phy_ctxt(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_mvm_phy_ctxt_ref(%struct.iwl_mvm*, i32*) #1

declare dso_local i32 @iwl_mvm_binding_add_vif(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @iwl_mvm_add_p2p_bcast_sta(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @iwl_mvm_tcm_add_vif(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @iwl_mvm_binding_remove_vif(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @iwl_mvm_phy_ctxt_unref(%struct.iwl_mvm*, i32*) #1

declare dso_local i32 @iwl_mvm_mac_ctxt_remove(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
