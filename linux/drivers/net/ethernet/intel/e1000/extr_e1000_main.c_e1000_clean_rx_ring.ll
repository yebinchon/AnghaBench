; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_main.c_e1000_clean_rx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_main.c_e1000_clean_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { i64, i32, i32, %struct.pci_dev*, %struct.e1000_hw }
%struct.pci_dev = type { i32 }
%struct.e1000_hw = type { i64 }
%struct.e1000_rx_ring = type { i32, i64, i64, i64, i64, i64, %struct.e1000_rx_buffer*, %struct.e1000_rx_buffer*, i32* }
%struct.e1000_rx_buffer = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32* }

@e1000_clean_rx_irq = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@e1000_clean_jumbo_rx_irq = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_adapter*, %struct.e1000_rx_ring*)* @e1000_clean_rx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_clean_rx_ring(%struct.e1000_adapter* %0, %struct.e1000_rx_ring* %1) #0 {
  %3 = alloca %struct.e1000_adapter*, align 8
  %4 = alloca %struct.e1000_rx_ring*, align 8
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca %struct.e1000_rx_buffer*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %3, align 8
  store %struct.e1000_rx_ring* %1, %struct.e1000_rx_ring** %4, align 8
  %10 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %10, i32 0, i32 4
  store %struct.e1000_hw* %11, %struct.e1000_hw** %5, align 8
  %12 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %13 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %12, i32 0, i32 3
  %14 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  store %struct.pci_dev* %14, %struct.pci_dev** %7, align 8
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %107, %2
  %16 = load i32, i32* %9, align 4
  %17 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %4, align 8
  %18 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ult i32 %16, %19
  br i1 %20, label %21, label %110

21:                                               ; preds = %15
  %22 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %4, align 8
  %23 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %22, i32 0, i32 7
  %24 = load %struct.e1000_rx_buffer*, %struct.e1000_rx_buffer** %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.e1000_rx_buffer, %struct.e1000_rx_buffer* %24, i64 %26
  store %struct.e1000_rx_buffer* %27, %struct.e1000_rx_buffer** %6, align 8
  %28 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %29 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @e1000_clean_rx_irq, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %65

33:                                               ; preds = %21
  %34 = load %struct.e1000_rx_buffer*, %struct.e1000_rx_buffer** %6, align 8
  %35 = getelementptr inbounds %struct.e1000_rx_buffer, %struct.e1000_rx_buffer* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %33
  %39 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %40 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %39, i32 0, i32 0
  %41 = load %struct.e1000_rx_buffer*, %struct.e1000_rx_buffer** %6, align 8
  %42 = getelementptr inbounds %struct.e1000_rx_buffer, %struct.e1000_rx_buffer* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %45 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %48 = call i32 @dma_unmap_single(i32* %40, i64 %43, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %38, %33
  %50 = load %struct.e1000_rx_buffer*, %struct.e1000_rx_buffer** %6, align 8
  %51 = getelementptr inbounds %struct.e1000_rx_buffer, %struct.e1000_rx_buffer* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %64

55:                                               ; preds = %49
  %56 = load %struct.e1000_rx_buffer*, %struct.e1000_rx_buffer** %6, align 8
  %57 = getelementptr inbounds %struct.e1000_rx_buffer, %struct.e1000_rx_buffer* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @skb_free_frag(i32* %59)
  %61 = load %struct.e1000_rx_buffer*, %struct.e1000_rx_buffer** %6, align 8
  %62 = getelementptr inbounds %struct.e1000_rx_buffer, %struct.e1000_rx_buffer* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  store i32* null, i32** %63, align 8
  br label %64

64:                                               ; preds = %55, %49
  br label %104

65:                                               ; preds = %21
  %66 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %67 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @e1000_clean_jumbo_rx_irq, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %103

71:                                               ; preds = %65
  %72 = load %struct.e1000_rx_buffer*, %struct.e1000_rx_buffer** %6, align 8
  %73 = getelementptr inbounds %struct.e1000_rx_buffer, %struct.e1000_rx_buffer* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %87

76:                                               ; preds = %71
  %77 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %78 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %77, i32 0, i32 0
  %79 = load %struct.e1000_rx_buffer*, %struct.e1000_rx_buffer** %6, align 8
  %80 = getelementptr inbounds %struct.e1000_rx_buffer, %struct.e1000_rx_buffer* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %83 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %86 = call i32 @dma_unmap_page(i32* %78, i64 %81, i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %76, %71
  %88 = load %struct.e1000_rx_buffer*, %struct.e1000_rx_buffer** %6, align 8
  %89 = getelementptr inbounds %struct.e1000_rx_buffer, %struct.e1000_rx_buffer* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %102

93:                                               ; preds = %87
  %94 = load %struct.e1000_rx_buffer*, %struct.e1000_rx_buffer** %6, align 8
  %95 = getelementptr inbounds %struct.e1000_rx_buffer, %struct.e1000_rx_buffer* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = call i32 @put_page(i32* %97)
  %99 = load %struct.e1000_rx_buffer*, %struct.e1000_rx_buffer** %6, align 8
  %100 = getelementptr inbounds %struct.e1000_rx_buffer, %struct.e1000_rx_buffer* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  store i32* null, i32** %101, align 8
  br label %102

102:                                              ; preds = %93, %87
  br label %103

103:                                              ; preds = %102, %65
  br label %104

104:                                              ; preds = %103, %64
  %105 = load %struct.e1000_rx_buffer*, %struct.e1000_rx_buffer** %6, align 8
  %106 = getelementptr inbounds %struct.e1000_rx_buffer, %struct.e1000_rx_buffer* %105, i32 0, i32 0
  store i64 0, i64* %106, align 8
  br label %107

107:                                              ; preds = %104
  %108 = load i32, i32* %9, align 4
  %109 = add i32 %108, 1
  store i32 %109, i32* %9, align 4
  br label %15

110:                                              ; preds = %15
  %111 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %112 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %111, i32 0, i32 1
  %113 = call i32 @napi_free_frags(i32* %112)
  %114 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %4, align 8
  %115 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %114, i32 0, i32 8
  store i32* null, i32** %115, align 8
  %116 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %4, align 8
  %117 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = zext i32 %118 to i64
  %120 = mul i64 24, %119
  store i64 %120, i64* %8, align 8
  %121 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %4, align 8
  %122 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %121, i32 0, i32 7
  %123 = load %struct.e1000_rx_buffer*, %struct.e1000_rx_buffer** %122, align 8
  %124 = load i64, i64* %8, align 8
  %125 = call i32 @memset(%struct.e1000_rx_buffer* %123, i32 0, i64 %124)
  %126 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %4, align 8
  %127 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %126, i32 0, i32 6
  %128 = load %struct.e1000_rx_buffer*, %struct.e1000_rx_buffer** %127, align 8
  %129 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %4, align 8
  %130 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @memset(%struct.e1000_rx_buffer* %128, i32 0, i64 %131)
  %133 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %4, align 8
  %134 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %133, i32 0, i32 5
  store i64 0, i64* %134, align 8
  %135 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %4, align 8
  %136 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %135, i32 0, i32 4
  store i64 0, i64* %136, align 8
  %137 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %138 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %4, align 8
  %141 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %140, i32 0, i32 3
  %142 = load i64, i64* %141, align 8
  %143 = add nsw i64 %139, %142
  %144 = call i32 @writel(i32 0, i64 %143)
  %145 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %146 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %4, align 8
  %149 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = add nsw i64 %147, %150
  %152 = call i32 @writel(i32 0, i64 %151)
  ret void
}

declare dso_local i32 @dma_unmap_single(i32*, i64, i32, i32) #1

declare dso_local i32 @skb_free_frag(i32*) #1

declare dso_local i32 @dma_unmap_page(i32*, i64, i32, i32) #1

declare dso_local i32 @put_page(i32*) #1

declare dso_local i32 @napi_free_frags(i32*) #1

declare dso_local i32 @memset(%struct.e1000_rx_buffer*, i32, i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
