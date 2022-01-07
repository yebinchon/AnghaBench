; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_init.c_ath6kl_target_config_wlan_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_init.c_ath6kl_target_config_wlan_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"unable to set the rx frame format: %d\0A\00", align 1
@ATH6KL_CONF_IGNORE_PS_FAIL_EVT_IN_SCAN = common dso_local global i32 0, align 4
@IGNORE_PS_FAIL_DURING_SCAN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"unable to set power save fail event policy: %d\0A\00", align 1
@ATH6KL_CONF_IGNORE_ERP_BARKER = common dso_local global i32 0, align 4
@WMI_FOLLOW_BARKER_IN_ERP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"unable to set barker preamble policy: %d\0A\00", align 1
@WLAN_CONFIG_KEEP_ALIVE_INTERVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"unable to set keep alive interval: %d\0A\00", align 1
@WLAN_CONFIG_DISCONNECT_TIMEOUT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"unable to set disconnect timeout: %d\0A\00", align 1
@ATH6KL_CONF_ENABLE_TX_BURST = common dso_local global i32 0, align 4
@WMI_TXOP_DISABLED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"unable to set txop bursting: %d\0A\00", align 1
@P2P_FLAG_CAPABILITIES_REQ = common dso_local global i32 0, align 4
@P2P_FLAG_MACADDR_REQ = common dso_local global i32 0, align 4
@P2P_FLAG_HMODEL_REQ = common dso_local global i32 0, align 4
@ATH6KL_DBG_TRC = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [70 x i8] c"failed to request P2P capabilities (%d) - assuming P2P not supported\0A\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"failed to enable Probe Request reporting (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath6kl*, i32)* @ath6kl_target_config_wlan_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_target_config_wlan_params(%struct.ath6kl* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath6kl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ath6kl* %0, %struct.ath6kl** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %8 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %12 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @ath6kl_wmi_set_rx_frame_format_cmd(i32 %9, i32 %10, i32 %13, i32 0, i32 0)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @ath6kl_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %171

21:                                               ; preds = %2
  %22 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %23 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @ATH6KL_CONF_IGNORE_PS_FAIL_EVT_IN_SCAN, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %21
  %29 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %30 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @IGNORE_PS_FAIL_DURING_SCAN, align 4
  %34 = call i32 @ath6kl_wmi_pmparams_cmd(i32 %31, i32 %32, i32 0, i32 1, i32 0, i32 0, i32 1, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %28
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @ath6kl_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %3, align 4
  br label %171

41:                                               ; preds = %28
  br label %42

42:                                               ; preds = %41, %21
  %43 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %44 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @ATH6KL_CONF_IGNORE_ERP_BARKER, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %63, label %49

49:                                               ; preds = %42
  %50 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %51 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @WMI_FOLLOW_BARKER_IN_ERP, align 4
  %55 = call i32 @ath6kl_wmi_set_lpreamble_cmd(i32 %52, i32 %53, i32 0, i32 %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %49
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @ath6kl_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %3, align 4
  br label %171

62:                                               ; preds = %49
  br label %63

63:                                               ; preds = %62, %42
  %64 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %65 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @WLAN_CONFIG_KEEP_ALIVE_INTERVAL, align 4
  %69 = call i32 @ath6kl_wmi_set_keepalive_cmd(i32 %66, i32 %67, i32 %68)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %63
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @ath6kl_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %3, align 4
  br label %171

76:                                               ; preds = %63
  %77 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %78 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @WLAN_CONFIG_DISCONNECT_TIMEOUT, align 4
  %82 = call i32 @ath6kl_wmi_disctimeout_cmd(i32 %79, i32 %80, i32 %81)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %76
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @ath6kl_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* %6, align 4
  store i32 %88, i32* %3, align 4
  br label %171

89:                                               ; preds = %76
  %90 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %91 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @ATH6KL_CONF_ENABLE_TX_BURST, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %110, label %96

96:                                               ; preds = %89
  %97 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %98 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* @WMI_TXOP_DISABLED, align 4
  %102 = call i32 @ath6kl_wmi_set_wmm_txop(i32 %99, i32 %100, i32 %101)
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* %6, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %96
  %106 = load i32, i32* %6, align 4
  %107 = call i32 @ath6kl_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %106)
  %108 = load i32, i32* %6, align 4
  store i32 %108, i32* %3, align 4
  br label %171

109:                                              ; preds = %96
  br label %110

110:                                              ; preds = %109, %89
  %111 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %112 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %143

115:                                              ; preds = %110
  %116 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %117 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = icmp eq i32 %118, 1
  br i1 %119, label %123, label %120

120:                                              ; preds = %115
  %121 = load i32, i32* %5, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %143

123:                                              ; preds = %120, %115
  %124 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %125 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %5, align 4
  %128 = load i32, i32* @P2P_FLAG_CAPABILITIES_REQ, align 4
  %129 = load i32, i32* @P2P_FLAG_MACADDR_REQ, align 4
  %130 = or i32 %128, %129
  %131 = load i32, i32* @P2P_FLAG_HMODEL_REQ, align 4
  %132 = or i32 %130, %131
  %133 = call i32 @ath6kl_wmi_info_req_cmd(i32 %126, i32 %127, i32 %132)
  store i32 %133, i32* %6, align 4
  %134 = load i32, i32* %6, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %123
  %137 = load i32, i32* @ATH6KL_DBG_TRC, align 4
  %138 = load i32, i32* %6, align 4
  %139 = call i32 @ath6kl_dbg(i32 %137, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.6, i64 0, i64 0), i32 %138)
  %140 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %141 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %140, i32 0, i32 1
  store i32 0, i32* %141, align 4
  br label %142

142:                                              ; preds = %136, %123
  br label %143

143:                                              ; preds = %142, %120, %110
  %144 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %145 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %169

148:                                              ; preds = %143
  %149 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %150 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = icmp eq i32 %151, 1
  br i1 %152, label %156, label %153

153:                                              ; preds = %148
  %154 = load i32, i32* %5, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %169

156:                                              ; preds = %153, %148
  %157 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %158 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* %5, align 4
  %161 = call i32 @ath6kl_wmi_probe_report_req_cmd(i32 %159, i32 %160, i32 1)
  store i32 %161, i32* %6, align 4
  %162 = load i32, i32* %6, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %156
  %165 = load i32, i32* @ATH6KL_DBG_TRC, align 4
  %166 = load i32, i32* %6, align 4
  %167 = call i32 @ath6kl_dbg(i32 %165, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0), i32 %166)
  br label %168

168:                                              ; preds = %164, %156
  br label %169

169:                                              ; preds = %168, %153, %143
  %170 = load i32, i32* %6, align 4
  store i32 %170, i32* %3, align 4
  br label %171

171:                                              ; preds = %169, %105, %85, %72, %58, %37, %17
  %172 = load i32, i32* %3, align 4
  ret i32 %172
}

declare dso_local i32 @ath6kl_wmi_set_rx_frame_format_cmd(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ath6kl_err(i8*, i32) #1

declare dso_local i32 @ath6kl_wmi_pmparams_cmd(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ath6kl_wmi_set_lpreamble_cmd(i32, i32, i32, i32) #1

declare dso_local i32 @ath6kl_wmi_set_keepalive_cmd(i32, i32, i32) #1

declare dso_local i32 @ath6kl_wmi_disctimeout_cmd(i32, i32, i32) #1

declare dso_local i32 @ath6kl_wmi_set_wmm_txop(i32, i32, i32) #1

declare dso_local i32 @ath6kl_wmi_info_req_cmd(i32, i32, i32) #1

declare dso_local i32 @ath6kl_dbg(i32, i8*, i32) #1

declare dso_local i32 @ath6kl_wmi_probe_report_req_cmd(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
