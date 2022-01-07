; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgb/extr_ixgb_main.c_ixgb_clean_rx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgb/extr_ixgb_main.c_ixgb_clean_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgb_adapter = type { i32, %struct.pci_dev*, %struct.ixgb_desc_ring }
%struct.pci_dev = type { i32 }
%struct.ixgb_desc_ring = type { i32, i64, i64, i64, %struct.ixgb_buffer*, %struct.ixgb_buffer* }
%struct.ixgb_buffer = type { i32*, i64, i64 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@RDH = common dso_local global i32 0, align 4
@RDT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgb_adapter*)* @ixgb_clean_rx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgb_clean_rx_ring(%struct.ixgb_adapter* %0) #0 {
  %2 = alloca %struct.ixgb_adapter*, align 8
  %3 = alloca %struct.ixgb_desc_ring*, align 8
  %4 = alloca %struct.ixgb_buffer*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.ixgb_adapter* %0, %struct.ixgb_adapter** %2, align 8
  %8 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %8, i32 0, i32 2
  store %struct.ixgb_desc_ring* %9, %struct.ixgb_desc_ring** %3, align 8
  %10 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %10, i32 0, i32 1
  %12 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  store %struct.pci_dev* %12, %struct.pci_dev** %5, align 8
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %58, %1
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.ixgb_desc_ring*, %struct.ixgb_desc_ring** %3, align 8
  %16 = getelementptr inbounds %struct.ixgb_desc_ring, %struct.ixgb_desc_ring* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ult i32 %14, %17
  br i1 %18, label %19, label %61

19:                                               ; preds = %13
  %20 = load %struct.ixgb_desc_ring*, %struct.ixgb_desc_ring** %3, align 8
  %21 = getelementptr inbounds %struct.ixgb_desc_ring, %struct.ixgb_desc_ring* %20, i32 0, i32 5
  %22 = load %struct.ixgb_buffer*, %struct.ixgb_buffer** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.ixgb_buffer, %struct.ixgb_buffer* %22, i64 %24
  store %struct.ixgb_buffer* %25, %struct.ixgb_buffer** %4, align 8
  %26 = load %struct.ixgb_buffer*, %struct.ixgb_buffer** %4, align 8
  %27 = getelementptr inbounds %struct.ixgb_buffer, %struct.ixgb_buffer* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %19
  %31 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %32 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %31, i32 0, i32 0
  %33 = load %struct.ixgb_buffer*, %struct.ixgb_buffer** %4, align 8
  %34 = getelementptr inbounds %struct.ixgb_buffer, %struct.ixgb_buffer* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.ixgb_buffer*, %struct.ixgb_buffer** %4, align 8
  %37 = getelementptr inbounds %struct.ixgb_buffer, %struct.ixgb_buffer* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %40 = call i32 @dma_unmap_single(i32* %32, i64 %35, i64 %38, i32 %39)
  %41 = load %struct.ixgb_buffer*, %struct.ixgb_buffer** %4, align 8
  %42 = getelementptr inbounds %struct.ixgb_buffer, %struct.ixgb_buffer* %41, i32 0, i32 2
  store i64 0, i64* %42, align 8
  %43 = load %struct.ixgb_buffer*, %struct.ixgb_buffer** %4, align 8
  %44 = getelementptr inbounds %struct.ixgb_buffer, %struct.ixgb_buffer* %43, i32 0, i32 1
  store i64 0, i64* %44, align 8
  br label %45

45:                                               ; preds = %30, %19
  %46 = load %struct.ixgb_buffer*, %struct.ixgb_buffer** %4, align 8
  %47 = getelementptr inbounds %struct.ixgb_buffer, %struct.ixgb_buffer* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = load %struct.ixgb_buffer*, %struct.ixgb_buffer** %4, align 8
  %52 = getelementptr inbounds %struct.ixgb_buffer, %struct.ixgb_buffer* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @dev_kfree_skb(i32* %53)
  %55 = load %struct.ixgb_buffer*, %struct.ixgb_buffer** %4, align 8
  %56 = getelementptr inbounds %struct.ixgb_buffer, %struct.ixgb_buffer* %55, i32 0, i32 0
  store i32* null, i32** %56, align 8
  br label %57

57:                                               ; preds = %50, %45
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %7, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %13

61:                                               ; preds = %13
  %62 = load %struct.ixgb_desc_ring*, %struct.ixgb_desc_ring** %3, align 8
  %63 = getelementptr inbounds %struct.ixgb_desc_ring, %struct.ixgb_desc_ring* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = zext i32 %64 to i64
  %66 = mul i64 24, %65
  store i64 %66, i64* %6, align 8
  %67 = load %struct.ixgb_desc_ring*, %struct.ixgb_desc_ring** %3, align 8
  %68 = getelementptr inbounds %struct.ixgb_desc_ring, %struct.ixgb_desc_ring* %67, i32 0, i32 5
  %69 = load %struct.ixgb_buffer*, %struct.ixgb_buffer** %68, align 8
  %70 = load i64, i64* %6, align 8
  %71 = call i32 @memset(%struct.ixgb_buffer* %69, i32 0, i64 %70)
  %72 = load %struct.ixgb_desc_ring*, %struct.ixgb_desc_ring** %3, align 8
  %73 = getelementptr inbounds %struct.ixgb_desc_ring, %struct.ixgb_desc_ring* %72, i32 0, i32 4
  %74 = load %struct.ixgb_buffer*, %struct.ixgb_buffer** %73, align 8
  %75 = load %struct.ixgb_desc_ring*, %struct.ixgb_desc_ring** %3, align 8
  %76 = getelementptr inbounds %struct.ixgb_desc_ring, %struct.ixgb_desc_ring* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @memset(%struct.ixgb_buffer* %74, i32 0, i64 %77)
  %79 = load %struct.ixgb_desc_ring*, %struct.ixgb_desc_ring** %3, align 8
  %80 = getelementptr inbounds %struct.ixgb_desc_ring, %struct.ixgb_desc_ring* %79, i32 0, i32 3
  store i64 0, i64* %80, align 8
  %81 = load %struct.ixgb_desc_ring*, %struct.ixgb_desc_ring** %3, align 8
  %82 = getelementptr inbounds %struct.ixgb_desc_ring, %struct.ixgb_desc_ring* %81, i32 0, i32 2
  store i64 0, i64* %82, align 8
  %83 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %84 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %83, i32 0, i32 0
  %85 = load i32, i32* @RDH, align 4
  %86 = call i32 @IXGB_WRITE_REG(i32* %84, i32 %85, i32 0)
  %87 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %88 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %87, i32 0, i32 0
  %89 = load i32, i32* @RDT, align 4
  %90 = call i32 @IXGB_WRITE_REG(i32* %88, i32 %89, i32 0)
  ret void
}

declare dso_local i32 @dma_unmap_single(i32*, i64, i64, i32) #1

declare dso_local i32 @dev_kfree_skb(i32*) #1

declare dso_local i32 @memset(%struct.ixgb_buffer*, i32, i64) #1

declare dso_local i32 @IXGB_WRITE_REG(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
