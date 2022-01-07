; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_main.c_lan743x_tx_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_main.c_lan743x_tx_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan743x_tx = type { i32*, i32, i32, %struct.lan743x_adapter* }
%struct.lan743x_adapter = type { i32 }

@DMAC_CMD = common dso_local global i32 0, align 4
@DMAC_INT_EN_CLR = common dso_local global i32 0, align 4
@INT_EN_CLR = common dso_local global i32 0, align 4
@FCT_TX_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lan743x_tx*)* @lan743x_tx_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lan743x_tx_close(%struct.lan743x_tx* %0) #0 {
  %2 = alloca %struct.lan743x_tx*, align 8
  %3 = alloca %struct.lan743x_adapter*, align 8
  store %struct.lan743x_tx* %0, %struct.lan743x_tx** %2, align 8
  %4 = load %struct.lan743x_tx*, %struct.lan743x_tx** %2, align 8
  %5 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %4, i32 0, i32 3
  %6 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %5, align 8
  store %struct.lan743x_adapter* %6, %struct.lan743x_adapter** %3, align 8
  %7 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %8 = load i32, i32* @DMAC_CMD, align 4
  %9 = load %struct.lan743x_tx*, %struct.lan743x_tx** %2, align 8
  %10 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @DMAC_CMD_STOP_T_(i32 %11)
  %13 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %7, i32 %8, i32 %12)
  %14 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %15 = load %struct.lan743x_tx*, %struct.lan743x_tx** %2, align 8
  %16 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @lan743x_dmac_tx_wait_till_stopped(%struct.lan743x_adapter* %14, i32 %17)
  %19 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %20 = load i32, i32* @DMAC_INT_EN_CLR, align 4
  %21 = load %struct.lan743x_tx*, %struct.lan743x_tx** %2, align 8
  %22 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @DMAC_INT_BIT_TX_IOC_(i32 %23)
  %25 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %19, i32 %20, i32 %24)
  %26 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %27 = load i32, i32* @INT_EN_CLR, align 4
  %28 = load %struct.lan743x_tx*, %struct.lan743x_tx** %2, align 8
  %29 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @INT_BIT_DMA_TX_(i32 %30)
  %32 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %26, i32 %27, i32 %31)
  %33 = load %struct.lan743x_tx*, %struct.lan743x_tx** %2, align 8
  %34 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %33, i32 0, i32 2
  %35 = call i32 @napi_disable(i32* %34)
  %36 = load %struct.lan743x_tx*, %struct.lan743x_tx** %2, align 8
  %37 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %36, i32 0, i32 2
  %38 = call i32 @netif_napi_del(i32* %37)
  %39 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %40 = load i32, i32* @FCT_TX_CTL, align 4
  %41 = load %struct.lan743x_tx*, %struct.lan743x_tx** %2, align 8
  %42 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @FCT_TX_CTL_DIS_(i32 %43)
  %45 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %39, i32 %40, i32 %44)
  %46 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %47 = load i32, i32* @FCT_TX_CTL, align 4
  %48 = load %struct.lan743x_tx*, %struct.lan743x_tx** %2, align 8
  %49 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @FCT_TX_CTL_EN_(i32 %50)
  %52 = call i32 @lan743x_csr_wait_for_bit(%struct.lan743x_adapter* %46, i32 %47, i32 %51, i32 0, i32 1000, i32 20000, i32 100)
  %53 = load %struct.lan743x_tx*, %struct.lan743x_tx** %2, align 8
  %54 = call i32 @lan743x_tx_release_all_descriptors(%struct.lan743x_tx* %53)
  %55 = load %struct.lan743x_tx*, %struct.lan743x_tx** %2, align 8
  %56 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %66

59:                                               ; preds = %1
  %60 = load %struct.lan743x_tx*, %struct.lan743x_tx** %2, align 8
  %61 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @dev_kfree_skb(i32* %62)
  %64 = load %struct.lan743x_tx*, %struct.lan743x_tx** %2, align 8
  %65 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %64, i32 0, i32 0
  store i32* null, i32** %65, align 8
  br label %66

66:                                               ; preds = %59, %1
  %67 = load %struct.lan743x_tx*, %struct.lan743x_tx** %2, align 8
  %68 = call i32 @lan743x_tx_ring_cleanup(%struct.lan743x_tx* %67)
  ret void
}

declare dso_local i32 @lan743x_csr_write(%struct.lan743x_adapter*, i32, i32) #1

declare dso_local i32 @DMAC_CMD_STOP_T_(i32) #1

declare dso_local i32 @lan743x_dmac_tx_wait_till_stopped(%struct.lan743x_adapter*, i32) #1

declare dso_local i32 @DMAC_INT_BIT_TX_IOC_(i32) #1

declare dso_local i32 @INT_BIT_DMA_TX_(i32) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @netif_napi_del(i32*) #1

declare dso_local i32 @FCT_TX_CTL_DIS_(i32) #1

declare dso_local i32 @lan743x_csr_wait_for_bit(%struct.lan743x_adapter*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @FCT_TX_CTL_EN_(i32) #1

declare dso_local i32 @lan743x_tx_release_all_descriptors(%struct.lan743x_tx*) #1

declare dso_local i32 @dev_kfree_skb(i32*) #1

declare dso_local i32 @lan743x_tx_ring_cleanup(%struct.lan743x_tx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
