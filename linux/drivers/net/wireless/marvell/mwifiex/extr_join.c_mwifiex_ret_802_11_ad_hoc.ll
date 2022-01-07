; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_join.c_mwifiex_ret_802_11_ad_hoc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_join.c_mwifiex_ret_802_11_ad_hoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32, i32, %struct.TYPE_10__, %struct.mwifiex_adapter*, i32, i32, %struct.mwifiex_bssdescriptor* }
%struct.TYPE_10__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.mwifiex_adapter = type { %struct.TYPE_12__, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i64 }
%struct.mwifiex_bssdescriptor = type { %struct.TYPE_9__, %struct.TYPE_13__* }
%struct.TYPE_9__ = type { i32 }
%struct.host_cmd_ds_command = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.host_cmd_ds_802_11_ad_hoc_join_result, %struct.host_cmd_ds_802_11_ad_hoc_start_result }
%struct.host_cmd_ds_802_11_ad_hoc_join_result = type { i64 }
%struct.host_cmd_ds_802_11_ad_hoc_start_result = type { %struct.mwifiex_bssdescriptor*, i64 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"ADHOC_RESP: failed, association terminated by host\0A\00", align 1
@HostCmd_CMD_802_11_AD_HOC_START = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"ADHOC_RESP: failed\0A\00", align 1
@INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"info: ADHOC_S_RESP %s\0A\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@ADHOC_STARTED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"info: ADHOC_J_RESP %s\0A\00", align 1
@ADHOC_JOINED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"info: ADHOC_RESP: channel = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"info: ADHOC_RESP: BSSID = %pM\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwifiex_ret_802_11_ad_hoc(%struct.mwifiex_private* %0, %struct.host_cmd_ds_command* %1) #0 {
  %3 = alloca %struct.mwifiex_private*, align 8
  %4 = alloca %struct.host_cmd_ds_command*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mwifiex_adapter*, align 8
  %7 = alloca %struct.host_cmd_ds_802_11_ad_hoc_start_result*, align 8
  %8 = alloca %struct.host_cmd_ds_802_11_ad_hoc_join_result*, align 8
  %9 = alloca %struct.mwifiex_bssdescriptor*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %3, align 8
  store %struct.host_cmd_ds_command* %1, %struct.host_cmd_ds_command** %4, align 8
  store i32 0, i32* %5, align 4
  %12 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %13 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %12, i32 0, i32 3
  %14 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %13, align 8
  store %struct.mwifiex_adapter* %14, %struct.mwifiex_adapter** %6, align 8
  %15 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %4, align 8
  %16 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  store %struct.host_cmd_ds_802_11_ad_hoc_start_result* %17, %struct.host_cmd_ds_802_11_ad_hoc_start_result** %7, align 8
  %18 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %4, align 8
  %19 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  store %struct.host_cmd_ds_802_11_ad_hoc_join_result* %20, %struct.host_cmd_ds_802_11_ad_hoc_join_result** %8, align 8
  %21 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %4, align 8
  %22 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @le16_to_cpu(i32 %23)
  store i64 %24, i64* %10, align 8
  %25 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %26 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %25, i32 0, i32 6
  %27 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %26, align 8
  %28 = icmp ne %struct.mwifiex_bssdescriptor* %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %2
  %30 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %31 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %30, i32 0, i32 3
  %32 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %31, align 8
  %33 = load i32, i32* @ERROR, align 4
  %34 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %32, i32 %33, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %157

35:                                               ; preds = %2
  %36 = load i64, i64* %10, align 8
  %37 = load i64, i64* @HostCmd_CMD_802_11_AD_HOC_START, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load %struct.host_cmd_ds_802_11_ad_hoc_start_result*, %struct.host_cmd_ds_802_11_ad_hoc_start_result** %7, align 8
  %41 = getelementptr inbounds %struct.host_cmd_ds_802_11_ad_hoc_start_result, %struct.host_cmd_ds_802_11_ad_hoc_start_result* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %11, align 8
  br label %47

43:                                               ; preds = %35
  %44 = load %struct.host_cmd_ds_802_11_ad_hoc_join_result*, %struct.host_cmd_ds_802_11_ad_hoc_join_result** %8, align 8
  %45 = getelementptr inbounds %struct.host_cmd_ds_802_11_ad_hoc_join_result, %struct.host_cmd_ds_802_11_ad_hoc_join_result* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %11, align 8
  br label %47

47:                                               ; preds = %43, %39
  %48 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %49 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %48, i32 0, i32 6
  %50 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %49, align 8
  store %struct.mwifiex_bssdescriptor* %50, %struct.mwifiex_bssdescriptor** %9, align 8
  %51 = load i64, i64* %11, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %72

53:                                               ; preds = %47
  %54 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %55 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %54, i32 0, i32 3
  %56 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %55, align 8
  %57 = load i32, i32* @ERROR, align 4
  %58 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %56, i32 %57, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %59 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %60 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %53
  %64 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %65 = load i64, i64* %11, align 8
  %66 = call i32 @mwifiex_reset_connect_state(%struct.mwifiex_private* %64, i64 %65, i32 1)
  br label %67

67:                                               ; preds = %63, %53
  %68 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %69 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = call i32 @memset(%struct.TYPE_13__* %70, i32 0, i32 16)
  store i32 -1, i32* %5, align 4
  br label %157

72:                                               ; preds = %47
  %73 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %74 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %73, i32 0, i32 0
  store i32 1, i32* %74, align 8
  %75 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %4, align 8
  %76 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i64 @le16_to_cpu(i32 %77)
  %79 = load i64, i64* @HostCmd_CMD_802_11_AD_HOC_START, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %102

81:                                               ; preds = %72
  %82 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %83 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %82, i32 0, i32 3
  %84 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %83, align 8
  %85 = load i32, i32* @INFO, align 4
  %86 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %9, align 8
  %87 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %84, i32 %85, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %89)
  %91 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %9, align 8
  %92 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %91, i32 0, i32 1
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %92, align 8
  %94 = load %struct.host_cmd_ds_802_11_ad_hoc_start_result*, %struct.host_cmd_ds_802_11_ad_hoc_start_result** %7, align 8
  %95 = getelementptr inbounds %struct.host_cmd_ds_802_11_ad_hoc_start_result, %struct.host_cmd_ds_802_11_ad_hoc_start_result* %94, i32 0, i32 0
  %96 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %95, align 8
  %97 = load i32, i32* @ETH_ALEN, align 4
  %98 = call i32 @memcpy(%struct.TYPE_13__* %93, %struct.mwifiex_bssdescriptor* %96, i32 %97)
  %99 = load i32, i32* @ADHOC_STARTED, align 4
  %100 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %101 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %100, i32 0, i32 5
  store i32 %99, i32* %101, align 4
  br label %120

102:                                              ; preds = %72
  %103 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %104 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %103, i32 0, i32 3
  %105 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %104, align 8
  %106 = load i32, i32* @INFO, align 4
  %107 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %9, align 8
  %108 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %105, i32 %106, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %110)
  %112 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %113 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  %115 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %9, align 8
  %116 = call i32 @memcpy(%struct.TYPE_13__* %114, %struct.mwifiex_bssdescriptor* %115, i32 16)
  %117 = load i32, i32* @ADHOC_JOINED, align 4
  %118 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %119 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %118, i32 0, i32 5
  store i32 %117, i32* %119, align 4
  br label %120

120:                                              ; preds = %102, %81
  %121 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %122 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %121, i32 0, i32 3
  %123 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %122, align 8
  %124 = load i32, i32* @INFO, align 4
  %125 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %126 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 8
  %128 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %123, i32 %124, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %127)
  %129 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %130 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %129, i32 0, i32 3
  %131 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %130, align 8
  %132 = load i32, i32* @INFO, align 4
  %133 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %134 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %131, i32 %132, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %137)
  %139 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %140 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @netif_carrier_ok(i32 %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %149, label %144

144:                                              ; preds = %120
  %145 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %146 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @netif_carrier_on(i32 %147)
  br label %149

149:                                              ; preds = %144, %120
  %150 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %151 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %154 = call i32 @mwifiex_wake_up_net_dev_queue(i32 %152, %struct.mwifiex_adapter* %153)
  %155 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %156 = call i32 @mwifiex_save_curr_bcn(%struct.mwifiex_private* %155)
  br label %157

157:                                              ; preds = %149, %67, %29
  %158 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %159 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %158, i32 0, i32 1
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %176

164:                                              ; preds = %157
  %165 = load i32, i32* %5, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %164
  %168 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %169 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 0
  store i32 -1, i32* %170, align 8
  br label %175

171:                                              ; preds = %164
  %172 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %173 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 0
  store i32 0, i32* %174, align 8
  br label %175

175:                                              ; preds = %171, %167
  br label %176

176:                                              ; preds = %175, %157
  %177 = load i32, i32* %5, align 4
  ret i32 %177
}

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*, ...) #1

declare dso_local i32 @mwifiex_reset_connect_state(%struct.mwifiex_private*, i64, i32) #1

declare dso_local i32 @memset(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_13__*, %struct.mwifiex_bssdescriptor*, i32) #1

declare dso_local i32 @netif_carrier_ok(i32) #1

declare dso_local i32 @netif_carrier_on(i32) #1

declare dso_local i32 @mwifiex_wake_up_net_dev_queue(i32, %struct.mwifiex_adapter*) #1

declare dso_local i32 @mwifiex_save_curr_bcn(%struct.mwifiex_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
