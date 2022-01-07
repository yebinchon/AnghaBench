; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1e/extr_atl1e_main.c_atl1e_clean_tx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1e/extr_atl1e_main.c_atl1e_clean_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1e_adapter = type { %struct.pci_dev*, %struct.atl1e_tx_ring }
%struct.pci_dev = type { i32 }
%struct.atl1e_tx_ring = type { i64, %struct.atl1e_tx_buffer*, %struct.atl1e_tx_buffer* }
%struct.atl1e_tx_buffer = type { i32, i32*, i64, i32 }

@ATL1E_TX_PCIMAP_SINGLE = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@ATL1E_TX_PCIMAP_PAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atl1e_adapter*)* @atl1e_clean_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atl1e_clean_tx_ring(%struct.atl1e_adapter* %0) #0 {
  %2 = alloca %struct.atl1e_adapter*, align 8
  %3 = alloca %struct.atl1e_tx_ring*, align 8
  %4 = alloca %struct.atl1e_tx_buffer*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.atl1e_adapter* %0, %struct.atl1e_adapter** %2, align 8
  %8 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %8, i32 0, i32 1
  store %struct.atl1e_tx_ring* %9, %struct.atl1e_tx_ring** %3, align 8
  store %struct.atl1e_tx_buffer* null, %struct.atl1e_tx_buffer** %4, align 8
  %10 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %10, i32 0, i32 0
  %12 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  store %struct.pci_dev* %12, %struct.pci_dev** %5, align 8
  %13 = load %struct.atl1e_tx_ring*, %struct.atl1e_tx_ring** %3, align 8
  %14 = getelementptr inbounds %struct.atl1e_tx_ring, %struct.atl1e_tx_ring* %13, i32 0, i32 2
  %15 = load %struct.atl1e_tx_buffer*, %struct.atl1e_tx_buffer** %14, align 8
  %16 = icmp eq %struct.atl1e_tx_buffer* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %1
  %18 = load %struct.atl1e_tx_ring*, %struct.atl1e_tx_ring** %3, align 8
  %19 = getelementptr inbounds %struct.atl1e_tx_ring, %struct.atl1e_tx_ring* %18, i32 0, i32 1
  %20 = load %struct.atl1e_tx_buffer*, %struct.atl1e_tx_buffer** %19, align 8
  %21 = icmp eq %struct.atl1e_tx_buffer* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %17, %1
  br label %124

23:                                               ; preds = %17
  %24 = load %struct.atl1e_tx_ring*, %struct.atl1e_tx_ring** %3, align 8
  %25 = getelementptr inbounds %struct.atl1e_tx_ring, %struct.atl1e_tx_ring* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %7, align 8
  store i64 0, i64* %6, align 8
  br label %27

27:                                               ; preds = %80, %23
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* %7, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %83

31:                                               ; preds = %27
  %32 = load %struct.atl1e_tx_ring*, %struct.atl1e_tx_ring** %3, align 8
  %33 = getelementptr inbounds %struct.atl1e_tx_ring, %struct.atl1e_tx_ring* %32, i32 0, i32 1
  %34 = load %struct.atl1e_tx_buffer*, %struct.atl1e_tx_buffer** %33, align 8
  %35 = load i64, i64* %6, align 8
  %36 = getelementptr inbounds %struct.atl1e_tx_buffer, %struct.atl1e_tx_buffer* %34, i64 %35
  store %struct.atl1e_tx_buffer* %36, %struct.atl1e_tx_buffer** %4, align 8
  %37 = load %struct.atl1e_tx_buffer*, %struct.atl1e_tx_buffer** %4, align 8
  %38 = getelementptr inbounds %struct.atl1e_tx_buffer, %struct.atl1e_tx_buffer* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %79

41:                                               ; preds = %31
  %42 = load %struct.atl1e_tx_buffer*, %struct.atl1e_tx_buffer** %4, align 8
  %43 = getelementptr inbounds %struct.atl1e_tx_buffer, %struct.atl1e_tx_buffer* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @ATL1E_TX_PCIMAP_SINGLE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %41
  %49 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %50 = load %struct.atl1e_tx_buffer*, %struct.atl1e_tx_buffer** %4, align 8
  %51 = getelementptr inbounds %struct.atl1e_tx_buffer, %struct.atl1e_tx_buffer* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.atl1e_tx_buffer*, %struct.atl1e_tx_buffer** %4, align 8
  %54 = getelementptr inbounds %struct.atl1e_tx_buffer, %struct.atl1e_tx_buffer* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %57 = call i32 @pci_unmap_single(%struct.pci_dev* %49, i64 %52, i32 %55, i32 %56)
  br label %76

58:                                               ; preds = %41
  %59 = load %struct.atl1e_tx_buffer*, %struct.atl1e_tx_buffer** %4, align 8
  %60 = getelementptr inbounds %struct.atl1e_tx_buffer, %struct.atl1e_tx_buffer* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @ATL1E_TX_PCIMAP_PAGE, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %58
  %66 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %67 = load %struct.atl1e_tx_buffer*, %struct.atl1e_tx_buffer** %4, align 8
  %68 = getelementptr inbounds %struct.atl1e_tx_buffer, %struct.atl1e_tx_buffer* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.atl1e_tx_buffer*, %struct.atl1e_tx_buffer** %4, align 8
  %71 = getelementptr inbounds %struct.atl1e_tx_buffer, %struct.atl1e_tx_buffer* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %74 = call i32 @pci_unmap_page(%struct.pci_dev* %66, i64 %69, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %65, %58
  br label %76

76:                                               ; preds = %75, %48
  %77 = load %struct.atl1e_tx_buffer*, %struct.atl1e_tx_buffer** %4, align 8
  %78 = getelementptr inbounds %struct.atl1e_tx_buffer, %struct.atl1e_tx_buffer* %77, i32 0, i32 2
  store i64 0, i64* %78, align 8
  br label %79

79:                                               ; preds = %76, %31
  br label %80

80:                                               ; preds = %79
  %81 = load i64, i64* %6, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %6, align 8
  br label %27

83:                                               ; preds = %27
  store i64 0, i64* %6, align 8
  br label %84

84:                                               ; preds = %106, %83
  %85 = load i64, i64* %6, align 8
  %86 = load i64, i64* %7, align 8
  %87 = icmp ult i64 %85, %86
  br i1 %87, label %88, label %109

88:                                               ; preds = %84
  %89 = load %struct.atl1e_tx_ring*, %struct.atl1e_tx_ring** %3, align 8
  %90 = getelementptr inbounds %struct.atl1e_tx_ring, %struct.atl1e_tx_ring* %89, i32 0, i32 1
  %91 = load %struct.atl1e_tx_buffer*, %struct.atl1e_tx_buffer** %90, align 8
  %92 = load i64, i64* %6, align 8
  %93 = getelementptr inbounds %struct.atl1e_tx_buffer, %struct.atl1e_tx_buffer* %91, i64 %92
  store %struct.atl1e_tx_buffer* %93, %struct.atl1e_tx_buffer** %4, align 8
  %94 = load %struct.atl1e_tx_buffer*, %struct.atl1e_tx_buffer** %4, align 8
  %95 = getelementptr inbounds %struct.atl1e_tx_buffer, %struct.atl1e_tx_buffer* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %105

98:                                               ; preds = %88
  %99 = load %struct.atl1e_tx_buffer*, %struct.atl1e_tx_buffer** %4, align 8
  %100 = getelementptr inbounds %struct.atl1e_tx_buffer, %struct.atl1e_tx_buffer* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = call i32 @dev_kfree_skb_any(i32* %101)
  %103 = load %struct.atl1e_tx_buffer*, %struct.atl1e_tx_buffer** %4, align 8
  %104 = getelementptr inbounds %struct.atl1e_tx_buffer, %struct.atl1e_tx_buffer* %103, i32 0, i32 1
  store i32* null, i32** %104, align 8
  br label %105

105:                                              ; preds = %98, %88
  br label %106

106:                                              ; preds = %105
  %107 = load i64, i64* %6, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %6, align 8
  br label %84

109:                                              ; preds = %84
  %110 = load %struct.atl1e_tx_ring*, %struct.atl1e_tx_ring** %3, align 8
  %111 = getelementptr inbounds %struct.atl1e_tx_ring, %struct.atl1e_tx_ring* %110, i32 0, i32 2
  %112 = load %struct.atl1e_tx_buffer*, %struct.atl1e_tx_buffer** %111, align 8
  %113 = load i64, i64* %7, align 8
  %114 = mul i64 4, %113
  %115 = trunc i64 %114 to i32
  %116 = call i32 @memset(%struct.atl1e_tx_buffer* %112, i32 0, i32 %115)
  %117 = load %struct.atl1e_tx_ring*, %struct.atl1e_tx_ring** %3, align 8
  %118 = getelementptr inbounds %struct.atl1e_tx_ring, %struct.atl1e_tx_ring* %117, i32 0, i32 1
  %119 = load %struct.atl1e_tx_buffer*, %struct.atl1e_tx_buffer** %118, align 8
  %120 = load i64, i64* %7, align 8
  %121 = mul i64 32, %120
  %122 = trunc i64 %121 to i32
  %123 = call i32 @memset(%struct.atl1e_tx_buffer* %119, i32 0, i32 %122)
  br label %124

124:                                              ; preds = %109, %22
  ret void
}

declare dso_local i32 @pci_unmap_single(%struct.pci_dev*, i64, i32, i32) #1

declare dso_local i32 @pci_unmap_page(%struct.pci_dev*, i64, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(i32*) #1

declare dso_local i32 @memset(%struct.atl1e_tx_buffer*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
