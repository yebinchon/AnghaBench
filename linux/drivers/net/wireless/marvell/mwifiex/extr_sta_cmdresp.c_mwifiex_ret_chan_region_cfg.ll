; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_cmdresp.c_mwifiex_ret_chan_region_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_cmdresp.c_mwifiex_ret_chan_region_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.ieee80211_regdomain* }
%struct.ieee80211_regdomain = type { i32 }
%struct.host_cmd_ds_command = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.host_cmd_ds_chan_region_cfg }
%struct.host_cmd_ds_chan_region_cfg = type { i32 }
%struct.mwifiex_ie_types_header = type { i32, i32 }

@HostCmd_ACT_GEN_GET = common dso_local global i64 0, align 8
@S_DS_GEN = common dso_local global i64 0, align 8
@CMD_D = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"CHAN:\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_private*, %struct.host_cmd_ds_command*)* @mwifiex_ret_chan_region_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_ret_chan_region_cfg(%struct.mwifiex_private* %0, %struct.host_cmd_ds_command* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mwifiex_private*, align 8
  %5 = alloca %struct.host_cmd_ds_command*, align 8
  %6 = alloca %struct.host_cmd_ds_chan_region_cfg*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.mwifiex_ie_types_header*, align 8
  %12 = alloca %struct.ieee80211_regdomain*, align 8
  %13 = alloca i32*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %4, align 8
  store %struct.host_cmd_ds_command* %1, %struct.host_cmd_ds_command** %5, align 8
  %14 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %5, align 8
  %15 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store %struct.host_cmd_ds_chan_region_cfg* %16, %struct.host_cmd_ds_chan_region_cfg** %6, align 8
  %17 = load %struct.host_cmd_ds_chan_region_cfg*, %struct.host_cmd_ds_chan_region_cfg** %6, align 8
  %18 = getelementptr inbounds %struct.host_cmd_ds_chan_region_cfg, %struct.host_cmd_ds_chan_region_cfg* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @le16_to_cpu(i32 %19)
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* @HostCmd_ACT_GEN_GET, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %93

25:                                               ; preds = %2
  %26 = load %struct.host_cmd_ds_chan_region_cfg*, %struct.host_cmd_ds_chan_region_cfg** %6, align 8
  %27 = bitcast %struct.host_cmd_ds_chan_region_cfg* %26 to i32*
  %28 = getelementptr inbounds i32, i32* %27, i64 4
  store i32* %28, i32** %13, align 8
  %29 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %5, align 8
  %30 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @le16_to_cpu(i32 %31)
  %33 = load i64, i64* @S_DS_GEN, align 8
  %34 = sub nsw i64 %32, %33
  %35 = sub i64 %34, 4
  store i64 %35, i64* %10, align 8
  br label %36

36:                                               ; preds = %83, %25
  %37 = load i64, i64* %10, align 8
  %38 = icmp uge i64 %37, 8
  br i1 %38, label %39, label %92

39:                                               ; preds = %36
  %40 = load i32*, i32** %13, align 8
  %41 = bitcast i32* %40 to %struct.mwifiex_ie_types_header*
  store %struct.mwifiex_ie_types_header* %41, %struct.mwifiex_ie_types_header** %11, align 8
  %42 = load %struct.mwifiex_ie_types_header*, %struct.mwifiex_ie_types_header** %11, align 8
  %43 = getelementptr inbounds %struct.mwifiex_ie_types_header, %struct.mwifiex_ie_types_header* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @le16_to_cpu(i32 %44)
  store i64 %45, i64* %8, align 8
  %46 = load %struct.mwifiex_ie_types_header*, %struct.mwifiex_ie_types_header** %11, align 8
  %47 = getelementptr inbounds %struct.mwifiex_ie_types_header, %struct.mwifiex_ie_types_header* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @le16_to_cpu(i32 %48)
  store i64 %49, i64* %9, align 8
  %50 = load i64, i64* %10, align 8
  %51 = load i64, i64* %9, align 8
  %52 = add i64 8, %51
  %53 = icmp ult i64 %50, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %39
  br label %92

55:                                               ; preds = %39
  %56 = load i64, i64* %8, align 8
  switch i64 %56, label %83 [
    i64 128, label %57
  ]

57:                                               ; preds = %55
  %58 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %59 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = load i32, i32* @CMD_D, align 4
  %62 = load %struct.mwifiex_ie_types_header*, %struct.mwifiex_ie_types_header** %11, align 8
  %63 = bitcast %struct.mwifiex_ie_types_header* %62 to i32*
  %64 = getelementptr inbounds i32, i32* %63, i64 8
  %65 = load i64, i64* %9, align 8
  %66 = call i32 @mwifiex_dbg_dump(%struct.TYPE_4__* %60, i32 %61, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %64, i64 %65)
  %67 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %68 = load %struct.mwifiex_ie_types_header*, %struct.mwifiex_ie_types_header** %11, align 8
  %69 = bitcast %struct.mwifiex_ie_types_header* %68 to i32*
  %70 = getelementptr inbounds i32, i32* %69, i64 8
  %71 = load i64, i64* %9, align 8
  %72 = call %struct.ieee80211_regdomain* @mwifiex_create_custom_regdomain(%struct.mwifiex_private* %67, i32* %70, i64 %71)
  store %struct.ieee80211_regdomain* %72, %struct.ieee80211_regdomain** %12, align 8
  %73 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %12, align 8
  %74 = call i32 @IS_ERR(%struct.ieee80211_regdomain* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %57
  %77 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %12, align 8
  %78 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %79 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %78, i32 0, i32 0
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  store %struct.ieee80211_regdomain* %77, %struct.ieee80211_regdomain** %81, align 8
  br label %82

82:                                               ; preds = %76, %57
  br label %83

83:                                               ; preds = %55, %82
  %84 = load i64, i64* %9, align 8
  %85 = add i64 8, %84
  %86 = load i32*, i32** %13, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 %85
  store i32* %87, i32** %13, align 8
  %88 = load i64, i64* %9, align 8
  %89 = add i64 8, %88
  %90 = load i64, i64* %10, align 8
  %91 = sub i64 %90, %89
  store i64 %91, i64* %10, align 8
  br label %36

92:                                               ; preds = %54, %36
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %92, %24
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @mwifiex_dbg_dump(%struct.TYPE_4__*, i32, i8*, i32*, i64) #1

declare dso_local %struct.ieee80211_regdomain* @mwifiex_create_custom_regdomain(%struct.mwifiex_private*, i32*, i64) #1

declare dso_local i32 @IS_ERR(%struct.ieee80211_regdomain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
