; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_typhoon.c_typhoon_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_typhoon.c_typhoon_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.typhoon = type { i32, i32, %struct.rxbuff_ent* }
%struct.rxbuff_ent = type { i32, %struct.sk_buff* }
%struct.sk_buff = type { i32, i32, i32 }
%struct.basic_ring = type { i64 }
%struct.rx_desc = type { i64, i32, i32, i32, i32 }

@TYPHOON_RX_ERROR = common dso_local global i32 0, align 4
@rx_copybreak = common dso_local global i32 0, align 4
@PKT_BUF_SZ = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@TYPHOON_RX_IP_CHK_GOOD = common dso_local global i32 0, align 4
@TYPHOON_RX_UDP_CHK_GOOD = common dso_local global i32 0, align 4
@TYPHOON_RX_TCP_CHK_GOOD = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@TYPHOON_RX_VLAN = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.typhoon*, %struct.basic_ring*, i32*, i32*, i32)* @typhoon_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @typhoon_rx(%struct.typhoon* %0, %struct.basic_ring* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.typhoon*, align 8
  %7 = alloca %struct.basic_ring*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.rx_desc*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca %struct.rxbuff_ent*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.typhoon* %0, %struct.typhoon** %6, align 8
  store %struct.basic_ring* %1, %struct.basic_ring** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %21, align 4
  %22 = load i32*, i32** %8, align 8
  %23 = load volatile i32, i32* %22, align 4
  %24 = call i64 @le32_to_cpu(i32 %23)
  store i64 %24, i64* %16, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = load volatile i32, i32* %25, align 4
  %27 = call i64 @le32_to_cpu(i32 %26)
  store i64 %27, i64* %17, align 8
  br label %28

28:                                               ; preds = %181, %65, %5
  %29 = load i64, i64* %17, align 8
  %30 = load i64, i64* %16, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32, i32* %10, align 4
  %34 = icmp sgt i32 %33, 0
  br label %35

35:                                               ; preds = %32, %28
  %36 = phi i1 [ false, %28 ], [ %34, %32 ]
  br i1 %36, label %37, label %188

37:                                               ; preds = %35
  %38 = load %struct.basic_ring*, %struct.basic_ring** %7, align 8
  %39 = getelementptr inbounds %struct.basic_ring, %struct.basic_ring* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %17, align 8
  %42 = add nsw i64 %40, %41
  %43 = inttoptr i64 %42 to %struct.rx_desc*
  store %struct.rx_desc* %43, %struct.rx_desc** %11, align 8
  %44 = load %struct.rx_desc*, %struct.rx_desc** %11, align 8
  %45 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %19, align 8
  %47 = load %struct.typhoon*, %struct.typhoon** %6, align 8
  %48 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %47, i32 0, i32 2
  %49 = load %struct.rxbuff_ent*, %struct.rxbuff_ent** %48, align 8
  %50 = load i64, i64* %19, align 8
  %51 = getelementptr inbounds %struct.rxbuff_ent, %struct.rxbuff_ent* %49, i64 %50
  store %struct.rxbuff_ent* %51, %struct.rxbuff_ent** %14, align 8
  %52 = load %struct.rxbuff_ent*, %struct.rxbuff_ent** %14, align 8
  %53 = getelementptr inbounds %struct.rxbuff_ent, %struct.rxbuff_ent* %52, i32 0, i32 1
  %54 = load %struct.sk_buff*, %struct.sk_buff** %53, align 8
  store %struct.sk_buff* %54, %struct.sk_buff** %12, align 8
  %55 = load %struct.rxbuff_ent*, %struct.rxbuff_ent** %14, align 8
  %56 = getelementptr inbounds %struct.rxbuff_ent, %struct.rxbuff_ent* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %15, align 4
  %58 = call i32 @typhoon_inc_rx_index(i64* %17, i32 1)
  %59 = load %struct.rx_desc*, %struct.rx_desc** %11, align 8
  %60 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @TYPHOON_RX_ERROR, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %37
  %66 = load %struct.typhoon*, %struct.typhoon** %6, align 8
  %67 = load i64, i64* %19, align 8
  %68 = call i32 @typhoon_recycle_rx_skb(%struct.typhoon* %66, i64 %67)
  br label %28

69:                                               ; preds = %37
  %70 = load %struct.rx_desc*, %struct.rx_desc** %11, align 8
  %71 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @le16_to_cpu(i32 %72)
  store i32 %73, i32* %18, align 4
  %74 = load i32, i32* %18, align 4
  %75 = load i32, i32* @rx_copybreak, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %114

77:                                               ; preds = %69
  %78 = load %struct.typhoon*, %struct.typhoon** %6, align 8
  %79 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %18, align 4
  %82 = add nsw i32 %81, 2
  %83 = call %struct.sk_buff* @netdev_alloc_skb(i32 %80, i32 %82)
  store %struct.sk_buff* %83, %struct.sk_buff** %13, align 8
  %84 = icmp ne %struct.sk_buff* %83, null
  br i1 %84, label %85, label %114

85:                                               ; preds = %77
  %86 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %87 = call i32 @skb_reserve(%struct.sk_buff* %86, i32 2)
  %88 = load %struct.typhoon*, %struct.typhoon** %6, align 8
  %89 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %15, align 4
  %92 = load i32, i32* @PKT_BUF_SZ, align 4
  %93 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %94 = call i32 @pci_dma_sync_single_for_cpu(i32 %90, i32 %91, i32 %92, i32 %93)
  %95 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %96 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %97 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %18, align 4
  %100 = call i32 @skb_copy_to_linear_data(%struct.sk_buff* %95, i32 %98, i32 %99)
  %101 = load %struct.typhoon*, %struct.typhoon** %6, align 8
  %102 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %15, align 4
  %105 = load i32, i32* @PKT_BUF_SZ, align 4
  %106 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %107 = call i32 @pci_dma_sync_single_for_device(i32 %103, i32 %104, i32 %105, i32 %106)
  %108 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %109 = load i32, i32* %18, align 4
  %110 = call i32 @skb_put(%struct.sk_buff* %108, i32 %109)
  %111 = load %struct.typhoon*, %struct.typhoon** %6, align 8
  %112 = load i64, i64* %19, align 8
  %113 = call i32 @typhoon_recycle_rx_skb(%struct.typhoon* %111, i64 %112)
  br label %129

114:                                              ; preds = %77, %69
  %115 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  store %struct.sk_buff* %115, %struct.sk_buff** %13, align 8
  %116 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %117 = load i32, i32* %18, align 4
  %118 = call i32 @skb_put(%struct.sk_buff* %116, i32 %117)
  %119 = load %struct.typhoon*, %struct.typhoon** %6, align 8
  %120 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %15, align 4
  %123 = load i32, i32* @PKT_BUF_SZ, align 4
  %124 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %125 = call i32 @pci_unmap_single(i32 %121, i32 %122, i32 %123, i32 %124)
  %126 = load %struct.typhoon*, %struct.typhoon** %6, align 8
  %127 = load i64, i64* %19, align 8
  %128 = call i32 @typhoon_alloc_rx_skb(%struct.typhoon* %126, i64 %127)
  br label %129

129:                                              ; preds = %114, %85
  %130 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %131 = load %struct.typhoon*, %struct.typhoon** %6, align 8
  %132 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @eth_type_trans(%struct.sk_buff* %130, i32 %133)
  %135 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %136 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %135, i32 0, i32 1
  store i32 %134, i32* %136, align 4
  %137 = load %struct.rx_desc*, %struct.rx_desc** %11, align 8
  %138 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @TYPHOON_RX_IP_CHK_GOOD, align 4
  %141 = load i32, i32* @TYPHOON_RX_UDP_CHK_GOOD, align 4
  %142 = or i32 %140, %141
  %143 = load i32, i32* @TYPHOON_RX_TCP_CHK_GOOD, align 4
  %144 = or i32 %142, %143
  %145 = and i32 %139, %144
  store i32 %145, i32* %20, align 4
  %146 = load i32, i32* %20, align 4
  %147 = load i32, i32* @TYPHOON_RX_IP_CHK_GOOD, align 4
  %148 = load i32, i32* @TYPHOON_RX_TCP_CHK_GOOD, align 4
  %149 = or i32 %147, %148
  %150 = icmp eq i32 %146, %149
  br i1 %150, label %157, label %151

151:                                              ; preds = %129
  %152 = load i32, i32* %20, align 4
  %153 = load i32, i32* @TYPHOON_RX_IP_CHK_GOOD, align 4
  %154 = load i32, i32* @TYPHOON_RX_UDP_CHK_GOOD, align 4
  %155 = or i32 %153, %154
  %156 = icmp eq i32 %152, %155
  br i1 %156, label %157, label %161

157:                                              ; preds = %151, %129
  %158 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %159 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %160 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %159, i32 0, i32 0
  store i32 %158, i32* %160, align 4
  br label %164

161:                                              ; preds = %151
  %162 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %163 = call i32 @skb_checksum_none_assert(%struct.sk_buff* %162)
  br label %164

164:                                              ; preds = %161, %157
  %165 = load %struct.rx_desc*, %struct.rx_desc** %11, align 8
  %166 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @TYPHOON_RX_VLAN, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %181

171:                                              ; preds = %164
  %172 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %173 = load i32, i32* @ETH_P_8021Q, align 4
  %174 = call i32 @htons(i32 %173)
  %175 = load %struct.rx_desc*, %struct.rx_desc** %11, align 8
  %176 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @ntohl(i32 %177)
  %179 = and i32 %178, 65535
  %180 = call i32 @__vlan_hwaccel_put_tag(%struct.sk_buff* %172, i32 %174, i32 %179)
  br label %181

181:                                              ; preds = %171, %164
  %182 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %183 = call i32 @netif_receive_skb(%struct.sk_buff* %182)
  %184 = load i32, i32* %21, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %21, align 4
  %186 = load i32, i32* %10, align 4
  %187 = add nsw i32 %186, -1
  store i32 %187, i32* %10, align 4
  br label %28

188:                                              ; preds = %35
  %189 = load i64, i64* %17, align 8
  %190 = call i32 @cpu_to_le32(i64 %189)
  %191 = load i32*, i32** %9, align 8
  store volatile i32 %190, i32* %191, align 4
  %192 = load i32, i32* %21, align 4
  ret i32 %192
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @typhoon_inc_rx_index(i64*, i32) #1

declare dso_local i32 @typhoon_recycle_rx_skb(%struct.typhoon*, i64) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(i32, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @pci_dma_sync_single_for_cpu(i32, i32, i32, i32) #1

declare dso_local i32 @skb_copy_to_linear_data(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @pci_dma_sync_single_for_device(i32, i32, i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @typhoon_alloc_rx_skb(%struct.typhoon*, i64) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_checksum_none_assert(%struct.sk_buff*) #1

declare dso_local i32 @__vlan_hwaccel_put_tag(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

declare dso_local i32 @cpu_to_le32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
