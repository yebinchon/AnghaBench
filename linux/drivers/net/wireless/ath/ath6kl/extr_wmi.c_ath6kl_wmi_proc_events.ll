; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_proc_events.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_proc_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi = type { i32 }
%struct.sk_buff = type { i32*, i32 }
%struct.wmi_cmd_hdr = type { i32, i32 }

@WMI_CMD_HDR_IF_ID_MASK = common dso_local global i32 0, align 4
@ATH6KL_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"wmi rx id %d len %d\0A\00", align 1
@ATH6KL_DBG_WMI_DUMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"wmi rx \00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"WMI_GET_BITRATE_CMDID\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"WMI_GET_CHANNEL_LIST_CMDID\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"WMI_GET_TX_PWR_CMDID\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"WMI_READY_EVENTID\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"WMI_PEER_NODE_EVENTID\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"WMI_REGDOMAIN_EVENTID\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"WMI_PSTREAM_TIMEOUT_EVENTID\0A\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"WMI_CMDERROR_EVENTID\0A\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"WMI_RSSI_THRESHOLD_EVENTID\0A\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"WMI_ERROR_REPORT_EVENTID\0A\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"WMI_OPT_RX_FRAME_EVENTID\0A\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"WMI_REPORT_ROAM_TBL_EVENTID\0A\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"WMI_EXTENSION_EVENTID\0A\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"WMI_CHANNEL_CHANGE_EVENTID\0A\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"WMI_REPORT_ROAM_DATA_EVENTID\0A\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"WMI_TEST_EVENTID\0A\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"WMI_GET_FIXRATES_CMDID\0A\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"WMI_TX_RETRY_ERR_EVENTID\0A\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"WMI_SNR_THRESHOLD_EVENTID\0A\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"WMI_LQ_THRESHOLD_EVENTID\0A\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"WMI_APLIST_EVENTID\0A\00", align 1
@.str.23 = private unnamed_addr constant [25 x i8] c"WMI_GET_KEEPALIVE_CMDID\0A\00", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c"WMI_GET_WOW_LIST_EVENTID\0A\00", align 1
@.str.25 = private unnamed_addr constant [28 x i8] c"WMI_GET_PMKID_LIST_EVENTID\0A\00", align 1
@.str.26 = private unnamed_addr constant [30 x i8] c"WMI_SET_PARAMS_REPLY_EVENTID\0A\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c"WMI_ADDBA_RESP_EVENTID\0A\00", align 1
@.str.28 = private unnamed_addr constant [34 x i8] c"WMI_REPORT_BTCOEX_CONFIG_EVENTID\0A\00", align 1
@.str.29 = private unnamed_addr constant [33 x i8] c"WMI_REPORT_BTCOEX_STATS_EVENTID\0A\00", align 1
@.str.30 = private unnamed_addr constant [25 x i8] c"WMI_TX_COMPLETE_EVENTID\0A\00", align 1
@.str.31 = private unnamed_addr constant [30 x i8] c"WMI_P2P_CAPABILITIES_EVENTID\0A\00", align 1
@.str.32 = private unnamed_addr constant [22 x i8] c"WMI_P2P_INFO_EVENTID\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wmi*, %struct.sk_buff*)* @ath6kl_wmi_proc_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_wmi_proc_events(%struct.wmi* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.wmi*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.wmi_cmd_hdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.wmi* %0, %struct.wmi** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = bitcast i32* %13 to %struct.wmi_cmd_hdr*
  store %struct.wmi_cmd_hdr* %14, %struct.wmi_cmd_hdr** %5, align 8
  %15 = load %struct.wmi_cmd_hdr*, %struct.wmi_cmd_hdr** %5, align 8
  %16 = getelementptr inbounds %struct.wmi_cmd_hdr, %struct.wmi_cmd_hdr* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @le16_to_cpu(i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.wmi_cmd_hdr*, %struct.wmi_cmd_hdr** %5, align 8
  %20 = getelementptr inbounds %struct.wmi_cmd_hdr, %struct.wmi_cmd_hdr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @le16_to_cpu(i32 %21)
  %23 = load i32, i32* @WMI_CMD_HDR_IF_ID_MASK, align 4
  %24 = and i32 %22, %23
  store i32 %24, i32* %9, align 4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = call i32 @skb_pull(%struct.sk_buff* %25, i32 8)
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %10, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 (i32, i8*, ...) @ath6kl_dbg(i32 %33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %35)
  %37 = load i32, i32* @ATH6KL_DBG_WMI_DUMP, align 4
  %38 = load i32*, i32** %10, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @ath6kl_dbg_dump(i32 %37, i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %38, i32 %39)
  %41 = load i32, i32* %8, align 4
  switch i32 %41, label %211 [
    i32 152, label %42
    i32 151, label %49
    i32 147, label %56
    i32 139, label %63
    i32 141, label %70
    i32 138, label %77
    i32 140, label %84
    i32 155, label %91
    i32 133, label %98
    i32 154, label %105
    i32 144, label %108
    i32 134, label %111
    i32 153, label %118
    i32 156, label %124
    i32 135, label %127
    i32 130, label %130
    i32 150, label %137
    i32 128, label %144
    i32 131, label %147
    i32 145, label %154
    i32 157, label %157
    i32 149, label %164
    i32 146, label %171
    i32 148, label %174
    i32 132, label %181
    i32 158, label %184
    i32 137, label %187
    i32 136, label %190
    i32 129, label %193
    i32 143, label %199
    i32 142, label %205
  ]

42:                                               ; preds = %2
  %43 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %44 = call i32 (i32, i8*, ...) @ath6kl_dbg(i32 %43, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %45 = load %struct.wmi*, %struct.wmi** %3, align 8
  %46 = load i32*, i32** %10, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @ath6kl_wmi_bitrate_reply_rx(%struct.wmi* %45, i32* %46, i32 %47)
  store i32 %48, i32* %6, align 4
  br label %218

49:                                               ; preds = %2
  %50 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %51 = call i32 (i32, i8*, ...) @ath6kl_dbg(i32 %50, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %52 = load %struct.wmi*, %struct.wmi** %3, align 8
  %53 = load i32*, i32** %10, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @ath6kl_wmi_ch_list_reply_rx(%struct.wmi* %52, i32* %53, i32 %54)
  store i32 %55, i32* %6, align 4
  br label %218

56:                                               ; preds = %2
  %57 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %58 = call i32 (i32, i8*, ...) @ath6kl_dbg(i32 %57, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %59 = load %struct.wmi*, %struct.wmi** %3, align 8
  %60 = load i32*, i32** %10, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @ath6kl_wmi_tx_pwr_reply_rx(%struct.wmi* %59, i32* %60, i32 %61)
  store i32 %62, i32* %6, align 4
  br label %218

63:                                               ; preds = %2
  %64 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %65 = call i32 (i32, i8*, ...) @ath6kl_dbg(i32 %64, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %66 = load %struct.wmi*, %struct.wmi** %3, align 8
  %67 = load i32*, i32** %10, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @ath6kl_wmi_ready_event_rx(%struct.wmi* %66, i32* %67, i32 %68)
  store i32 %69, i32* %6, align 4
  br label %218

70:                                               ; preds = %2
  %71 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %72 = call i32 (i32, i8*, ...) @ath6kl_dbg(i32 %71, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %73 = load %struct.wmi*, %struct.wmi** %3, align 8
  %74 = load i32*, i32** %10, align 8
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @ath6kl_wmi_peer_node_event_rx(%struct.wmi* %73, i32* %74, i32 %75)
  store i32 %76, i32* %6, align 4
  br label %218

77:                                               ; preds = %2
  %78 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %79 = call i32 (i32, i8*, ...) @ath6kl_dbg(i32 %78, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %80 = load %struct.wmi*, %struct.wmi** %3, align 8
  %81 = load i32*, i32** %10, align 8
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @ath6kl_wmi_regdomain_event(%struct.wmi* %80, i32* %81, i32 %82)
  br label %218

84:                                               ; preds = %2
  %85 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %86 = call i32 (i32, i8*, ...) @ath6kl_dbg(i32 %85, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  %87 = load %struct.wmi*, %struct.wmi** %3, align 8
  %88 = load i32*, i32** %10, align 8
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @ath6kl_wmi_pstream_timeout_event_rx(%struct.wmi* %87, i32* %88, i32 %89)
  store i32 %90, i32* %6, align 4
  br label %218

91:                                               ; preds = %2
  %92 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %93 = call i32 (i32, i8*, ...) @ath6kl_dbg(i32 %92, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  %94 = load %struct.wmi*, %struct.wmi** %3, align 8
  %95 = load i32*, i32** %10, align 8
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @ath6kl_wmi_error_event_rx(%struct.wmi* %94, i32* %95, i32 %96)
  store i32 %97, i32* %6, align 4
  br label %218

98:                                               ; preds = %2
  %99 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %100 = call i32 (i32, i8*, ...) @ath6kl_dbg(i32 %99, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0))
  %101 = load %struct.wmi*, %struct.wmi** %3, align 8
  %102 = load i32*, i32** %10, align 8
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @ath6kl_wmi_rssi_threshold_event_rx(%struct.wmi* %101, i32* %102, i32 %103)
  store i32 %104, i32* %6, align 4
  br label %218

105:                                              ; preds = %2
  %106 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %107 = call i32 (i32, i8*, ...) @ath6kl_dbg(i32 %106, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0))
  br label %218

108:                                              ; preds = %2
  %109 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %110 = call i32 (i32, i8*, ...) @ath6kl_dbg(i32 %109, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0))
  br label %218

111:                                              ; preds = %2
  %112 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %113 = call i32 (i32, i8*, ...) @ath6kl_dbg(i32 %112, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0))
  %114 = load %struct.wmi*, %struct.wmi** %3, align 8
  %115 = load i32*, i32** %10, align 8
  %116 = load i32, i32* %7, align 4
  %117 = call i32 @ath6kl_wmi_roam_tbl_event_rx(%struct.wmi* %114, i32* %115, i32 %116)
  store i32 %117, i32* %6, align 4
  br label %218

118:                                              ; preds = %2
  %119 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %120 = call i32 (i32, i8*, ...) @ath6kl_dbg(i32 %119, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0))
  %121 = load %struct.wmi*, %struct.wmi** %3, align 8
  %122 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %123 = call i32 @ath6kl_wmi_control_rx_xtnd(%struct.wmi* %121, %struct.sk_buff* %122)
  store i32 %123, i32* %6, align 4
  br label %218

124:                                              ; preds = %2
  %125 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %126 = call i32 (i32, i8*, ...) @ath6kl_dbg(i32 %125, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0))
  br label %218

127:                                              ; preds = %2
  %128 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %129 = call i32 (i32, i8*, ...) @ath6kl_dbg(i32 %128, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i64 0, i64 0))
  br label %218

130:                                              ; preds = %2
  %131 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %132 = call i32 (i32, i8*, ...) @ath6kl_dbg(i32 %131, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0))
  %133 = load %struct.wmi*, %struct.wmi** %3, align 8
  %134 = load i32*, i32** %10, align 8
  %135 = load i32, i32* %7, align 4
  %136 = call i32 @ath6kl_wmi_test_rx(%struct.wmi* %133, i32* %134, i32 %135)
  store i32 %136, i32* %6, align 4
  br label %218

137:                                              ; preds = %2
  %138 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %139 = call i32 (i32, i8*, ...) @ath6kl_dbg(i32 %138, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i64 0, i64 0))
  %140 = load %struct.wmi*, %struct.wmi** %3, align 8
  %141 = load i32*, i32** %10, align 8
  %142 = load i32, i32* %7, align 4
  %143 = call i32 @ath6kl_wmi_ratemask_reply_rx(%struct.wmi* %140, i32* %141, i32 %142)
  store i32 %143, i32* %6, align 4
  br label %218

144:                                              ; preds = %2
  %145 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %146 = call i32 (i32, i8*, ...) @ath6kl_dbg(i32 %145, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i64 0, i64 0))
  br label %218

147:                                              ; preds = %2
  %148 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %149 = call i32 (i32, i8*, ...) @ath6kl_dbg(i32 %148, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.20, i64 0, i64 0))
  %150 = load %struct.wmi*, %struct.wmi** %3, align 8
  %151 = load i32*, i32** %10, align 8
  %152 = load i32, i32* %7, align 4
  %153 = call i32 @ath6kl_wmi_snr_threshold_event_rx(%struct.wmi* %150, i32* %151, i32 %152)
  store i32 %153, i32* %6, align 4
  br label %218

154:                                              ; preds = %2
  %155 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %156 = call i32 (i32, i8*, ...) @ath6kl_dbg(i32 %155, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i64 0, i64 0))
  br label %218

157:                                              ; preds = %2
  %158 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %159 = call i32 (i32, i8*, ...) @ath6kl_dbg(i32 %158, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i64 0, i64 0))
  %160 = load %struct.wmi*, %struct.wmi** %3, align 8
  %161 = load i32*, i32** %10, align 8
  %162 = load i32, i32* %7, align 4
  %163 = call i32 @ath6kl_wmi_aplist_event_rx(%struct.wmi* %160, i32* %161, i32 %162)
  store i32 %163, i32* %6, align 4
  br label %218

164:                                              ; preds = %2
  %165 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %166 = call i32 (i32, i8*, ...) @ath6kl_dbg(i32 %165, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.23, i64 0, i64 0))
  %167 = load %struct.wmi*, %struct.wmi** %3, align 8
  %168 = load i32*, i32** %10, align 8
  %169 = load i32, i32* %7, align 4
  %170 = call i32 @ath6kl_wmi_keepalive_reply_rx(%struct.wmi* %167, i32* %168, i32 %169)
  store i32 %170, i32* %6, align 4
  br label %218

171:                                              ; preds = %2
  %172 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %173 = call i32 (i32, i8*, ...) @ath6kl_dbg(i32 %172, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.24, i64 0, i64 0))
  br label %218

174:                                              ; preds = %2
  %175 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %176 = call i32 (i32, i8*, ...) @ath6kl_dbg(i32 %175, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.25, i64 0, i64 0))
  %177 = load %struct.wmi*, %struct.wmi** %3, align 8
  %178 = load i32*, i32** %10, align 8
  %179 = load i32, i32* %7, align 4
  %180 = call i32 @ath6kl_wmi_get_pmkid_list_event_rx(%struct.wmi* %177, i32* %178, i32 %179)
  store i32 %180, i32* %6, align 4
  br label %218

181:                                              ; preds = %2
  %182 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %183 = call i32 (i32, i8*, ...) @ath6kl_dbg(i32 %182, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.26, i64 0, i64 0))
  br label %218

184:                                              ; preds = %2
  %185 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %186 = call i32 (i32, i8*, ...) @ath6kl_dbg(i32 %185, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.27, i64 0, i64 0))
  br label %218

187:                                              ; preds = %2
  %188 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %189 = call i32 (i32, i8*, ...) @ath6kl_dbg(i32 %188, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.28, i64 0, i64 0))
  br label %218

190:                                              ; preds = %2
  %191 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %192 = call i32 (i32, i8*, ...) @ath6kl_dbg(i32 %191, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.29, i64 0, i64 0))
  br label %218

193:                                              ; preds = %2
  %194 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %195 = call i32 (i32, i8*, ...) @ath6kl_dbg(i32 %194, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.30, i64 0, i64 0))
  %196 = load i32*, i32** %10, align 8
  %197 = load i32, i32* %7, align 4
  %198 = call i32 @ath6kl_wmi_tx_complete_event_rx(i32* %196, i32 %197)
  store i32 %198, i32* %6, align 4
  br label %218

199:                                              ; preds = %2
  %200 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %201 = call i32 (i32, i8*, ...) @ath6kl_dbg(i32 %200, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.31, i64 0, i64 0))
  %202 = load i32*, i32** %10, align 8
  %203 = load i32, i32* %7, align 4
  %204 = call i32 @ath6kl_wmi_p2p_capabilities_event_rx(i32* %202, i32 %203)
  store i32 %204, i32* %6, align 4
  br label %218

205:                                              ; preds = %2
  %206 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %207 = call i32 (i32, i8*, ...) @ath6kl_dbg(i32 %206, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.32, i64 0, i64 0))
  %208 = load i32*, i32** %10, align 8
  %209 = load i32, i32* %7, align 4
  %210 = call i32 @ath6kl_wmi_p2p_info_event_rx(i32* %208, i32 %209)
  store i32 %210, i32* %6, align 4
  br label %218

211:                                              ; preds = %2
  %212 = load %struct.wmi*, %struct.wmi** %3, align 8
  %213 = load i32, i32* %9, align 4
  %214 = load i32, i32* %8, align 4
  %215 = load i32*, i32** %10, align 8
  %216 = load i32, i32* %7, align 4
  %217 = call i32 @ath6kl_wmi_proc_events_vif(%struct.wmi* %212, i32 %213, i32 %214, i32* %215, i32 %216)
  store i32 %217, i32* %6, align 4
  br label %218

218:                                              ; preds = %211, %205, %199, %193, %190, %187, %184, %181, %174, %171, %164, %157, %154, %147, %144, %137, %130, %127, %124, %118, %111, %108, %105, %98, %91, %84, %77, %70, %63, %56, %49, %42
  %219 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %220 = call i32 @dev_kfree_skb(%struct.sk_buff* %219)
  %221 = load i32, i32* %6, align 4
  ret i32 %221
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @ath6kl_dbg(i32, i8*, ...) #1

declare dso_local i32 @ath6kl_dbg_dump(i32, i32*, i8*, i32*, i32) #1

declare dso_local i32 @ath6kl_wmi_bitrate_reply_rx(%struct.wmi*, i32*, i32) #1

declare dso_local i32 @ath6kl_wmi_ch_list_reply_rx(%struct.wmi*, i32*, i32) #1

declare dso_local i32 @ath6kl_wmi_tx_pwr_reply_rx(%struct.wmi*, i32*, i32) #1

declare dso_local i32 @ath6kl_wmi_ready_event_rx(%struct.wmi*, i32*, i32) #1

declare dso_local i32 @ath6kl_wmi_peer_node_event_rx(%struct.wmi*, i32*, i32) #1

declare dso_local i32 @ath6kl_wmi_regdomain_event(%struct.wmi*, i32*, i32) #1

declare dso_local i32 @ath6kl_wmi_pstream_timeout_event_rx(%struct.wmi*, i32*, i32) #1

declare dso_local i32 @ath6kl_wmi_error_event_rx(%struct.wmi*, i32*, i32) #1

declare dso_local i32 @ath6kl_wmi_rssi_threshold_event_rx(%struct.wmi*, i32*, i32) #1

declare dso_local i32 @ath6kl_wmi_roam_tbl_event_rx(%struct.wmi*, i32*, i32) #1

declare dso_local i32 @ath6kl_wmi_control_rx_xtnd(%struct.wmi*, %struct.sk_buff*) #1

declare dso_local i32 @ath6kl_wmi_test_rx(%struct.wmi*, i32*, i32) #1

declare dso_local i32 @ath6kl_wmi_ratemask_reply_rx(%struct.wmi*, i32*, i32) #1

declare dso_local i32 @ath6kl_wmi_snr_threshold_event_rx(%struct.wmi*, i32*, i32) #1

declare dso_local i32 @ath6kl_wmi_aplist_event_rx(%struct.wmi*, i32*, i32) #1

declare dso_local i32 @ath6kl_wmi_keepalive_reply_rx(%struct.wmi*, i32*, i32) #1

declare dso_local i32 @ath6kl_wmi_get_pmkid_list_event_rx(%struct.wmi*, i32*, i32) #1

declare dso_local i32 @ath6kl_wmi_tx_complete_event_rx(i32*, i32) #1

declare dso_local i32 @ath6kl_wmi_p2p_capabilities_event_rx(i32*, i32) #1

declare dso_local i32 @ath6kl_wmi_p2p_info_event_rx(i32*, i32) #1

declare dso_local i32 @ath6kl_wmi_proc_events_vif(%struct.wmi*, i32, i32, i32*, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
