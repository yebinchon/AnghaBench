; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000_clean_jumbo_rx_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000_clean_jumbo_rx_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.e1000_ring = type { i32, i32, %struct.sk_buff*, %struct.e1000_buffer*, %struct.e1000_adapter* }
%struct.e1000_buffer = type { i32, %struct.sk_buff*, i64 }
%struct.e1000_adapter = type { i32, i32, i32 (%struct.e1000_ring*, i32, i32)*, %struct.pci_dev*, %struct.net_device* }
%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }
%union.e1000_rx_desc_extended = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.skb_shared_info = type { i32 }

@E1000_RXD_STAT_DD = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@E1000_RXD_STAT_EOP = common dso_local global i32 0, align 4
@E1000_RXDEXT_ERR_FRAME_ERR_MASK = common dso_local global i32 0, align 4
@NETIF_F_RXALL = common dso_local global i32 0, align 4
@copybreak = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"pskb_may_pull failed.\0A\00", align 1
@E1000_RX_BUFFER_WRITE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@rxtop = common dso_local global %struct.sk_buff* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_ring*, i32*, i32)* @e1000_clean_jumbo_rx_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_clean_jumbo_rx_irq(%struct.e1000_ring* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.e1000_ring*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.e1000_adapter*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.pci_dev*, align 8
  %10 = alloca %union.e1000_rx_desc_extended*, align 8
  %11 = alloca %union.e1000_rx_desc_extended*, align 8
  %12 = alloca %struct.e1000_buffer*, align 8
  %13 = alloca %struct.e1000_buffer*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.skb_shared_info*, align 8
  %22 = alloca %struct.sk_buff*, align 8
  %23 = alloca i32*, align 8
  store %struct.e1000_ring* %0, %struct.e1000_ring** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %24 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %25 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %24, i32 0, i32 4
  %26 = load %struct.e1000_adapter*, %struct.e1000_adapter** %25, align 8
  store %struct.e1000_adapter* %26, %struct.e1000_adapter** %7, align 8
  %27 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %28 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %27, i32 0, i32 4
  %29 = load %struct.net_device*, %struct.net_device** %28, align 8
  store %struct.net_device* %29, %struct.net_device** %8, align 8
  %30 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %31 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %30, i32 0, i32 3
  %32 = load %struct.pci_dev*, %struct.pci_dev** %31, align 8
  store %struct.pci_dev* %32, %struct.pci_dev** %9, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %33 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %34 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %16, align 4
  %36 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %37 = load i32, i32* %16, align 4
  %38 = call %union.e1000_rx_desc_extended* @E1000_RX_DESC_EXT(%struct.e1000_ring* byval(%struct.e1000_ring) align 8 %36, i32 %37)
  store %union.e1000_rx_desc_extended* %38, %union.e1000_rx_desc_extended** %10, align 8
  %39 = load %union.e1000_rx_desc_extended*, %union.e1000_rx_desc_extended** %10, align 8
  %40 = bitcast %union.e1000_rx_desc_extended* %39 to %struct.TYPE_8__*
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @le32_to_cpu(i32 %43)
  store i32 %44, i32* %15, align 4
  %45 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %46 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %45, i32 0, i32 3
  %47 = load %struct.e1000_buffer*, %struct.e1000_buffer** %46, align 8
  %48 = load i32, i32* %16, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %47, i64 %49
  store %struct.e1000_buffer* %50, %struct.e1000_buffer** %12, align 8
  br label %51

51:                                               ; preds = %332, %3
  %52 = load i32, i32* %15, align 4
  %53 = load i32, i32* @E1000_RXD_STAT_DD, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %341

56:                                               ; preds = %51
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp sge i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %341

62:                                               ; preds = %56
  %63 = load i32*, i32** %5, align 8
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 4
  %66 = call i32 (...) @dma_rmb()
  %67 = load %struct.e1000_buffer*, %struct.e1000_buffer** %12, align 8
  %68 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %67, i32 0, i32 1
  %69 = load %struct.sk_buff*, %struct.sk_buff** %68, align 8
  store %struct.sk_buff* %69, %struct.sk_buff** %22, align 8
  %70 = load %struct.e1000_buffer*, %struct.e1000_buffer** %12, align 8
  %71 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %70, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %71, align 8
  %72 = load i32, i32* %16, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %16, align 4
  %74 = load i32, i32* %16, align 4
  %75 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %76 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %74, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %62
  store i32 0, i32* %16, align 4
  br label %80

80:                                               ; preds = %79, %62
  %81 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %82 = load i32, i32* %16, align 4
  %83 = call %union.e1000_rx_desc_extended* @E1000_RX_DESC_EXT(%struct.e1000_ring* byval(%struct.e1000_ring) align 8 %81, i32 %82)
  store %union.e1000_rx_desc_extended* %83, %union.e1000_rx_desc_extended** %11, align 8
  %84 = load %union.e1000_rx_desc_extended*, %union.e1000_rx_desc_extended** %11, align 8
  %85 = call i32 @prefetch(%union.e1000_rx_desc_extended* %84)
  %86 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %87 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %86, i32 0, i32 3
  %88 = load %struct.e1000_buffer*, %struct.e1000_buffer** %87, align 8
  %89 = load i32, i32* %16, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %88, i64 %90
  store %struct.e1000_buffer* %91, %struct.e1000_buffer** %13, align 8
  store i32 1, i32* %18, align 4
  %92 = load i32, i32* %17, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %17, align 4
  %94 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %95 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %94, i32 0, i32 0
  %96 = load %struct.e1000_buffer*, %struct.e1000_buffer** %12, align 8
  %97 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = load i32, i32* @PAGE_SIZE, align 4
  %100 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %101 = call i32 @dma_unmap_page(i32* %95, i64 %98, i32 %99, i32 %100)
  %102 = load %struct.e1000_buffer*, %struct.e1000_buffer** %12, align 8
  %103 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %102, i32 0, i32 2
  store i64 0, i64* %103, align 8
  %104 = load %union.e1000_rx_desc_extended*, %union.e1000_rx_desc_extended** %10, align 8
  %105 = bitcast %union.e1000_rx_desc_extended* %104 to %struct.TYPE_8__*
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @le16_to_cpu(i32 %108)
  store i32 %109, i32* %14, align 4
  %110 = load i32, i32* %15, align 4
  %111 = load i32, i32* @E1000_RXD_STAT_EOP, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %129

114:                                              ; preds = %80
  %115 = load i32, i32* %15, align 4
  %116 = load i32, i32* @E1000_RXDEXT_ERR_FRAME_ERR_MASK, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %114
  %120 = load %struct.net_device*, %struct.net_device** %8, align 8
  %121 = getelementptr inbounds %struct.net_device, %struct.net_device* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @NETIF_F_RXALL, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  %126 = xor i1 %125, true
  br label %127

127:                                              ; preds = %119, %114
  %128 = phi i1 [ false, %114 ], [ %126, %119 ]
  br label %129

129:                                              ; preds = %127, %80
  %130 = phi i1 [ false, %80 ], [ %128, %127 ]
  %131 = zext i1 %130 to i32
  %132 = call i64 @unlikely(i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %150

134:                                              ; preds = %129
  %135 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %136 = load %struct.e1000_buffer*, %struct.e1000_buffer** %12, align 8
  %137 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %136, i32 0, i32 1
  store %struct.sk_buff* %135, %struct.sk_buff** %137, align 8
  %138 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %139 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %138, i32 0, i32 2
  %140 = load %struct.sk_buff*, %struct.sk_buff** %139, align 8
  %141 = icmp ne %struct.sk_buff* %140, null
  br i1 %141, label %142, label %147

142:                                              ; preds = %134
  %143 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %144 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %143, i32 0, i32 2
  %145 = load %struct.sk_buff*, %struct.sk_buff** %144, align 8
  %146 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %145)
  br label %147

147:                                              ; preds = %142, %134
  %148 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %149 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %148, i32 0, i32 2
  store %struct.sk_buff* null, %struct.sk_buff** %149, align 8
  br label %310

150:                                              ; preds = %129
  %151 = load i32, i32* %15, align 4
  %152 = load i32, i32* @E1000_RXD_STAT_EOP, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %198, label %155

155:                                              ; preds = %150
  %156 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %157 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %156, i32 0, i32 2
  %158 = load %struct.sk_buff*, %struct.sk_buff** %157, align 8
  %159 = icmp ne %struct.sk_buff* %158, null
  br i1 %159, label %172, label %160

160:                                              ; preds = %155
  %161 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %162 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %163 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %162, i32 0, i32 2
  store %struct.sk_buff* %161, %struct.sk_buff** %163, align 8
  %164 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %165 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %164, i32 0, i32 2
  %166 = load %struct.sk_buff*, %struct.sk_buff** %165, align 8
  %167 = load %struct.e1000_buffer*, %struct.e1000_buffer** %12, align 8
  %168 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* %14, align 4
  %171 = call i32 @skb_fill_page_desc(%struct.sk_buff* %166, i32 0, i32 %169, i32 0, i32 %170)
  br label %191

172:                                              ; preds = %155
  %173 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %174 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %173, i32 0, i32 2
  %175 = load %struct.sk_buff*, %struct.sk_buff** %174, align 8
  %176 = call %struct.skb_shared_info* @skb_shinfo(%struct.sk_buff* %175)
  store %struct.skb_shared_info* %176, %struct.skb_shared_info** %21, align 8
  %177 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %178 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %177, i32 0, i32 2
  %179 = load %struct.sk_buff*, %struct.sk_buff** %178, align 8
  %180 = load %struct.skb_shared_info*, %struct.skb_shared_info** %21, align 8
  %181 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.e1000_buffer*, %struct.e1000_buffer** %12, align 8
  %184 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* %14, align 4
  %187 = call i32 @skb_fill_page_desc(%struct.sk_buff* %179, i32 %182, i32 %185, i32 0, i32 %186)
  %188 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %189 = load %struct.e1000_buffer*, %struct.e1000_buffer** %12, align 8
  %190 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %189, i32 0, i32 1
  store %struct.sk_buff* %188, %struct.sk_buff** %190, align 8
  br label %191

191:                                              ; preds = %172, %160
  %192 = load %struct.e1000_buffer*, %struct.e1000_buffer** %12, align 8
  %193 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %194 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %193, i32 0, i32 2
  %195 = load %struct.sk_buff*, %struct.sk_buff** %194, align 8
  %196 = load i32, i32* %14, align 4
  %197 = call i32 @e1000_consume_page(%struct.e1000_buffer* %192, %struct.sk_buff* %195, i32 %196)
  br label %310

198:                                              ; preds = %150
  %199 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %200 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %199, i32 0, i32 2
  %201 = load %struct.sk_buff*, %struct.sk_buff** %200, align 8
  %202 = icmp ne %struct.sk_buff* %201, null
  br i1 %202, label %203, label %231

203:                                              ; preds = %198
  %204 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %205 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %204, i32 0, i32 2
  %206 = load %struct.sk_buff*, %struct.sk_buff** %205, align 8
  %207 = call %struct.skb_shared_info* @skb_shinfo(%struct.sk_buff* %206)
  store %struct.skb_shared_info* %207, %struct.skb_shared_info** %21, align 8
  %208 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %209 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %208, i32 0, i32 2
  %210 = load %struct.sk_buff*, %struct.sk_buff** %209, align 8
  %211 = load %struct.skb_shared_info*, %struct.skb_shared_info** %21, align 8
  %212 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.e1000_buffer*, %struct.e1000_buffer** %12, align 8
  %215 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* %14, align 4
  %218 = call i32 @skb_fill_page_desc(%struct.sk_buff* %210, i32 %213, i32 %216, i32 0, i32 %217)
  %219 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %220 = load %struct.e1000_buffer*, %struct.e1000_buffer** %12, align 8
  %221 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %220, i32 0, i32 1
  store %struct.sk_buff* %219, %struct.sk_buff** %221, align 8
  %222 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %223 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %222, i32 0, i32 2
  %224 = load %struct.sk_buff*, %struct.sk_buff** %223, align 8
  store %struct.sk_buff* %224, %struct.sk_buff** %22, align 8
  %225 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %226 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %225, i32 0, i32 2
  store %struct.sk_buff* null, %struct.sk_buff** %226, align 8
  %227 = load %struct.e1000_buffer*, %struct.e1000_buffer** %12, align 8
  %228 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %229 = load i32, i32* %14, align 4
  %230 = call i32 @e1000_consume_page(%struct.e1000_buffer* %227, %struct.sk_buff* %228, i32 %229)
  br label %267

231:                                              ; preds = %198
  %232 = load i32, i32* %14, align 4
  %233 = load i32, i32* @copybreak, align 4
  %234 = icmp sle i32 %232, %233
  br i1 %234, label %235, label %255

235:                                              ; preds = %231
  %236 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %237 = call i32 @skb_tailroom(%struct.sk_buff* %236)
  %238 = load i32, i32* %14, align 4
  %239 = icmp sge i32 %237, %238
  br i1 %239, label %240, label %255

240:                                              ; preds = %235
  %241 = load %struct.e1000_buffer*, %struct.e1000_buffer** %12, align 8
  %242 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = call i32* @kmap_atomic(i32 %243)
  store i32* %244, i32** %23, align 8
  %245 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %246 = call i32 @skb_tail_pointer(%struct.sk_buff* %245)
  %247 = load i32*, i32** %23, align 8
  %248 = load i32, i32* %14, align 4
  %249 = call i32 @memcpy(i32 %246, i32* %247, i32 %248)
  %250 = load i32*, i32** %23, align 8
  %251 = call i32 @kunmap_atomic(i32* %250)
  %252 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %253 = load i32, i32* %14, align 4
  %254 = call i32 @skb_put(%struct.sk_buff* %252, i32 %253)
  br label %266

255:                                              ; preds = %235, %231
  %256 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %257 = load %struct.e1000_buffer*, %struct.e1000_buffer** %12, align 8
  %258 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = load i32, i32* %14, align 4
  %261 = call i32 @skb_fill_page_desc(%struct.sk_buff* %256, i32 0, i32 %259, i32 0, i32 %260)
  %262 = load %struct.e1000_buffer*, %struct.e1000_buffer** %12, align 8
  %263 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %264 = load i32, i32* %14, align 4
  %265 = call i32 @e1000_consume_page(%struct.e1000_buffer* %262, %struct.sk_buff* %263, i32 %264)
  br label %266

266:                                              ; preds = %255, %240
  br label %267

267:                                              ; preds = %266, %203
  br label %268

268:                                              ; preds = %267
  %269 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %270 = load i32, i32* %15, align 4
  %271 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %272 = call i32 @e1000_rx_checksum(%struct.e1000_adapter* %269, i32 %270, %struct.sk_buff* %271)
  %273 = load %struct.net_device*, %struct.net_device** %8, align 8
  %274 = load %union.e1000_rx_desc_extended*, %union.e1000_rx_desc_extended** %10, align 8
  %275 = bitcast %union.e1000_rx_desc_extended* %274 to %struct.TYPE_8__*
  %276 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %275, i32 0, i32 1
  %277 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 4
  %280 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %281 = call i32 @e1000_rx_hash(%struct.net_device* %273, i32 %279, %struct.sk_buff* %280)
  %282 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %283 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %282, i32 0, i32 0
  %284 = load i64, i64* %283, align 8
  %285 = load i32, i32* %19, align 4
  %286 = zext i32 %285 to i64
  %287 = add nsw i64 %286, %284
  %288 = trunc i64 %287 to i32
  store i32 %288, i32* %19, align 4
  %289 = load i32, i32* %20, align 4
  %290 = add i32 %289, 1
  store i32 %290, i32* %20, align 4
  %291 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %292 = load i32, i32* @ETH_HLEN, align 4
  %293 = call i32 @pskb_may_pull(%struct.sk_buff* %291, i32 %292)
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %299, label %295

295:                                              ; preds = %268
  %296 = call i32 @e_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %297 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %298 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %297)
  br label %310

299:                                              ; preds = %268
  %300 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %301 = load %struct.net_device*, %struct.net_device** %8, align 8
  %302 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %303 = load i32, i32* %15, align 4
  %304 = load %union.e1000_rx_desc_extended*, %union.e1000_rx_desc_extended** %10, align 8
  %305 = bitcast %union.e1000_rx_desc_extended* %304 to %struct.TYPE_8__*
  %306 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %305, i32 0, i32 0
  %307 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  %309 = call i32 @e1000_receive_skb(%struct.e1000_adapter* %300, %struct.net_device* %301, %struct.sk_buff* %302, i32 %303, i32 %308)
  br label %310

310:                                              ; preds = %299, %295, %191, %147
  %311 = call i32 @cpu_to_le32(i32 -256)
  %312 = load %union.e1000_rx_desc_extended*, %union.e1000_rx_desc_extended** %10, align 8
  %313 = bitcast %union.e1000_rx_desc_extended* %312 to %struct.TYPE_8__*
  %314 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %313, i32 0, i32 0
  %315 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 4
  %317 = and i32 %316, %311
  store i32 %317, i32* %315, align 4
  %318 = load i32, i32* %17, align 4
  %319 = load i32, i32* @E1000_RX_BUFFER_WRITE, align 4
  %320 = icmp sge i32 %318, %319
  %321 = zext i1 %320 to i32
  %322 = call i64 @unlikely(i32 %321)
  %323 = icmp ne i64 %322, 0
  br i1 %323, label %324, label %332

324:                                              ; preds = %310
  %325 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %326 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %325, i32 0, i32 2
  %327 = load i32 (%struct.e1000_ring*, i32, i32)*, i32 (%struct.e1000_ring*, i32, i32)** %326, align 8
  %328 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %329 = load i32, i32* %17, align 4
  %330 = load i32, i32* @GFP_ATOMIC, align 4
  %331 = call i32 %327(%struct.e1000_ring* %328, i32 %329, i32 %330)
  store i32 0, i32* %17, align 4
  br label %332

332:                                              ; preds = %324, %310
  %333 = load %union.e1000_rx_desc_extended*, %union.e1000_rx_desc_extended** %11, align 8
  store %union.e1000_rx_desc_extended* %333, %union.e1000_rx_desc_extended** %10, align 8
  %334 = load %struct.e1000_buffer*, %struct.e1000_buffer** %13, align 8
  store %struct.e1000_buffer* %334, %struct.e1000_buffer** %12, align 8
  %335 = load %union.e1000_rx_desc_extended*, %union.e1000_rx_desc_extended** %10, align 8
  %336 = bitcast %union.e1000_rx_desc_extended* %335 to %struct.TYPE_8__*
  %337 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %336, i32 0, i32 0
  %338 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 4
  %340 = call i32 @le32_to_cpu(i32 %339)
  store i32 %340, i32* %15, align 4
  br label %51

341:                                              ; preds = %61, %51
  %342 = load i32, i32* %16, align 4
  %343 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %344 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %343, i32 0, i32 0
  store i32 %342, i32* %344, align 8
  %345 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %346 = call i32 @e1000_desc_unused(%struct.e1000_ring* %345)
  store i32 %346, i32* %17, align 4
  %347 = load i32, i32* %17, align 4
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %357

349:                                              ; preds = %341
  %350 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %351 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %350, i32 0, i32 2
  %352 = load i32 (%struct.e1000_ring*, i32, i32)*, i32 (%struct.e1000_ring*, i32, i32)** %351, align 8
  %353 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %354 = load i32, i32* %17, align 4
  %355 = load i32, i32* @GFP_ATOMIC, align 4
  %356 = call i32 %352(%struct.e1000_ring* %353, i32 %354, i32 %355)
  br label %357

357:                                              ; preds = %349, %341
  %358 = load i32, i32* %19, align 4
  %359 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %360 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %359, i32 0, i32 0
  %361 = load i32, i32* %360, align 8
  %362 = add i32 %361, %358
  store i32 %362, i32* %360, align 8
  %363 = load i32, i32* %20, align 4
  %364 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %365 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %364, i32 0, i32 1
  %366 = load i32, i32* %365, align 4
  %367 = add i32 %366, %363
  store i32 %367, i32* %365, align 4
  %368 = load i32, i32* %18, align 4
  ret i32 %368
}

declare dso_local %union.e1000_rx_desc_extended* @E1000_RX_DESC_EXT(%struct.e1000_ring* byval(%struct.e1000_ring) align 8, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dma_rmb(...) #1

declare dso_local i32 @prefetch(%union.e1000_rx_desc_extended*) #1

declare dso_local i32 @dma_unmap_page(i32*, i64, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_kfree_skb_irq(%struct.sk_buff*) #1

declare dso_local i32 @skb_fill_page_desc(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local %struct.skb_shared_info* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @e1000_consume_page(%struct.e1000_buffer*, %struct.sk_buff*, i32) #1

declare dso_local i32 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local i32* @kmap_atomic(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local i32 @kunmap_atomic(i32*) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @e1000_rx_checksum(%struct.e1000_adapter*, i32, %struct.sk_buff*) #1

declare dso_local i32 @e1000_rx_hash(%struct.net_device*, i32, %struct.sk_buff*) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @e_err(i8*) #1

declare dso_local i32 @e1000_receive_skb(%struct.e1000_adapter*, %struct.net_device*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @e1000_desc_unused(%struct.e1000_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
