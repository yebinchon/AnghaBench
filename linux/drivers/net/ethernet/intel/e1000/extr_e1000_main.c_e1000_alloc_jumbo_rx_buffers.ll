; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_main.c_e1000_alloc_jumbo_rx_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_main.c_e1000_alloc_jumbo_rx_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { %struct.TYPE_4__, i32, i32, %struct.pci_dev* }
%struct.TYPE_4__ = type { i64 }
%struct.pci_dev = type { i32 }
%struct.e1000_rx_ring = type { i32, i32, i64, %struct.e1000_rx_buffer* }
%struct.e1000_rx_buffer = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.e1000_rx_desc = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_adapter*, %struct.e1000_rx_ring*, i32)* @e1000_alloc_jumbo_rx_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_alloc_jumbo_rx_buffers(%struct.e1000_adapter* %0, %struct.e1000_rx_ring* %1, i32 %2) #0 {
  %4 = alloca %struct.e1000_adapter*, align 8
  %5 = alloca %struct.e1000_rx_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca %struct.e1000_rx_desc*, align 8
  %9 = alloca %struct.e1000_rx_buffer*, align 8
  %10 = alloca i32, align 4
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %4, align 8
  store %struct.e1000_rx_ring* %1, %struct.e1000_rx_ring** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %12 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %11, i32 0, i32 3
  %13 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  store %struct.pci_dev* %13, %struct.pci_dev** %7, align 8
  %14 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %5, align 8
  %15 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %10, align 4
  %17 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %5, align 8
  %18 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %17, i32 0, i32 3
  %19 = load %struct.e1000_rx_buffer*, %struct.e1000_rx_buffer** %18, align 8
  %20 = load i32, i32* %10, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.e1000_rx_buffer, %struct.e1000_rx_buffer* %19, i64 %21
  store %struct.e1000_rx_buffer* %22, %struct.e1000_rx_buffer** %9, align 8
  br label %23

23:                                               ; preds = %116, %3
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %6, align 4
  %26 = icmp ne i32 %24, 0
  br i1 %26, label %27, label %123

27:                                               ; preds = %23
  %28 = load %struct.e1000_rx_buffer*, %struct.e1000_rx_buffer** %9, align 8
  %29 = getelementptr inbounds %struct.e1000_rx_buffer, %struct.e1000_rx_buffer* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %54, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* @GFP_ATOMIC, align 4
  %35 = call i32* @alloc_page(i32 %34)
  %36 = load %struct.e1000_rx_buffer*, %struct.e1000_rx_buffer** %9, align 8
  %37 = getelementptr inbounds %struct.e1000_rx_buffer, %struct.e1000_rx_buffer* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store i32* %35, i32** %38, align 8
  %39 = load %struct.e1000_rx_buffer*, %struct.e1000_rx_buffer** %9, align 8
  %40 = getelementptr inbounds %struct.e1000_rx_buffer, %struct.e1000_rx_buffer* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %33
  %49 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %50 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 8
  br label %123

53:                                               ; preds = %33
  br label %54

54:                                               ; preds = %53, %27
  %55 = load %struct.e1000_rx_buffer*, %struct.e1000_rx_buffer** %9, align 8
  %56 = getelementptr inbounds %struct.e1000_rx_buffer, %struct.e1000_rx_buffer* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %96, label %59

59:                                               ; preds = %54
  %60 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %61 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %60, i32 0, i32 0
  %62 = load %struct.e1000_rx_buffer*, %struct.e1000_rx_buffer** %9, align 8
  %63 = getelementptr inbounds %struct.e1000_rx_buffer, %struct.e1000_rx_buffer* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %67 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %70 = call i64 @dma_map_page(i32* %61, i32* %65, i32 0, i32 %68, i32 %69)
  %71 = load %struct.e1000_rx_buffer*, %struct.e1000_rx_buffer** %9, align 8
  %72 = getelementptr inbounds %struct.e1000_rx_buffer, %struct.e1000_rx_buffer* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  %73 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %74 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %73, i32 0, i32 0
  %75 = load %struct.e1000_rx_buffer*, %struct.e1000_rx_buffer** %9, align 8
  %76 = getelementptr inbounds %struct.e1000_rx_buffer, %struct.e1000_rx_buffer* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i64 @dma_mapping_error(i32* %74, i64 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %95

80:                                               ; preds = %59
  %81 = load %struct.e1000_rx_buffer*, %struct.e1000_rx_buffer** %9, align 8
  %82 = getelementptr inbounds %struct.e1000_rx_buffer, %struct.e1000_rx_buffer* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @put_page(i32* %84)
  %86 = load %struct.e1000_rx_buffer*, %struct.e1000_rx_buffer** %9, align 8
  %87 = getelementptr inbounds %struct.e1000_rx_buffer, %struct.e1000_rx_buffer* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  store i32* null, i32** %88, align 8
  %89 = load %struct.e1000_rx_buffer*, %struct.e1000_rx_buffer** %9, align 8
  %90 = getelementptr inbounds %struct.e1000_rx_buffer, %struct.e1000_rx_buffer* %89, i32 0, i32 0
  store i64 0, i64* %90, align 8
  %91 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %92 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 8
  br label %123

95:                                               ; preds = %59
  br label %96

96:                                               ; preds = %95, %54
  %97 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %5, align 8
  %98 = load i32, i32* %10, align 4
  %99 = call %struct.e1000_rx_desc* @E1000_RX_DESC(%struct.e1000_rx_ring* byval(%struct.e1000_rx_ring) align 8 %97, i32 %98)
  store %struct.e1000_rx_desc* %99, %struct.e1000_rx_desc** %8, align 8
  %100 = load %struct.e1000_rx_buffer*, %struct.e1000_rx_buffer** %9, align 8
  %101 = getelementptr inbounds %struct.e1000_rx_buffer, %struct.e1000_rx_buffer* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @cpu_to_le64(i64 %102)
  %104 = load %struct.e1000_rx_desc*, %struct.e1000_rx_desc** %8, align 8
  %105 = getelementptr inbounds %struct.e1000_rx_desc, %struct.e1000_rx_desc* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* %10, align 4
  %107 = add i32 %106, 1
  store i32 %107, i32* %10, align 4
  %108 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %5, align 8
  %109 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp eq i32 %107, %110
  %112 = zext i1 %111 to i32
  %113 = call i64 @unlikely(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %96
  store i32 0, i32* %10, align 4
  br label %116

116:                                              ; preds = %115, %96
  %117 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %5, align 8
  %118 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %117, i32 0, i32 3
  %119 = load %struct.e1000_rx_buffer*, %struct.e1000_rx_buffer** %118, align 8
  %120 = load i32, i32* %10, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds %struct.e1000_rx_buffer, %struct.e1000_rx_buffer* %119, i64 %121
  store %struct.e1000_rx_buffer* %122, %struct.e1000_rx_buffer** %9, align 8
  br label %23

123:                                              ; preds = %80, %48, %23
  %124 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %5, align 8
  %125 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* %10, align 4
  %128 = icmp ne i32 %126, %127
  %129 = zext i1 %128 to i32
  %130 = call i64 @likely(i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %159

132:                                              ; preds = %123
  %133 = load i32, i32* %10, align 4
  %134 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %5, align 8
  %135 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 8
  %136 = load i32, i32* %10, align 4
  %137 = add i32 %136, -1
  store i32 %137, i32* %10, align 4
  %138 = icmp eq i32 %136, 0
  %139 = zext i1 %138 to i32
  %140 = call i64 @unlikely(i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %132
  %143 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %5, align 8
  %144 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = sub i32 %145, 1
  store i32 %146, i32* %10, align 4
  br label %147

147:                                              ; preds = %142, %132
  %148 = call i32 (...) @dma_wmb()
  %149 = load i32, i32* %10, align 4
  %150 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %151 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %5, align 8
  %155 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %154, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = add nsw i64 %153, %156
  %158 = call i32 @writel(i32 %149, i64 %157)
  br label %159

159:                                              ; preds = %147, %123
  ret void
}

declare dso_local i32* @alloc_page(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @dma_map_page(i32*, i32*, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i64) #1

declare dso_local i32 @put_page(i32*) #1

declare dso_local %struct.e1000_rx_desc* @E1000_RX_DESC(%struct.e1000_rx_ring* byval(%struct.e1000_rx_ring) align 8, i32) #1

declare dso_local i32 @cpu_to_le64(i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @dma_wmb(...) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
