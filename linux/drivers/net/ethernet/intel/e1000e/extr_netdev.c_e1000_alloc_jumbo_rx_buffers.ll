; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000_alloc_jumbo_rx_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000_alloc_jumbo_rx_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_ring = type { i32, i32, i32, %struct.e1000_buffer*, %struct.e1000_adapter* }
%struct.e1000_buffer = type { i64, i64, %struct.sk_buff* }
%struct.sk_buff = type { i32 }
%struct.e1000_adapter = type { i32, i32, %struct.pci_dev*, %struct.net_device* }
%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }
%union.e1000_rx_desc_extended = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@FLAG2_PCIM2PCI_ARBITER_WA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_ring*, i32, i32)* @e1000_alloc_jumbo_rx_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_alloc_jumbo_rx_buffers(%struct.e1000_ring* %0, i32 %1, i32 %2) #0 {
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
  %19 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %18, i32 0, i32 3
  %20 = load %struct.net_device*, %struct.net_device** %19, align 8
  store %struct.net_device* %20, %struct.net_device** %8, align 8
  %21 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %22 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %21, i32 0, i32 2
  %23 = load %struct.pci_dev*, %struct.pci_dev** %22, align 8
  store %struct.pci_dev* %23, %struct.pci_dev** %9, align 8
  store i32 240, i32* %14, align 4
  %24 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %25 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %13, align 4
  %27 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %28 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %27, i32 0, i32 3
  %29 = load %struct.e1000_buffer*, %struct.e1000_buffer** %28, align 8
  %30 = load i32, i32* %13, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %29, i64 %31
  store %struct.e1000_buffer* %32, %struct.e1000_buffer** %11, align 8
  br label %33

33:                                               ; preds = %140, %3
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %5, align 4
  %36 = icmp ne i32 %34, 0
  br i1 %36, label %37, label %147

37:                                               ; preds = %33
  %38 = load %struct.e1000_buffer*, %struct.e1000_buffer** %11, align 8
  %39 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %38, i32 0, i32 2
  %40 = load %struct.sk_buff*, %struct.sk_buff** %39, align 8
  store %struct.sk_buff* %40, %struct.sk_buff** %12, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %42 = icmp ne %struct.sk_buff* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %45 = call i32 @skb_trim(%struct.sk_buff* %44, i32 0)
  br label %66

46:                                               ; preds = %37
  %47 = load %struct.net_device*, %struct.net_device** %8, align 8
  %48 = load i32, i32* %14, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call %struct.sk_buff* @__netdev_alloc_skb_ip_align(%struct.net_device* %47, i32 %48, i32 %49)
  store %struct.sk_buff* %50, %struct.sk_buff** %12, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %52 = icmp ne %struct.sk_buff* %51, null
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %46
  %58 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %59 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  br label %147

62:                                               ; preds = %46
  %63 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %64 = load %struct.e1000_buffer*, %struct.e1000_buffer** %11, align 8
  %65 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %64, i32 0, i32 2
  store %struct.sk_buff* %63, %struct.sk_buff** %65, align 8
  br label %66

66:                                               ; preds = %62, %43
  %67 = load %struct.e1000_buffer*, %struct.e1000_buffer** %11, align 8
  %68 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %90, label %71

71:                                               ; preds = %66
  %72 = load i32, i32* %6, align 4
  %73 = call i64 @alloc_page(i32 %72)
  %74 = load %struct.e1000_buffer*, %struct.e1000_buffer** %11, align 8
  %75 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %74, i32 0, i32 1
  store i64 %73, i64* %75, align 8
  %76 = load %struct.e1000_buffer*, %struct.e1000_buffer** %11, align 8
  %77 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  %82 = call i64 @unlikely(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %71
  %85 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %86 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 4
  br label %147

89:                                               ; preds = %71
  br label %90

90:                                               ; preds = %89, %66
  %91 = load %struct.e1000_buffer*, %struct.e1000_buffer** %11, align 8
  %92 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %119, label %95

95:                                               ; preds = %90
  %96 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %97 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %96, i32 0, i32 0
  %98 = load %struct.e1000_buffer*, %struct.e1000_buffer** %11, align 8
  %99 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load i32, i32* @PAGE_SIZE, align 4
  %102 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %103 = call i64 @dma_map_page(i32* %97, i64 %100, i32 0, i32 %101, i32 %102)
  %104 = load %struct.e1000_buffer*, %struct.e1000_buffer** %11, align 8
  %105 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %104, i32 0, i32 0
  store i64 %103, i64* %105, align 8
  %106 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %107 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %106, i32 0, i32 0
  %108 = load %struct.e1000_buffer*, %struct.e1000_buffer** %11, align 8
  %109 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = call i64 @dma_mapping_error(i32* %107, i64 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %95
  %114 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %115 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %115, align 4
  br label %147

118:                                              ; preds = %95
  br label %119

119:                                              ; preds = %118, %90
  %120 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %121 = load i32, i32* %13, align 4
  %122 = call %union.e1000_rx_desc_extended* @E1000_RX_DESC_EXT(%struct.e1000_ring* byval(%struct.e1000_ring) align 8 %120, i32 %121)
  store %union.e1000_rx_desc_extended* %122, %union.e1000_rx_desc_extended** %10, align 8
  %123 = load %struct.e1000_buffer*, %struct.e1000_buffer** %11, align 8
  %124 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @cpu_to_le64(i64 %125)
  %127 = load %union.e1000_rx_desc_extended*, %union.e1000_rx_desc_extended** %10, align 8
  %128 = bitcast %union.e1000_rx_desc_extended* %127 to %struct.TYPE_2__*
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  store i32 %126, i32* %129, align 4
  %130 = load i32, i32* %13, align 4
  %131 = add i32 %130, 1
  store i32 %131, i32* %13, align 4
  %132 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %133 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = icmp eq i32 %131, %134
  %136 = zext i1 %135 to i32
  %137 = call i64 @unlikely(i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %119
  store i32 0, i32* %13, align 4
  br label %140

140:                                              ; preds = %139, %119
  %141 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %142 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %141, i32 0, i32 3
  %143 = load %struct.e1000_buffer*, %struct.e1000_buffer** %142, align 8
  %144 = load i32, i32* %13, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %143, i64 %145
  store %struct.e1000_buffer* %146, %struct.e1000_buffer** %11, align 8
  br label %33

147:                                              ; preds = %113, %84, %57, %33
  %148 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %149 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* %13, align 4
  %152 = icmp ne i32 %150, %151
  %153 = zext i1 %152 to i32
  %154 = call i64 @likely(i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %190

156:                                              ; preds = %147
  %157 = load i32, i32* %13, align 4
  %158 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %159 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %158, i32 0, i32 0
  store i32 %157, i32* %159, align 8
  %160 = load i32, i32* %13, align 4
  %161 = add i32 %160, -1
  store i32 %161, i32* %13, align 4
  %162 = icmp eq i32 %160, 0
  %163 = zext i1 %162 to i32
  %164 = call i64 @unlikely(i32 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %156
  %167 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %168 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = sub i32 %169, 1
  store i32 %170, i32* %13, align 4
  br label %171

171:                                              ; preds = %166, %156
  %172 = call i32 (...) @wmb()
  %173 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %174 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @FLAG2_PCIM2PCI_ARBITER_WA, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %171
  %180 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %181 = load i32, i32* %13, align 4
  %182 = call i32 @e1000e_update_rdt_wa(%struct.e1000_ring* %180, i32 %181)
  br label %189

183:                                              ; preds = %171
  %184 = load i32, i32* %13, align 4
  %185 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %186 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @writel(i32 %184, i32 %187)
  br label %189

189:                                              ; preds = %183, %179
  br label %190

190:                                              ; preds = %189, %147
  ret void
}

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

declare dso_local %struct.sk_buff* @__netdev_alloc_skb_ip_align(%struct.net_device*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @alloc_page(i32) #1

declare dso_local i64 @dma_map_page(i32*, i64, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i64) #1

declare dso_local %union.e1000_rx_desc_extended* @E1000_RX_DESC_EXT(%struct.e1000_ring* byval(%struct.e1000_ring) align 8, i32) #1

declare dso_local i32 @cpu_to_le64(i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @e1000e_update_rdt_wa(%struct.e1000_ring*, i32) #1

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
