; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_ethtool.c_set_adaptive_rx_setting.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_ethtool.c_set_adaptive_rx_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.port_info = type { i64, i32, %struct.adapter* }
%struct.adapter = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.sge_eth_rxq* }
%struct.sge_eth_rxq = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @set_adaptive_rx_setting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_adaptive_rx_setting(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.port_info*, align 8
  %7 = alloca %struct.adapter*, align 8
  %8 = alloca %struct.sge_eth_rxq*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.port_info* @netdev_priv(%struct.net_device* %9)
  store %struct.port_info* %10, %struct.port_info** %6, align 8
  %11 = load %struct.port_info*, %struct.port_info** %6, align 8
  %12 = getelementptr inbounds %struct.port_info, %struct.port_info* %11, i32 0, i32 2
  %13 = load %struct.adapter*, %struct.adapter** %12, align 8
  store %struct.adapter* %13, %struct.adapter** %7, align 8
  %14 = load %struct.adapter*, %struct.adapter** %7, align 8
  %15 = getelementptr inbounds %struct.adapter, %struct.adapter* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.sge_eth_rxq*, %struct.sge_eth_rxq** %16, align 8
  %18 = load %struct.port_info*, %struct.port_info** %6, align 8
  %19 = getelementptr inbounds %struct.port_info, %struct.port_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.sge_eth_rxq, %struct.sge_eth_rxq* %17, i64 %20
  store %struct.sge_eth_rxq* %21, %struct.sge_eth_rxq** %8, align 8
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %33, %2
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.port_info*, %struct.port_info** %6, align 8
  %25 = getelementptr inbounds %struct.port_info, %struct.port_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %22
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.sge_eth_rxq*, %struct.sge_eth_rxq** %8, align 8
  %31 = getelementptr inbounds %struct.sge_eth_rxq, %struct.sge_eth_rxq* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 4
  br label %33

33:                                               ; preds = %28
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  %36 = load %struct.sge_eth_rxq*, %struct.sge_eth_rxq** %8, align 8
  %37 = getelementptr inbounds %struct.sge_eth_rxq, %struct.sge_eth_rxq* %36, i32 1
  store %struct.sge_eth_rxq* %37, %struct.sge_eth_rxq** %8, align 8
  br label %22

38:                                               ; preds = %22
  ret i32 0
}

declare dso_local %struct.port_info* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
