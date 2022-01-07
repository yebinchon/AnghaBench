; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_cmd.c_mwifiex_cmd_mac_multicast_adr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_cmd.c_mwifiex_cmd_mac_multicast_adr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host_cmd_ds_command = type { i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.host_cmd_ds_mac_multicast_adr }
%struct.host_cmd_ds_mac_multicast_adr = type { i32, i8*, i8* }
%struct.mwifiex_multicast_list = type { i32, i32 }

@S_DS_GEN = common dso_local global i64 0, align 8
@HostCmd_CMD_MAC_MULTICAST_ADR = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.host_cmd_ds_command*, i64, %struct.mwifiex_multicast_list*)* @mwifiex_cmd_mac_multicast_adr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_cmd_mac_multicast_adr(%struct.host_cmd_ds_command* %0, i64 %1, %struct.mwifiex_multicast_list* %2) #0 {
  %4 = alloca %struct.host_cmd_ds_command*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mwifiex_multicast_list*, align 8
  %7 = alloca %struct.host_cmd_ds_mac_multicast_adr*, align 8
  store %struct.host_cmd_ds_command* %0, %struct.host_cmd_ds_command** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.mwifiex_multicast_list* %2, %struct.mwifiex_multicast_list** %6, align 8
  %8 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %4, align 8
  %9 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.host_cmd_ds_mac_multicast_adr* %10, %struct.host_cmd_ds_mac_multicast_adr** %7, align 8
  %11 = load i64, i64* @S_DS_GEN, align 8
  %12 = add i64 24, %11
  %13 = call i8* @cpu_to_le16(i64 %12)
  %14 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %4, align 8
  %15 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %14, i32 0, i32 1
  store i8* %13, i8** %15, align 8
  %16 = load i64, i64* @HostCmd_CMD_MAC_MULTICAST_ADR, align 8
  %17 = call i8* @cpu_to_le16(i64 %16)
  %18 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %4, align 8
  %19 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %18, i32 0, i32 0
  store i8* %17, i8** %19, align 8
  %20 = load i64, i64* %5, align 8
  %21 = call i8* @cpu_to_le16(i64 %20)
  %22 = load %struct.host_cmd_ds_mac_multicast_adr*, %struct.host_cmd_ds_mac_multicast_adr** %7, align 8
  %23 = getelementptr inbounds %struct.host_cmd_ds_mac_multicast_adr, %struct.host_cmd_ds_mac_multicast_adr* %22, i32 0, i32 2
  store i8* %21, i8** %23, align 8
  %24 = load %struct.mwifiex_multicast_list*, %struct.mwifiex_multicast_list** %6, align 8
  %25 = getelementptr inbounds %struct.mwifiex_multicast_list, %struct.mwifiex_multicast_list* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = call i8* @cpu_to_le16(i64 %27)
  %29 = load %struct.host_cmd_ds_mac_multicast_adr*, %struct.host_cmd_ds_mac_multicast_adr** %7, align 8
  %30 = getelementptr inbounds %struct.host_cmd_ds_mac_multicast_adr, %struct.host_cmd_ds_mac_multicast_adr* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  %31 = load %struct.host_cmd_ds_mac_multicast_adr*, %struct.host_cmd_ds_mac_multicast_adr** %7, align 8
  %32 = getelementptr inbounds %struct.host_cmd_ds_mac_multicast_adr, %struct.host_cmd_ds_mac_multicast_adr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.mwifiex_multicast_list*, %struct.mwifiex_multicast_list** %6, align 8
  %35 = getelementptr inbounds %struct.mwifiex_multicast_list, %struct.mwifiex_multicast_list* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.mwifiex_multicast_list*, %struct.mwifiex_multicast_list** %6, align 8
  %38 = getelementptr inbounds %struct.mwifiex_multicast_list, %struct.mwifiex_multicast_list* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @ETH_ALEN, align 4
  %41 = mul nsw i32 %39, %40
  %42 = call i32 @memcpy(i32 %33, i32 %36, i32 %41)
  ret i32 0
}

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
