; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/oki-semi/pch_gbe/extr_pch_gbe_main.c_pch_gbe_setup_rx_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/oki-semi/pch_gbe/extr_pch_gbe_main.c_pch_gbe_setup_rx_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pch_gbe_adapter = type { i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.pch_gbe_rx_ring = type { i32, i32, i64, i64, i64, i32, i32 }
%struct.pch_gbe_rx_desc = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@DSC_INIT16 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [92 x i8] c"rx_ring->desc = 0x%p  rx_ring->dma = 0x%08llx next_to_clean = 0x%08x  next_to_use = 0x%08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pch_gbe_setup_rx_resources(%struct.pch_gbe_adapter* %0, %struct.pch_gbe_rx_ring* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pch_gbe_adapter*, align 8
  %5 = alloca %struct.pch_gbe_rx_ring*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.pch_gbe_rx_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pch_gbe_adapter* %0, %struct.pch_gbe_adapter** %4, align 8
  store %struct.pch_gbe_rx_ring* %1, %struct.pch_gbe_rx_ring** %5, align 8
  %10 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %4, align 8
  %11 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %10, i32 0, i32 1
  %12 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  store %struct.pci_dev* %12, %struct.pci_dev** %6, align 8
  %13 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %5, align 8
  %14 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = mul nsw i32 4, %15
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @vzalloc(i32 %17)
  %19 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %5, align 8
  %20 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %19, i32 0, i32 6
  store i32 %18, i32* %20, align 4
  %21 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %5, align 8
  %22 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %95

28:                                               ; preds = %2
  %29 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %5, align 8
  %30 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = mul nsw i32 %31, 4
  %33 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %5, align 8
  %34 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %36 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %35, i32 0, i32 0
  %37 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %5, align 8
  %38 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %5, align 8
  %41 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %40, i32 0, i32 4
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call i32 @dma_alloc_coherent(i32* %36, i32 %39, i64* %41, i32 %42)
  %44 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %5, align 8
  %45 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %44, i32 0, i32 5
  store i32 %43, i32* %45, align 8
  %46 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %5, align 8
  %47 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %28
  %51 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %5, align 8
  %52 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @vfree(i32 %53)
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %95

57:                                               ; preds = %28
  %58 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %5, align 8
  %59 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %58, i32 0, i32 3
  store i64 0, i64* %59, align 8
  %60 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %5, align 8
  %61 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %60, i32 0, i32 2
  store i64 0, i64* %61, align 8
  store i32 0, i32* %9, align 4
  br label %62

62:                                               ; preds = %75, %57
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %5, align 8
  %65 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp slt i32 %63, %66
  br i1 %67, label %68, label %78

68:                                               ; preds = %62
  %69 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %5, align 8
  %70 = load i32, i32* %9, align 4
  %71 = call %struct.pch_gbe_rx_desc* @PCH_GBE_RX_DESC(%struct.pch_gbe_rx_ring* byval(%struct.pch_gbe_rx_ring) align 8 %69, i32 %70)
  store %struct.pch_gbe_rx_desc* %71, %struct.pch_gbe_rx_desc** %7, align 8
  %72 = load i32, i32* @DSC_INIT16, align 4
  %73 = load %struct.pch_gbe_rx_desc*, %struct.pch_gbe_rx_desc** %7, align 8
  %74 = getelementptr inbounds %struct.pch_gbe_rx_desc, %struct.pch_gbe_rx_desc* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  br label %75

75:                                               ; preds = %68
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %9, align 4
  br label %62

78:                                               ; preds = %62
  %79 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %4, align 8
  %80 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %5, align 8
  %83 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %5, align 8
  %86 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %5, align 8
  %89 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %5, align 8
  %92 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @netdev_dbg(i32 %81, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str, i64 0, i64 0), i32 %84, i64 %87, i64 %90, i64 %93)
  store i32 0, i32* %3, align 4
  br label %95

95:                                               ; preds = %78, %50, %25
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @vzalloc(i32) #1

declare dso_local i32 @dma_alloc_coherent(i32*, i32, i64*, i32) #1

declare dso_local i32 @vfree(i32) #1

declare dso_local %struct.pch_gbe_rx_desc* @PCH_GBE_RX_DESC(%struct.pch_gbe_rx_ring* byval(%struct.pch_gbe_rx_ring) align 8, i32) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i32, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
