; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_roc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_roc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_channel = type { i32 }
%struct.iwl_mvm = type { i32, %struct.iwl_mvm_phy_ctxt*, %struct.TYPE_2__*, i32 }
%struct.iwl_mvm_phy_ctxt = type { i64, %struct.ieee80211_channel* }
%struct.TYPE_2__ = type { i32 }
%struct.iwl_mvm_vif = type { %struct.iwl_mvm_phy_ctxt* }
%struct.cfg80211_chan_def = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"enter (%d, %d, %d)\0A\00", align 1
@IWL_UCODE_TLV_CAPA_HOTSPOT_SUPPORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"hotspot not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"vif isn't P2P_DEVICE: %d\0A\00", align 1
@NUM_PHY_CTX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Failed unbinding P2P_DEVICE\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Failed binding P2P_DEVICE\0A\00", align 1
@NL80211_CHAN_NO_HT = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"Failed to change PHY context\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"leave\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_channel*, i32, i32)* @iwl_mvm_roc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_roc(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_channel* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca %struct.ieee80211_vif*, align 8
  %8 = alloca %struct.ieee80211_channel*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.iwl_mvm*, align 8
  %12 = alloca %struct.iwl_mvm_vif*, align 8
  %13 = alloca %struct.cfg80211_chan_def, align 4
  %14 = alloca %struct.iwl_mvm_phy_ctxt*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %7, align 8
  store %struct.ieee80211_channel* %2, %struct.ieee80211_channel** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %18 = call %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw* %17)
  store %struct.iwl_mvm* %18, %struct.iwl_mvm** %11, align 8
  %19 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %20 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %19)
  store %struct.iwl_mvm_vif* %20, %struct.iwl_mvm_vif** %12, align 8
  %21 = load %struct.iwl_mvm*, %struct.iwl_mvm** %11, align 8
  %22 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %23 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_MAC80211(%struct.iwl_mvm* %21, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25, i32 %26)
  %28 = load %struct.iwl_mvm*, %struct.iwl_mvm** %11, align 8
  %29 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %28, i32 0, i32 3
  %30 = call i32 @flush_work(i32* %29)
  %31 = load %struct.iwl_mvm*, %struct.iwl_mvm** %11, align 8
  %32 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %31, i32 0, i32 0
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %35 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %57 [
    i32 128, label %37
    i32 129, label %56
  ]

37:                                               ; preds = %5
  %38 = load %struct.iwl_mvm*, %struct.iwl_mvm** %11, align 8
  %39 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %38, i32 0, i32 2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* @IWL_UCODE_TLV_CAPA_HOTSPOT_SUPPORT, align 4
  %43 = call i32 @fw_has_capa(i32* %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %37
  %46 = load %struct.iwl_mvm*, %struct.iwl_mvm** %11, align 8
  %47 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %48 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @iwl_mvm_send_aux_roc_cmd(%struct.iwl_mvm* %46, %struct.ieee80211_channel* %47, %struct.ieee80211_vif* %48, i32 %49)
  store i32 %50, i32* %15, align 4
  br label %216

51:                                               ; preds = %37
  %52 = load %struct.iwl_mvm*, %struct.iwl_mvm** %11, align 8
  %53 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_ERR(%struct.iwl_mvm* %52, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %15, align 4
  br label %216

56:                                               ; preds = %5
  br label %65

57:                                               ; preds = %5
  %58 = load %struct.iwl_mvm*, %struct.iwl_mvm** %11, align 8
  %59 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %60 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_ERR(%struct.iwl_mvm* %58, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %15, align 4
  br label %216

65:                                               ; preds = %56
  store i32 0, i32* %16, align 4
  br label %66

66:                                               ; preds = %130, %65
  %67 = load i32, i32* %16, align 4
  %68 = load i32, i32* @NUM_PHY_CTX, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %133

70:                                               ; preds = %66
  %71 = load %struct.iwl_mvm*, %struct.iwl_mvm** %11, align 8
  %72 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %71, i32 0, i32 1
  %73 = load %struct.iwl_mvm_phy_ctxt*, %struct.iwl_mvm_phy_ctxt** %72, align 8
  %74 = load i32, i32* %16, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.iwl_mvm_phy_ctxt, %struct.iwl_mvm_phy_ctxt* %73, i64 %75
  store %struct.iwl_mvm_phy_ctxt* %76, %struct.iwl_mvm_phy_ctxt** %14, align 8
  %77 = load %struct.iwl_mvm_phy_ctxt*, %struct.iwl_mvm_phy_ctxt** %14, align 8
  %78 = getelementptr inbounds %struct.iwl_mvm_phy_ctxt, %struct.iwl_mvm_phy_ctxt* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %70
  %82 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %12, align 8
  %83 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %82, i32 0, i32 0
  %84 = load %struct.iwl_mvm_phy_ctxt*, %struct.iwl_mvm_phy_ctxt** %83, align 8
  %85 = load %struct.iwl_mvm_phy_ctxt*, %struct.iwl_mvm_phy_ctxt** %14, align 8
  %86 = icmp eq %struct.iwl_mvm_phy_ctxt* %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %81, %70
  br label %130

88:                                               ; preds = %81
  %89 = load %struct.iwl_mvm_phy_ctxt*, %struct.iwl_mvm_phy_ctxt** %14, align 8
  %90 = getelementptr inbounds %struct.iwl_mvm_phy_ctxt, %struct.iwl_mvm_phy_ctxt* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %129

93:                                               ; preds = %88
  %94 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %95 = load %struct.iwl_mvm_phy_ctxt*, %struct.iwl_mvm_phy_ctxt** %14, align 8
  %96 = getelementptr inbounds %struct.iwl_mvm_phy_ctxt, %struct.iwl_mvm_phy_ctxt* %95, i32 0, i32 1
  %97 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %96, align 8
  %98 = icmp eq %struct.ieee80211_channel* %94, %97
  br i1 %98, label %99, label %129

99:                                               ; preds = %93
  %100 = load %struct.iwl_mvm*, %struct.iwl_mvm** %11, align 8
  %101 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %102 = call i32 @iwl_mvm_binding_remove_vif(%struct.iwl_mvm* %100, %struct.ieee80211_vif* %101)
  store i32 %102, i32* %15, align 4
  %103 = load i32, i32* %15, align 4
  %104 = call i64 @WARN(i32 %103, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %99
  br label %216

107:                                              ; preds = %99
  %108 = load %struct.iwl_mvm*, %struct.iwl_mvm** %11, align 8
  %109 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %12, align 8
  %110 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %109, i32 0, i32 0
  %111 = load %struct.iwl_mvm_phy_ctxt*, %struct.iwl_mvm_phy_ctxt** %110, align 8
  %112 = call i32 @iwl_mvm_phy_ctxt_unref(%struct.iwl_mvm* %108, %struct.iwl_mvm_phy_ctxt* %111)
  %113 = load %struct.iwl_mvm_phy_ctxt*, %struct.iwl_mvm_phy_ctxt** %14, align 8
  %114 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %12, align 8
  %115 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %114, i32 0, i32 0
  store %struct.iwl_mvm_phy_ctxt* %113, %struct.iwl_mvm_phy_ctxt** %115, align 8
  %116 = load %struct.iwl_mvm*, %struct.iwl_mvm** %11, align 8
  %117 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %118 = call i32 @iwl_mvm_binding_add_vif(%struct.iwl_mvm* %116, %struct.ieee80211_vif* %117)
  store i32 %118, i32* %15, align 4
  %119 = load i32, i32* %15, align 4
  %120 = call i64 @WARN(i32 %119, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %107
  br label %216

123:                                              ; preds = %107
  %124 = load %struct.iwl_mvm*, %struct.iwl_mvm** %11, align 8
  %125 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %12, align 8
  %126 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %125, i32 0, i32 0
  %127 = load %struct.iwl_mvm_phy_ctxt*, %struct.iwl_mvm_phy_ctxt** %126, align 8
  %128 = call i32 @iwl_mvm_phy_ctxt_ref(%struct.iwl_mvm* %124, %struct.iwl_mvm_phy_ctxt* %127)
  br label %210

129:                                              ; preds = %93, %88
  br label %130

130:                                              ; preds = %129, %87
  %131 = load i32, i32* %16, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %16, align 4
  br label %66

133:                                              ; preds = %66
  %134 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %135 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %12, align 8
  %136 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %135, i32 0, i32 0
  %137 = load %struct.iwl_mvm_phy_ctxt*, %struct.iwl_mvm_phy_ctxt** %136, align 8
  %138 = getelementptr inbounds %struct.iwl_mvm_phy_ctxt, %struct.iwl_mvm_phy_ctxt* %137, i32 0, i32 1
  %139 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %138, align 8
  %140 = icmp eq %struct.ieee80211_channel* %134, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %133
  br label %210

142:                                              ; preds = %133
  %143 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %144 = load i32, i32* @NL80211_CHAN_NO_HT, align 4
  %145 = call i32 @cfg80211_chandef_create(%struct.cfg80211_chan_def* %13, %struct.ieee80211_channel* %143, i32 %144)
  %146 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %12, align 8
  %147 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %146, i32 0, i32 0
  %148 = load %struct.iwl_mvm_phy_ctxt*, %struct.iwl_mvm_phy_ctxt** %147, align 8
  %149 = getelementptr inbounds %struct.iwl_mvm_phy_ctxt, %struct.iwl_mvm_phy_ctxt* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = icmp eq i64 %150, 1
  br i1 %151, label %152, label %162

152:                                              ; preds = %142
  %153 = load %struct.iwl_mvm*, %struct.iwl_mvm** %11, align 8
  %154 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %12, align 8
  %155 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %154, i32 0, i32 0
  %156 = load %struct.iwl_mvm_phy_ctxt*, %struct.iwl_mvm_phy_ctxt** %155, align 8
  %157 = call i32 @iwl_mvm_phy_ctxt_changed(%struct.iwl_mvm* %153, %struct.iwl_mvm_phy_ctxt* %156, %struct.cfg80211_chan_def* %13, i32 1, i32 1)
  store i32 %157, i32* %15, align 4
  %158 = load i32, i32* %15, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %152
  br label %216

161:                                              ; preds = %152
  br label %209

162:                                              ; preds = %142
  %163 = load %struct.iwl_mvm*, %struct.iwl_mvm** %11, align 8
  %164 = call %struct.iwl_mvm_phy_ctxt* @iwl_mvm_get_free_phy_ctxt(%struct.iwl_mvm* %163)
  store %struct.iwl_mvm_phy_ctxt* %164, %struct.iwl_mvm_phy_ctxt** %14, align 8
  %165 = load %struct.iwl_mvm_phy_ctxt*, %struct.iwl_mvm_phy_ctxt** %14, align 8
  %166 = icmp ne %struct.iwl_mvm_phy_ctxt* %165, null
  br i1 %166, label %170, label %167

167:                                              ; preds = %162
  %168 = load i32, i32* @ENOSPC, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %15, align 4
  br label %216

170:                                              ; preds = %162
  %171 = load %struct.iwl_mvm*, %struct.iwl_mvm** %11, align 8
  %172 = load %struct.iwl_mvm_phy_ctxt*, %struct.iwl_mvm_phy_ctxt** %14, align 8
  %173 = call i32 @iwl_mvm_phy_ctxt_changed(%struct.iwl_mvm* %171, %struct.iwl_mvm_phy_ctxt* %172, %struct.cfg80211_chan_def* %13, i32 1, i32 1)
  store i32 %173, i32* %15, align 4
  %174 = load i32, i32* %15, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %170
  %177 = load %struct.iwl_mvm*, %struct.iwl_mvm** %11, align 8
  %178 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_ERR(%struct.iwl_mvm* %177, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  br label %216

179:                                              ; preds = %170
  %180 = load %struct.iwl_mvm*, %struct.iwl_mvm** %11, align 8
  %181 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %182 = call i32 @iwl_mvm_binding_remove_vif(%struct.iwl_mvm* %180, %struct.ieee80211_vif* %181)
  store i32 %182, i32* %15, align 4
  %183 = load i32, i32* %15, align 4
  %184 = call i64 @WARN(i32 %183, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %179
  br label %216

187:                                              ; preds = %179
  %188 = load %struct.iwl_mvm*, %struct.iwl_mvm** %11, align 8
  %189 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %12, align 8
  %190 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %189, i32 0, i32 0
  %191 = load %struct.iwl_mvm_phy_ctxt*, %struct.iwl_mvm_phy_ctxt** %190, align 8
  %192 = call i32 @iwl_mvm_phy_ctxt_unref(%struct.iwl_mvm* %188, %struct.iwl_mvm_phy_ctxt* %191)
  %193 = load %struct.iwl_mvm_phy_ctxt*, %struct.iwl_mvm_phy_ctxt** %14, align 8
  %194 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %12, align 8
  %195 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %194, i32 0, i32 0
  store %struct.iwl_mvm_phy_ctxt* %193, %struct.iwl_mvm_phy_ctxt** %195, align 8
  %196 = load %struct.iwl_mvm*, %struct.iwl_mvm** %11, align 8
  %197 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %198 = call i32 @iwl_mvm_binding_add_vif(%struct.iwl_mvm* %196, %struct.ieee80211_vif* %197)
  store i32 %198, i32* %15, align 4
  %199 = load i32, i32* %15, align 4
  %200 = call i64 @WARN(i32 %199, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %187
  br label %216

203:                                              ; preds = %187
  %204 = load %struct.iwl_mvm*, %struct.iwl_mvm** %11, align 8
  %205 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %12, align 8
  %206 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %205, i32 0, i32 0
  %207 = load %struct.iwl_mvm_phy_ctxt*, %struct.iwl_mvm_phy_ctxt** %206, align 8
  %208 = call i32 @iwl_mvm_phy_ctxt_ref(%struct.iwl_mvm* %204, %struct.iwl_mvm_phy_ctxt* %207)
  br label %209

209:                                              ; preds = %203, %161
  br label %210

210:                                              ; preds = %209, %141, %123
  %211 = load %struct.iwl_mvm*, %struct.iwl_mvm** %11, align 8
  %212 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %213 = load i32, i32* %9, align 4
  %214 = load i32, i32* %10, align 4
  %215 = call i32 @iwl_mvm_start_p2p_roc(%struct.iwl_mvm* %211, %struct.ieee80211_vif* %212, i32 %213, i32 %214)
  store i32 %215, i32* %15, align 4
  br label %216

216:                                              ; preds = %210, %202, %186, %176, %167, %160, %122, %106, %57, %51, %45
  %217 = load %struct.iwl_mvm*, %struct.iwl_mvm** %11, align 8
  %218 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %217, i32 0, i32 0
  %219 = call i32 @mutex_unlock(i32* %218)
  %220 = load %struct.iwl_mvm*, %struct.iwl_mvm** %11, align 8
  %221 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_MAC80211(%struct.iwl_mvm* %220, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %222 = load i32, i32* %15, align 4
  ret i32 %222
}

declare dso_local %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw*) #1

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local i32 @IWL_DEBUG_MAC80211(%struct.iwl_mvm*, i8*, ...) #1

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @fw_has_capa(i32*, i32) #1

declare dso_local i32 @iwl_mvm_send_aux_roc_cmd(%struct.iwl_mvm*, %struct.ieee80211_channel*, %struct.ieee80211_vif*, i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*, ...) #1

declare dso_local i32 @iwl_mvm_binding_remove_vif(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i64 @WARN(i32, i8*) #1

declare dso_local i32 @iwl_mvm_phy_ctxt_unref(%struct.iwl_mvm*, %struct.iwl_mvm_phy_ctxt*) #1

declare dso_local i32 @iwl_mvm_binding_add_vif(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @iwl_mvm_phy_ctxt_ref(%struct.iwl_mvm*, %struct.iwl_mvm_phy_ctxt*) #1

declare dso_local i32 @cfg80211_chandef_create(%struct.cfg80211_chan_def*, %struct.ieee80211_channel*, i32) #1

declare dso_local i32 @iwl_mvm_phy_ctxt_changed(%struct.iwl_mvm*, %struct.iwl_mvm_phy_ctxt*, %struct.cfg80211_chan_def*, i32, i32) #1

declare dso_local %struct.iwl_mvm_phy_ctxt* @iwl_mvm_get_free_phy_ctxt(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_mvm_start_p2p_roc(%struct.iwl_mvm*, %struct.ieee80211_vif*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
