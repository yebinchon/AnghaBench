; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_op_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_op_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.wmi_cmd_hdr = type { i32 }

@WMI_CMD_HDR_CMD_ID = common dso_local global i32 0, align 4
@ATH10K_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"wmi tlv testmode consumed 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Unknown eventid: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k*, %struct.sk_buff*)* @ath10k_wmi_tlv_op_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_wmi_tlv_op_rx(%struct.ath10k* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.wmi_cmd_hdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.wmi_cmd_hdr*
  store %struct.wmi_cmd_hdr* %11, %struct.wmi_cmd_hdr** %5, align 8
  %12 = load %struct.wmi_cmd_hdr*, %struct.wmi_cmd_hdr** %5, align 8
  %13 = getelementptr inbounds %struct.wmi_cmd_hdr, %struct.wmi_cmd_hdr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @__le32_to_cpu(i32 %14)
  %16 = load i32, i32* @WMI_CMD_HDR_CMD_ID, align 4
  %17 = call i32 @MS(i32 %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = call i32* @skb_pull(%struct.sk_buff* %18, i32 4)
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %226

22:                                               ; preds = %2
  %23 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @trace_ath10k_wmi_event(%struct.ath10k* %23, i32 %24, i64 %27, i32 %30)
  %32 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %35 = call i32 @ath10k_tm_event_wmi(%struct.ath10k* %32, i32 %33, %struct.sk_buff* %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %22
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 147
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %43 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @ath10k_dbg(%struct.ath10k* %42, i32 %43, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %226

46:                                               ; preds = %38, %22
  %47 = load i32, i32* %6, align 4
  switch i32 %47, label %220 [
    i32 160, label %48
    i32 143, label %52
    i32 170, label %56
    i32 164, label %60
    i32 168, label %64
    i32 134, label %68
    i32 131, label %72
    i32 130, label %76
    i32 133, label %80
    i32 150, label %84
    i32 161, label %88
    i32 140, label %92
    i32 149, label %96
    i32 146, label %100
    i32 148, label %104
    i32 167, label %108
    i32 154, label %112
    i32 129, label %116
    i32 144, label %120
    i32 138, label %124
    i32 145, label %128
    i32 128, label %132
    i32 169, label %136
    i32 152, label %140
    i32 155, label %144
    i32 163, label %148
    i32 162, label %152
    i32 136, label %156
    i32 137, label %160
    i32 132, label %164
    i32 141, label %168
    i32 147, label %172
    i32 142, label %176
    i32 157, label %180
    i32 166, label %184
    i32 165, label %188
    i32 156, label %192
    i32 135, label %196
    i32 153, label %200
    i32 139, label %204
    i32 151, label %208
    i32 158, label %212
    i32 159, label %216
  ]

48:                                               ; preds = %46
  %49 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %51 = call i32 @ath10k_wmi_event_mgmt_rx(%struct.ath10k* %49, %struct.sk_buff* %50)
  br label %229

52:                                               ; preds = %46
  %53 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %55 = call i32 @ath10k_wmi_event_scan(%struct.ath10k* %53, %struct.sk_buff* %54)
  br label %225

56:                                               ; preds = %46
  %57 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %59 = call i32 @ath10k_wmi_event_chan_info(%struct.ath10k* %57, %struct.sk_buff* %58)
  br label %225

60:                                               ; preds = %46
  %61 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %63 = call i32 @ath10k_wmi_event_echo(%struct.ath10k* %61, %struct.sk_buff* %62)
  br label %225

64:                                               ; preds = %46
  %65 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %67 = call i32 @ath10k_wmi_event_debug_mesg(%struct.ath10k* %65, %struct.sk_buff* %66)
  br label %225

68:                                               ; preds = %46
  %69 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %70 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %71 = call i32 @ath10k_wmi_event_update_stats(%struct.ath10k* %69, %struct.sk_buff* %70)
  br label %225

72:                                               ; preds = %46
  %73 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %74 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %75 = call i32 @ath10k_wmi_event_vdev_start_resp(%struct.ath10k* %73, %struct.sk_buff* %74)
  br label %225

76:                                               ; preds = %46
  %77 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %78 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %79 = call i32 @ath10k_wmi_event_vdev_stopped(%struct.ath10k* %77, %struct.sk_buff* %78)
  br label %225

80:                                               ; preds = %46
  %81 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %82 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %83 = call i32 @ath10k_wmi_tlv_event_vdev_delete_resp(%struct.ath10k* %81, %struct.sk_buff* %82)
  br label %225

84:                                               ; preds = %46
  %85 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %86 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %87 = call i32 @ath10k_wmi_event_peer_sta_kickout(%struct.ath10k* %85, %struct.sk_buff* %86)
  br label %225

88:                                               ; preds = %46
  %89 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %90 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %91 = call i32 @ath10k_wmi_event_host_swba(%struct.ath10k* %89, %struct.sk_buff* %90)
  br label %225

92:                                               ; preds = %46
  %93 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %94 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %95 = call i32 @ath10k_wmi_event_tbttoffset_update(%struct.ath10k* %93, %struct.sk_buff* %94)
  br label %225

96:                                               ; preds = %46
  %97 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %98 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %99 = call i32 @ath10k_wmi_event_phyerr(%struct.ath10k* %97, %struct.sk_buff* %98)
  br label %225

100:                                              ; preds = %46
  %101 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %102 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %103 = call i32 @ath10k_wmi_event_roam(%struct.ath10k* %101, %struct.sk_buff* %102)
  br label %225

104:                                              ; preds = %46
  %105 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %106 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %107 = call i32 @ath10k_wmi_event_profile_match(%struct.ath10k* %105, %struct.sk_buff* %106)
  br label %225

108:                                              ; preds = %46
  %109 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %110 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %111 = call i32 @ath10k_wmi_event_debug_print(%struct.ath10k* %109, %struct.sk_buff* %110)
  br label %225

112:                                              ; preds = %46
  %113 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %114 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %115 = call i32 @ath10k_wmi_event_pdev_qvit(%struct.ath10k* %113, %struct.sk_buff* %114)
  br label %225

116:                                              ; preds = %46
  %117 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %118 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %119 = call i32 @ath10k_wmi_event_wlan_profile_data(%struct.ath10k* %117, %struct.sk_buff* %118)
  br label %225

120:                                              ; preds = %46
  %121 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %122 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %123 = call i32 @ath10k_wmi_event_rtt_measurement_report(%struct.ath10k* %121, %struct.sk_buff* %122)
  br label %225

124:                                              ; preds = %46
  %125 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %126 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %127 = call i32 @ath10k_wmi_event_tsf_measurement_report(%struct.ath10k* %125, %struct.sk_buff* %126)
  br label %225

128:                                              ; preds = %46
  %129 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %130 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %131 = call i32 @ath10k_wmi_event_rtt_error_report(%struct.ath10k* %129, %struct.sk_buff* %130)
  br label %225

132:                                              ; preds = %46
  %133 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %134 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %135 = call i32 @ath10k_wmi_event_wow_wakeup_host(%struct.ath10k* %133, %struct.sk_buff* %134)
  br label %225

136:                                              ; preds = %46
  %137 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %138 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %139 = call i32 @ath10k_wmi_event_dcs_interference(%struct.ath10k* %137, %struct.sk_buff* %138)
  br label %225

140:                                              ; preds = %46
  %141 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %142 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %143 = call i32 @ath10k_wmi_event_pdev_tpc_config(%struct.ath10k* %141, %struct.sk_buff* %142)
  br label %225

144:                                              ; preds = %46
  %145 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %146 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %147 = call i32 @ath10k_wmi_event_pdev_ftm_intg(%struct.ath10k* %145, %struct.sk_buff* %146)
  br label %225

148:                                              ; preds = %46
  %149 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %150 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %151 = call i32 @ath10k_wmi_event_gtk_offload_status(%struct.ath10k* %149, %struct.sk_buff* %150)
  br label %225

152:                                              ; preds = %46
  %153 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %154 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %155 = call i32 @ath10k_wmi_event_gtk_rekey_fail(%struct.ath10k* %153, %struct.sk_buff* %154)
  br label %225

156:                                              ; preds = %46
  %157 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %158 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %159 = call i32 @ath10k_wmi_event_delba_complete(%struct.ath10k* %157, %struct.sk_buff* %158)
  br label %225

160:                                              ; preds = %46
  %161 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %162 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %163 = call i32 @ath10k_wmi_event_addba_complete(%struct.ath10k* %161, %struct.sk_buff* %162)
  br label %225

164:                                              ; preds = %46
  %165 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %166 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %167 = call i32 @ath10k_wmi_event_vdev_install_key_complete(%struct.ath10k* %165, %struct.sk_buff* %166)
  br label %225

168:                                              ; preds = %46
  %169 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %170 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %171 = call i32 @ath10k_wmi_event_service_ready(%struct.ath10k* %169, %struct.sk_buff* %170)
  br label %229

172:                                              ; preds = %46
  %173 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %174 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %175 = call i32 @ath10k_wmi_event_ready(%struct.ath10k* %173, %struct.sk_buff* %174)
  br label %225

176:                                              ; preds = %46
  %177 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %178 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %179 = call i32 @ath10k_wmi_event_service_available(%struct.ath10k* %177, %struct.sk_buff* %178)
  br label %225

180:                                              ; preds = %46
  %181 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %182 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %183 = call i32 @ath10k_wmi_tlv_event_bcn_tx_status(%struct.ath10k* %181, %struct.sk_buff* %182)
  br label %225

184:                                              ; preds = %46
  %185 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %186 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %187 = call i32 @ath10k_wmi_tlv_event_diag_data(%struct.ath10k* %185, %struct.sk_buff* %186)
  br label %225

188:                                              ; preds = %46
  %189 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %190 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %191 = call i32 @ath10k_wmi_tlv_event_diag(%struct.ath10k* %189, %struct.sk_buff* %190)
  br label %225

192:                                              ; preds = %46
  %193 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %194 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %195 = call i32 @ath10k_wmi_tlv_event_p2p_noa(%struct.ath10k* %193, %struct.sk_buff* %194)
  br label %225

196:                                              ; preds = %46
  %197 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %198 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %199 = call i32 @ath10k_wmi_tlv_event_tx_pause(%struct.ath10k* %197, %struct.sk_buff* %198)
  br label %225

200:                                              ; preds = %46
  %201 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %202 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %203 = call i32 @ath10k_wmi_tlv_event_temperature(%struct.ath10k* %201, %struct.sk_buff* %202)
  br label %225

204:                                              ; preds = %46
  %205 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %206 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %207 = call i32 @ath10k_wmi_event_tdls_peer(%struct.ath10k* %205, %struct.sk_buff* %206)
  br label %225

208:                                              ; preds = %46
  %209 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %210 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %211 = call i32 @ath10k_wmi_tlv_event_peer_delete_resp(%struct.ath10k* %209, %struct.sk_buff* %210)
  br label %225

212:                                              ; preds = %46
  %213 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %214 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %215 = call i32 @ath10k_wmi_event_mgmt_tx_compl(%struct.ath10k* %213, %struct.sk_buff* %214)
  br label %225

216:                                              ; preds = %46
  %217 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %218 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %219 = call i32 @ath10k_wmi_event_mgmt_tx_bundle_compl(%struct.ath10k* %217, %struct.sk_buff* %218)
  br label %225

220:                                              ; preds = %46
  %221 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %222 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %223 = load i32, i32* %6, align 4
  %224 = call i32 @ath10k_dbg(%struct.ath10k* %221, i32 %222, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %223)
  br label %225

225:                                              ; preds = %220, %216, %212, %208, %204, %200, %196, %192, %188, %184, %180, %176, %172, %164, %160, %156, %152, %148, %144, %140, %136, %132, %128, %124, %120, %116, %112, %108, %104, %100, %96, %92, %88, %84, %80, %76, %72, %68, %64, %60, %56, %52
  br label %226

226:                                              ; preds = %225, %41, %21
  %227 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %228 = call i32 @dev_kfree_skb(%struct.sk_buff* %227)
  br label %229

229:                                              ; preds = %226, %168, %48
  ret void
}

declare dso_local i32 @MS(i32, i32) #1

declare dso_local i32 @__le32_to_cpu(i32) #1

declare dso_local i32* @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @trace_ath10k_wmi_event(%struct.ath10k*, i32, i64, i32) #1

declare dso_local i32 @ath10k_tm_event_wmi(%struct.ath10k*, i32, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32) #1

declare dso_local i32 @ath10k_wmi_event_mgmt_rx(%struct.ath10k*, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_wmi_event_scan(%struct.ath10k*, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_wmi_event_chan_info(%struct.ath10k*, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_wmi_event_echo(%struct.ath10k*, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_wmi_event_debug_mesg(%struct.ath10k*, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_wmi_event_update_stats(%struct.ath10k*, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_wmi_event_vdev_start_resp(%struct.ath10k*, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_wmi_event_vdev_stopped(%struct.ath10k*, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_wmi_tlv_event_vdev_delete_resp(%struct.ath10k*, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_wmi_event_peer_sta_kickout(%struct.ath10k*, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_wmi_event_host_swba(%struct.ath10k*, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_wmi_event_tbttoffset_update(%struct.ath10k*, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_wmi_event_phyerr(%struct.ath10k*, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_wmi_event_roam(%struct.ath10k*, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_wmi_event_profile_match(%struct.ath10k*, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_wmi_event_debug_print(%struct.ath10k*, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_wmi_event_pdev_qvit(%struct.ath10k*, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_wmi_event_wlan_profile_data(%struct.ath10k*, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_wmi_event_rtt_measurement_report(%struct.ath10k*, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_wmi_event_tsf_measurement_report(%struct.ath10k*, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_wmi_event_rtt_error_report(%struct.ath10k*, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_wmi_event_wow_wakeup_host(%struct.ath10k*, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_wmi_event_dcs_interference(%struct.ath10k*, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_wmi_event_pdev_tpc_config(%struct.ath10k*, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_wmi_event_pdev_ftm_intg(%struct.ath10k*, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_wmi_event_gtk_offload_status(%struct.ath10k*, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_wmi_event_gtk_rekey_fail(%struct.ath10k*, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_wmi_event_delba_complete(%struct.ath10k*, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_wmi_event_addba_complete(%struct.ath10k*, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_wmi_event_vdev_install_key_complete(%struct.ath10k*, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_wmi_event_service_ready(%struct.ath10k*, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_wmi_event_ready(%struct.ath10k*, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_wmi_event_service_available(%struct.ath10k*, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_wmi_tlv_event_bcn_tx_status(%struct.ath10k*, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_wmi_tlv_event_diag_data(%struct.ath10k*, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_wmi_tlv_event_diag(%struct.ath10k*, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_wmi_tlv_event_p2p_noa(%struct.ath10k*, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_wmi_tlv_event_tx_pause(%struct.ath10k*, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_wmi_tlv_event_temperature(%struct.ath10k*, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_wmi_event_tdls_peer(%struct.ath10k*, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_wmi_tlv_event_peer_delete_resp(%struct.ath10k*, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_wmi_event_mgmt_tx_compl(%struct.ath10k*, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_wmi_event_mgmt_tx_bundle_compl(%struct.ath10k*, %struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
