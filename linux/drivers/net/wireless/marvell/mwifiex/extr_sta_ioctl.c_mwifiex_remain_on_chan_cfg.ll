; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_ioctl.c_mwifiex_remain_on_chan_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_ioctl.c_mwifiex_remain_on_chan_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32 }
%struct.ieee80211_channel = type { i32, i32 }
%struct.host_cmd_ds_remain_on_chan = type { i32, i32, i32, i32, i32 }

@HostCmd_ACT_GEN_SET = common dso_local global i64 0, align 8
@NL80211_CHAN_NO_HT = common dso_local global i32 0, align 4
@HostCmd_CMD_REMAIN_ON_CHAN = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to remain on channel\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwifiex_remain_on_chan_cfg(%struct.mwifiex_private* %0, i64 %1, %struct.ieee80211_channel* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mwifiex_private*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ieee80211_channel*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.host_cmd_ds_remain_on_chan, align 4
  %11 = alloca i32, align 4
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.ieee80211_channel* %2, %struct.ieee80211_channel** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = call i32 @memset(%struct.host_cmd_ds_remain_on_chan* %10, i32 0, i32 20)
  %13 = load i64, i64* %7, align 8
  %14 = call i32 @cpu_to_le16(i64 %13)
  %15 = getelementptr inbounds %struct.host_cmd_ds_remain_on_chan, %struct.host_cmd_ds_remain_on_chan* %10, i32 0, i32 4
  store i32 %14, i32* %15, align 4
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @HostCmd_ACT_GEN_SET, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %39

19:                                               ; preds = %4
  %20 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %21 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.host_cmd_ds_remain_on_chan, %struct.host_cmd_ds_remain_on_chan* %10, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* @NL80211_CHAN_NO_HT, align 4
  %25 = call i32 @mwifiex_chan_type_to_sec_chan_offset(i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = shl i32 %26, 2
  %28 = getelementptr inbounds %struct.host_cmd_ds_remain_on_chan, %struct.host_cmd_ds_remain_on_chan* %10, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %27
  store i32 %30, i32* %28, align 4
  %31 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %32 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ieee80211_frequency_to_channel(i32 %33)
  %35 = getelementptr inbounds %struct.host_cmd_ds_remain_on_chan, %struct.host_cmd_ds_remain_on_chan* %10, i32 0, i32 3
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @cpu_to_le32(i32 %36)
  %38 = getelementptr inbounds %struct.host_cmd_ds_remain_on_chan, %struct.host_cmd_ds_remain_on_chan* %10, i32 0, i32 2
  store i32 %37, i32* %38, align 4
  br label %39

39:                                               ; preds = %19, %4
  %40 = load %struct.mwifiex_private*, %struct.mwifiex_private** %6, align 8
  %41 = load i32, i32* @HostCmd_CMD_REMAIN_ON_CHAN, align 4
  %42 = load i64, i64* %7, align 8
  %43 = call i64 @mwifiex_send_cmd(%struct.mwifiex_private* %40, i32 %41, i64 %42, i32 0, %struct.host_cmd_ds_remain_on_chan* %10, i32 1)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = load %struct.mwifiex_private*, %struct.mwifiex_private** %6, align 8
  %47 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @ERROR, align 4
  %50 = call i32 @mwifiex_dbg(i32 %48, i32 %49, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %54

51:                                               ; preds = %39
  %52 = getelementptr inbounds %struct.host_cmd_ds_remain_on_chan, %struct.host_cmd_ds_remain_on_chan* %10, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %51, %45
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i32 @memset(%struct.host_cmd_ds_remain_on_chan*, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i64) #1

declare dso_local i32 @mwifiex_chan_type_to_sec_chan_offset(i32) #1

declare dso_local i32 @ieee80211_frequency_to_channel(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i64 @mwifiex_send_cmd(%struct.mwifiex_private*, i32, i64, i32, %struct.host_cmd_ds_remain_on_chan*, i32) #1

declare dso_local i32 @mwifiex_dbg(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
