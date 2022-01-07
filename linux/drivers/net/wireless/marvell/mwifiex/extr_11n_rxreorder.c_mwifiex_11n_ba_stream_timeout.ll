; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_11n_rxreorder.c_mwifiex_11n_ba_stream_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_11n_rxreorder.c_mwifiex_11n_ba_stream_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32 }
%struct.host_cmd_ds_11n_batimeout = type { i64, i64, i32 }
%struct.host_cmd_ds_11n_delba = type { i32, i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@DELBA_TID_POS = common dso_local global i32 0, align 4
@DELBA_INITIATOR_POS = common dso_local global i32 0, align 4
@WLAN_REASON_QSTA_TIMEOUT = common dso_local global i32 0, align 4
@HostCmd_CMD_11N_DELBA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mwifiex_11n_ba_stream_timeout(%struct.mwifiex_private* %0, %struct.host_cmd_ds_11n_batimeout* %1) #0 {
  %3 = alloca %struct.mwifiex_private*, align 8
  %4 = alloca %struct.host_cmd_ds_11n_batimeout*, align 8
  %5 = alloca %struct.host_cmd_ds_11n_delba, align 4
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %3, align 8
  store %struct.host_cmd_ds_11n_batimeout* %1, %struct.host_cmd_ds_11n_batimeout** %4, align 8
  %6 = call i32 @memset(%struct.host_cmd_ds_11n_delba* %5, i32 0, i32 12)
  %7 = getelementptr inbounds %struct.host_cmd_ds_11n_delba, %struct.host_cmd_ds_11n_delba* %5, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.host_cmd_ds_11n_batimeout*, %struct.host_cmd_ds_11n_batimeout** %4, align 8
  %10 = getelementptr inbounds %struct.host_cmd_ds_11n_batimeout, %struct.host_cmd_ds_11n_batimeout* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @ETH_ALEN, align 4
  %13 = call i32 @memcpy(i32 %8, i32 %11, i32 %12)
  %14 = load %struct.host_cmd_ds_11n_batimeout*, %struct.host_cmd_ds_11n_batimeout** %4, align 8
  %15 = getelementptr inbounds %struct.host_cmd_ds_11n_batimeout, %struct.host_cmd_ds_11n_batimeout* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = trunc i64 %16 to i32
  %18 = load i32, i32* @DELBA_TID_POS, align 4
  %19 = shl i32 %17, %18
  %20 = call i32 @cpu_to_le16(i32 %19)
  %21 = getelementptr inbounds %struct.host_cmd_ds_11n_delba, %struct.host_cmd_ds_11n_delba* %5, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %20
  store i32 %23, i32* %21, align 4
  %24 = load %struct.host_cmd_ds_11n_batimeout*, %struct.host_cmd_ds_11n_batimeout** %4, align 8
  %25 = getelementptr inbounds %struct.host_cmd_ds_11n_batimeout, %struct.host_cmd_ds_11n_batimeout* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = load i32, i32* @DELBA_INITIATOR_POS, align 4
  %29 = shl i32 %27, %28
  %30 = call i32 @cpu_to_le16(i32 %29)
  %31 = getelementptr inbounds %struct.host_cmd_ds_11n_delba, %struct.host_cmd_ds_11n_delba* %5, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %30
  store i32 %33, i32* %31, align 4
  %34 = load i32, i32* @WLAN_REASON_QSTA_TIMEOUT, align 4
  %35 = call i32 @cpu_to_le16(i32 %34)
  %36 = getelementptr inbounds %struct.host_cmd_ds_11n_delba, %struct.host_cmd_ds_11n_delba* %5, i32 0, i32 0
  store i32 %35, i32* %36, align 4
  %37 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %38 = load i32, i32* @HostCmd_CMD_11N_DELBA, align 4
  %39 = call i32 @mwifiex_send_cmd(%struct.mwifiex_private* %37, i32 %38, i32 0, i32 0, %struct.host_cmd_ds_11n_delba* %5, i32 0)
  ret void
}

declare dso_local i32 @memset(%struct.host_cmd_ds_11n_delba*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @mwifiex_send_cmd(%struct.mwifiex_private*, i32, i32, i32, %struct.host_cmd_ds_11n_delba*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
