; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_cmdresp.c_mwifiex_ret_sdio_rx_aggr_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_cmdresp.c_mwifiex_ret_sdio_rx_aggr_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { %struct.mwifiex_adapter* }
%struct.mwifiex_adapter = type { i32, i32 }
%struct.host_cmd_ds_command = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.host_cmd_sdio_sp_rx_aggr_cfg }
%struct.host_cmd_sdio_sp_rx_aggr_cfg = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_private*, %struct.host_cmd_ds_command*)* @mwifiex_ret_sdio_rx_aggr_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_ret_sdio_rx_aggr_cfg(%struct.mwifiex_private* %0, %struct.host_cmd_ds_command* %1) #0 {
  %3 = alloca %struct.mwifiex_private*, align 8
  %4 = alloca %struct.host_cmd_ds_command*, align 8
  %5 = alloca %struct.mwifiex_adapter*, align 8
  %6 = alloca %struct.host_cmd_sdio_sp_rx_aggr_cfg*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %3, align 8
  store %struct.host_cmd_ds_command* %1, %struct.host_cmd_ds_command** %4, align 8
  %7 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %8 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %7, i32 0, i32 0
  %9 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %8, align 8
  store %struct.mwifiex_adapter* %9, %struct.mwifiex_adapter** %5, align 8
  %10 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %4, align 8
  %11 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.host_cmd_sdio_sp_rx_aggr_cfg* %12, %struct.host_cmd_sdio_sp_rx_aggr_cfg** %6, align 8
  %13 = load %struct.host_cmd_sdio_sp_rx_aggr_cfg*, %struct.host_cmd_sdio_sp_rx_aggr_cfg** %6, align 8
  %14 = getelementptr inbounds %struct.host_cmd_sdio_sp_rx_aggr_cfg, %struct.host_cmd_sdio_sp_rx_aggr_cfg* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %17 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.host_cmd_sdio_sp_rx_aggr_cfg*, %struct.host_cmd_sdio_sp_rx_aggr_cfg** %6, align 8
  %19 = getelementptr inbounds %struct.host_cmd_sdio_sp_rx_aggr_cfg, %struct.host_cmd_sdio_sp_rx_aggr_cfg* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @le16_to_cpu(i32 %20)
  %22 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %23 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  ret i32 0
}

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
