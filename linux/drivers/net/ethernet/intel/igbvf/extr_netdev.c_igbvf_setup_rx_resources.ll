; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igbvf/extr_netdev.c_igbvf_setup_rx_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igbvf/extr_netdev.c_igbvf_setup_rx_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igbvf_adapter = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.igbvf_ring = type { i32, i32, i32*, %struct.igbvf_adapter*, i64, i64, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Unable to allocate memory for the receive descriptor ring\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @igbvf_setup_rx_resources(%struct.igbvf_adapter* %0, %struct.igbvf_ring* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.igbvf_adapter*, align 8
  %5 = alloca %struct.igbvf_ring*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.igbvf_adapter* %0, %struct.igbvf_adapter** %4, align 8
  store %struct.igbvf_ring* %1, %struct.igbvf_ring** %5, align 8
  %9 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %4, align 8
  %10 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %9, i32 0, i32 0
  %11 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  store %struct.pci_dev* %11, %struct.pci_dev** %6, align 8
  %12 = load %struct.igbvf_ring*, %struct.igbvf_ring** %5, align 8
  %13 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = mul i64 4, %15
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32* @vzalloc(i32 %18)
  %20 = load %struct.igbvf_ring*, %struct.igbvf_ring** %5, align 8
  %21 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %20, i32 0, i32 2
  store i32* %19, i32** %21, align 8
  %22 = load %struct.igbvf_ring*, %struct.igbvf_ring** %5, align 8
  %23 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %2
  br label %65

27:                                               ; preds = %2
  store i32 4, i32* %8, align 4
  %28 = load %struct.igbvf_ring*, %struct.igbvf_ring** %5, align 8
  %29 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = mul nsw i32 %30, %31
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

56:                                               ; preds = %27
  br label %65

57:                                               ; preds = %27
  %58 = load %struct.igbvf_ring*, %struct.igbvf_ring** %5, align 8
  %59 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %58, i32 0, i32 5
  store i64 0, i64* %59, align 8
  %60 = load %struct.igbvf_ring*, %struct.igbvf_ring** %5, align 8
  %61 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %60, i32 0, i32 4
  store i64 0, i64* %61, align 8
  %62 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %4, align 8
  %63 = load %struct.igbvf_ring*, %struct.igbvf_ring** %5, align 8
  %64 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %63, i32 0, i32 3
  store %struct.igbvf_adapter* %62, %struct.igbvf_adapter** %64, align 8
  store i32 0, i32* %3, align 4
  br label %79

65:                                               ; preds = %56, %26
  %66 = load %struct.igbvf_ring*, %struct.igbvf_ring** %5, align 8
  %67 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @vfree(i32* %68)
  %70 = load %struct.igbvf_ring*, %struct.igbvf_ring** %5, align 8
  %71 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %70, i32 0, i32 2
  store i32* null, i32** %71, align 8
  %72 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %4, align 8
  %73 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %72, i32 0, i32 0
  %74 = load %struct.pci_dev*, %struct.pci_dev** %73, align 8
  %75 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %74, i32 0, i32 0
  %76 = call i32 @dev_err(i32* %75, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %65, %57
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32* @vzalloc(i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @vfree(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
