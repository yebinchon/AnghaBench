; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_op_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_op_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.wmi_cmd_hdr = type { i32 }

@WMI_CMD_HDR_CMD_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Unknown eventid: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k*, %struct.sk_buff*)* @ath10k_wmi_op_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_wmi_op_rx(%struct.ath10k* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.wmi_cmd_hdr*, align 8
  %6 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.wmi_cmd_hdr*
  store %struct.wmi_cmd_hdr* %10, %struct.wmi_cmd_hdr** %5, align 8
  %11 = load %struct.wmi_cmd_hdr*, %struct.wmi_cmd_hdr** %5, align 8
  %12 = getelementptr inbounds %struct.wmi_cmd_hdr, %struct.wmi_cmd_hdr* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @__le32_to_cpu(i32 %13)
  %15 = load i32, i32* @WMI_CMD_HDR_CMD_ID, align 4
  %16 = call i32 @MS(i32 %14, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = call i32* @skb_pull(%struct.sk_buff* %17, i32 4)
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %179

21:                                               ; preds = %2
  %22 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @trace_ath10k_wmi_event(%struct.ath10k* %22, i32 %23, i64 %26, i32 %29)
  %31 = load i32, i32* %6, align 4
  switch i32 %31, label %174 [
    i32 151, label %32
    i32 140, label %36
    i32 159, label %42
    i32 155, label %46
    i32 157, label %50
    i32 133, label %56
    i32 131, label %60
    i32 130, label %66
    i32 147, label %72
    i32 152, label %76
    i32 137, label %80
    i32 146, label %84
    i32 143, label %88
    i32 145, label %94
    i32 156, label %98
    i32 149, label %104
    i32 129, label %108
    i32 141, label %112
    i32 136, label %116
    i32 142, label %120
    i32 128, label %124
    i32 158, label %128
    i32 148, label %132
    i32 150, label %136
    i32 154, label %140
    i32 153, label %144
    i32 134, label %148
    i32 135, label %152
    i32 132, label %156
    i32 138, label %160
    i32 144, label %164
    i32 139, label %170
  ]

32:                                               ; preds = %21
  %33 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %35 = call i32 @ath10k_wmi_event_mgmt_rx(%struct.ath10k* %33, %struct.sk_buff* %34)
  br label %182

36:                                               ; preds = %21
  %37 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = call i32 @ath10k_wmi_event_scan(%struct.ath10k* %37, %struct.sk_buff* %38)
  %40 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %41 = call i32 @ath10k_wmi_queue_set_coverage_class_work(%struct.ath10k* %40)
  br label %178

42:                                               ; preds = %21
  %43 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %45 = call i32 @ath10k_wmi_event_chan_info(%struct.ath10k* %43, %struct.sk_buff* %44)
  br label %178

46:                                               ; preds = %21
  %47 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %49 = call i32 @ath10k_wmi_event_echo(%struct.ath10k* %47, %struct.sk_buff* %48)
  br label %178

50:                                               ; preds = %21
  %51 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %53 = call i32 @ath10k_wmi_event_debug_mesg(%struct.ath10k* %51, %struct.sk_buff* %52)
  %54 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %55 = call i32 @ath10k_wmi_queue_set_coverage_class_work(%struct.ath10k* %54)
  br label %178

56:                                               ; preds = %21
  %57 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %59 = call i32 @ath10k_wmi_event_update_stats(%struct.ath10k* %57, %struct.sk_buff* %58)
  br label %178

60:                                               ; preds = %21
  %61 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %63 = call i32 @ath10k_wmi_event_vdev_start_resp(%struct.ath10k* %61, %struct.sk_buff* %62)
  %64 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %65 = call i32 @ath10k_wmi_queue_set_coverage_class_work(%struct.ath10k* %64)
  br label %178

66:                                               ; preds = %21
  %67 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %69 = call i32 @ath10k_wmi_event_vdev_stopped(%struct.ath10k* %67, %struct.sk_buff* %68)
  %70 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %71 = call i32 @ath10k_wmi_queue_set_coverage_class_work(%struct.ath10k* %70)
  br label %178

72:                                               ; preds = %21
  %73 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %74 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %75 = call i32 @ath10k_wmi_event_peer_sta_kickout(%struct.ath10k* %73, %struct.sk_buff* %74)
  br label %178

76:                                               ; preds = %21
  %77 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %78 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %79 = call i32 @ath10k_wmi_event_host_swba(%struct.ath10k* %77, %struct.sk_buff* %78)
  br label %178

80:                                               ; preds = %21
  %81 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %82 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %83 = call i32 @ath10k_wmi_event_tbttoffset_update(%struct.ath10k* %81, %struct.sk_buff* %82)
  br label %178

84:                                               ; preds = %21
  %85 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %86 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %87 = call i32 @ath10k_wmi_event_phyerr(%struct.ath10k* %85, %struct.sk_buff* %86)
  br label %178

88:                                               ; preds = %21
  %89 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %90 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %91 = call i32 @ath10k_wmi_event_roam(%struct.ath10k* %89, %struct.sk_buff* %90)
  %92 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %93 = call i32 @ath10k_wmi_queue_set_coverage_class_work(%struct.ath10k* %92)
  br label %178

94:                                               ; preds = %21
  %95 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %96 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %97 = call i32 @ath10k_wmi_event_profile_match(%struct.ath10k* %95, %struct.sk_buff* %96)
  br label %178

98:                                               ; preds = %21
  %99 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %100 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %101 = call i32 @ath10k_wmi_event_debug_print(%struct.ath10k* %99, %struct.sk_buff* %100)
  %102 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %103 = call i32 @ath10k_wmi_queue_set_coverage_class_work(%struct.ath10k* %102)
  br label %178

104:                                              ; preds = %21
  %105 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %106 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %107 = call i32 @ath10k_wmi_event_pdev_qvit(%struct.ath10k* %105, %struct.sk_buff* %106)
  br label %178

108:                                              ; preds = %21
  %109 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %110 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %111 = call i32 @ath10k_wmi_event_wlan_profile_data(%struct.ath10k* %109, %struct.sk_buff* %110)
  br label %178

112:                                              ; preds = %21
  %113 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %114 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %115 = call i32 @ath10k_wmi_event_rtt_measurement_report(%struct.ath10k* %113, %struct.sk_buff* %114)
  br label %178

116:                                              ; preds = %21
  %117 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %118 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %119 = call i32 @ath10k_wmi_event_tsf_measurement_report(%struct.ath10k* %117, %struct.sk_buff* %118)
  br label %178

120:                                              ; preds = %21
  %121 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %122 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %123 = call i32 @ath10k_wmi_event_rtt_error_report(%struct.ath10k* %121, %struct.sk_buff* %122)
  br label %178

124:                                              ; preds = %21
  %125 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %126 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %127 = call i32 @ath10k_wmi_event_wow_wakeup_host(%struct.ath10k* %125, %struct.sk_buff* %126)
  br label %178

128:                                              ; preds = %21
  %129 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %130 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %131 = call i32 @ath10k_wmi_event_dcs_interference(%struct.ath10k* %129, %struct.sk_buff* %130)
  br label %178

132:                                              ; preds = %21
  %133 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %134 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %135 = call i32 @ath10k_wmi_event_pdev_tpc_config(%struct.ath10k* %133, %struct.sk_buff* %134)
  br label %178

136:                                              ; preds = %21
  %137 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %138 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %139 = call i32 @ath10k_wmi_event_pdev_ftm_intg(%struct.ath10k* %137, %struct.sk_buff* %138)
  br label %178

140:                                              ; preds = %21
  %141 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %142 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %143 = call i32 @ath10k_wmi_event_gtk_offload_status(%struct.ath10k* %141, %struct.sk_buff* %142)
  br label %178

144:                                              ; preds = %21
  %145 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %146 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %147 = call i32 @ath10k_wmi_event_gtk_rekey_fail(%struct.ath10k* %145, %struct.sk_buff* %146)
  br label %178

148:                                              ; preds = %21
  %149 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %150 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %151 = call i32 @ath10k_wmi_event_delba_complete(%struct.ath10k* %149, %struct.sk_buff* %150)
  br label %178

152:                                              ; preds = %21
  %153 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %154 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %155 = call i32 @ath10k_wmi_event_addba_complete(%struct.ath10k* %153, %struct.sk_buff* %154)
  br label %178

156:                                              ; preds = %21
  %157 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %158 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %159 = call i32 @ath10k_wmi_event_vdev_install_key_complete(%struct.ath10k* %157, %struct.sk_buff* %158)
  br label %178

160:                                              ; preds = %21
  %161 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %162 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %163 = call i32 @ath10k_wmi_event_service_ready(%struct.ath10k* %161, %struct.sk_buff* %162)
  br label %182

164:                                              ; preds = %21
  %165 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %166 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %167 = call i32 @ath10k_wmi_event_ready(%struct.ath10k* %165, %struct.sk_buff* %166)
  %168 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %169 = call i32 @ath10k_wmi_queue_set_coverage_class_work(%struct.ath10k* %168)
  br label %178

170:                                              ; preds = %21
  %171 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %172 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %173 = call i32 @ath10k_wmi_event_service_available(%struct.ath10k* %171, %struct.sk_buff* %172)
  br label %178

174:                                              ; preds = %21
  %175 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %176 = load i32, i32* %6, align 4
  %177 = call i32 @ath10k_warn(%struct.ath10k* %175, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %176)
  br label %178

178:                                              ; preds = %174, %170, %164, %156, %152, %148, %144, %140, %136, %132, %128, %124, %120, %116, %112, %108, %104, %98, %94, %88, %84, %80, %76, %72, %66, %60, %56, %50, %46, %42, %36
  br label %179

179:                                              ; preds = %178, %20
  %180 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %181 = call i32 @dev_kfree_skb(%struct.sk_buff* %180)
  br label %182

182:                                              ; preds = %179, %160, %32
  ret void
}

declare dso_local i32 @MS(i32, i32) #1

declare dso_local i32 @__le32_to_cpu(i32) #1

declare dso_local i32* @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @trace_ath10k_wmi_event(%struct.ath10k*, i32, i64, i32) #1

declare dso_local i32 @ath10k_wmi_event_mgmt_rx(%struct.ath10k*, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_wmi_event_scan(%struct.ath10k*, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_wmi_queue_set_coverage_class_work(%struct.ath10k*) #1

declare dso_local i32 @ath10k_wmi_event_chan_info(%struct.ath10k*, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_wmi_event_echo(%struct.ath10k*, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_wmi_event_debug_mesg(%struct.ath10k*, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_wmi_event_update_stats(%struct.ath10k*, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_wmi_event_vdev_start_resp(%struct.ath10k*, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_wmi_event_vdev_stopped(%struct.ath10k*, %struct.sk_buff*) #1

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

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
