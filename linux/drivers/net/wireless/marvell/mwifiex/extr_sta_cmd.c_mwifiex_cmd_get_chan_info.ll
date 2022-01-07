; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_cmd.c_mwifiex_cmd_get_chan_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_cmd.c_mwifiex_cmd_get_chan_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host_cmd_ds_command = type { i8*, i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.host_cmd_ds_sta_configure }
%struct.host_cmd_ds_sta_configure = type { i8*, i64 }
%struct.host_cmd_tlv_channel_band = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8* }

@HostCmd_CMD_STA_CONFIGURE = common dso_local global i32 0, align 4
@S_DS_GEN = common dso_local global i32 0, align 4
@TLV_TYPE_CHANNELBANDLIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.host_cmd_ds_command*, i32)* @mwifiex_cmd_get_chan_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_cmd_get_chan_info(%struct.host_cmd_ds_command* %0, i32 %1) #0 {
  %3 = alloca %struct.host_cmd_ds_command*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.host_cmd_ds_sta_configure*, align 8
  %6 = alloca %struct.host_cmd_tlv_channel_band*, align 8
  store %struct.host_cmd_ds_command* %0, %struct.host_cmd_ds_command** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %3, align 8
  %8 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store %struct.host_cmd_ds_sta_configure* %9, %struct.host_cmd_ds_sta_configure** %5, align 8
  %10 = load %struct.host_cmd_ds_sta_configure*, %struct.host_cmd_ds_sta_configure** %5, align 8
  %11 = getelementptr inbounds %struct.host_cmd_ds_sta_configure, %struct.host_cmd_ds_sta_configure* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.host_cmd_tlv_channel_band*
  store %struct.host_cmd_tlv_channel_band* %13, %struct.host_cmd_tlv_channel_band** %6, align 8
  %14 = load i32, i32* @HostCmd_CMD_STA_CONFIGURE, align 4
  %15 = call i8* @cpu_to_le16(i32 %14)
  %16 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %3, align 8
  %17 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %16, i32 0, i32 1
  store i8* %15, i8** %17, align 8
  %18 = load i32, i32* @S_DS_GEN, align 4
  %19 = sext i32 %18 to i64
  %20 = add i64 32, %19
  %21 = trunc i64 %20 to i32
  %22 = call i8* @cpu_to_le16(i32 %21)
  %23 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %3, align 8
  %24 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %23, i32 0, i32 0
  store i8* %22, i8** %24, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i8* @cpu_to_le16(i32 %25)
  %27 = load %struct.host_cmd_ds_sta_configure*, %struct.host_cmd_ds_sta_configure** %5, align 8
  %28 = getelementptr inbounds %struct.host_cmd_ds_sta_configure, %struct.host_cmd_ds_sta_configure* %27, i32 0, i32 0
  store i8* %26, i8** %28, align 8
  %29 = load %struct.host_cmd_tlv_channel_band*, %struct.host_cmd_tlv_channel_band** %6, align 8
  %30 = call i32 @memset(%struct.host_cmd_tlv_channel_band* %29, i32 0, i32 16)
  %31 = load i32, i32* @TLV_TYPE_CHANNELBANDLIST, align 4
  %32 = call i8* @cpu_to_le16(i32 %31)
  %33 = load %struct.host_cmd_tlv_channel_band*, %struct.host_cmd_tlv_channel_band** %6, align 8
  %34 = getelementptr inbounds %struct.host_cmd_tlv_channel_band, %struct.host_cmd_tlv_channel_band* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  store i8* %32, i8** %35, align 8
  %36 = call i8* @cpu_to_le16(i32 12)
  %37 = load %struct.host_cmd_tlv_channel_band*, %struct.host_cmd_tlv_channel_band** %6, align 8
  %38 = getelementptr inbounds %struct.host_cmd_tlv_channel_band, %struct.host_cmd_tlv_channel_band* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i8* %36, i8** %39, align 8
  ret i32 0
}

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @memset(%struct.host_cmd_tlv_channel_band*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
