; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_d3.c_iwl_mvm_report_wakeup_reasons.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_d3.c_iwl_mvm_report_wakeup_reasons.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32, i32, i64, i64, i32 }
%struct.ieee80211_vif = type { i32, i32 }
%struct.iwl_wowlan_status_data = type { i32, i32, i32, i32, i32* }
%struct.sk_buff = type { i32, i32* }
%struct.cfg80211_wowlan_wakeup = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.ieee80211_hdr = type { i32, i32 }

@IWL_WOWLAN_WAKEUP_BY_NON_WIRELESS = common dso_local global i32 0, align 4
@IWL_WOWLAN_WAKEUP_BY_MAGIC_PACKET = common dso_local global i32 0, align 4
@IWL_WOWLAN_WAKEUP_BY_PATTERN = common dso_local global i32 0, align 4
@IWL_WOWLAN_WAKEUP_BY_DISCONNECTION_ON_MISSED_BEACON = common dso_local global i32 0, align 4
@IWL_WOWLAN_WAKEUP_BY_DISCONNECTION_ON_DEAUTH = common dso_local global i32 0, align 4
@IWL_WOWLAN_WAKEUP_BY_GTK_REKEY_FAILURE = common dso_local global i32 0, align 4
@IWL_WOWLAN_WAKEUP_BY_RFKILL_DEASSERTED = common dso_local global i32 0, align 4
@IWL_WOWLAN_WAKEUP_BY_EAPOL_REQUEST = common dso_local global i32 0, align 4
@IWL_WOWLAN_WAKEUP_BY_FOUR_WAY_HANDSHAKE = common dso_local global i32 0, align 4
@IWL_WOWLAN_WAKEUP_BY_REM_WAKE_LINK_LOSS = common dso_local global i32 0, align 4
@IWL_WOWLAN_WAKEUP_BY_REM_WAKE_SIGNATURE_TABLE = common dso_local global i32 0, align 4
@IWL_WOWLAN_WAKEUP_BY_REM_WAKE_WAKEUP_PACKET = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, %struct.ieee80211_vif*, %struct.iwl_wowlan_status_data*)* @iwl_mvm_report_wakeup_reasons to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_report_wakeup_reasons(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1, %struct.iwl_wowlan_status_data* %2) #0 {
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.iwl_wowlan_status_data*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.cfg80211_wowlan_wakeup, align 8
  %9 = alloca %struct.cfg80211_wowlan_wakeup*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.ieee80211_hdr*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store %struct.iwl_wowlan_status_data* %2, %struct.iwl_wowlan_status_data** %6, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %7, align 8
  %20 = bitcast %struct.cfg80211_wowlan_wakeup* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %20, i8 0, i64 64, i1 false)
  %21 = bitcast i8* %20 to %struct.cfg80211_wowlan_wakeup*
  %22 = getelementptr inbounds %struct.cfg80211_wowlan_wakeup, %struct.cfg80211_wowlan_wakeup* %21, i32 0, i32 0
  store i32 -1, i32* %22, align 8
  store %struct.cfg80211_wowlan_wakeup* %8, %struct.cfg80211_wowlan_wakeup** %9, align 8
  %23 = load %struct.iwl_wowlan_status_data*, %struct.iwl_wowlan_status_data** %6, align 8
  %24 = getelementptr inbounds %struct.iwl_wowlan_status_data, %struct.iwl_wowlan_status_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @IWL_WOWLAN_WAKEUP_BY_NON_WIRELESS, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  store %struct.cfg80211_wowlan_wakeup* null, %struct.cfg80211_wowlan_wakeup** %9, align 8
  br label %278

30:                                               ; preds = %3
  %31 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %32 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @pm_wakeup_event(i32 %33, i32 0)
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @IWL_WOWLAN_WAKEUP_BY_MAGIC_PACKET, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = getelementptr inbounds %struct.cfg80211_wowlan_wakeup, %struct.cfg80211_wowlan_wakeup* %8, i32 0, i32 1
  store i32 1, i32* %40, align 4
  br label %41

41:                                               ; preds = %39, %30
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @IWL_WOWLAN_WAKEUP_BY_PATTERN, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load %struct.iwl_wowlan_status_data*, %struct.iwl_wowlan_status_data** %6, align 8
  %48 = getelementptr inbounds %struct.iwl_wowlan_status_data, %struct.iwl_wowlan_status_data* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.cfg80211_wowlan_wakeup, %struct.cfg80211_wowlan_wakeup* %8, i32 0, i32 0
  store i32 %49, i32* %50, align 8
  br label %51

51:                                               ; preds = %46, %41
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @IWL_WOWLAN_WAKEUP_BY_DISCONNECTION_ON_MISSED_BEACON, align 4
  %54 = load i32, i32* @IWL_WOWLAN_WAKEUP_BY_DISCONNECTION_ON_DEAUTH, align 4
  %55 = or i32 %53, %54
  %56 = and i32 %52, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.cfg80211_wowlan_wakeup, %struct.cfg80211_wowlan_wakeup* %8, i32 0, i32 2
  store i32 1, i32* %59, align 8
  br label %60

60:                                               ; preds = %58, %51
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @IWL_WOWLAN_WAKEUP_BY_GTK_REKEY_FAILURE, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.cfg80211_wowlan_wakeup, %struct.cfg80211_wowlan_wakeup* %8, i32 0, i32 3
  store i32 1, i32* %66, align 4
  br label %67

67:                                               ; preds = %65, %60
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* @IWL_WOWLAN_WAKEUP_BY_RFKILL_DEASSERTED, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.cfg80211_wowlan_wakeup, %struct.cfg80211_wowlan_wakeup* %8, i32 0, i32 4
  store i32 1, i32* %73, align 8
  br label %74

74:                                               ; preds = %72, %67
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* @IWL_WOWLAN_WAKEUP_BY_EAPOL_REQUEST, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.cfg80211_wowlan_wakeup, %struct.cfg80211_wowlan_wakeup* %8, i32 0, i32 5
  store i32 1, i32* %80, align 4
  br label %81

81:                                               ; preds = %79, %74
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* @IWL_WOWLAN_WAKEUP_BY_FOUR_WAY_HANDSHAKE, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.cfg80211_wowlan_wakeup, %struct.cfg80211_wowlan_wakeup* %8, i32 0, i32 6
  store i32 1, i32* %87, align 8
  br label %88

88:                                               ; preds = %86, %81
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* @IWL_WOWLAN_WAKEUP_BY_REM_WAKE_LINK_LOSS, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.cfg80211_wowlan_wakeup, %struct.cfg80211_wowlan_wakeup* %8, i32 0, i32 7
  store i32 1, i32* %94, align 4
  br label %95

95:                                               ; preds = %93, %88
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* @IWL_WOWLAN_WAKEUP_BY_REM_WAKE_SIGNATURE_TABLE, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.cfg80211_wowlan_wakeup, %struct.cfg80211_wowlan_wakeup* %8, i32 0, i32 8
  store i32 1, i32* %101, align 8
  br label %102

102:                                              ; preds = %100, %95
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* @IWL_WOWLAN_WAKEUP_BY_REM_WAKE_WAKEUP_PACKET, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %102
  %108 = getelementptr inbounds %struct.cfg80211_wowlan_wakeup, %struct.cfg80211_wowlan_wakeup* %8, i32 0, i32 9
  store i32 1, i32* %108, align 4
  br label %109

109:                                              ; preds = %107, %102
  %110 = load %struct.iwl_wowlan_status_data*, %struct.iwl_wowlan_status_data** %6, align 8
  %111 = getelementptr inbounds %struct.iwl_wowlan_status_data, %struct.iwl_wowlan_status_data* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %277

114:                                              ; preds = %109
  %115 = load %struct.iwl_wowlan_status_data*, %struct.iwl_wowlan_status_data** %6, align 8
  %116 = getelementptr inbounds %struct.iwl_wowlan_status_data, %struct.iwl_wowlan_status_data* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  store i32 %117, i32* %11, align 4
  %118 = load %struct.iwl_wowlan_status_data*, %struct.iwl_wowlan_status_data** %6, align 8
  %119 = getelementptr inbounds %struct.iwl_wowlan_status_data, %struct.iwl_wowlan_status_data* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %12, align 4
  %121 = load %struct.iwl_wowlan_status_data*, %struct.iwl_wowlan_status_data** %6, align 8
  %122 = getelementptr inbounds %struct.iwl_wowlan_status_data, %struct.iwl_wowlan_status_data* %121, i32 0, i32 4
  %123 = load i32*, i32** %122, align 8
  store i32* %123, i32** %13, align 8
  %124 = load i32*, i32** %13, align 8
  %125 = bitcast i32* %124 to i8*
  %126 = bitcast i8* %125 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %126, %struct.ieee80211_hdr** %14, align 8
  %127 = load i32, i32* %12, align 4
  %128 = load i32, i32* %11, align 4
  %129 = sub nsw i32 %127, %128
  store i32 %129, i32* %15, align 4
  %130 = load i32, i32* %15, align 4
  %131 = icmp slt i32 %130, 0
  %132 = zext i1 %131 to i32
  %133 = call i64 @WARN_ON_ONCE(i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %114
  store i32 0, i32* %15, align 4
  br label %136

136:                                              ; preds = %135, %114
  %137 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %14, align 8
  %138 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i64 @ieee80211_is_data(i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %251

142:                                              ; preds = %136
  %143 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %14, align 8
  %144 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @ieee80211_hdrlen(i32 %145)
  store i32 %146, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 4, i32* %18, align 4
  %147 = load i32, i32* %11, align 4
  %148 = load i32, i32* @GFP_KERNEL, align 4
  %149 = call %struct.sk_buff* @alloc_skb(i32 %147, i32 %148)
  store %struct.sk_buff* %149, %struct.sk_buff** %7, align 8
  %150 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %151 = icmp ne %struct.sk_buff* %150, null
  br i1 %151, label %153, label %152

152:                                              ; preds = %142
  br label %278

153:                                              ; preds = %142
  %154 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %155 = load i32*, i32** %13, align 8
  %156 = load i32, i32* %16, align 4
  %157 = call i32 @skb_put_data(%struct.sk_buff* %154, i32* %155, i32 %156)
  %158 = load i32, i32* %16, align 4
  %159 = load i32*, i32** %13, align 8
  %160 = sext i32 %158 to i64
  %161 = getelementptr inbounds i32, i32* %159, i64 %160
  store i32* %161, i32** %13, align 8
  %162 = load i32, i32* %16, align 4
  %163 = load i32, i32* %11, align 4
  %164 = sub nsw i32 %163, %162
  store i32 %164, i32* %11, align 4
  %165 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %14, align 8
  %166 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = call i64 @ieee80211_has_protected(i32 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %199

170:                                              ; preds = %153
  %171 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %14, align 8
  %172 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = call i64 @is_multicast_ether_addr(i32 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %187

176:                                              ; preds = %170
  %177 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %178 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  store i32 %179, i32* %17, align 4
  %180 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %181 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %180, i32 0, i32 3
  %182 = load i64, i64* %181, align 8
  %183 = load i32, i32* %18, align 4
  %184 = sext i32 %183 to i64
  %185 = add nsw i64 %184, %182
  %186 = trunc i64 %185 to i32
  store i32 %186, i32* %18, align 4
  br label %198

187:                                              ; preds = %170
  %188 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %189 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  store i32 %190, i32* %17, align 4
  %191 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %192 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %191, i32 0, i32 2
  %193 = load i64, i64* %192, align 8
  %194 = load i32, i32* %18, align 4
  %195 = sext i32 %194 to i64
  %196 = add nsw i64 %195, %193
  %197 = trunc i64 %196 to i32
  store i32 %197, i32* %18, align 4
  br label %198

198:                                              ; preds = %187, %176
  br label %199

199:                                              ; preds = %198, %153
  %200 = load i32, i32* %15, align 4
  %201 = load i32, i32* %18, align 4
  %202 = icmp sge i32 %200, %201
  br i1 %202, label %203, label %207

203:                                              ; preds = %199
  store i32 0, i32* %18, align 4
  %204 = load i32, i32* %18, align 4
  %205 = load i32, i32* %15, align 4
  %206 = sub nsw i32 %205, %204
  store i32 %206, i32* %15, align 4
  br label %211

207:                                              ; preds = %199
  %208 = load i32, i32* %15, align 4
  %209 = load i32, i32* %18, align 4
  %210 = sub nsw i32 %209, %208
  store i32 %210, i32* %18, align 4
  store i32 0, i32* %15, align 4
  br label %211

211:                                              ; preds = %207, %203
  %212 = load i32, i32* %17, align 4
  %213 = load i32, i32* %18, align 4
  %214 = add nsw i32 %212, %213
  %215 = load i32, i32* %11, align 4
  %216 = sub nsw i32 %215, %214
  store i32 %216, i32* %11, align 4
  %217 = load i32, i32* %17, align 4
  %218 = load i32*, i32** %13, align 8
  %219 = sext i32 %217 to i64
  %220 = getelementptr inbounds i32, i32* %218, i64 %219
  store i32* %220, i32** %13, align 8
  %221 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %222 = load i32*, i32** %13, align 8
  %223 = load i32, i32* %11, align 4
  %224 = call i32 @skb_put_data(%struct.sk_buff* %221, i32* %222, i32 %223)
  %225 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %226 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %227 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %230 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = call i64 @ieee80211_data_to_8023(%struct.sk_buff* %225, i32 %228, i32 %231)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %235

234:                                              ; preds = %211
  br label %278

235:                                              ; preds = %211
  %236 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %237 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %236, i32 0, i32 1
  %238 = load i32*, i32** %237, align 8
  %239 = getelementptr inbounds %struct.cfg80211_wowlan_wakeup, %struct.cfg80211_wowlan_wakeup* %8, i32 0, i32 13
  store i32* %238, i32** %239, align 8
  %240 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %241 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = getelementptr inbounds %struct.cfg80211_wowlan_wakeup, %struct.cfg80211_wowlan_wakeup* %8, i32 0, i32 10
  store i32 %242, i32* %243, align 8
  %244 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %245 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = load i32, i32* %15, align 4
  %248 = sub nsw i32 %246, %247
  %249 = getelementptr inbounds %struct.cfg80211_wowlan_wakeup, %struct.cfg80211_wowlan_wakeup* %8, i32 0, i32 11
  store i32 %248, i32* %249, align 4
  %250 = getelementptr inbounds %struct.cfg80211_wowlan_wakeup, %struct.cfg80211_wowlan_wakeup* %8, i32 0, i32 12
  store i32 0, i32* %250, align 8
  br label %276

251:                                              ; preds = %136
  store i32 4, i32* %19, align 4
  %252 = load i32, i32* %15, align 4
  %253 = icmp sge i32 %252, 4
  br i1 %253, label %254, label %257

254:                                              ; preds = %251
  %255 = load i32, i32* %15, align 4
  %256 = sub nsw i32 %255, 4
  store i32 %256, i32* %15, align 4
  store i32 0, i32* %19, align 4
  br label %261

257:                                              ; preds = %251
  %258 = load i32, i32* %15, align 4
  %259 = load i32, i32* %19, align 4
  %260 = sub nsw i32 %259, %258
  store i32 %260, i32* %19, align 4
  store i32 0, i32* %15, align 4
  br label %261

261:                                              ; preds = %257, %254
  %262 = load i32, i32* %19, align 4
  %263 = load i32, i32* %11, align 4
  %264 = sub nsw i32 %263, %262
  store i32 %264, i32* %11, align 4
  %265 = load %struct.iwl_wowlan_status_data*, %struct.iwl_wowlan_status_data** %6, align 8
  %266 = getelementptr inbounds %struct.iwl_wowlan_status_data, %struct.iwl_wowlan_status_data* %265, i32 0, i32 4
  %267 = load i32*, i32** %266, align 8
  %268 = getelementptr inbounds %struct.cfg80211_wowlan_wakeup, %struct.cfg80211_wowlan_wakeup* %8, i32 0, i32 13
  store i32* %267, i32** %268, align 8
  %269 = load i32, i32* %11, align 4
  %270 = getelementptr inbounds %struct.cfg80211_wowlan_wakeup, %struct.cfg80211_wowlan_wakeup* %8, i32 0, i32 10
  store i32 %269, i32* %270, align 8
  %271 = load i32, i32* %12, align 4
  %272 = load i32, i32* %15, align 4
  %273 = sub nsw i32 %271, %272
  %274 = getelementptr inbounds %struct.cfg80211_wowlan_wakeup, %struct.cfg80211_wowlan_wakeup* %8, i32 0, i32 11
  store i32 %273, i32* %274, align 4
  %275 = getelementptr inbounds %struct.cfg80211_wowlan_wakeup, %struct.cfg80211_wowlan_wakeup* %8, i32 0, i32 12
  store i32 1, i32* %275, align 8
  br label %276

276:                                              ; preds = %261, %235
  br label %277

277:                                              ; preds = %276, %109
  br label %278

278:                                              ; preds = %277, %234, %152, %29
  %279 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %280 = load %struct.cfg80211_wowlan_wakeup*, %struct.cfg80211_wowlan_wakeup** %9, align 8
  %281 = load i32, i32* @GFP_KERNEL, align 4
  %282 = call i32 @ieee80211_report_wowlan_wakeup(%struct.ieee80211_vif* %279, %struct.cfg80211_wowlan_wakeup* %280, i32 %281)
  %283 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %284 = call i32 @kfree_skb(%struct.sk_buff* %283)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @pm_wakeup_event(i32, i32) #2

declare dso_local i64 @WARN_ON_ONCE(i32) #2

declare dso_local i64 @ieee80211_is_data(i32) #2

declare dso_local i32 @ieee80211_hdrlen(i32) #2

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #2

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i32*, i32) #2

declare dso_local i64 @ieee80211_has_protected(i32) #2

declare dso_local i64 @is_multicast_ether_addr(i32) #2

declare dso_local i64 @ieee80211_data_to_8023(%struct.sk_buff*, i32, i32) #2

declare dso_local i32 @ieee80211_report_wowlan_wakeup(%struct.ieee80211_vif*, %struct.cfg80211_wowlan_wakeup*, i32) #2

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
