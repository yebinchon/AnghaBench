; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar_ethtool.c_gfar_gringparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar_ethtool.c_gfar_gringparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_ringparam = type { i32, i32, i32, i32, i32, i8*, i8*, i8* }
%struct.gfar_private = type { %struct.gfar_priv_rx_q**, %struct.gfar_priv_tx_q** }
%struct.gfar_priv_rx_q = type { i32 }
%struct.gfar_priv_tx_q = type { i32 }

@GFAR_RX_MAX_RING_SIZE = common dso_local global i8* null, align 8
@GFAR_TX_MAX_RING_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_ringparam*)* @gfar_gringparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfar_gringparam(%struct.net_device* %0, %struct.ethtool_ringparam* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_ringparam*, align 8
  %5 = alloca %struct.gfar_private*, align 8
  %6 = alloca %struct.gfar_priv_tx_q*, align 8
  %7 = alloca %struct.gfar_priv_rx_q*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_ringparam* %1, %struct.ethtool_ringparam** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.gfar_private* @netdev_priv(%struct.net_device* %8)
  store %struct.gfar_private* %9, %struct.gfar_private** %5, align 8
  store %struct.gfar_priv_tx_q* null, %struct.gfar_priv_tx_q** %6, align 8
  store %struct.gfar_priv_rx_q* null, %struct.gfar_priv_rx_q** %7, align 8
  %10 = load %struct.gfar_private*, %struct.gfar_private** %5, align 8
  %11 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %10, i32 0, i32 1
  %12 = load %struct.gfar_priv_tx_q**, %struct.gfar_priv_tx_q*** %11, align 8
  %13 = getelementptr inbounds %struct.gfar_priv_tx_q*, %struct.gfar_priv_tx_q** %12, i64 0
  %14 = load %struct.gfar_priv_tx_q*, %struct.gfar_priv_tx_q** %13, align 8
  store %struct.gfar_priv_tx_q* %14, %struct.gfar_priv_tx_q** %6, align 8
  %15 = load %struct.gfar_private*, %struct.gfar_private** %5, align 8
  %16 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %15, i32 0, i32 0
  %17 = load %struct.gfar_priv_rx_q**, %struct.gfar_priv_rx_q*** %16, align 8
  %18 = getelementptr inbounds %struct.gfar_priv_rx_q*, %struct.gfar_priv_rx_q** %17, i64 0
  %19 = load %struct.gfar_priv_rx_q*, %struct.gfar_priv_rx_q** %18, align 8
  store %struct.gfar_priv_rx_q* %19, %struct.gfar_priv_rx_q** %7, align 8
  %20 = load i8*, i8** @GFAR_RX_MAX_RING_SIZE, align 8
  %21 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %22 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %21, i32 0, i32 7
  store i8* %20, i8** %22, align 8
  %23 = load i8*, i8** @GFAR_RX_MAX_RING_SIZE, align 8
  %24 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %25 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %24, i32 0, i32 6
  store i8* %23, i8** %25, align 8
  %26 = load i8*, i8** @GFAR_RX_MAX_RING_SIZE, align 8
  %27 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %28 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %27, i32 0, i32 5
  store i8* %26, i8** %28, align 8
  %29 = load i32, i32* @GFAR_TX_MAX_RING_SIZE, align 4
  %30 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %31 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 8
  %32 = load %struct.gfar_priv_rx_q*, %struct.gfar_priv_rx_q** %7, align 8
  %33 = getelementptr inbounds %struct.gfar_priv_rx_q, %struct.gfar_priv_rx_q* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %36 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = load %struct.gfar_priv_rx_q*, %struct.gfar_priv_rx_q** %7, align 8
  %38 = getelementptr inbounds %struct.gfar_priv_rx_q, %struct.gfar_priv_rx_q* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %41 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load %struct.gfar_priv_rx_q*, %struct.gfar_priv_rx_q** %7, align 8
  %43 = getelementptr inbounds %struct.gfar_priv_rx_q, %struct.gfar_priv_rx_q* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %46 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.gfar_priv_tx_q*, %struct.gfar_priv_tx_q** %6, align 8
  %48 = getelementptr inbounds %struct.gfar_priv_tx_q, %struct.gfar_priv_tx_q* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %51 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  ret void
}

declare dso_local %struct.gfar_private* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
