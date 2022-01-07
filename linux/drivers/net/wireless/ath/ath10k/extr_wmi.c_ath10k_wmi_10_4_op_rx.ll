; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_10_4_op_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_10_4_op_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.wmi_cmd_hdr = type { i32 }

@WMI_CMD_HDR_CMD_ID = common dso_local global i32 0, align 4
@ATH10K_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"wmi testmode consumed 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"received event id %d not implemented\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Unknown eventid: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k*, %struct.sk_buff*)* @ath10k_wmi_10_4_op_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_wmi_10_4_op_rx(%struct.ath10k* %0, %struct.sk_buff* %1) #0 {
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
  %19 = call i32 @skb_pull(%struct.sk_buff* %18, i32 4)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  br label %164

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
  %40 = icmp ne i32 %39, 138
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %43 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @ath10k_dbg(%struct.ath10k* %42, i32 %43, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %164

46:                                               ; preds = %38, %22
  %47 = load i32, i32* %6, align 4
  switch i32 %47, label %159 [
    i32 147, label %48
    i32 149, label %52
    i32 152, label %56
    i32 135, label %62
    i32 136, label %66
    i32 154, label %72
    i32 139, label %76
    i32 138, label %80
    i32 141, label %86
    i32 137, label %90
    i32 148, label %96
    i32 134, label %100
    i32 151, label %104
    i32 131, label %110
    i32 130, label %116
    i32 128, label %122
    i32 142, label %122
    i32 129, label %122
    i32 153, label %122
    i32 132, label %127
    i32 145, label %131
    i32 146, label %135
    i32 144, label %139
    i32 133, label %143
    i32 143, label %147
    i32 150, label %151
    i32 140, label %155
  ]

48:                                               ; preds = %46
  %49 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %51 = call i32 @ath10k_wmi_event_mgmt_rx(%struct.ath10k* %49, %struct.sk_buff* %50)
  br label %167

52:                                               ; preds = %46
  %53 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %55 = call i32 @ath10k_wmi_event_echo(%struct.ath10k* %53, %struct.sk_buff* %54)
  br label %163

56:                                               ; preds = %46
  %57 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %59 = call i32 @ath10k_wmi_event_debug_mesg(%struct.ath10k* %57, %struct.sk_buff* %58)
  %60 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %61 = call i32 @ath10k_wmi_queue_set_coverage_class_work(%struct.ath10k* %60)
  br label %163

62:                                               ; preds = %46
  %63 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %65 = call i32 @ath10k_wmi_event_service_ready(%struct.ath10k* %63, %struct.sk_buff* %64)
  br label %167

66:                                               ; preds = %46
  %67 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %69 = call i32 @ath10k_wmi_event_scan(%struct.ath10k* %67, %struct.sk_buff* %68)
  %70 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %71 = call i32 @ath10k_wmi_queue_set_coverage_class_work(%struct.ath10k* %70)
  br label %163

72:                                               ; preds = %46
  %73 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %74 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %75 = call i32 @ath10k_wmi_event_chan_info(%struct.ath10k* %73, %struct.sk_buff* %74)
  br label %163

76:                                               ; preds = %46
  %77 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %78 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %79 = call i32 @ath10k_wmi_event_phyerr(%struct.ath10k* %77, %struct.sk_buff* %78)
  br label %163

80:                                               ; preds = %46
  %81 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %82 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %83 = call i32 @ath10k_wmi_event_ready(%struct.ath10k* %81, %struct.sk_buff* %82)
  %84 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %85 = call i32 @ath10k_wmi_queue_set_coverage_class_work(%struct.ath10k* %84)
  br label %163

86:                                               ; preds = %46
  %87 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %88 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %89 = call i32 @ath10k_wmi_event_peer_sta_kickout(%struct.ath10k* %87, %struct.sk_buff* %88)
  br label %163

90:                                               ; preds = %46
  %91 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %92 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %93 = call i32 @ath10k_wmi_event_roam(%struct.ath10k* %91, %struct.sk_buff* %92)
  %94 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %95 = call i32 @ath10k_wmi_queue_set_coverage_class_work(%struct.ath10k* %94)
  br label %163

96:                                               ; preds = %46
  %97 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %98 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %99 = call i32 @ath10k_wmi_event_host_swba(%struct.ath10k* %97, %struct.sk_buff* %98)
  br label %163

100:                                              ; preds = %46
  %101 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %102 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %103 = call i32 @ath10k_wmi_event_tbttoffset_update(%struct.ath10k* %101, %struct.sk_buff* %102)
  br label %163

104:                                              ; preds = %46
  %105 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %106 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %107 = call i32 @ath10k_wmi_event_debug_print(%struct.ath10k* %105, %struct.sk_buff* %106)
  %108 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %109 = call i32 @ath10k_wmi_queue_set_coverage_class_work(%struct.ath10k* %108)
  br label %163

110:                                              ; preds = %46
  %111 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %112 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %113 = call i32 @ath10k_wmi_event_vdev_start_resp(%struct.ath10k* %111, %struct.sk_buff* %112)
  %114 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %115 = call i32 @ath10k_wmi_queue_set_coverage_class_work(%struct.ath10k* %114)
  br label %163

116:                                              ; preds = %46
  %117 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %118 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %119 = call i32 @ath10k_wmi_event_vdev_stopped(%struct.ath10k* %117, %struct.sk_buff* %118)
  %120 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %121 = call i32 @ath10k_wmi_queue_set_coverage_class_work(%struct.ath10k* %120)
  br label %163

122:                                              ; preds = %46, %46, %46, %46
  %123 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %124 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %125 = load i32, i32* %6, align 4
  %126 = call i32 @ath10k_dbg(%struct.ath10k* %123, i32 %124, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %125)
  br label %163

127:                                              ; preds = %46
  %128 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %129 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %130 = call i32 @ath10k_wmi_event_update_stats(%struct.ath10k* %128, %struct.sk_buff* %129)
  br label %163

131:                                              ; preds = %46
  %132 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %133 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %134 = call i32 @ath10k_wmi_event_temperature(%struct.ath10k* %132, %struct.sk_buff* %133)
  br label %163

135:                                              ; preds = %46
  %136 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %137 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %138 = call i32 @ath10k_wmi_event_pdev_bss_chan_info(%struct.ath10k* %136, %struct.sk_buff* %137)
  br label %163

139:                                              ; preds = %46
  %140 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %141 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %142 = call i32 @ath10k_wmi_event_pdev_tpc_config(%struct.ath10k* %140, %struct.sk_buff* %141)
  br label %163

143:                                              ; preds = %46
  %144 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %145 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %146 = call i32 @ath10k_wmi_handle_tdls_peer_event(%struct.ath10k* %144, %struct.sk_buff* %145)
  br label %163

147:                                              ; preds = %46
  %148 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %149 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %150 = call i32 @ath10k_wmi_event_tpc_final_table(%struct.ath10k* %148, %struct.sk_buff* %149)
  br label %163

151:                                              ; preds = %46
  %152 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %153 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %154 = call i32 @ath10k_wmi_event_dfs_status_check(%struct.ath10k* %152, %struct.sk_buff* %153)
  br label %163

155:                                              ; preds = %46
  %156 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %157 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %158 = call i32 @ath10k_wmi_event_peer_sta_ps_state_chg(%struct.ath10k* %156, %struct.sk_buff* %157)
  br label %163

159:                                              ; preds = %46
  %160 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %161 = load i32, i32* %6, align 4
  %162 = call i32 @ath10k_warn(%struct.ath10k* %160, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %161)
  br label %163

163:                                              ; preds = %159, %155, %151, %147, %143, %139, %135, %131, %127, %122, %116, %110, %104, %100, %96, %90, %86, %80, %76, %72, %66, %56, %52
  br label %164

164:                                              ; preds = %163, %41, %21
  %165 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %166 = call i32 @dev_kfree_skb(%struct.sk_buff* %165)
  br label %167

167:                                              ; preds = %164, %62, %48
  ret void
}

declare dso_local i32 @MS(i32, i32) #1

declare dso_local i32 @__le32_to_cpu(i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @trace_ath10k_wmi_event(%struct.ath10k*, i32, i64, i32) #1

declare dso_local i32 @ath10k_tm_event_wmi(%struct.ath10k*, i32, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32) #1

declare dso_local i32 @ath10k_wmi_event_mgmt_rx(%struct.ath10k*, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_wmi_event_echo(%struct.ath10k*, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_wmi_event_debug_mesg(%struct.ath10k*, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_wmi_queue_set_coverage_class_work(%struct.ath10k*) #1

declare dso_local i32 @ath10k_wmi_event_service_ready(%struct.ath10k*, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_wmi_event_scan(%struct.ath10k*, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_wmi_event_chan_info(%struct.ath10k*, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_wmi_event_phyerr(%struct.ath10k*, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_wmi_event_ready(%struct.ath10k*, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_wmi_event_peer_sta_kickout(%struct.ath10k*, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_wmi_event_roam(%struct.ath10k*, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_wmi_event_host_swba(%struct.ath10k*, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_wmi_event_tbttoffset_update(%struct.ath10k*, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_wmi_event_debug_print(%struct.ath10k*, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_wmi_event_vdev_start_resp(%struct.ath10k*, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_wmi_event_vdev_stopped(%struct.ath10k*, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_wmi_event_update_stats(%struct.ath10k*, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_wmi_event_temperature(%struct.ath10k*, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_wmi_event_pdev_bss_chan_info(%struct.ath10k*, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_wmi_event_pdev_tpc_config(%struct.ath10k*, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_wmi_handle_tdls_peer_event(%struct.ath10k*, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_wmi_event_tpc_final_table(%struct.ath10k*, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_wmi_event_dfs_status_check(%struct.ath10k*, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_wmi_event_peer_sta_ps_state_chg(%struct.ath10k*, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
