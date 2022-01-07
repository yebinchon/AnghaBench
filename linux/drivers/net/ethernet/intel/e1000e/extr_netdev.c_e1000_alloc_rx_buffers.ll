; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000_alloc_rx_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000_alloc_rx_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_ring = type { i32, i32, %struct.e1000_buffer*, i32, %struct.e1000_adapter* }
%struct.e1000_buffer = type { i32, %struct.sk_buff* }
%struct.sk_buff = type { i32 }
%struct.e1000_adapter = type { i32, i32, i32, i32, %struct.pci_dev*, %struct.net_device* }
%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }
%union.e1000_rx_desc_extended = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Rx DMA map failed\0A\00", align 1
@E1000_RX_BUFFER_WRITE = common dso_local global i32 0, align 4
@FLAG2_PCIM2PCI_ARBITER_WA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_ring*, i32, i32)* @e1000_alloc_rx_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_alloc_rx_buffers(%struct.e1000_ring* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.e1000_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.e1000_adapter*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.pci_dev*, align 8
  %10 = alloca %union.e1000_rx_desc_extended*, align 8
  %11 = alloca %struct.e1000_buffer*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.e1000_ring* %0, %struct.e1000_ring** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %15 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %16 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %15, i32 0, i32 4
  %17 = load %struct.e1000_adapter*, %struct.e1000_adapter** %16, align 8
  store %struct.e1000_adapter* %17, %struct.e1000_adapter** %7, align 8
  %18 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %19 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %18, i32 0, i32 5
  %20 = load %struct.net_device*, %struct.net_device** %19, align 8
  store %struct.net_device* %20, %struct.net_device** %8, align 8
  %21 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %22 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %21, i32 0, i32 4
  %23 = load %struct.pci_dev*, %struct.pci_dev** %22, align 8
  store %struct.pci_dev* %23, %struct.pci_dev** %9, align 8
  %24 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %25 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %14, align 4
  %27 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %28 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %13, align 4
  %30 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %31 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %30, i32 0, i32 2
  %32 = load %struct.e1000_buffer*, %struct.e1000_buffer** %31, align 8
  %33 = load i32, i32* %13, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %32, i64 %34
  store %struct.e1000_buffer* %35, %struct.e1000_buffer** %11, align 8
  br label %36

36:                                               ; preds = %141, %3
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %5, align 4
  %39 = icmp ne i32 %37, 0
  br i1 %39, label %40, label %148

40:                                               ; preds = %36
  %41 = load %struct.e1000_buffer*, %struct.e1000_buffer** %11, align 8
  %42 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %41, i32 0, i32 1
  %43 = load %struct.sk_buff*, %struct.sk_buff** %42, align 8
  store %struct.sk_buff* %43, %struct.sk_buff** %12, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %45 = icmp ne %struct.sk_buff* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %48 = call i32 @skb_trim(%struct.sk_buff* %47, i32 0)
  br label %65

49:                                               ; preds = %40
  %50 = load %struct.net_device*, %struct.net_device** %8, align 8
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call %struct.sk_buff* @__netdev_alloc_skb_ip_align(%struct.net_device* %50, i32 %51, i32 %52)
  store %struct.sk_buff* %53, %struct.sk_buff** %12, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %55 = icmp ne %struct.sk_buff* %54, null
  br i1 %55, label %61, label %56

56:                                               ; preds = %49
  %57 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %58 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  br label %148

61:                                               ; preds = %49
  %62 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %63 = load %struct.e1000_buffer*, %struct.e1000_buffer** %11, align 8
  %64 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %63, i32 0, i32 1
  store %struct.sk_buff* %62, %struct.sk_buff** %64, align 8
  br label %65

65:                                               ; preds = %61, %46
  %66 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %67 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %66, i32 0, i32 0
  %68 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %69 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %72 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %75 = call i32 @dma_map_single(i32* %67, i32 %70, i32 %73, i32 %74)
  %76 = load %struct.e1000_buffer*, %struct.e1000_buffer** %11, align 8
  %77 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %79 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %78, i32 0, i32 0
  %80 = load %struct.e1000_buffer*, %struct.e1000_buffer** %11, align 8
  %81 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i64 @dma_mapping_error(i32* %79, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %65
  %86 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %87 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %86, i32 0, i32 0
  %88 = call i32 @dev_err(i32* %87, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %89 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %90 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 8
  br label %148

93:                                               ; preds = %65
  %94 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %95 = load i32, i32* %13, align 4
  %96 = call %union.e1000_rx_desc_extended* @E1000_RX_DESC_EXT(%struct.e1000_ring* byval(%struct.e1000_ring) align 8 %94, i32 %95)
  store %union.e1000_rx_desc_extended* %96, %union.e1000_rx_desc_extended** %10, align 8
  %97 = load %struct.e1000_buffer*, %struct.e1000_buffer** %11, align 8
  %98 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @cpu_to_le64(i32 %99)
  %101 = load %union.e1000_rx_desc_extended*, %union.e1000_rx_desc_extended** %10, align 8
  %102 = bitcast %union.e1000_rx_desc_extended* %101 to %struct.TYPE_2__*
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  store i32 %100, i32* %103, align 4
  %104 = load i32, i32* %13, align 4
  %105 = load i32, i32* @E1000_RX_BUFFER_WRITE, align 4
  %106 = sub nsw i32 %105, 1
  %107 = and i32 %104, %106
  %108 = icmp ne i32 %107, 0
  %109 = xor i1 %108, true
  %110 = zext i1 %109 to i32
  %111 = call i64 @unlikely(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %132

113:                                              ; preds = %93
  %114 = call i32 (...) @wmb()
  %115 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %116 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @FLAG2_PCIM2PCI_ARBITER_WA, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %113
  %122 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %123 = load i32, i32* %13, align 4
  %124 = call i32 @e1000e_update_rdt_wa(%struct.e1000_ring* %122, i32 %123)
  br label %131

125:                                              ; preds = %113
  %126 = load i32, i32* %13, align 4
  %127 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %128 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @writel(i32 %126, i32 %129)
  br label %131

131:                                              ; preds = %125, %121
  br label %132

132:                                              ; preds = %131, %93
  %133 = load i32, i32* %13, align 4
  %134 = add i32 %133, 1
  store i32 %134, i32* %13, align 4
  %135 = load i32, i32* %13, align 4
  %136 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %137 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = icmp eq i32 %135, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %132
  store i32 0, i32* %13, align 4
  br label %141

141:                                              ; preds = %140, %132
  %142 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %143 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %142, i32 0, i32 2
  %144 = load %struct.e1000_buffer*, %struct.e1000_buffer** %143, align 8
  %145 = load i32, i32* %13, align 4
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %144, i64 %146
  store %struct.e1000_buffer* %147, %struct.e1000_buffer** %11, align 8
  br label %36

148:                                              ; preds = %85, %56, %36
  %149 = load i32, i32* %13, align 4
  %150 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %151 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 8
  ret void
}

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

declare dso_local %struct.sk_buff* @__netdev_alloc_skb_ip_align(%struct.net_device*, i32, i32) #1

declare dso_local i32 @dma_map_single(i32*, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %union.e1000_rx_desc_extended* @E1000_RX_DESC_EXT(%struct.e1000_ring* byval(%struct.e1000_ring) align 8, i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @e1000e_update_rdt_wa(%struct.e1000_ring*, i32) #1

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
