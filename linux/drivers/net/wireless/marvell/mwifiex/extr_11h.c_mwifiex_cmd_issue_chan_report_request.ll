; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_11h.c_mwifiex_cmd_issue_chan_report_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_11h.c_mwifiex_cmd_issue_chan_report_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32 }
%struct.host_cmd_ds_command = type { i8*, i8*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.host_cmd_ds_chan_rpt_req }
%struct.host_cmd_ds_chan_rpt_req = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i8* }
%struct.mwifiex_radar_params = type { %struct.TYPE_8__*, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 }

@HostCmd_CMD_CHAN_REPORT_REQUEST = common dso_local global i32 0, align 4
@S_DS_GEN = common dso_local global i32 0, align 4
@MWIFIEX_A_BAND_START_FREQ = common dso_local global i32 0, align 4
@MSG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"11h: issuing DFS Radar check for channel=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"cancelling CAC\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwifiex_cmd_issue_chan_report_request(%struct.mwifiex_private* %0, %struct.host_cmd_ds_command* %1, i8* %2) #0 {
  %4 = alloca %struct.mwifiex_private*, align 8
  %5 = alloca %struct.host_cmd_ds_command*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.host_cmd_ds_chan_rpt_req*, align 8
  %8 = alloca %struct.mwifiex_radar_params*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %4, align 8
  store %struct.host_cmd_ds_command* %1, %struct.host_cmd_ds_command** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %5, align 8
  %10 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  store %struct.host_cmd_ds_chan_rpt_req* %11, %struct.host_cmd_ds_chan_rpt_req** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.mwifiex_radar_params*
  store %struct.mwifiex_radar_params* %13, %struct.mwifiex_radar_params** %8, align 8
  %14 = load i32, i32* @HostCmd_CMD_CHAN_REPORT_REQUEST, align 4
  %15 = call i8* @cpu_to_le16(i32 %14)
  %16 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %5, align 8
  %17 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %16, i32 0, i32 1
  store i8* %15, i8** %17, align 8
  %18 = load i32, i32* @S_DS_GEN, align 4
  %19 = call i8* @cpu_to_le16(i32 %18)
  %20 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %5, align 8
  %21 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %20, i32 0, i32 0
  store i8* %19, i8** %21, align 8
  %22 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %5, align 8
  %23 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %22, i32 0, i32 0
  %24 = call i32 @le16_unaligned_add_cpu(i8** %23, i32 24)
  %25 = load i32, i32* @MWIFIEX_A_BAND_START_FREQ, align 4
  %26 = call i8* @cpu_to_le16(i32 %25)
  %27 = load %struct.host_cmd_ds_chan_rpt_req*, %struct.host_cmd_ds_chan_rpt_req** %7, align 8
  %28 = getelementptr inbounds %struct.host_cmd_ds_chan_rpt_req, %struct.host_cmd_ds_chan_rpt_req* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 2
  store i8* %26, i8** %29, align 8
  %30 = load %struct.mwifiex_radar_params*, %struct.mwifiex_radar_params** %8, align 8
  %31 = getelementptr inbounds %struct.mwifiex_radar_params, %struct.mwifiex_radar_params* %30, i32 0, i32 0
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.host_cmd_ds_chan_rpt_req*, %struct.host_cmd_ds_chan_rpt_req** %7, align 8
  %38 = getelementptr inbounds %struct.host_cmd_ds_chan_rpt_req, %struct.host_cmd_ds_chan_rpt_req* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  store i32 %36, i32* %39, align 4
  %40 = load %struct.mwifiex_radar_params*, %struct.mwifiex_radar_params** %8, align 8
  %41 = getelementptr inbounds %struct.mwifiex_radar_params, %struct.mwifiex_radar_params* %40, i32 0, i32 0
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.host_cmd_ds_chan_rpt_req*, %struct.host_cmd_ds_chan_rpt_req** %7, align 8
  %46 = getelementptr inbounds %struct.host_cmd_ds_chan_rpt_req, %struct.host_cmd_ds_chan_rpt_req* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 8
  %48 = load %struct.mwifiex_radar_params*, %struct.mwifiex_radar_params** %8, align 8
  %49 = getelementptr inbounds %struct.mwifiex_radar_params, %struct.mwifiex_radar_params* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @cpu_to_le32(i64 %50)
  %52 = load %struct.host_cmd_ds_chan_rpt_req*, %struct.host_cmd_ds_chan_rpt_req** %7, align 8
  %53 = getelementptr inbounds %struct.host_cmd_ds_chan_rpt_req, %struct.host_cmd_ds_chan_rpt_req* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.mwifiex_radar_params*, %struct.mwifiex_radar_params** %8, align 8
  %55 = getelementptr inbounds %struct.mwifiex_radar_params, %struct.mwifiex_radar_params* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %3
  %59 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %60 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @MSG, align 4
  %63 = load %struct.mwifiex_radar_params*, %struct.mwifiex_radar_params** %8, align 8
  %64 = getelementptr inbounds %struct.mwifiex_radar_params, %struct.mwifiex_radar_params* %63, i32 0, i32 0
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (i32, i32, i8*, ...) @mwifiex_dbg(i32 %61, i32 %62, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %69)
  br label %77

71:                                               ; preds = %3
  %72 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %73 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @MSG, align 4
  %76 = call i32 (i32, i32, i8*, ...) @mwifiex_dbg(i32 %74, i32 %75, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %77

77:                                               ; preds = %71, %58
  ret i32 0
}

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @le16_unaligned_add_cpu(i8**, i32) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i32 @mwifiex_dbg(i32, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
