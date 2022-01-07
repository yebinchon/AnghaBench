; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_xdp.c_bnxt_tx_int_xdp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_xdp.c_bnxt_tx_int_xdp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.bnxt_napi = type { %struct.bnxt_rx_ring_info*, %struct.bnxt_tx_ring_info* }
%struct.bnxt_rx_ring_info = type { i32 }
%struct.bnxt_tx_ring_info = type { i64, %struct.bnxt_sw_tx_bd* }
%struct.bnxt_sw_tx_bd = type { i64, i32, i32* }

@XDP_REDIRECT = common dso_local global i64 0, align 8
@mapping = common dso_local global i32 0, align 4
@len = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@XDP_TX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnxt_tx_int_xdp(%struct.bnxt* %0, %struct.bnxt_napi* %1, i32 %2) #0 {
  %4 = alloca %struct.bnxt*, align 8
  %5 = alloca %struct.bnxt_napi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bnxt_tx_ring_info*, align 8
  %8 = alloca %struct.bnxt_rx_ring_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.bnxt_sw_tx_bd*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.pci_dev*, align 8
  store %struct.bnxt* %0, %struct.bnxt** %4, align 8
  store %struct.bnxt_napi* %1, %struct.bnxt_napi** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load %struct.bnxt_napi*, %struct.bnxt_napi** %5, align 8
  %16 = getelementptr inbounds %struct.bnxt_napi, %struct.bnxt_napi* %15, i32 0, i32 1
  %17 = load %struct.bnxt_tx_ring_info*, %struct.bnxt_tx_ring_info** %16, align 8
  store %struct.bnxt_tx_ring_info* %17, %struct.bnxt_tx_ring_info** %7, align 8
  %18 = load %struct.bnxt_napi*, %struct.bnxt_napi** %5, align 8
  %19 = getelementptr inbounds %struct.bnxt_napi, %struct.bnxt_napi* %18, i32 0, i32 0
  %20 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %19, align 8
  store %struct.bnxt_rx_ring_info* %20, %struct.bnxt_rx_ring_info** %8, align 8
  store i32 0, i32* %9, align 4
  %21 = load %struct.bnxt_tx_ring_info*, %struct.bnxt_tx_ring_info** %7, align 8
  %22 = getelementptr inbounds %struct.bnxt_tx_ring_info, %struct.bnxt_tx_ring_info* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %11, align 8
  %24 = load i64, i64* %11, align 8
  store i64 %24, i64* %12, align 8
  store i32 0, i32* %13, align 4
  br label %25

25:                                               ; preds = %74, %3
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %77

29:                                               ; preds = %25
  %30 = load %struct.bnxt_tx_ring_info*, %struct.bnxt_tx_ring_info** %7, align 8
  %31 = getelementptr inbounds %struct.bnxt_tx_ring_info, %struct.bnxt_tx_ring_info* %30, i32 0, i32 1
  %32 = load %struct.bnxt_sw_tx_bd*, %struct.bnxt_sw_tx_bd** %31, align 8
  %33 = load i64, i64* %11, align 8
  %34 = getelementptr inbounds %struct.bnxt_sw_tx_bd, %struct.bnxt_sw_tx_bd* %32, i64 %33
  store %struct.bnxt_sw_tx_bd* %34, %struct.bnxt_sw_tx_bd** %10, align 8
  %35 = load %struct.bnxt_sw_tx_bd*, %struct.bnxt_sw_tx_bd** %10, align 8
  %36 = getelementptr inbounds %struct.bnxt_sw_tx_bd, %struct.bnxt_sw_tx_bd* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @XDP_REDIRECT, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %62

40:                                               ; preds = %29
  %41 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %42 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %41, i32 0, i32 0
  %43 = load %struct.pci_dev*, %struct.pci_dev** %42, align 8
  store %struct.pci_dev* %43, %struct.pci_dev** %14, align 8
  %44 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  %45 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %44, i32 0, i32 0
  %46 = load %struct.bnxt_sw_tx_bd*, %struct.bnxt_sw_tx_bd** %10, align 8
  %47 = load i32, i32* @mapping, align 4
  %48 = call i32 @dma_unmap_addr(%struct.bnxt_sw_tx_bd* %46, i32 %47)
  %49 = load %struct.bnxt_sw_tx_bd*, %struct.bnxt_sw_tx_bd** %10, align 8
  %50 = load i32, i32* @len, align 4
  %51 = call i32 @dma_unmap_len(%struct.bnxt_sw_tx_bd* %49, i32 %50)
  %52 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %53 = call i32 @dma_unmap_single(i32* %45, i32 %48, i32 %51, i32 %52)
  %54 = load %struct.bnxt_sw_tx_bd*, %struct.bnxt_sw_tx_bd** %10, align 8
  %55 = getelementptr inbounds %struct.bnxt_sw_tx_bd, %struct.bnxt_sw_tx_bd* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @xdp_return_frame(i32* %56)
  %58 = load %struct.bnxt_sw_tx_bd*, %struct.bnxt_sw_tx_bd** %10, align 8
  %59 = getelementptr inbounds %struct.bnxt_sw_tx_bd, %struct.bnxt_sw_tx_bd* %58, i32 0, i32 0
  store i64 0, i64* %59, align 8
  %60 = load %struct.bnxt_sw_tx_bd*, %struct.bnxt_sw_tx_bd** %10, align 8
  %61 = getelementptr inbounds %struct.bnxt_sw_tx_bd, %struct.bnxt_sw_tx_bd* %60, i32 0, i32 2
  store i32* null, i32** %61, align 8
  br label %71

62:                                               ; preds = %29
  %63 = load %struct.bnxt_sw_tx_bd*, %struct.bnxt_sw_tx_bd** %10, align 8
  %64 = getelementptr inbounds %struct.bnxt_sw_tx_bd, %struct.bnxt_sw_tx_bd* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @XDP_TX, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  store i32 1, i32* %9, align 4
  %69 = load i64, i64* %11, align 8
  store i64 %69, i64* %12, align 8
  br label %70

70:                                               ; preds = %68, %62
  br label %71

71:                                               ; preds = %70, %40
  %72 = load i64, i64* %11, align 8
  %73 = call i64 @NEXT_TX(i64 %72)
  store i64 %73, i64* %11, align 8
  br label %74

74:                                               ; preds = %71
  %75 = load i32, i32* %13, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %13, align 4
  br label %25

77:                                               ; preds = %25
  %78 = load i64, i64* %11, align 8
  %79 = load %struct.bnxt_tx_ring_info*, %struct.bnxt_tx_ring_info** %7, align 8
  %80 = getelementptr inbounds %struct.bnxt_tx_ring_info, %struct.bnxt_tx_ring_info* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %96

83:                                               ; preds = %77
  %84 = load %struct.bnxt_tx_ring_info*, %struct.bnxt_tx_ring_info** %7, align 8
  %85 = getelementptr inbounds %struct.bnxt_tx_ring_info, %struct.bnxt_tx_ring_info* %84, i32 0, i32 1
  %86 = load %struct.bnxt_sw_tx_bd*, %struct.bnxt_sw_tx_bd** %85, align 8
  %87 = load i64, i64* %12, align 8
  %88 = getelementptr inbounds %struct.bnxt_sw_tx_bd, %struct.bnxt_sw_tx_bd* %86, i64 %87
  store %struct.bnxt_sw_tx_bd* %88, %struct.bnxt_sw_tx_bd** %10, align 8
  %89 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %90 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %8, align 8
  %91 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %90, i32 0, i32 0
  %92 = load %struct.bnxt_sw_tx_bd*, %struct.bnxt_sw_tx_bd** %10, align 8
  %93 = getelementptr inbounds %struct.bnxt_sw_tx_bd, %struct.bnxt_sw_tx_bd* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @bnxt_db_write(%struct.bnxt* %89, i32* %91, i32 %94)
  br label %96

96:                                               ; preds = %83, %77
  ret void
}

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_addr(%struct.bnxt_sw_tx_bd*, i32) #1

declare dso_local i32 @dma_unmap_len(%struct.bnxt_sw_tx_bd*, i32) #1

declare dso_local i32 @xdp_return_frame(i32*) #1

declare dso_local i64 @NEXT_TX(i64) #1

declare dso_local i32 @bnxt_db_write(%struct.bnxt*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
