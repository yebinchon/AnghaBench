; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1e/extr_atl1e_main.c_atl1e_clean_tx_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1e/extr_atl1e_main.c_atl1e_clean_tx_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1e_adapter = type { i32, i32, i32, %struct.atl1e_tx_ring }
%struct.atl1e_tx_ring = type { i64, i32, %struct.atl1e_tx_buffer* }
%struct.atl1e_tx_buffer = type { i32, i32*, i64, i32 }

@REG_TPD_CONS_IDX = common dso_local global i32 0, align 4
@ATL1E_TX_PCIMAP_SINGLE = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@ATL1E_TX_PCIMAP_PAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atl1e_adapter*)* @atl1e_clean_tx_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atl1e_clean_tx_irq(%struct.atl1e_adapter* %0) #0 {
  %2 = alloca %struct.atl1e_adapter*, align 8
  %3 = alloca %struct.atl1e_tx_ring*, align 8
  %4 = alloca %struct.atl1e_tx_buffer*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.atl1e_adapter* %0, %struct.atl1e_adapter** %2, align 8
  %7 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %7, i32 0, i32 3
  store %struct.atl1e_tx_ring* %8, %struct.atl1e_tx_ring** %3, align 8
  store %struct.atl1e_tx_buffer* null, %struct.atl1e_tx_buffer** %4, align 8
  %9 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %9, i32 0, i32 2
  %11 = load i32, i32* @REG_TPD_CONS_IDX, align 4
  %12 = call i64 @AT_READ_REGW(i32* %10, i32 %11)
  store i64 %12, i64* %5, align 8
  %13 = load %struct.atl1e_tx_ring*, %struct.atl1e_tx_ring** %3, align 8
  %14 = getelementptr inbounds %struct.atl1e_tx_ring, %struct.atl1e_tx_ring* %13, i32 0, i32 1
  %15 = call i64 @atomic_read(i32* %14)
  store i64 %15, i64* %6, align 8
  br label %16

16:                                               ; preds = %92, %1
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* %5, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %93

20:                                               ; preds = %16
  %21 = load %struct.atl1e_tx_ring*, %struct.atl1e_tx_ring** %3, align 8
  %22 = getelementptr inbounds %struct.atl1e_tx_ring, %struct.atl1e_tx_ring* %21, i32 0, i32 2
  %23 = load %struct.atl1e_tx_buffer*, %struct.atl1e_tx_buffer** %22, align 8
  %24 = load i64, i64* %6, align 8
  %25 = getelementptr inbounds %struct.atl1e_tx_buffer, %struct.atl1e_tx_buffer* %23, i64 %24
  store %struct.atl1e_tx_buffer* %25, %struct.atl1e_tx_buffer** %4, align 8
  %26 = load %struct.atl1e_tx_buffer*, %struct.atl1e_tx_buffer** %4, align 8
  %27 = getelementptr inbounds %struct.atl1e_tx_buffer, %struct.atl1e_tx_buffer* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %72

30:                                               ; preds = %20
  %31 = load %struct.atl1e_tx_buffer*, %struct.atl1e_tx_buffer** %4, align 8
  %32 = getelementptr inbounds %struct.atl1e_tx_buffer, %struct.atl1e_tx_buffer* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @ATL1E_TX_PCIMAP_SINGLE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %30
  %38 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %2, align 8
  %39 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.atl1e_tx_buffer*, %struct.atl1e_tx_buffer** %4, align 8
  %42 = getelementptr inbounds %struct.atl1e_tx_buffer, %struct.atl1e_tx_buffer* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.atl1e_tx_buffer*, %struct.atl1e_tx_buffer** %4, align 8
  %45 = getelementptr inbounds %struct.atl1e_tx_buffer, %struct.atl1e_tx_buffer* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %48 = call i32 @pci_unmap_single(i32 %40, i64 %43, i32 %46, i32 %47)
  br label %69

49:                                               ; preds = %30
  %50 = load %struct.atl1e_tx_buffer*, %struct.atl1e_tx_buffer** %4, align 8
  %51 = getelementptr inbounds %struct.atl1e_tx_buffer, %struct.atl1e_tx_buffer* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @ATL1E_TX_PCIMAP_PAGE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %49
  %57 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %2, align 8
  %58 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.atl1e_tx_buffer*, %struct.atl1e_tx_buffer** %4, align 8
  %61 = getelementptr inbounds %struct.atl1e_tx_buffer, %struct.atl1e_tx_buffer* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.atl1e_tx_buffer*, %struct.atl1e_tx_buffer** %4, align 8
  %64 = getelementptr inbounds %struct.atl1e_tx_buffer, %struct.atl1e_tx_buffer* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %67 = call i32 @pci_unmap_page(i32 %59, i64 %62, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %56, %49
  br label %69

69:                                               ; preds = %68, %37
  %70 = load %struct.atl1e_tx_buffer*, %struct.atl1e_tx_buffer** %4, align 8
  %71 = getelementptr inbounds %struct.atl1e_tx_buffer, %struct.atl1e_tx_buffer* %70, i32 0, i32 2
  store i64 0, i64* %71, align 8
  br label %72

72:                                               ; preds = %69, %20
  %73 = load %struct.atl1e_tx_buffer*, %struct.atl1e_tx_buffer** %4, align 8
  %74 = getelementptr inbounds %struct.atl1e_tx_buffer, %struct.atl1e_tx_buffer* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %84

77:                                               ; preds = %72
  %78 = load %struct.atl1e_tx_buffer*, %struct.atl1e_tx_buffer** %4, align 8
  %79 = getelementptr inbounds %struct.atl1e_tx_buffer, %struct.atl1e_tx_buffer* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @dev_consume_skb_irq(i32* %80)
  %82 = load %struct.atl1e_tx_buffer*, %struct.atl1e_tx_buffer** %4, align 8
  %83 = getelementptr inbounds %struct.atl1e_tx_buffer, %struct.atl1e_tx_buffer* %82, i32 0, i32 1
  store i32* null, i32** %83, align 8
  br label %84

84:                                               ; preds = %77, %72
  %85 = load i64, i64* %6, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %6, align 8
  %87 = load %struct.atl1e_tx_ring*, %struct.atl1e_tx_ring** %3, align 8
  %88 = getelementptr inbounds %struct.atl1e_tx_ring, %struct.atl1e_tx_ring* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %86, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %84
  store i64 0, i64* %6, align 8
  br label %92

92:                                               ; preds = %91, %84
  br label %16

93:                                               ; preds = %16
  %94 = load %struct.atl1e_tx_ring*, %struct.atl1e_tx_ring** %3, align 8
  %95 = getelementptr inbounds %struct.atl1e_tx_ring, %struct.atl1e_tx_ring* %94, i32 0, i32 1
  %96 = load i64, i64* %6, align 8
  %97 = call i32 @atomic_set(i32* %95, i64 %96)
  %98 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %2, align 8
  %99 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i64 @netif_queue_stopped(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %114

103:                                              ; preds = %93
  %104 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %2, align 8
  %105 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i64 @netif_carrier_ok(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %103
  %110 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %2, align 8
  %111 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @netif_wake_queue(i32 %112)
  br label %114

114:                                              ; preds = %109, %103, %93
  ret i32 1
}

declare dso_local i64 @AT_READ_REGW(i32*, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @pci_unmap_single(i32, i64, i32, i32) #1

declare dso_local i32 @pci_unmap_page(i32, i64, i32, i32) #1

declare dso_local i32 @dev_consume_skb_irq(i32*) #1

declare dso_local i32 @atomic_set(i32*, i64) #1

declare dso_local i64 @netif_queue_stopped(i32) #1

declare dso_local i64 @netif_carrier_ok(i32) #1

declare dso_local i32 @netif_wake_queue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
