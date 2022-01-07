; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_tx.c_iwl_mvm_tx_skb_non_sta.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_tx.c_iwl_mvm_tx_skb_non_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32, i32, i32, %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.sk_buff = type { i64, i32, i64 }
%struct.ieee80211_hdr = type { i32 }
%struct.ieee80211_tx_info = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64 }
%struct.iwl_device_cmd = type { i32 }
%struct.iwl_mvm_vif = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_14__ = type { i32 }

@IEEE80211_TX_CTL_TX_OFFCHAN = common dso_local global i32 0, align 4
@IWL_MVM_NON_TRANSMITTING_AP = common dso_local global i64 0, align 8
@IEEE80211_MAX_DATA_LEN = common dso_local global i64 0, align 8
@IEEE80211_TX_CTL_AMPDU = common dso_local global i32 0, align 4
@NL80211_IFTYPE_P2P_DEVICE = common dso_local global i64 0, align 8
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@NL80211_IFTYPE_MONITOR = common dso_local global i64 0, align 8
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"No queue was found. Dropping TX\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"station Id %d, queue=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_mvm_tx_skb_non_sta(%struct.iwl_mvm* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ieee80211_hdr*, align 8
  %7 = alloca %struct.ieee80211_tx_info, align 8
  %8 = alloca %struct.iwl_device_cmd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.iwl_mvm_vif*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %18, %struct.ieee80211_hdr** %6, align 8
  %19 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %20 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ieee80211_hdrlen(i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %24 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %11, align 4
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = call %struct.TYPE_14__* @IEEE80211_SKB_CB(%struct.sk_buff* %26)
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @IEEE80211_TX_CTL_TX_OFFCHAN, align 4
  %31 = and i32 %29, %30
  store i32 %31, i32* %12, align 4
  store i32 -1, i32* %13, align 4
  %32 = load i64, i64* @IWL_MVM_NON_TRANSMITTING_AP, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %2
  %35 = load i32, i32* %11, align 4
  %36 = call i64 @ieee80211_is_probe_resp(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i32 -1, i32* %3, align 4
  br label %202

39:                                               ; preds = %34, %2
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @memcpy(%struct.ieee80211_tx_info* %7, i32 %42, i32 16)
  %44 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @IEEE80211_MAX_DATA_LEN, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %47, %49
  %51 = icmp sgt i64 %46, %50
  %52 = zext i1 %51 to i32
  %53 = call i64 @WARN_ON_ONCE(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %39
  store i32 -1, i32* %3, align 4
  br label %202

56:                                               ; preds = %39
  %57 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %7, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @IEEE80211_TX_CTL_AMPDU, align 4
  %60 = and i32 %58, %59
  %61 = call i64 @WARN_ON_ONCE(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  store i32 -1, i32* %3, align 4
  br label %202

64:                                               ; preds = %56
  %65 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %7, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %66, align 8
  %68 = icmp ne %struct.TYPE_13__* %67, null
  br i1 %68, label %69, label %155

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %7, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %71, align 8
  %73 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.TYPE_13__* %72)
  store %struct.iwl_mvm_vif* %73, %struct.iwl_mvm_vif** %14, align 8
  %74 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %7, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @NL80211_IFTYPE_P2P_DEVICE, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %97, label %81

81:                                               ; preds = %69
  %82 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %7, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %97, label %89

89:                                               ; preds = %81
  %90 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %7, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %117

97:                                               ; preds = %89, %81, %69
  %98 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %99 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @ieee80211_is_data(i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %97
  %104 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %14, align 8
  %105 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %9, align 4
  br label %113

108:                                              ; preds = %97
  %109 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %14, align 8
  %110 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %9, align 4
  br label %113

113:                                              ; preds = %108, %103
  %114 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %115 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %116 = call i32 @iwl_mvm_get_ctrl_vif_queue(%struct.iwl_mvm* %114, %struct.ieee80211_tx_info* %7, %struct.ieee80211_hdr* %115)
  store i32 %116, i32* %13, align 4
  br label %154

117:                                              ; preds = %89
  %118 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %7, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @NL80211_IFTYPE_MONITOR, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %133

125:                                              ; preds = %117
  %126 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %127 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %13, align 4
  %129 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %130 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %129, i32 0, i32 4
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  store i32 %132, i32* %9, align 4
  br label %153

133:                                              ; preds = %117
  %134 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %7, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %152

141:                                              ; preds = %133
  %142 = load i32, i32* %12, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %152

144:                                              ; preds = %141
  %145 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %146 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %145, i32 0, i32 3
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  store i32 %148, i32* %9, align 4
  %149 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %150 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  store i32 %151, i32* %13, align 4
  br label %152

152:                                              ; preds = %144, %141, %133
  br label %153

153:                                              ; preds = %152, %125
  br label %154

154:                                              ; preds = %153, %113
  br label %155

155:                                              ; preds = %154, %64
  %156 = load i32, i32* %13, align 4
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %155
  %159 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %160 = call i32 @IWL_ERR(%struct.iwl_mvm* %159, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %202

161:                                              ; preds = %155
  %162 = load i32, i32* %11, align 4
  %163 = call i64 @ieee80211_is_probe_resp(i32 %162)
  %164 = call i64 @unlikely(i64 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %161
  %167 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %168 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %169 = call i32 @iwl_mvm_probe_resp_set_noa(%struct.iwl_mvm* %167, %struct.sk_buff* %168)
  br label %170

170:                                              ; preds = %166, %161
  %171 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %172 = load i32, i32* %9, align 4
  %173 = load i32, i32* %13, align 4
  %174 = call i32 @IWL_DEBUG_TX(%struct.iwl_mvm* %171, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %172, i32 %173)
  %175 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %176 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %177 = load i32, i32* %10, align 4
  %178 = load i32, i32* %9, align 4
  %179 = call %struct.iwl_device_cmd* @iwl_mvm_set_tx_params(%struct.iwl_mvm* %175, %struct.sk_buff* %176, %struct.ieee80211_tx_info* %7, i32 %177, i32* null, i32 %178)
  store %struct.iwl_device_cmd* %179, %struct.iwl_device_cmd** %8, align 8
  %180 = load %struct.iwl_device_cmd*, %struct.iwl_device_cmd** %8, align 8
  %181 = icmp ne %struct.iwl_device_cmd* %180, null
  br i1 %181, label %183, label %182

182:                                              ; preds = %170
  store i32 -1, i32* %3, align 4
  br label %202

183:                                              ; preds = %170
  %184 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %185 = load %struct.iwl_device_cmd*, %struct.iwl_device_cmd** %8, align 8
  %186 = call i32 @iwl_mvm_skb_prepare_status(%struct.sk_buff* %184, %struct.iwl_device_cmd* %185)
  %187 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %188 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %191 = load %struct.iwl_device_cmd*, %struct.iwl_device_cmd** %8, align 8
  %192 = load i32, i32* %13, align 4
  %193 = call i64 @iwl_trans_tx(i32 %189, %struct.sk_buff* %190, %struct.iwl_device_cmd* %191, i32 %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %201

195:                                              ; preds = %183
  %196 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %197 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.iwl_device_cmd*, %struct.iwl_device_cmd** %8, align 8
  %200 = call i32 @iwl_trans_free_tx_cmd(i32 %198, %struct.iwl_device_cmd* %199)
  store i32 -1, i32* %3, align 4
  br label %202

201:                                              ; preds = %183
  store i32 0, i32* %3, align 4
  br label %202

202:                                              ; preds = %201, %195, %182, %158, %63, %55, %38
  %203 = load i32, i32* %3, align 4
  ret i32 %203
}

declare dso_local i32 @ieee80211_hdrlen(i32) #1

declare dso_local %struct.TYPE_14__* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @ieee80211_is_probe_resp(i32) #1

declare dso_local i32 @memcpy(%struct.ieee80211_tx_info*, i32, i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.TYPE_13__*) #1

declare dso_local i32 @ieee80211_is_data(i32) #1

declare dso_local i32 @iwl_mvm_get_ctrl_vif_queue(%struct.iwl_mvm*, %struct.ieee80211_tx_info*, %struct.ieee80211_hdr*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*) #1

declare dso_local i64 @unlikely(i64) #1

declare dso_local i32 @iwl_mvm_probe_resp_set_noa(%struct.iwl_mvm*, %struct.sk_buff*) #1

declare dso_local i32 @IWL_DEBUG_TX(%struct.iwl_mvm*, i8*, i32, i32) #1

declare dso_local %struct.iwl_device_cmd* @iwl_mvm_set_tx_params(%struct.iwl_mvm*, %struct.sk_buff*, %struct.ieee80211_tx_info*, i32, i32*, i32) #1

declare dso_local i32 @iwl_mvm_skb_prepare_status(%struct.sk_buff*, %struct.iwl_device_cmd*) #1

declare dso_local i64 @iwl_trans_tx(i32, %struct.sk_buff*, %struct.iwl_device_cmd*, i32) #1

declare dso_local i32 @iwl_trans_free_tx_cmd(i32, %struct.iwl_device_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
