; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_proc_events_vif.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_proc_events_vif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi = type { i32 }
%struct.ath6kl_vif = type { i32 }

@ATH6KL_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Wmi event for unavailable vif, vif_index:%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"WMI_CONNECT_EVENTID\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"WMI_DISCONNECT_EVENTID\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"WMI_TKIP_MICERR_EVENTID\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"WMI_BSSINFO_EVENTID\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"WMI_NEIGHBOR_REPORT_EVENTID\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"WMI_SCAN_COMPLETE_EVENTID\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"WMI_REPORT_STATISTICS_EVENTID\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"WMI_CAC_EVENTID\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"WMI_PSPOLL_EVENTID\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"WMI_DTIMEXPIRY_EVENTID\0A\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"WMI_ADDBA_REQ_EVENTID\0A\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"WMI_DELBA_REQ_EVENTID\0A\00", align 1
@.str.13 = private unnamed_addr constant [46 x i8] c"WMI_SET_HOST_SLEEP_MODE_CMD_PROCESSED_EVENTID\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"WMI_REMAIN_ON_CHNL_EVENTID\0A\00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"WMI_CANCEL_REMAIN_ON_CHNL_EVENTID\0A\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"WMI_TX_STATUS_EVENTID\0A\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"WMI_RX_PROBE_REQ_EVENTID\0A\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"WMI_RX_ACTION_EVENTID\0A\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"WMI_TXE_NOTIFY_EVENTID\0A\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"unknown cmd id 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wmi*, i32, i32, i32*, i32)* @ath6kl_wmi_proc_events_vif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_wmi_proc_events_vif(%struct.wmi* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wmi*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ath6kl_vif*, align 8
  store %struct.wmi* %0, %struct.wmi** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load %struct.wmi*, %struct.wmi** %7, align 8
  %14 = getelementptr inbounds %struct.wmi, %struct.wmi* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call %struct.ath6kl_vif* @ath6kl_get_vif_by_index(i32 %15, i32 %16)
  store %struct.ath6kl_vif* %17, %struct.ath6kl_vif** %12, align 8
  %18 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %12, align 8
  %19 = icmp ne %struct.ath6kl_vif* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %5
  %21 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 (i32, i8*, ...) @ath6kl_dbg(i32 %21, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %184

26:                                               ; preds = %5
  %27 = load i32, i32* %9, align 4
  switch i32 %27, label %178 [
    i32 142, label %28
    i32 140, label %36
    i32 130, label %44
    i32 145, label %52
    i32 138, label %60
    i32 132, label %68
    i32 135, label %76
    i32 144, label %84
    i32 137, label %92
    i32 139, label %100
    i32 146, label %108
    i32 141, label %116
    i32 131, label %124
    i32 136, label %130
    i32 143, label %138
    i32 128, label %146
    i32 133, label %154
    i32 134, label %162
    i32 129, label %170
  ]

28:                                               ; preds = %26
  %29 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %30 = call i32 (i32, i8*, ...) @ath6kl_dbg(i32 %29, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %31 = load %struct.wmi*, %struct.wmi** %7, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = load i32, i32* %11, align 4
  %34 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %12, align 8
  %35 = call i32 @ath6kl_wmi_connect_event_rx(%struct.wmi* %31, i32* %32, i32 %33, %struct.ath6kl_vif* %34)
  store i32 %35, i32* %6, align 4
  br label %184

36:                                               ; preds = %26
  %37 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %38 = call i32 (i32, i8*, ...) @ath6kl_dbg(i32 %37, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %39 = load %struct.wmi*, %struct.wmi** %7, align 8
  %40 = load i32*, i32** %10, align 8
  %41 = load i32, i32* %11, align 4
  %42 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %12, align 8
  %43 = call i32 @ath6kl_wmi_disconnect_event_rx(%struct.wmi* %39, i32* %40, i32 %41, %struct.ath6kl_vif* %42)
  store i32 %43, i32* %6, align 4
  br label %184

44:                                               ; preds = %26
  %45 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %46 = call i32 (i32, i8*, ...) @ath6kl_dbg(i32 %45, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %47 = load %struct.wmi*, %struct.wmi** %7, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = load i32, i32* %11, align 4
  %50 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %12, align 8
  %51 = call i32 @ath6kl_wmi_tkip_micerr_event_rx(%struct.wmi* %47, i32* %48, i32 %49, %struct.ath6kl_vif* %50)
  store i32 %51, i32* %6, align 4
  br label %184

52:                                               ; preds = %26
  %53 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %54 = call i32 (i32, i8*, ...) @ath6kl_dbg(i32 %53, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %55 = load %struct.wmi*, %struct.wmi** %7, align 8
  %56 = load i32*, i32** %10, align 8
  %57 = load i32, i32* %11, align 4
  %58 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %12, align 8
  %59 = call i32 @ath6kl_wmi_bssinfo_event_rx(%struct.wmi* %55, i32* %56, i32 %57, %struct.ath6kl_vif* %58)
  store i32 %59, i32* %6, align 4
  br label %184

60:                                               ; preds = %26
  %61 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %62 = call i32 (i32, i8*, ...) @ath6kl_dbg(i32 %61, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %63 = load %struct.wmi*, %struct.wmi** %7, align 8
  %64 = load i32*, i32** %10, align 8
  %65 = load i32, i32* %11, align 4
  %66 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %12, align 8
  %67 = call i32 @ath6kl_wmi_neighbor_report_event_rx(%struct.wmi* %63, i32* %64, i32 %65, %struct.ath6kl_vif* %66)
  store i32 %67, i32* %6, align 4
  br label %184

68:                                               ; preds = %26
  %69 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %70 = call i32 (i32, i8*, ...) @ath6kl_dbg(i32 %69, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  %71 = load %struct.wmi*, %struct.wmi** %7, align 8
  %72 = load i32*, i32** %10, align 8
  %73 = load i32, i32* %11, align 4
  %74 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %12, align 8
  %75 = call i32 @ath6kl_wmi_scan_complete_rx(%struct.wmi* %71, i32* %72, i32 %73, %struct.ath6kl_vif* %74)
  store i32 %75, i32* %6, align 4
  br label %184

76:                                               ; preds = %26
  %77 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %78 = call i32 (i32, i8*, ...) @ath6kl_dbg(i32 %77, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  %79 = load %struct.wmi*, %struct.wmi** %7, align 8
  %80 = load i32*, i32** %10, align 8
  %81 = load i32, i32* %11, align 4
  %82 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %12, align 8
  %83 = call i32 @ath6kl_wmi_stats_event_rx(%struct.wmi* %79, i32* %80, i32 %81, %struct.ath6kl_vif* %82)
  store i32 %83, i32* %6, align 4
  br label %184

84:                                               ; preds = %26
  %85 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %86 = call i32 (i32, i8*, ...) @ath6kl_dbg(i32 %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  %87 = load %struct.wmi*, %struct.wmi** %7, align 8
  %88 = load i32*, i32** %10, align 8
  %89 = load i32, i32* %11, align 4
  %90 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %12, align 8
  %91 = call i32 @ath6kl_wmi_cac_event_rx(%struct.wmi* %87, i32* %88, i32 %89, %struct.ath6kl_vif* %90)
  store i32 %91, i32* %6, align 4
  br label %184

92:                                               ; preds = %26
  %93 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %94 = call i32 (i32, i8*, ...) @ath6kl_dbg(i32 %93, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  %95 = load %struct.wmi*, %struct.wmi** %7, align 8
  %96 = load i32*, i32** %10, align 8
  %97 = load i32, i32* %11, align 4
  %98 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %12, align 8
  %99 = call i32 @ath6kl_wmi_pspoll_event_rx(%struct.wmi* %95, i32* %96, i32 %97, %struct.ath6kl_vif* %98)
  store i32 %99, i32* %6, align 4
  br label %184

100:                                              ; preds = %26
  %101 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %102 = call i32 (i32, i8*, ...) @ath6kl_dbg(i32 %101, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0))
  %103 = load %struct.wmi*, %struct.wmi** %7, align 8
  %104 = load i32*, i32** %10, align 8
  %105 = load i32, i32* %11, align 4
  %106 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %12, align 8
  %107 = call i32 @ath6kl_wmi_dtimexpiry_event_rx(%struct.wmi* %103, i32* %104, i32 %105, %struct.ath6kl_vif* %106)
  store i32 %107, i32* %6, align 4
  br label %184

108:                                              ; preds = %26
  %109 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %110 = call i32 (i32, i8*, ...) @ath6kl_dbg(i32 %109, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0))
  %111 = load %struct.wmi*, %struct.wmi** %7, align 8
  %112 = load i32*, i32** %10, align 8
  %113 = load i32, i32* %11, align 4
  %114 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %12, align 8
  %115 = call i32 @ath6kl_wmi_addba_req_event_rx(%struct.wmi* %111, i32* %112, i32 %113, %struct.ath6kl_vif* %114)
  store i32 %115, i32* %6, align 4
  br label %184

116:                                              ; preds = %26
  %117 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %118 = call i32 (i32, i8*, ...) @ath6kl_dbg(i32 %117, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0))
  %119 = load %struct.wmi*, %struct.wmi** %7, align 8
  %120 = load i32*, i32** %10, align 8
  %121 = load i32, i32* %11, align 4
  %122 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %12, align 8
  %123 = call i32 @ath6kl_wmi_delba_req_event_rx(%struct.wmi* %119, i32* %120, i32 %121, %struct.ath6kl_vif* %122)
  store i32 %123, i32* %6, align 4
  br label %184

124:                                              ; preds = %26
  %125 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %126 = call i32 (i32, i8*, ...) @ath6kl_dbg(i32 %125, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.13, i64 0, i64 0))
  %127 = load %struct.wmi*, %struct.wmi** %7, align 8
  %128 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %12, align 8
  %129 = call i32 @ath6kl_wmi_host_sleep_mode_cmd_prcd_evt_rx(%struct.wmi* %127, %struct.ath6kl_vif* %128)
  store i32 %129, i32* %6, align 4
  br label %184

130:                                              ; preds = %26
  %131 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %132 = call i32 (i32, i8*, ...) @ath6kl_dbg(i32 %131, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0))
  %133 = load %struct.wmi*, %struct.wmi** %7, align 8
  %134 = load i32*, i32** %10, align 8
  %135 = load i32, i32* %11, align 4
  %136 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %12, align 8
  %137 = call i32 @ath6kl_wmi_remain_on_chnl_event_rx(%struct.wmi* %133, i32* %134, i32 %135, %struct.ath6kl_vif* %136)
  store i32 %137, i32* %6, align 4
  br label %184

138:                                              ; preds = %26
  %139 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %140 = call i32 (i32, i8*, ...) @ath6kl_dbg(i32 %139, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15, i64 0, i64 0))
  %141 = load %struct.wmi*, %struct.wmi** %7, align 8
  %142 = load i32*, i32** %10, align 8
  %143 = load i32, i32* %11, align 4
  %144 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %12, align 8
  %145 = call i32 @ath6kl_wmi_cancel_remain_on_chnl_event_rx(%struct.wmi* %141, i32* %142, i32 %143, %struct.ath6kl_vif* %144)
  store i32 %145, i32* %6, align 4
  br label %184

146:                                              ; preds = %26
  %147 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %148 = call i32 (i32, i8*, ...) @ath6kl_dbg(i32 %147, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0))
  %149 = load %struct.wmi*, %struct.wmi** %7, align 8
  %150 = load i32*, i32** %10, align 8
  %151 = load i32, i32* %11, align 4
  %152 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %12, align 8
  %153 = call i32 @ath6kl_wmi_tx_status_event_rx(%struct.wmi* %149, i32* %150, i32 %151, %struct.ath6kl_vif* %152)
  store i32 %153, i32* %6, align 4
  br label %184

154:                                              ; preds = %26
  %155 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %156 = call i32 (i32, i8*, ...) @ath6kl_dbg(i32 %155, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i64 0, i64 0))
  %157 = load %struct.wmi*, %struct.wmi** %7, align 8
  %158 = load i32*, i32** %10, align 8
  %159 = load i32, i32* %11, align 4
  %160 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %12, align 8
  %161 = call i32 @ath6kl_wmi_rx_probe_req_event_rx(%struct.wmi* %157, i32* %158, i32 %159, %struct.ath6kl_vif* %160)
  store i32 %161, i32* %6, align 4
  br label %184

162:                                              ; preds = %26
  %163 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %164 = call i32 (i32, i8*, ...) @ath6kl_dbg(i32 %163, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0))
  %165 = load %struct.wmi*, %struct.wmi** %7, align 8
  %166 = load i32*, i32** %10, align 8
  %167 = load i32, i32* %11, align 4
  %168 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %12, align 8
  %169 = call i32 @ath6kl_wmi_rx_action_event_rx(%struct.wmi* %165, i32* %166, i32 %167, %struct.ath6kl_vif* %168)
  store i32 %169, i32* %6, align 4
  br label %184

170:                                              ; preds = %26
  %171 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %172 = call i32 (i32, i8*, ...) @ath6kl_dbg(i32 %171, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0))
  %173 = load %struct.wmi*, %struct.wmi** %7, align 8
  %174 = load i32*, i32** %10, align 8
  %175 = load i32, i32* %11, align 4
  %176 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %12, align 8
  %177 = call i32 @ath6kl_wmi_txe_notify_event_rx(%struct.wmi* %173, i32* %174, i32 %175, %struct.ath6kl_vif* %176)
  store i32 %177, i32* %6, align 4
  br label %184

178:                                              ; preds = %26
  %179 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %180 = load i32, i32* %9, align 4
  %181 = call i32 (i32, i8*, ...) @ath6kl_dbg(i32 %179, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0), i32 %180)
  %182 = load i32, i32* @EINVAL, align 4
  %183 = sub nsw i32 0, %182
  store i32 %183, i32* %6, align 4
  br label %184

184:                                              ; preds = %178, %170, %162, %154, %146, %138, %130, %124, %116, %108, %100, %92, %84, %76, %68, %60, %52, %44, %36, %28, %20
  %185 = load i32, i32* %6, align 4
  ret i32 %185
}

declare dso_local %struct.ath6kl_vif* @ath6kl_get_vif_by_index(i32, i32) #1

declare dso_local i32 @ath6kl_dbg(i32, i8*, ...) #1

declare dso_local i32 @ath6kl_wmi_connect_event_rx(%struct.wmi*, i32*, i32, %struct.ath6kl_vif*) #1

declare dso_local i32 @ath6kl_wmi_disconnect_event_rx(%struct.wmi*, i32*, i32, %struct.ath6kl_vif*) #1

declare dso_local i32 @ath6kl_wmi_tkip_micerr_event_rx(%struct.wmi*, i32*, i32, %struct.ath6kl_vif*) #1

declare dso_local i32 @ath6kl_wmi_bssinfo_event_rx(%struct.wmi*, i32*, i32, %struct.ath6kl_vif*) #1

declare dso_local i32 @ath6kl_wmi_neighbor_report_event_rx(%struct.wmi*, i32*, i32, %struct.ath6kl_vif*) #1

declare dso_local i32 @ath6kl_wmi_scan_complete_rx(%struct.wmi*, i32*, i32, %struct.ath6kl_vif*) #1

declare dso_local i32 @ath6kl_wmi_stats_event_rx(%struct.wmi*, i32*, i32, %struct.ath6kl_vif*) #1

declare dso_local i32 @ath6kl_wmi_cac_event_rx(%struct.wmi*, i32*, i32, %struct.ath6kl_vif*) #1

declare dso_local i32 @ath6kl_wmi_pspoll_event_rx(%struct.wmi*, i32*, i32, %struct.ath6kl_vif*) #1

declare dso_local i32 @ath6kl_wmi_dtimexpiry_event_rx(%struct.wmi*, i32*, i32, %struct.ath6kl_vif*) #1

declare dso_local i32 @ath6kl_wmi_addba_req_event_rx(%struct.wmi*, i32*, i32, %struct.ath6kl_vif*) #1

declare dso_local i32 @ath6kl_wmi_delba_req_event_rx(%struct.wmi*, i32*, i32, %struct.ath6kl_vif*) #1

declare dso_local i32 @ath6kl_wmi_host_sleep_mode_cmd_prcd_evt_rx(%struct.wmi*, %struct.ath6kl_vif*) #1

declare dso_local i32 @ath6kl_wmi_remain_on_chnl_event_rx(%struct.wmi*, i32*, i32, %struct.ath6kl_vif*) #1

declare dso_local i32 @ath6kl_wmi_cancel_remain_on_chnl_event_rx(%struct.wmi*, i32*, i32, %struct.ath6kl_vif*) #1

declare dso_local i32 @ath6kl_wmi_tx_status_event_rx(%struct.wmi*, i32*, i32, %struct.ath6kl_vif*) #1

declare dso_local i32 @ath6kl_wmi_rx_probe_req_event_rx(%struct.wmi*, i32*, i32, %struct.ath6kl_vif*) #1

declare dso_local i32 @ath6kl_wmi_rx_action_event_rx(%struct.wmi*, i32*, i32, %struct.ath6kl_vif*) #1

declare dso_local i32 @ath6kl_wmi_txe_notify_event_rx(%struct.wmi*, i32*, i32, %struct.ath6kl_vif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
