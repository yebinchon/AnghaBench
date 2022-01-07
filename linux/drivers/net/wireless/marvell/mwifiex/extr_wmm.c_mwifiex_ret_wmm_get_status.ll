; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_wmm.c_mwifiex_ret_wmm_get_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_wmm.c_mwifiex_ret_wmm_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { %struct.TYPE_11__, i32, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.mwifiex_wmm_ac_status* }
%struct.mwifiex_wmm_ac_status = type { i32, i32, i32 }
%struct.host_cmd_ds_command = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.mwifiex_ie_types_data = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.mwifiex_ie_types_wmm_queue_status = type { i64, i32, i32, i32 }
%struct.ieee_types_wmm_parameter = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }

@IEEE80211_WMM_IE_AP_QOSINFO_PARAM_SET_CNT_MASK = common dso_local global i32 0, align 4
@INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"info: WMM: WMM_GET_STATUS cmdresp received: %d\0A\00", align 1
@CMD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"info: CMD_RESP: WMM_GET_STATUS:\09QSTATUS TLV: %d, %d, %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"info: CMD_RESP: WMM_GET_STATUS:\09WMM Parameter Set Count: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwifiex_ret_wmm_get_status(%struct.mwifiex_private* %0, %struct.host_cmd_ds_command* %1) #0 {
  %3 = alloca %struct.mwifiex_private*, align 8
  %4 = alloca %struct.host_cmd_ds_command*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mwifiex_ie_types_data*, align 8
  %11 = alloca %struct.mwifiex_ie_types_wmm_queue_status*, align 8
  %12 = alloca %struct.ieee_types_wmm_parameter*, align 8
  %13 = alloca %struct.mwifiex_wmm_ac_status*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %3, align 8
  store %struct.host_cmd_ds_command* %1, %struct.host_cmd_ds_command** %4, align 8
  %14 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %4, align 8
  %15 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  store i32* %16, i32** %5, align 8
  %17 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %4, align 8
  %18 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @le16_to_cpu(i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* @IEEE80211_WMM_IE_AP_QOSINFO_PARAM_SET_CNT_MASK, align 4
  store i32 %21, i32* %8, align 4
  store i32 1, i32* %9, align 4
  store %struct.ieee_types_wmm_parameter* null, %struct.ieee_types_wmm_parameter** %12, align 8
  %22 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %23 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @INFO, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 (i32, i32, i8*, i32, ...) @mwifiex_dbg(i32 %24, i32 %25, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %132, %2
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = icmp uge i64 %30, 8
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br label %35

35:                                               ; preds = %32, %28
  %36 = phi i1 [ false, %28 ], [ %34, %32 ]
  br i1 %36, label %37, label %145

37:                                               ; preds = %35
  %38 = load i32*, i32** %5, align 8
  %39 = bitcast i32* %38 to %struct.mwifiex_ie_types_data*
  store %struct.mwifiex_ie_types_data* %39, %struct.mwifiex_ie_types_data** %10, align 8
  %40 = load %struct.mwifiex_ie_types_data*, %struct.mwifiex_ie_types_data** %10, align 8
  %41 = getelementptr inbounds %struct.mwifiex_ie_types_data, %struct.mwifiex_ie_types_data* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @le16_to_cpu(i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = add i64 %48, 8
  %50 = icmp ult i64 %46, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %37
  br label %145

52:                                               ; preds = %37
  %53 = load %struct.mwifiex_ie_types_data*, %struct.mwifiex_ie_types_data** %10, align 8
  %54 = getelementptr inbounds %struct.mwifiex_ie_types_data, %struct.mwifiex_ie_types_data* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @le16_to_cpu(i32 %56)
  switch i32 %57, label %131 [
    i32 129, label %58
    i32 128, label %99
  ]

58:                                               ; preds = %52
  %59 = load %struct.mwifiex_ie_types_data*, %struct.mwifiex_ie_types_data** %10, align 8
  %60 = bitcast %struct.mwifiex_ie_types_data* %59 to %struct.mwifiex_ie_types_wmm_queue_status*
  store %struct.mwifiex_ie_types_wmm_queue_status* %60, %struct.mwifiex_ie_types_wmm_queue_status** %11, align 8
  %61 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %62 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @CMD, align 4
  %65 = load %struct.mwifiex_ie_types_wmm_queue_status*, %struct.mwifiex_ie_types_wmm_queue_status** %11, align 8
  %66 = getelementptr inbounds %struct.mwifiex_ie_types_wmm_queue_status, %struct.mwifiex_ie_types_wmm_queue_status* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i32
  %69 = load %struct.mwifiex_ie_types_wmm_queue_status*, %struct.mwifiex_ie_types_wmm_queue_status** %11, align 8
  %70 = getelementptr inbounds %struct.mwifiex_ie_types_wmm_queue_status, %struct.mwifiex_ie_types_wmm_queue_status* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.mwifiex_ie_types_wmm_queue_status*, %struct.mwifiex_ie_types_wmm_queue_status** %11, align 8
  %73 = getelementptr inbounds %struct.mwifiex_ie_types_wmm_queue_status, %struct.mwifiex_ie_types_wmm_queue_status* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = call i32 (i32, i32, i8*, i32, ...) @mwifiex_dbg(i32 %63, i32 %64, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %68, i32 %71, i32 %74)
  %76 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %77 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load %struct.mwifiex_wmm_ac_status*, %struct.mwifiex_wmm_ac_status** %78, align 8
  %80 = load %struct.mwifiex_ie_types_wmm_queue_status*, %struct.mwifiex_ie_types_wmm_queue_status** %11, align 8
  %81 = getelementptr inbounds %struct.mwifiex_ie_types_wmm_queue_status, %struct.mwifiex_ie_types_wmm_queue_status* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds %struct.mwifiex_wmm_ac_status, %struct.mwifiex_wmm_ac_status* %79, i64 %82
  store %struct.mwifiex_wmm_ac_status* %83, %struct.mwifiex_wmm_ac_status** %13, align 8
  %84 = load %struct.mwifiex_ie_types_wmm_queue_status*, %struct.mwifiex_ie_types_wmm_queue_status** %11, align 8
  %85 = getelementptr inbounds %struct.mwifiex_ie_types_wmm_queue_status, %struct.mwifiex_ie_types_wmm_queue_status* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.mwifiex_wmm_ac_status*, %struct.mwifiex_wmm_ac_status** %13, align 8
  %88 = getelementptr inbounds %struct.mwifiex_wmm_ac_status, %struct.mwifiex_wmm_ac_status* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 4
  %89 = load %struct.mwifiex_ie_types_wmm_queue_status*, %struct.mwifiex_ie_types_wmm_queue_status** %11, align 8
  %90 = getelementptr inbounds %struct.mwifiex_ie_types_wmm_queue_status, %struct.mwifiex_ie_types_wmm_queue_status* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.mwifiex_wmm_ac_status*, %struct.mwifiex_wmm_ac_status** %13, align 8
  %93 = getelementptr inbounds %struct.mwifiex_wmm_ac_status, %struct.mwifiex_wmm_ac_status* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = load %struct.mwifiex_ie_types_wmm_queue_status*, %struct.mwifiex_ie_types_wmm_queue_status** %11, align 8
  %95 = getelementptr inbounds %struct.mwifiex_ie_types_wmm_queue_status, %struct.mwifiex_ie_types_wmm_queue_status* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.mwifiex_wmm_ac_status*, %struct.mwifiex_wmm_ac_status** %13, align 8
  %98 = getelementptr inbounds %struct.mwifiex_wmm_ac_status, %struct.mwifiex_wmm_ac_status* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 4
  br label %132

99:                                               ; preds = %52
  %100 = load i32*, i32** %5, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 2
  %102 = bitcast i32* %101 to %struct.ieee_types_wmm_parameter*
  store %struct.ieee_types_wmm_parameter* %102, %struct.ieee_types_wmm_parameter** %12, align 8
  %103 = load i32, i32* %7, align 4
  %104 = load %struct.ieee_types_wmm_parameter*, %struct.ieee_types_wmm_parameter** %12, align 8
  %105 = getelementptr inbounds %struct.ieee_types_wmm_parameter, %struct.ieee_types_wmm_parameter* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 1
  store i32 %103, i32* %106, align 4
  %107 = load %struct.ieee_types_wmm_parameter*, %struct.ieee_types_wmm_parameter** %12, align 8
  %108 = getelementptr inbounds %struct.ieee_types_wmm_parameter, %struct.ieee_types_wmm_parameter* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  store i32 128, i32* %109, align 4
  %110 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %111 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @CMD, align 4
  %114 = load %struct.ieee_types_wmm_parameter*, %struct.ieee_types_wmm_parameter** %12, align 8
  %115 = getelementptr inbounds %struct.ieee_types_wmm_parameter, %struct.ieee_types_wmm_parameter* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %8, align 4
  %118 = and i32 %116, %117
  %119 = call i32 (i32, i32, i8*, i32, ...) @mwifiex_dbg(i32 %112, i32 %113, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i32 %118)
  %120 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %121 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  %124 = load %struct.ieee_types_wmm_parameter*, %struct.ieee_types_wmm_parameter** %12, align 8
  %125 = load %struct.ieee_types_wmm_parameter*, %struct.ieee_types_wmm_parameter** %12, align 8
  %126 = getelementptr inbounds %struct.ieee_types_wmm_parameter, %struct.ieee_types_wmm_parameter* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = add nsw i32 %128, 2
  %130 = call i32 @memcpy(i32* %123, %struct.ieee_types_wmm_parameter* %124, i32 %129)
  br label %132

131:                                              ; preds = %52
  store i32 0, i32* %9, align 4
  br label %132

132:                                              ; preds = %131, %99, %58
  %133 = load i32, i32* %7, align 4
  %134 = sext i32 %133 to i64
  %135 = add i64 %134, 8
  %136 = load i32*, i32** %5, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 %135
  store i32* %137, i32** %5, align 8
  %138 = load i32, i32* %7, align 4
  %139 = sext i32 %138 to i64
  %140 = add i64 %139, 8
  %141 = load i32, i32* %6, align 4
  %142 = sext i32 %141 to i64
  %143 = sub i64 %142, %140
  %144 = trunc i64 %143 to i32
  store i32 %144, i32* %6, align 4
  br label %28

145:                                              ; preds = %51, %35
  %146 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %147 = load %struct.ieee_types_wmm_parameter*, %struct.ieee_types_wmm_parameter** %12, align 8
  %148 = call i32 @mwifiex_wmm_setup_queue_priorities(%struct.mwifiex_private* %146, %struct.ieee_types_wmm_parameter* %147)
  %149 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %150 = call i32 @mwifiex_wmm_setup_ac_downgrade(%struct.mwifiex_private* %149)
  ret i32 0
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @mwifiex_dbg(i32, i32, i8*, i32, ...) #1

declare dso_local i32 @memcpy(i32*, %struct.ieee_types_wmm_parameter*, i32) #1

declare dso_local i32 @mwifiex_wmm_setup_queue_priorities(%struct.mwifiex_private*, %struct.ieee_types_wmm_parameter*) #1

declare dso_local i32 @mwifiex_wmm_setup_ac_downgrade(%struct.mwifiex_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
