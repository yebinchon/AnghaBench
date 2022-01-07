; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_11h.c_mwifiex_11h_handle_chanrpt_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_11h.c_mwifiex_11h_handle_chanrpt_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { %struct.TYPE_8__, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.host_cmd_ds_chan_rpt_event = type { i32, i32 }
%struct.mwifiex_ie_types_chan_rpt_data = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@HostCmd_RESULT_OK = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Error in channel report event\0A\00", align 1
@MSG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"RADAR Detected on channel %d!\0A\00", align 1
@NL80211_RADAR_DETECTED = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwifiex_11h_handle_chanrpt_ready(%struct.mwifiex_private* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mwifiex_private*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.host_cmd_ds_chan_rpt_event*, align 8
  %7 = alloca %struct.mwifiex_ie_types_chan_rpt_data*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = add i64 %13, 4
  %15 = inttoptr i64 %14 to i8*
  %16 = bitcast i8* %15 to %struct.host_cmd_ds_chan_rpt_event*
  store %struct.host_cmd_ds_chan_rpt_event* %16, %struct.host_cmd_ds_chan_rpt_event** %6, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = sub i64 %20, 12
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %9, align 4
  %23 = load %struct.host_cmd_ds_chan_rpt_event*, %struct.host_cmd_ds_chan_rpt_event** %6, align 8
  %24 = getelementptr inbounds %struct.host_cmd_ds_chan_rpt_event, %struct.host_cmd_ds_chan_rpt_event* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @le32_to_cpu(i32 %25)
  %27 = load i64, i64* @HostCmd_RESULT_OK, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %2
  %30 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %31 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @ERROR, align 4
  %34 = call i32 (i32, i32, i8*, ...) @mwifiex_dbg(i32 %32, i32 %33, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %104

35:                                               ; preds = %2
  %36 = load %struct.host_cmd_ds_chan_rpt_event*, %struct.host_cmd_ds_chan_rpt_event** %6, align 8
  %37 = getelementptr inbounds %struct.host_cmd_ds_chan_rpt_event, %struct.host_cmd_ds_chan_rpt_event* %36, i32 0, i32 0
  %38 = bitcast i32* %37 to i8*
  %39 = bitcast i8* %38 to i32*
  store i32* %39, i32** %8, align 8
  br label %40

40:                                               ; preds = %90, %35
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = icmp uge i64 %42, 4
  br i1 %43, label %44, label %103

44:                                               ; preds = %40
  %45 = load %struct.host_cmd_ds_chan_rpt_event*, %struct.host_cmd_ds_chan_rpt_event** %6, align 8
  %46 = getelementptr inbounds %struct.host_cmd_ds_chan_rpt_event, %struct.host_cmd_ds_chan_rpt_event* %45, i32 0, i32 0
  %47 = bitcast i32* %46 to i8*
  %48 = bitcast i8* %47 to %struct.mwifiex_ie_types_chan_rpt_data*
  store %struct.mwifiex_ie_types_chan_rpt_data* %48, %struct.mwifiex_ie_types_chan_rpt_data** %7, align 8
  %49 = load %struct.mwifiex_ie_types_chan_rpt_data*, %struct.mwifiex_ie_types_chan_rpt_data** %7, align 8
  %50 = getelementptr inbounds %struct.mwifiex_ie_types_chan_rpt_data, %struct.mwifiex_ie_types_chan_rpt_data* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @le16_to_cpu(i32 %52)
  store i32 %53, i32* %10, align 4
  %54 = load %struct.mwifiex_ie_types_chan_rpt_data*, %struct.mwifiex_ie_types_chan_rpt_data** %7, align 8
  %55 = getelementptr inbounds %struct.mwifiex_ie_types_chan_rpt_data, %struct.mwifiex_ie_types_chan_rpt_data* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @le16_to_cpu(i32 %57)
  switch i32 %58, label %89 [
    i32 128, label %59
  ]

59:                                               ; preds = %44
  %60 = load %struct.mwifiex_ie_types_chan_rpt_data*, %struct.mwifiex_ie_types_chan_rpt_data** %7, align 8
  %61 = getelementptr inbounds %struct.mwifiex_ie_types_chan_rpt_data, %struct.mwifiex_ie_types_chan_rpt_data* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %88

65:                                               ; preds = %59
  %66 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %67 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @MSG, align 4
  %70 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %71 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 (i32, i32, i8*, ...) @mwifiex_dbg(i32 %68, i32 %69, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  %77 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %78 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %77, i32 0, i32 2
  %79 = call i32 @cancel_delayed_work_sync(i32* %78)
  %80 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %81 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %84 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %83, i32 0, i32 0
  %85 = load i32, i32* @NL80211_RADAR_DETECTED, align 4
  %86 = load i32, i32* @GFP_KERNEL, align 4
  %87 = call i32 @cfg80211_cac_event(i32 %82, %struct.TYPE_8__* %84, i32 %85, i32 %86)
  br label %88

88:                                               ; preds = %65, %59
  br label %90

89:                                               ; preds = %44
  br label %90

90:                                               ; preds = %89, %88
  %91 = load i32, i32* %10, align 4
  %92 = sext i32 %91 to i64
  %93 = add i64 %92, 8
  %94 = load i32*, i32** %8, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 %93
  store i32* %95, i32** %8, align 8
  %96 = load i32, i32* %10, align 4
  %97 = sext i32 %96 to i64
  %98 = add i64 %97, 8
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = sub i64 %100, %98
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %9, align 4
  br label %40

103:                                              ; preds = %40
  store i32 0, i32* %3, align 4
  br label %104

104:                                              ; preds = %103, %29
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @mwifiex_dbg(i32, i32, i8*, ...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @cfg80211_cac_event(i32, %struct.TYPE_8__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
