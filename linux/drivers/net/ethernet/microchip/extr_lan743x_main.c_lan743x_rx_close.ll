; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_main.c_lan743x_rx_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_main.c_lan743x_rx_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan743x_rx = type { i32, i32, %struct.lan743x_adapter* }
%struct.lan743x_adapter = type { i32 }

@FCT_RX_CTL = common dso_local global i32 0, align 4
@DMAC_CMD = common dso_local global i32 0, align 4
@DMAC_INT_EN_CLR = common dso_local global i32 0, align 4
@INT_EN_CLR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lan743x_rx*)* @lan743x_rx_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lan743x_rx_close(%struct.lan743x_rx* %0) #0 {
  %2 = alloca %struct.lan743x_rx*, align 8
  %3 = alloca %struct.lan743x_adapter*, align 8
  store %struct.lan743x_rx* %0, %struct.lan743x_rx** %2, align 8
  %4 = load %struct.lan743x_rx*, %struct.lan743x_rx** %2, align 8
  %5 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %4, i32 0, i32 2
  %6 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %5, align 8
  store %struct.lan743x_adapter* %6, %struct.lan743x_adapter** %3, align 8
  %7 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %8 = load i32, i32* @FCT_RX_CTL, align 4
  %9 = load %struct.lan743x_rx*, %struct.lan743x_rx** %2, align 8
  %10 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @FCT_RX_CTL_DIS_(i32 %11)
  %13 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %7, i32 %8, i32 %12)
  %14 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %15 = load i32, i32* @FCT_RX_CTL, align 4
  %16 = load %struct.lan743x_rx*, %struct.lan743x_rx** %2, align 8
  %17 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @FCT_RX_CTL_EN_(i32 %18)
  %20 = call i32 @lan743x_csr_wait_for_bit(%struct.lan743x_adapter* %14, i32 %15, i32 %19, i32 0, i32 1000, i32 20000, i32 100)
  %21 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %22 = load i32, i32* @DMAC_CMD, align 4
  %23 = load %struct.lan743x_rx*, %struct.lan743x_rx** %2, align 8
  %24 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @DMAC_CMD_STOP_R_(i32 %25)
  %27 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %21, i32 %22, i32 %26)
  %28 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %29 = load %struct.lan743x_rx*, %struct.lan743x_rx** %2, align 8
  %30 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @lan743x_dmac_rx_wait_till_stopped(%struct.lan743x_adapter* %28, i32 %31)
  %33 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %34 = load i32, i32* @DMAC_INT_EN_CLR, align 4
  %35 = load %struct.lan743x_rx*, %struct.lan743x_rx** %2, align 8
  %36 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @DMAC_INT_BIT_RXFRM_(i32 %37)
  %39 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %33, i32 %34, i32 %38)
  %40 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %41 = load i32, i32* @INT_EN_CLR, align 4
  %42 = load %struct.lan743x_rx*, %struct.lan743x_rx** %2, align 8
  %43 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @INT_BIT_DMA_RX_(i32 %44)
  %46 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %40, i32 %41, i32 %45)
  %47 = load %struct.lan743x_rx*, %struct.lan743x_rx** %2, align 8
  %48 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %47, i32 0, i32 0
  %49 = call i32 @napi_disable(i32* %48)
  %50 = load %struct.lan743x_rx*, %struct.lan743x_rx** %2, align 8
  %51 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %50, i32 0, i32 0
  %52 = call i32 @netif_napi_del(i32* %51)
  %53 = load %struct.lan743x_rx*, %struct.lan743x_rx** %2, align 8
  %54 = call i32 @lan743x_rx_ring_cleanup(%struct.lan743x_rx* %53)
  ret void
}

declare dso_local i32 @lan743x_csr_write(%struct.lan743x_adapter*, i32, i32) #1

declare dso_local i32 @FCT_RX_CTL_DIS_(i32) #1

declare dso_local i32 @lan743x_csr_wait_for_bit(%struct.lan743x_adapter*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @FCT_RX_CTL_EN_(i32) #1

declare dso_local i32 @DMAC_CMD_STOP_R_(i32) #1

declare dso_local i32 @lan743x_dmac_rx_wait_till_stopped(%struct.lan743x_adapter*, i32) #1

declare dso_local i32 @DMAC_INT_BIT_RXFRM_(i32) #1

declare dso_local i32 @INT_BIT_DMA_RX_(i32) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @netif_napi_del(i32*) #1

declare dso_local i32 @lan743x_rx_ring_cleanup(%struct.lan743x_rx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
