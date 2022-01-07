; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igbvf/extr_netdev.c_igbvf_setup_tx_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igbvf/extr_netdev.c_igbvf_setup_tx_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igbvf_adapter = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.igbvf_ring = type { i32, i32, i32, i64, i64, %struct.igbvf_adapter*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"Unable to allocate memory for the transmit descriptor ring\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @igbvf_setup_tx_resources(%struct.igbvf_adapter* %0, %struct.igbvf_ring* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.igbvf_adapter*, align 8
  %5 = alloca %struct.igbvf_ring*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.igbvf_adapter* %0, %struct.igbvf_adapter** %4, align 8
  store %struct.igbvf_ring* %1, %struct.igbvf_ring** %5, align 8
  %8 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %4, align 8
  %9 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %8, i32 0, i32 0
  %10 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  store %struct.pci_dev* %10, %struct.pci_dev** %6, align 8
  %11 = load %struct.igbvf_ring*, %struct.igbvf_ring** %5, align 8
  %12 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = mul i64 4, %14
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @vzalloc(i32 %17)
  %19 = load %struct.igbvf_ring*, %struct.igbvf_ring** %5, align 8
  %20 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 8
  %21 = load %struct.igbvf_ring*, %struct.igbvf_ring** %5, align 8
  %22 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %2
  br label %65

26:                                               ; preds = %2
  %27 = load %struct.igbvf_ring*, %struct.igbvf_ring** %5, align 8
  %28 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = mul i64 %30, 4
  %32 = trunc i64 %31 to i32
  %33 = load %struct.igbvf_ring*, %struct.igbvf_ring** %5, align 8
  %34 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.igbvf_ring*, %struct.igbvf_ring** %5, align 8
  %36 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ALIGN(i32 %37, i32 4096)
  %39 = load %struct.igbvf_ring*, %struct.igbvf_ring** %5, align 8
  %40 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %42 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %41, i32 0, i32 0
  %43 = load %struct.igbvf_ring*, %struct.igbvf_ring** %5, align 8
  %44 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.igbvf_ring*, %struct.igbvf_ring** %5, align 8
  %47 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %46, i32 0, i32 7
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call i32 @dma_alloc_coherent(i32* %42, i32 %45, i32* %47, i32 %48)
  %50 = load %struct.igbvf_ring*, %struct.igbvf_ring** %5, align 8
  %51 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %50, i32 0, i32 6
  store i32 %49, i32* %51, align 8
  %52 = load %struct.igbvf_ring*, %struct.igbvf_ring** %5, align 8
  %53 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %26
  br label %65

57:                                               ; preds = %26
  %58 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %4, align 8
  %59 = load %struct.igbvf_ring*, %struct.igbvf_ring** %5, align 8
  %60 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %59, i32 0, i32 5
  store %struct.igbvf_adapter* %58, %struct.igbvf_adapter** %60, align 8
  %61 = load %struct.igbvf_ring*, %struct.igbvf_ring** %5, align 8
  %62 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %61, i32 0, i32 4
  store i64 0, i64* %62, align 8
  %63 = load %struct.igbvf_ring*, %struct.igbvf_ring** %5, align 8
  %64 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %63, i32 0, i32 3
  store i64 0, i64* %64, align 8
  store i32 0, i32* %3, align 4
  br label %77

65:                                               ; preds = %56, %25
  %66 = load %struct.igbvf_ring*, %struct.igbvf_ring** %5, align 8
  %67 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @vfree(i32 %68)
  %70 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %4, align 8
  %71 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %70, i32 0, i32 0
  %72 = load %struct.pci_dev*, %struct.pci_dev** %71, align 8
  %73 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %72, i32 0, i32 0
  %74 = call i32 @dev_err(i32* %73, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %65, %57
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @vzalloc(i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @vfree(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
