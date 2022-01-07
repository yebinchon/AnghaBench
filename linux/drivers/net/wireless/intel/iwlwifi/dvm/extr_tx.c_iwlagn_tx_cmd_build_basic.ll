; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_tx.c_iwlagn_tx_cmd_build_basic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_tx.c_iwlagn_tx_cmd_build_basic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.sk_buff = type { i32 }
%struct.iwl_tx_cmd = type { i32, i32, i32, i64, i64, %struct.TYPE_10__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i8* }
%struct.TYPE_6__ = type { i32 }
%struct.ieee80211_tx_info = type { i32, i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.ieee80211_hdr = type { i32 }

@TX_CMD_LIFE_TIME_INFINITE = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_NO_ACK = common dso_local global i32 0, align 4
@TX_CMD_FLG_ACK_MSK = common dso_local global i32 0, align 4
@TX_CMD_FLG_TSF_MSK = common dso_local global i32 0, align 4
@TX_CMD_FLG_IMM_BA_RSP_MASK = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@IEEE80211_TX_CTRL_PORT_CTRL_PROTO = common dso_local global i32 0, align 4
@TX_CMD_FLG_IGNORE_BT = common dso_local global i32 0, align 4
@TX_CMD_FLG_MORE_FRAG_MSK = common dso_local global i32 0, align 4
@TX_CMD_FLG_SEQ_CTL_MSK = common dso_local global i32 0, align 4
@IWL_TID_NON_QOS = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_ASSIGN_SEQ = common dso_local global i32 0, align 4
@TX_CMD_FLG_ANT_SEL_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_priv*, %struct.sk_buff*, %struct.iwl_tx_cmd*, %struct.ieee80211_tx_info*, %struct.ieee80211_hdr*, i32)* @iwlagn_tx_cmd_build_basic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwlagn_tx_cmd_build_basic(%struct.iwl_priv* %0, %struct.sk_buff* %1, %struct.iwl_tx_cmd* %2, %struct.ieee80211_tx_info* %3, %struct.ieee80211_hdr* %4, i32 %5) #0 {
  %7 = alloca %struct.iwl_priv*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.iwl_tx_cmd*, align 8
  %10 = alloca %struct.ieee80211_tx_info*, align 8
  %11 = alloca %struct.ieee80211_hdr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %7, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store %struct.iwl_tx_cmd* %2, %struct.iwl_tx_cmd** %9, align 8
  store %struct.ieee80211_tx_info* %3, %struct.ieee80211_tx_info** %10, align 8
  store %struct.ieee80211_hdr* %4, %struct.ieee80211_hdr** %11, align 8
  store i32 %5, i32* %12, align 4
  %16 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %17 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %13, align 4
  %19 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %9, align 8
  %20 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* @TX_CMD_LIFE_TIME_INFINITE, align 4
  %23 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %9, align 8
  %24 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %23, i32 0, i32 6
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 8
  %26 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %27 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @IEEE80211_TX_CTL_NO_ACK, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %6
  %33 = load i32, i32* @TX_CMD_FLG_ACK_MSK, align 4
  %34 = load i32, i32* %14, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %14, align 4
  br label %41

36:                                               ; preds = %6
  %37 = load i32, i32* @TX_CMD_FLG_ACK_MSK, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %14, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %14, align 4
  br label %41

41:                                               ; preds = %36, %32
  %42 = load i32, i32* %13, align 4
  %43 = call i64 @ieee80211_is_probe_resp(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load i32, i32* @TX_CMD_FLG_TSF_MSK, align 4
  %47 = load i32, i32* %14, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %14, align 4
  br label %107

49:                                               ; preds = %41
  %50 = load i32, i32* %13, align 4
  %51 = call i64 @ieee80211_is_back_req(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load i32, i32* @TX_CMD_FLG_ACK_MSK, align 4
  %55 = load i32, i32* @TX_CMD_FLG_IMM_BA_RSP_MASK, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* %14, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %14, align 4
  br label %106

59:                                               ; preds = %49
  %60 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %61 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %105

65:                                               ; preds = %59
  %66 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %67 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %66, i32 0, i32 0
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = icmp ne %struct.TYPE_7__* %70, null
  br i1 %71, label %72, label %105

72:                                               ; preds = %65
  %73 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %74 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %73, i32 0, i32 0
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %105

81:                                               ; preds = %72
  %82 = load i32, i32* %13, align 4
  %83 = call i64 @ieee80211_is_auth(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %101, label %85

85:                                               ; preds = %81
  %86 = load i32, i32* %13, align 4
  %87 = call i64 @ieee80211_is_assoc_req(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %101, label %89

89:                                               ; preds = %85
  %90 = load i32, i32* %13, align 4
  %91 = call i64 @ieee80211_is_reassoc_req(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %101, label %93

93:                                               ; preds = %89
  %94 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %95 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @IEEE80211_TX_CTRL_PORT_CTRL_PROTO, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %93, %89, %85, %81
  %102 = load i32, i32* @TX_CMD_FLG_IGNORE_BT, align 4
  %103 = load i32, i32* %14, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %14, align 4
  br label %105

105:                                              ; preds = %101, %93, %72, %65, %59
  br label %106

106:                                              ; preds = %105, %53
  br label %107

107:                                              ; preds = %106, %45
  %108 = load i32, i32* %12, align 4
  %109 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %9, align 8
  %110 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  %111 = load i32, i32* %13, align 4
  %112 = call i64 @ieee80211_has_morefrags(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %107
  %115 = load i32, i32* @TX_CMD_FLG_MORE_FRAG_MSK, align 4
  %116 = load i32, i32* %14, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %14, align 4
  br label %118

118:                                              ; preds = %114, %107
  %119 = load i32, i32* %13, align 4
  %120 = call i64 @ieee80211_is_data_qos(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %135

122:                                              ; preds = %118
  %123 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %124 = call i32* @ieee80211_get_qos_ctl(%struct.ieee80211_hdr* %123)
  store i32* %124, i32** %15, align 8
  %125 = load i32*, i32** %15, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  %127 = load i32, i32* %126, align 4
  %128 = and i32 %127, 15
  %129 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %9, align 8
  %130 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %129, i32 0, i32 2
  store i32 %128, i32* %130, align 8
  %131 = load i32, i32* @TX_CMD_FLG_SEQ_CTL_MSK, align 4
  %132 = xor i32 %131, -1
  %133 = load i32, i32* %14, align 4
  %134 = and i32 %133, %132
  store i32 %134, i32* %14, align 4
  br label %155

135:                                              ; preds = %118
  %136 = load i32, i32* @IWL_TID_NON_QOS, align 4
  %137 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %9, align 8
  %138 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %137, i32 0, i32 2
  store i32 %136, i32* %138, align 8
  %139 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %140 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @IEEE80211_TX_CTL_ASSIGN_SEQ, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %135
  %146 = load i32, i32* @TX_CMD_FLG_SEQ_CTL_MSK, align 4
  %147 = load i32, i32* %14, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %14, align 4
  br label %154

149:                                              ; preds = %135
  %150 = load i32, i32* @TX_CMD_FLG_SEQ_CTL_MSK, align 4
  %151 = xor i32 %150, -1
  %152 = load i32, i32* %14, align 4
  %153 = and i32 %152, %151
  store i32 %153, i32* %14, align 4
  br label %154

154:                                              ; preds = %149, %145
  br label %155

155:                                              ; preds = %154, %122
  %156 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %157 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %158 = load i32, i32* %13, align 4
  %159 = call i32 @iwlagn_tx_cmd_protection(%struct.iwl_priv* %156, %struct.ieee80211_tx_info* %157, i32 %158, i32* %14)
  %160 = load i32, i32* @TX_CMD_FLG_ANT_SEL_MSK, align 4
  %161 = xor i32 %160, -1
  %162 = load i32, i32* %14, align 4
  %163 = and i32 %162, %161
  store i32 %163, i32* %14, align 4
  %164 = load i32, i32* %13, align 4
  %165 = call i64 @ieee80211_is_mgmt(i32 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %186

167:                                              ; preds = %155
  %168 = load i32, i32* %13, align 4
  %169 = call i64 @ieee80211_is_assoc_req(i32 %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %175, label %171

171:                                              ; preds = %167
  %172 = load i32, i32* %13, align 4
  %173 = call i64 @ieee80211_is_reassoc_req(i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %180

175:                                              ; preds = %171, %167
  %176 = call i8* @cpu_to_le16(i32 3)
  %177 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %9, align 8
  %178 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %177, i32 0, i32 5
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 0
  store i8* %176, i8** %179, align 8
  br label %185

180:                                              ; preds = %171
  %181 = call i8* @cpu_to_le16(i32 2)
  %182 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %9, align 8
  %183 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %182, i32 0, i32 5
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 0
  store i8* %181, i8** %184, align 8
  br label %185

185:                                              ; preds = %180, %175
  br label %190

186:                                              ; preds = %155
  %187 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %9, align 8
  %188 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %187, i32 0, i32 5
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 0
  store i8* null, i8** %189, align 8
  br label %190

190:                                              ; preds = %186, %185
  %191 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %9, align 8
  %192 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %191, i32 0, i32 4
  store i64 0, i64* %192, align 8
  %193 = load i32, i32* %14, align 4
  %194 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %9, align 8
  %195 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %194, i32 0, i32 0
  store i32 %193, i32* %195, align 8
  %196 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %9, align 8
  %197 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %196, i32 0, i32 3
  store i64 0, i64* %197, align 8
  ret void
}

declare dso_local i64 @ieee80211_is_probe_resp(i32) #1

declare dso_local i64 @ieee80211_is_back_req(i32) #1

declare dso_local i64 @ieee80211_is_auth(i32) #1

declare dso_local i64 @ieee80211_is_assoc_req(i32) #1

declare dso_local i64 @ieee80211_is_reassoc_req(i32) #1

declare dso_local i64 @ieee80211_has_morefrags(i32) #1

declare dso_local i64 @ieee80211_is_data_qos(i32) #1

declare dso_local i32* @ieee80211_get_qos_ctl(%struct.ieee80211_hdr*) #1

declare dso_local i32 @iwlagn_tx_cmd_protection(%struct.iwl_priv*, %struct.ieee80211_tx_info*, i32, i32*) #1

declare dso_local i64 @ieee80211_is_mgmt(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
