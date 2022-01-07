; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgb/extr_ixgb_main.c_ixgb_setup_tx_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgb/extr_ixgb_main.c_ixgb_setup_tx_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgb_adapter = type { %struct.pci_dev*, %struct.ixgb_desc_ring }
%struct.pci_dev = type { i32 }
%struct.ixgb_desc_ring = type { i32, i32, i64, i64, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgb_setup_tx_resources(%struct.ixgb_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ixgb_adapter*, align 8
  %4 = alloca %struct.ixgb_desc_ring*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.ixgb_adapter* %0, %struct.ixgb_adapter** %3, align 8
  %7 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %7, i32 0, i32 1
  store %struct.ixgb_desc_ring* %8, %struct.ixgb_desc_ring** %4, align 8
  %9 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %9, i32 0, i32 0
  %11 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  store %struct.pci_dev* %11, %struct.pci_dev** %5, align 8
  %12 = load %struct.ixgb_desc_ring*, %struct.ixgb_desc_ring** %4, align 8
  %13 = getelementptr inbounds %struct.ixgb_desc_ring, %struct.ixgb_desc_ring* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = mul i64 4, %15
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @vzalloc(i32 %18)
  %20 = load %struct.ixgb_desc_ring*, %struct.ixgb_desc_ring** %4, align 8
  %21 = getelementptr inbounds %struct.ixgb_desc_ring, %struct.ixgb_desc_ring* %20, i32 0, i32 4
  store i32 %19, i32* %21, align 8
  %22 = load %struct.ixgb_desc_ring*, %struct.ixgb_desc_ring** %4, align 8
  %23 = getelementptr inbounds %struct.ixgb_desc_ring, %struct.ixgb_desc_ring* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %1
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %71

29:                                               ; preds = %1
  %30 = load %struct.ixgb_desc_ring*, %struct.ixgb_desc_ring** %4, align 8
  %31 = getelementptr inbounds %struct.ixgb_desc_ring, %struct.ixgb_desc_ring* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 4
  %35 = trunc i64 %34 to i32
  %36 = load %struct.ixgb_desc_ring*, %struct.ixgb_desc_ring** %4, align 8
  %37 = getelementptr inbounds %struct.ixgb_desc_ring, %struct.ixgb_desc_ring* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.ixgb_desc_ring*, %struct.ixgb_desc_ring** %4, align 8
  %39 = getelementptr inbounds %struct.ixgb_desc_ring, %struct.ixgb_desc_ring* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ALIGN(i32 %40, i32 4096)
  %42 = load %struct.ixgb_desc_ring*, %struct.ixgb_desc_ring** %4, align 8
  %43 = getelementptr inbounds %struct.ixgb_desc_ring, %struct.ixgb_desc_ring* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %45 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %44, i32 0, i32 0
  %46 = load %struct.ixgb_desc_ring*, %struct.ixgb_desc_ring** %4, align 8
  %47 = getelementptr inbounds %struct.ixgb_desc_ring, %struct.ixgb_desc_ring* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ixgb_desc_ring*, %struct.ixgb_desc_ring** %4, align 8
  %50 = getelementptr inbounds %struct.ixgb_desc_ring, %struct.ixgb_desc_ring* %49, i32 0, i32 6
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call i32 @dma_alloc_coherent(i32* %45, i32 %48, i32* %50, i32 %51)
  %53 = load %struct.ixgb_desc_ring*, %struct.ixgb_desc_ring** %4, align 8
  %54 = getelementptr inbounds %struct.ixgb_desc_ring, %struct.ixgb_desc_ring* %53, i32 0, i32 5
  store i32 %52, i32* %54, align 4
  %55 = load %struct.ixgb_desc_ring*, %struct.ixgb_desc_ring** %4, align 8
  %56 = getelementptr inbounds %struct.ixgb_desc_ring, %struct.ixgb_desc_ring* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %29
  %60 = load %struct.ixgb_desc_ring*, %struct.ixgb_desc_ring** %4, align 8
  %61 = getelementptr inbounds %struct.ixgb_desc_ring, %struct.ixgb_desc_ring* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @vfree(i32 %62)
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %71

66:                                               ; preds = %29
  %67 = load %struct.ixgb_desc_ring*, %struct.ixgb_desc_ring** %4, align 8
  %68 = getelementptr inbounds %struct.ixgb_desc_ring, %struct.ixgb_desc_ring* %67, i32 0, i32 3
  store i64 0, i64* %68, align 8
  %69 = load %struct.ixgb_desc_ring*, %struct.ixgb_desc_ring** %4, align 8
  %70 = getelementptr inbounds %struct.ixgb_desc_ring, %struct.ixgb_desc_ring* %69, i32 0, i32 2
  store i64 0, i64* %70, align 8
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %66, %59, %26
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @vzalloc(i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @vfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
