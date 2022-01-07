; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_cmd.c_mwifiex_cmd_802_11_deauthenticate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_cmd.c_mwifiex_cmd_802_11_deauthenticate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32 }
%struct.host_cmd_ds_command = type { i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.host_cmd_ds_802_11_deauthenticate }
%struct.host_cmd_ds_802_11_deauthenticate = type { i8*, i32 }

@HostCmd_CMD_802_11_DEAUTHENTICATE = common dso_local global i64 0, align 8
@S_DS_GEN = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"cmd: Deauth: %pM\0A\00", align 1
@WLAN_REASON_DEAUTH_LEAVING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_private*, %struct.host_cmd_ds_command*, i32*)* @mwifiex_cmd_802_11_deauthenticate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_cmd_802_11_deauthenticate(%struct.mwifiex_private* %0, %struct.host_cmd_ds_command* %1, i32* %2) #0 {
  %4 = alloca %struct.mwifiex_private*, align 8
  %5 = alloca %struct.host_cmd_ds_command*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.host_cmd_ds_802_11_deauthenticate*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %4, align 8
  store %struct.host_cmd_ds_command* %1, %struct.host_cmd_ds_command** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %5, align 8
  %9 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.host_cmd_ds_802_11_deauthenticate* %10, %struct.host_cmd_ds_802_11_deauthenticate** %7, align 8
  %11 = load i64, i64* @HostCmd_CMD_802_11_DEAUTHENTICATE, align 8
  %12 = call i8* @cpu_to_le16(i64 %11)
  %13 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %5, align 8
  %14 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %13, i32 0, i32 1
  store i8* %12, i8** %14, align 8
  %15 = load i64, i64* @S_DS_GEN, align 8
  %16 = add i64 16, %15
  %17 = call i8* @cpu_to_le16(i64 %16)
  %18 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %5, align 8
  %19 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %18, i32 0, i32 0
  store i8* %17, i8** %19, align 8
  %20 = load %struct.host_cmd_ds_802_11_deauthenticate*, %struct.host_cmd_ds_802_11_deauthenticate** %7, align 8
  %21 = getelementptr inbounds %struct.host_cmd_ds_802_11_deauthenticate, %struct.host_cmd_ds_802_11_deauthenticate* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* @ETH_ALEN, align 4
  %25 = call i32 @memcpy(i32 %22, i32* %23, i32 %24)
  %26 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %27 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @CMD, align 4
  %30 = load %struct.host_cmd_ds_802_11_deauthenticate*, %struct.host_cmd_ds_802_11_deauthenticate** %7, align 8
  %31 = getelementptr inbounds %struct.host_cmd_ds_802_11_deauthenticate, %struct.host_cmd_ds_802_11_deauthenticate* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @mwifiex_dbg(i32 %28, i32 %29, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i64, i64* @WLAN_REASON_DEAUTH_LEAVING, align 8
  %35 = call i8* @cpu_to_le16(i64 %34)
  %36 = load %struct.host_cmd_ds_802_11_deauthenticate*, %struct.host_cmd_ds_802_11_deauthenticate** %7, align 8
  %37 = getelementptr inbounds %struct.host_cmd_ds_802_11_deauthenticate, %struct.host_cmd_ds_802_11_deauthenticate* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  ret i32 0
}

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @mwifiex_dbg(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
