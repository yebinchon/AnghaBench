; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgb/extr_ixgb_main.c_ixgb_alloc_rx_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgb/extr_ixgb_main.c_ixgb_alloc_rx_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgb_adapter = type { i32, i32, i32, %struct.pci_dev*, %struct.net_device*, %struct.ixgb_desc_ring }
%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.ixgb_desc_ring = type { i32, i32, %struct.ixgb_buffer* }
%struct.ixgb_buffer = type { i32, i32, %struct.sk_buff* }
%struct.sk_buff = type { i32 }
%struct.ixgb_rx_desc = type { i64, i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@RDT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgb_adapter*, i32)* @ixgb_alloc_rx_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgb_alloc_rx_buffers(%struct.ixgb_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.ixgb_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ixgb_desc_ring*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca %struct.ixgb_rx_desc*, align 8
  %9 = alloca %struct.ixgb_buffer*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.ixgb_adapter* %0, %struct.ixgb_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %13, i32 0, i32 5
  store %struct.ixgb_desc_ring* %14, %struct.ixgb_desc_ring** %5, align 8
  %15 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %16 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %15, i32 0, i32 4
  %17 = load %struct.net_device*, %struct.net_device** %16, align 8
  store %struct.net_device* %17, %struct.net_device** %6, align 8
  %18 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %19 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %18, i32 0, i32 3
  %20 = load %struct.pci_dev*, %struct.pci_dev** %19, align 8
  store %struct.pci_dev* %20, %struct.pci_dev** %7, align 8
  %21 = load %struct.ixgb_desc_ring*, %struct.ixgb_desc_ring** %5, align 8
  %22 = getelementptr inbounds %struct.ixgb_desc_ring, %struct.ixgb_desc_ring* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %11, align 4
  %24 = load %struct.ixgb_desc_ring*, %struct.ixgb_desc_ring** %5, align 8
  %25 = getelementptr inbounds %struct.ixgb_desc_ring, %struct.ixgb_desc_ring* %24, i32 0, i32 2
  %26 = load %struct.ixgb_buffer*, %struct.ixgb_buffer** %25, align 8
  %27 = load i32, i32* %11, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.ixgb_buffer, %struct.ixgb_buffer* %26, i64 %28
  store %struct.ixgb_buffer* %29, %struct.ixgb_buffer** %9, align 8
  %30 = load %struct.ixgb_desc_ring*, %struct.ixgb_desc_ring** %5, align 8
  %31 = call i64 @IXGB_DESC_UNUSED(%struct.ixgb_desc_ring* %30)
  store i64 %31, i64* %12, align 8
  br label %32

32:                                               ; preds = %126, %2
  %33 = load i64, i64* %12, align 8
  %34 = add nsw i64 %33, -1
  store i64 %34, i64* %12, align 8
  %35 = icmp sgt i64 %34, 2
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %4, align 4
  %39 = icmp ne i32 %37, 0
  br label %40

40:                                               ; preds = %36, %32
  %41 = phi i1 [ false, %32 ], [ %39, %36 ]
  br i1 %41, label %42, label %133

42:                                               ; preds = %40
  %43 = load %struct.ixgb_buffer*, %struct.ixgb_buffer** %9, align 8
  %44 = getelementptr inbounds %struct.ixgb_buffer, %struct.ixgb_buffer* %43, i32 0, i32 2
  %45 = load %struct.sk_buff*, %struct.sk_buff** %44, align 8
  store %struct.sk_buff* %45, %struct.sk_buff** %10, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %47 = icmp ne %struct.sk_buff* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %50 = call i32 @skb_trim(%struct.sk_buff* %49, i32 0)
  br label %77

51:                                               ; preds = %42
  %52 = load %struct.net_device*, %struct.net_device** %6, align 8
  %53 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %54 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.net_device* %52, i32 %55)
  store %struct.sk_buff* %56, %struct.sk_buff** %10, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %58 = icmp ne %struct.sk_buff* %57, null
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  %61 = call i64 @unlikely(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %51
  %64 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %65 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 4
  br label %133

68:                                               ; preds = %51
  %69 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %70 = load %struct.ixgb_buffer*, %struct.ixgb_buffer** %9, align 8
  %71 = getelementptr inbounds %struct.ixgb_buffer, %struct.ixgb_buffer* %70, i32 0, i32 2
  store %struct.sk_buff* %69, %struct.sk_buff** %71, align 8
  %72 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %73 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.ixgb_buffer*, %struct.ixgb_buffer** %9, align 8
  %76 = getelementptr inbounds %struct.ixgb_buffer, %struct.ixgb_buffer* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  br label %77

77:                                               ; preds = %68, %48
  %78 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %79 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %78, i32 0, i32 0
  %80 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %81 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %84 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %87 = call i32 @dma_map_single(i32* %79, i32 %82, i32 %85, i32 %86)
  %88 = load %struct.ixgb_buffer*, %struct.ixgb_buffer** %9, align 8
  %89 = getelementptr inbounds %struct.ixgb_buffer, %struct.ixgb_buffer* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %91 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %90, i32 0, i32 0
  %92 = load %struct.ixgb_buffer*, %struct.ixgb_buffer** %9, align 8
  %93 = getelementptr inbounds %struct.ixgb_buffer, %struct.ixgb_buffer* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i64 @dma_mapping_error(i32* %91, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %77
  %98 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %99 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 4
  br label %133

102:                                              ; preds = %77
  %103 = load %struct.ixgb_desc_ring*, %struct.ixgb_desc_ring** %5, align 8
  %104 = load i32, i32* %11, align 4
  %105 = bitcast %struct.ixgb_desc_ring* %103 to { i64, %struct.ixgb_buffer* }*
  %106 = getelementptr inbounds { i64, %struct.ixgb_buffer* }, { i64, %struct.ixgb_buffer* }* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds { i64, %struct.ixgb_buffer* }, { i64, %struct.ixgb_buffer* }* %105, i32 0, i32 1
  %109 = load %struct.ixgb_buffer*, %struct.ixgb_buffer** %108, align 8
  %110 = call %struct.ixgb_rx_desc* @IXGB_RX_DESC(i64 %107, %struct.ixgb_buffer* %109, i32 %104)
  store %struct.ixgb_rx_desc* %110, %struct.ixgb_rx_desc** %8, align 8
  %111 = load %struct.ixgb_buffer*, %struct.ixgb_buffer** %9, align 8
  %112 = getelementptr inbounds %struct.ixgb_buffer, %struct.ixgb_buffer* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @cpu_to_le64(i32 %113)
  %115 = load %struct.ixgb_rx_desc*, %struct.ixgb_rx_desc** %8, align 8
  %116 = getelementptr inbounds %struct.ixgb_rx_desc, %struct.ixgb_rx_desc* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 8
  %117 = load %struct.ixgb_rx_desc*, %struct.ixgb_rx_desc** %8, align 8
  %118 = getelementptr inbounds %struct.ixgb_rx_desc, %struct.ixgb_rx_desc* %117, i32 0, i32 0
  store i64 0, i64* %118, align 8
  %119 = load i32, i32* %11, align 4
  %120 = add i32 %119, 1
  store i32 %120, i32* %11, align 4
  %121 = load %struct.ixgb_desc_ring*, %struct.ixgb_desc_ring** %5, align 8
  %122 = getelementptr inbounds %struct.ixgb_desc_ring, %struct.ixgb_desc_ring* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = icmp eq i32 %120, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %102
  store i32 0, i32* %11, align 4
  br label %126

126:                                              ; preds = %125, %102
  %127 = load %struct.ixgb_desc_ring*, %struct.ixgb_desc_ring** %5, align 8
  %128 = getelementptr inbounds %struct.ixgb_desc_ring, %struct.ixgb_desc_ring* %127, i32 0, i32 2
  %129 = load %struct.ixgb_buffer*, %struct.ixgb_buffer** %128, align 8
  %130 = load i32, i32* %11, align 4
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds %struct.ixgb_buffer, %struct.ixgb_buffer* %129, i64 %131
  store %struct.ixgb_buffer* %132, %struct.ixgb_buffer** %9, align 8
  br label %32

133:                                              ; preds = %97, %63, %40
  %134 = load %struct.ixgb_desc_ring*, %struct.ixgb_desc_ring** %5, align 8
  %135 = getelementptr inbounds %struct.ixgb_desc_ring, %struct.ixgb_desc_ring* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* %11, align 4
  %138 = icmp ne i32 %136, %137
  %139 = zext i1 %138 to i32
  %140 = call i64 @likely(i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %164

142:                                              ; preds = %133
  %143 = load i32, i32* %11, align 4
  %144 = load %struct.ixgb_desc_ring*, %struct.ixgb_desc_ring** %5, align 8
  %145 = getelementptr inbounds %struct.ixgb_desc_ring, %struct.ixgb_desc_ring* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 8
  %146 = load i32, i32* %11, align 4
  %147 = add i32 %146, -1
  store i32 %147, i32* %11, align 4
  %148 = icmp eq i32 %146, 0
  %149 = zext i1 %148 to i32
  %150 = call i64 @unlikely(i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %142
  %153 = load %struct.ixgb_desc_ring*, %struct.ixgb_desc_ring** %5, align 8
  %154 = getelementptr inbounds %struct.ixgb_desc_ring, %struct.ixgb_desc_ring* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = sub i32 %155, 1
  store i32 %156, i32* %11, align 4
  br label %157

157:                                              ; preds = %152, %142
  %158 = call i32 (...) @wmb()
  %159 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %160 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %159, i32 0, i32 0
  %161 = load i32, i32* @RDT, align 4
  %162 = load i32, i32* %11, align 4
  %163 = call i32 @IXGB_WRITE_REG(i32* %160, i32 %161, i32 %162)
  br label %164

164:                                              ; preds = %157, %133
  ret void
}

declare dso_local i64 @IXGB_DESC_UNUSED(%struct.ixgb_desc_ring*) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.net_device*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_map_single(i32*, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i32) #1

declare dso_local %struct.ixgb_rx_desc* @IXGB_RX_DESC(i64, %struct.ixgb_buffer*, i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @IXGB_WRITE_REG(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
