; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_cmdresp.c_mwifiex_ret_pkt_aggr_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_cmdresp.c_mwifiex_ret_pkt_aggr_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { %struct.mwifiex_adapter* }
%struct.mwifiex_adapter = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i8*, i8*, i8*, i32, i8* }
%struct.host_cmd_ds_command = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.host_cmd_ds_pkt_aggr_ctrl }
%struct.host_cmd_ds_pkt_aggr_ctrl = type { i32, i32, i32, i32 }

@INTF_HEADER_LEN = common dso_local global i32 0, align 4
@MWIFIEX_BUS_AGGR_MODE_LEN_V2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_private*, %struct.host_cmd_ds_command*)* @mwifiex_ret_pkt_aggr_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_ret_pkt_aggr_ctrl(%struct.mwifiex_private* %0, %struct.host_cmd_ds_command* %1) #0 {
  %3 = alloca %struct.mwifiex_private*, align 8
  %4 = alloca %struct.host_cmd_ds_command*, align 8
  %5 = alloca %struct.host_cmd_ds_pkt_aggr_ctrl*, align 8
  %6 = alloca %struct.mwifiex_adapter*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %3, align 8
  store %struct.host_cmd_ds_command* %1, %struct.host_cmd_ds_command** %4, align 8
  %7 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %4, align 8
  %8 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store %struct.host_cmd_ds_pkt_aggr_ctrl* %9, %struct.host_cmd_ds_pkt_aggr_ctrl** %5, align 8
  %10 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %11 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %10, i32 0, i32 0
  %12 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %11, align 8
  store %struct.mwifiex_adapter* %12, %struct.mwifiex_adapter** %6, align 8
  %13 = load %struct.host_cmd_ds_pkt_aggr_ctrl*, %struct.host_cmd_ds_pkt_aggr_ctrl** %5, align 8
  %14 = getelementptr inbounds %struct.host_cmd_ds_pkt_aggr_ctrl, %struct.host_cmd_ds_pkt_aggr_ctrl* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call i8* @le16_to_cpu(i32 %15)
  %17 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %18 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 4
  store i8* %16, i8** %19, align 8
  %20 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %21 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 4
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load i32, i32* @INTF_HEADER_LEN, align 4
  %27 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %28 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  br label %29

29:                                               ; preds = %25, %2
  %30 = load i32, i32* @MWIFIEX_BUS_AGGR_MODE_LEN_V2, align 4
  %31 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %32 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 3
  store i32 %30, i32* %33, align 8
  %34 = load %struct.host_cmd_ds_pkt_aggr_ctrl*, %struct.host_cmd_ds_pkt_aggr_ctrl** %5, align 8
  %35 = getelementptr inbounds %struct.host_cmd_ds_pkt_aggr_ctrl, %struct.host_cmd_ds_pkt_aggr_ctrl* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @le16_to_cpu(i32 %36)
  %38 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %39 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  store i8* %37, i8** %40, align 8
  %41 = load %struct.host_cmd_ds_pkt_aggr_ctrl*, %struct.host_cmd_ds_pkt_aggr_ctrl** %5, align 8
  %42 = getelementptr inbounds %struct.host_cmd_ds_pkt_aggr_ctrl, %struct.host_cmd_ds_pkt_aggr_ctrl* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @le16_to_cpu(i32 %43)
  %45 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %46 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  store i8* %44, i8** %47, align 8
  %48 = load %struct.host_cmd_ds_pkt_aggr_ctrl*, %struct.host_cmd_ds_pkt_aggr_ctrl** %5, align 8
  %49 = getelementptr inbounds %struct.host_cmd_ds_pkt_aggr_ctrl, %struct.host_cmd_ds_pkt_aggr_ctrl* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i8* @le16_to_cpu(i32 %50)
  %52 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %53 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  store i8* %51, i8** %54, align 8
  ret i32 0
}

declare dso_local i8* @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
