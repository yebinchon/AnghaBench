; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcmsysport.c_bcm_sysport_set_tx_coalesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcmsysport.c_bcm_sysport_set_tx_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_sysport_tx_ring = type { i32, %struct.bcm_sysport_priv* }
%struct.bcm_sysport_priv = type { i32 }
%struct.ethtool_coalesce = type { i32, i32 }

@RING_INTR_THRESH_MASK = common dso_local global i32 0, align 4
@RING_TIMEOUT_MASK = common dso_local global i32 0, align 4
@RING_TIMEOUT_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm_sysport_tx_ring*, %struct.ethtool_coalesce*)* @bcm_sysport_set_tx_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_sysport_set_tx_coalesce(%struct.bcm_sysport_tx_ring* %0, %struct.ethtool_coalesce* %1) #0 {
  %3 = alloca %struct.bcm_sysport_tx_ring*, align 8
  %4 = alloca %struct.ethtool_coalesce*, align 8
  %5 = alloca %struct.bcm_sysport_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.bcm_sysport_tx_ring* %0, %struct.bcm_sysport_tx_ring** %3, align 8
  store %struct.ethtool_coalesce* %1, %struct.ethtool_coalesce** %4, align 8
  %7 = load %struct.bcm_sysport_tx_ring*, %struct.bcm_sysport_tx_ring** %3, align 8
  %8 = getelementptr inbounds %struct.bcm_sysport_tx_ring, %struct.bcm_sysport_tx_ring* %7, i32 0, i32 1
  %9 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %8, align 8
  store %struct.bcm_sysport_priv* %9, %struct.bcm_sysport_priv** %5, align 8
  %10 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %5, align 8
  %11 = load %struct.bcm_sysport_tx_ring*, %struct.bcm_sysport_tx_ring** %3, align 8
  %12 = getelementptr inbounds %struct.bcm_sysport_tx_ring, %struct.bcm_sysport_tx_ring* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @TDMA_DESC_RING_INTR_CONTROL(i32 %13)
  %15 = call i32 @tdma_readl(%struct.bcm_sysport_priv* %10, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* @RING_INTR_THRESH_MASK, align 4
  %17 = load i32, i32* @RING_TIMEOUT_MASK, align 4
  %18 = load i32, i32* @RING_TIMEOUT_SHIFT, align 4
  %19 = shl i32 %17, %18
  %20 = or i32 %16, %19
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %6, align 4
  %24 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %25 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %6, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %6, align 4
  %29 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %30 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = mul nsw i32 %31, 1000
  %33 = call i32 @DIV_ROUND_UP(i32 %32, i32 8192)
  %34 = load i32, i32* @RING_TIMEOUT_SHIFT, align 4
  %35 = shl i32 %33, %34
  %36 = load i32, i32* %6, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %6, align 4
  %38 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.bcm_sysport_tx_ring*, %struct.bcm_sysport_tx_ring** %3, align 8
  %41 = getelementptr inbounds %struct.bcm_sysport_tx_ring, %struct.bcm_sysport_tx_ring* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @TDMA_DESC_RING_INTR_CONTROL(i32 %42)
  %44 = call i32 @tdma_writel(%struct.bcm_sysport_priv* %38, i32 %39, i32 %43)
  ret void
}

declare dso_local i32 @tdma_readl(%struct.bcm_sysport_priv*, i32) #1

declare dso_local i32 @TDMA_DESC_RING_INTR_CONTROL(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @tdma_writel(%struct.bcm_sysport_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
