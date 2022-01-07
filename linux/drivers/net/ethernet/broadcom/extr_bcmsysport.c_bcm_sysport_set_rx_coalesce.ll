; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcmsysport.c_bcm_sysport_set_rx_coalesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcmsysport.c_bcm_sysport_set_rx_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_sysport_priv = type { i32 }

@RDMA_MBDONE_INTR = common dso_local global i32 0, align 4
@RDMA_INTR_THRESH_MASK = common dso_local global i32 0, align 4
@RDMA_TIMEOUT_MASK = common dso_local global i32 0, align 4
@RDMA_TIMEOUT_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm_sysport_priv*, i32, i32)* @bcm_sysport_set_rx_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_sysport_set_rx_coalesce(%struct.bcm_sysport_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bcm_sysport_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bcm_sysport_priv* %0, %struct.bcm_sysport_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %4, align 8
  %9 = load i32, i32* @RDMA_MBDONE_INTR, align 4
  %10 = call i32 @rdma_readl(%struct.bcm_sysport_priv* %8, i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* @RDMA_INTR_THRESH_MASK, align 4
  %12 = load i32, i32* @RDMA_TIMEOUT_MASK, align 4
  %13 = load i32, i32* @RDMA_TIMEOUT_SHIFT, align 4
  %14 = shl i32 %12, %13
  %15 = or i32 %11, %14
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %7, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %5, align 4
  %23 = mul nsw i32 %22, 1000
  %24 = call i32 @DIV_ROUND_UP(i32 %23, i32 8192)
  %25 = load i32, i32* @RDMA_TIMEOUT_SHIFT, align 4
  %26 = shl i32 %24, %25
  %27 = load i32, i32* %7, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %7, align 4
  %29 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %4, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @RDMA_MBDONE_INTR, align 4
  %32 = call i32 @rdma_writel(%struct.bcm_sysport_priv* %29, i32 %30, i32 %31)
  ret void
}

declare dso_local i32 @rdma_readl(%struct.bcm_sysport_priv*, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @rdma_writel(%struct.bcm_sysport_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
