; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx_edma.c_wil_init_txrx_ops_edma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx_edma.c_wil_init_txrx_ops_edma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@wil_configure_interrupt_moderation_edma = common dso_local global i32 0, align 4
@wil_ring_init_tx_edma = common dso_local global i32 0, align 4
@wil_ring_free_edma = common dso_local global i32 0, align 4
@wil_ring_init_bcast_edma = common dso_local global i32 0, align 4
@wil_tx_init_edma = common dso_local global i32 0, align 4
@wil_tx_fini_edma = common dso_local global i32 0, align 4
@wil_tx_desc_map_edma = common dso_local global i32 0, align 4
@wil_tx_desc_unmap_edma = common dso_local global i32 0, align 4
@__wil_tx_ring_tso_edma = common dso_local global i32 0, align 4
@wil_tx_ring_modify_edma = common dso_local global i32 0, align 4
@wil_rx_init_edma = common dso_local global i32 0, align 4
@wmi_addba_rx_resp_edma = common dso_local global i32 0, align 4
@wil_get_reorder_params_edma = common dso_local global i32 0, align 4
@wil_get_netif_rx_params_edma = common dso_local global i32 0, align 4
@wil_rx_crypto_check_edma = common dso_local global i32 0, align 4
@wil_rx_error_check_edma = common dso_local global i32 0, align 4
@wil_is_rx_idle_edma = common dso_local global i32 0, align 4
@wil_rx_fini_edma = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wil_init_txrx_ops_edma(%struct.wil6210_priv* %0) #0 {
  %2 = alloca %struct.wil6210_priv*, align 8
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %2, align 8
  %3 = load i32, i32* @wil_configure_interrupt_moderation_edma, align 4
  %4 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %5 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 17
  store i32 %3, i32* %6, align 4
  %7 = load i32, i32* @wil_ring_init_tx_edma, align 4
  %8 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %9 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 16
  store i32 %7, i32* %10, align 4
  %11 = load i32, i32* @wil_ring_free_edma, align 4
  %12 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %13 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 15
  store i32 %11, i32* %14, align 4
  %15 = load i32, i32* @wil_ring_init_bcast_edma, align 4
  %16 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %17 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 14
  store i32 %15, i32* %18, align 4
  %19 = load i32, i32* @wil_tx_init_edma, align 4
  %20 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %21 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 13
  store i32 %19, i32* %22, align 4
  %23 = load i32, i32* @wil_tx_fini_edma, align 4
  %24 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %25 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 12
  store i32 %23, i32* %26, align 4
  %27 = load i32, i32* @wil_tx_desc_map_edma, align 4
  %28 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %29 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 11
  store i32 %27, i32* %30, align 4
  %31 = load i32, i32* @wil_tx_desc_unmap_edma, align 4
  %32 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %33 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 10
  store i32 %31, i32* %34, align 4
  %35 = load i32, i32* @__wil_tx_ring_tso_edma, align 4
  %36 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %37 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 9
  store i32 %35, i32* %38, align 4
  %39 = load i32, i32* @wil_tx_ring_modify_edma, align 4
  %40 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %41 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 8
  store i32 %39, i32* %42, align 4
  %43 = load i32, i32* @wil_rx_init_edma, align 4
  %44 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %45 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 7
  store i32 %43, i32* %46, align 4
  %47 = load i32, i32* @wmi_addba_rx_resp_edma, align 4
  %48 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %49 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 6
  store i32 %47, i32* %50, align 4
  %51 = load i32, i32* @wil_get_reorder_params_edma, align 4
  %52 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %53 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 5
  store i32 %51, i32* %54, align 4
  %55 = load i32, i32* @wil_get_netif_rx_params_edma, align 4
  %56 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %57 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 4
  store i32 %55, i32* %58, align 4
  %59 = load i32, i32* @wil_rx_crypto_check_edma, align 4
  %60 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %61 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 3
  store i32 %59, i32* %62, align 4
  %63 = load i32, i32* @wil_rx_error_check_edma, align 4
  %64 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %65 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 2
  store i32 %63, i32* %66, align 4
  %67 = load i32, i32* @wil_is_rx_idle_edma, align 4
  %68 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %69 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  store i32 %67, i32* %70, align 4
  %71 = load i32, i32* @wil_rx_fini_edma, align 4
  %72 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %73 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
