; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcmsysport.c_bcm_sysport_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcmsysport.c_bcm_sysport_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64, i32 }
%struct.net_device = type { i32 }
%struct.bcm_sysport_priv = type { %struct.TYPE_4__, i64, %struct.bcm_sysport_tx_ring*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.bcm_sysport_tx_ring = type { i64, i64, i64, i32, i32, %struct.bcm_sysport_cb* }
%struct.bcm_sysport_cb = type { %struct.sk_buff* }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }
%struct.netdev_queue = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"queue %d awake and ring full!\0A\00", align 1
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@tx_err = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"DMA map failed at %p (len=%d)\0A\00", align 1
@dma_addr = common dso_local global i32 0, align 4
@dma_len = common dso_local global i32 0, align 4
@DESC_ADDR_HI_MASK = common dso_local global i32 0, align 4
@DESC_LEN_SHIFT = common dso_local global i32 0, align 4
@DESC_SOP = common dso_local global i32 0, align 4
@DESC_EOP = common dso_local global i32 0, align 4
@TX_STATUS_APP_CRC = common dso_local global i32 0, align 4
@DESC_STATUS_SHIFT = common dso_local global i32 0, align 4
@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@DESC_L4_CSUM = common dso_local global i32 0, align 4
@tx_queued = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"ring=%d desc_count=%d, curr_desc=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @bcm_sysport_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_sysport_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.bcm_sysport_priv*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.bcm_sysport_tx_ring*, align 8
  %8 = alloca %struct.bcm_sysport_cb*, align 8
  %9 = alloca %struct.netdev_queue*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %17 = load %struct.net_device*, %struct.net_device** %4, align 8
  %18 = call %struct.bcm_sysport_priv* @netdev_priv(%struct.net_device* %17)
  store %struct.bcm_sysport_priv* %18, %struct.bcm_sysport_priv** %5, align 8
  %19 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %5, align 8
  %20 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %19, i32 0, i32 3
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store %struct.device* %22, %struct.device** %6, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %24 = call i64 @skb_get_queue_mapping(%struct.sk_buff* %23)
  store i64 %24, i64* %15, align 8
  %25 = load %struct.net_device*, %struct.net_device** %4, align 8
  %26 = load i64, i64* %15, align 8
  %27 = call %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device* %25, i64 %26)
  store %struct.netdev_queue* %27, %struct.netdev_queue** %9, align 8
  %28 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %5, align 8
  %29 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %28, i32 0, i32 2
  %30 = load %struct.bcm_sysport_tx_ring*, %struct.bcm_sysport_tx_ring** %29, align 8
  %31 = load i64, i64* %15, align 8
  %32 = getelementptr inbounds %struct.bcm_sysport_tx_ring, %struct.bcm_sysport_tx_ring* %30, i64 %31
  store %struct.bcm_sysport_tx_ring* %32, %struct.bcm_sysport_tx_ring** %7, align 8
  %33 = load %struct.bcm_sysport_tx_ring*, %struct.bcm_sysport_tx_ring** %7, align 8
  %34 = getelementptr inbounds %struct.bcm_sysport_tx_ring, %struct.bcm_sysport_tx_ring* %33, i32 0, i32 3
  %35 = load i64, i64* %13, align 8
  %36 = call i32 @spin_lock_irqsave(i32* %34, i64 %35)
  %37 = load %struct.bcm_sysport_tx_ring*, %struct.bcm_sysport_tx_ring** %7, align 8
  %38 = getelementptr inbounds %struct.bcm_sysport_tx_ring, %struct.bcm_sysport_tx_ring* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %2
  %45 = load %struct.netdev_queue*, %struct.netdev_queue** %9, align 8
  %46 = call i32 @netif_tx_stop_queue(%struct.netdev_queue* %45)
  %47 = load %struct.net_device*, %struct.net_device** %4, align 8
  %48 = load i64, i64* %15, align 8
  %49 = call i32 @netdev_err(%struct.net_device* %47, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %48)
  %50 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %50, i32* %16, align 4
  br label %201

51:                                               ; preds = %2
  %52 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %5, align 8
  %53 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %51
  %57 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %58 = load %struct.net_device*, %struct.net_device** %4, align 8
  %59 = call %struct.sk_buff* @bcm_sysport_insert_tsb(%struct.sk_buff* %57, %struct.net_device* %58)
  store %struct.sk_buff* %59, %struct.sk_buff** %3, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %61 = icmp ne %struct.sk_buff* %60, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %56
  %63 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %63, i32* %16, align 4
  br label %201

64:                                               ; preds = %56
  br label %65

65:                                               ; preds = %64, %51
  %66 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %67 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %12, align 4
  %69 = load %struct.device*, %struct.device** %6, align 8
  %70 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %71 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* @DMA_TO_DEVICE, align 4
  %75 = call i32 @dma_map_single(%struct.device* %69, i32 %72, i32 %73, i32 %74)
  store i32 %75, i32* %14, align 4
  %76 = load %struct.device*, %struct.device** %6, align 8
  %77 = load i32, i32* %14, align 4
  %78 = call i64 @dma_mapping_error(%struct.device* %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %95

80:                                               ; preds = %65
  %81 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %5, align 8
  %82 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 8
  %86 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %5, align 8
  %87 = load i32, i32* @tx_err, align 4
  %88 = load %struct.net_device*, %struct.net_device** %4, align 8
  %89 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %90 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %12, align 4
  %93 = call i32 @netif_err(%struct.bcm_sysport_priv* %86, i32 %87, %struct.net_device* %88, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %91, i32 %92)
  %94 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %94, i32* %16, align 4
  br label %201

95:                                               ; preds = %65
  %96 = load %struct.bcm_sysport_tx_ring*, %struct.bcm_sysport_tx_ring** %7, align 8
  %97 = getelementptr inbounds %struct.bcm_sysport_tx_ring, %struct.bcm_sysport_tx_ring* %96, i32 0, i32 5
  %98 = load %struct.bcm_sysport_cb*, %struct.bcm_sysport_cb** %97, align 8
  %99 = load %struct.bcm_sysport_tx_ring*, %struct.bcm_sysport_tx_ring** %7, align 8
  %100 = getelementptr inbounds %struct.bcm_sysport_tx_ring, %struct.bcm_sysport_tx_ring* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds %struct.bcm_sysport_cb, %struct.bcm_sysport_cb* %98, i64 %101
  store %struct.bcm_sysport_cb* %102, %struct.bcm_sysport_cb** %8, align 8
  %103 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %104 = load %struct.bcm_sysport_cb*, %struct.bcm_sysport_cb** %8, align 8
  %105 = getelementptr inbounds %struct.bcm_sysport_cb, %struct.bcm_sysport_cb* %104, i32 0, i32 0
  store %struct.sk_buff* %103, %struct.sk_buff** %105, align 8
  %106 = load %struct.bcm_sysport_cb*, %struct.bcm_sysport_cb** %8, align 8
  %107 = load i32, i32* @dma_addr, align 4
  %108 = load i32, i32* %14, align 4
  %109 = call i32 @dma_unmap_addr_set(%struct.bcm_sysport_cb* %106, i32 %107, i32 %108)
  %110 = load %struct.bcm_sysport_cb*, %struct.bcm_sysport_cb** %8, align 8
  %111 = load i32, i32* @dma_len, align 4
  %112 = load i32, i32* %12, align 4
  %113 = call i32 @dma_unmap_len_set(%struct.bcm_sysport_cb* %110, i32 %111, i32 %112)
  %114 = load i32, i32* %14, align 4
  %115 = call i32 @lower_32_bits(i32 %114)
  store i32 %115, i32* %11, align 4
  %116 = load i32, i32* %14, align 4
  %117 = call i32 @upper_32_bits(i32 %116)
  %118 = load i32, i32* @DESC_ADDR_HI_MASK, align 4
  %119 = and i32 %117, %118
  store i32 %119, i32* %10, align 4
  %120 = load i32, i32* %12, align 4
  %121 = load i32, i32* @DESC_LEN_SHIFT, align 4
  %122 = shl i32 %120, %121
  %123 = load i32, i32* %10, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %10, align 4
  %125 = load i32, i32* @DESC_SOP, align 4
  %126 = load i32, i32* @DESC_EOP, align 4
  %127 = or i32 %125, %126
  %128 = load i32, i32* @TX_STATUS_APP_CRC, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* @DESC_STATUS_SHIFT, align 4
  %131 = shl i32 %129, %130
  %132 = load i32, i32* %10, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %10, align 4
  %134 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %135 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %145

139:                                              ; preds = %95
  %140 = load i32, i32* @DESC_L4_CSUM, align 4
  %141 = load i32, i32* @DESC_STATUS_SHIFT, align 4
  %142 = shl i32 %140, %141
  %143 = load i32, i32* %10, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %10, align 4
  br label %145

145:                                              ; preds = %139, %95
  %146 = load %struct.bcm_sysport_tx_ring*, %struct.bcm_sysport_tx_ring** %7, align 8
  %147 = getelementptr inbounds %struct.bcm_sysport_tx_ring, %struct.bcm_sysport_tx_ring* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = add i64 %148, 1
  store i64 %149, i64* %147, align 8
  %150 = load %struct.bcm_sysport_tx_ring*, %struct.bcm_sysport_tx_ring** %7, align 8
  %151 = getelementptr inbounds %struct.bcm_sysport_tx_ring, %struct.bcm_sysport_tx_ring* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.bcm_sysport_tx_ring*, %struct.bcm_sysport_tx_ring** %7, align 8
  %154 = getelementptr inbounds %struct.bcm_sysport_tx_ring, %struct.bcm_sysport_tx_ring* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = icmp eq i64 %152, %155
  br i1 %156, label %157, label %160

157:                                              ; preds = %145
  %158 = load %struct.bcm_sysport_tx_ring*, %struct.bcm_sysport_tx_ring** %7, align 8
  %159 = getelementptr inbounds %struct.bcm_sysport_tx_ring, %struct.bcm_sysport_tx_ring* %158, i32 0, i32 1
  store i64 0, i64* %159, align 8
  br label %160

160:                                              ; preds = %157, %145
  %161 = load %struct.bcm_sysport_tx_ring*, %struct.bcm_sysport_tx_ring** %7, align 8
  %162 = getelementptr inbounds %struct.bcm_sysport_tx_ring, %struct.bcm_sysport_tx_ring* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = add nsw i64 %163, -1
  store i64 %164, i64* %162, align 8
  %165 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %5, align 8
  %166 = load i32, i32* %10, align 4
  %167 = load %struct.bcm_sysport_tx_ring*, %struct.bcm_sysport_tx_ring** %7, align 8
  %168 = getelementptr inbounds %struct.bcm_sysport_tx_ring, %struct.bcm_sysport_tx_ring* %167, i32 0, i32 4
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @TDMA_WRITE_PORT_HI(i32 %169)
  %171 = call i32 @tdma_writel(%struct.bcm_sysport_priv* %165, i32 %166, i32 %170)
  %172 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %5, align 8
  %173 = load i32, i32* %11, align 4
  %174 = load %struct.bcm_sysport_tx_ring*, %struct.bcm_sysport_tx_ring** %7, align 8
  %175 = getelementptr inbounds %struct.bcm_sysport_tx_ring, %struct.bcm_sysport_tx_ring* %174, i32 0, i32 4
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @TDMA_WRITE_PORT_LO(i32 %176)
  %178 = call i32 @tdma_writel(%struct.bcm_sysport_priv* %172, i32 %173, i32 %177)
  %179 = load %struct.bcm_sysport_tx_ring*, %struct.bcm_sysport_tx_ring** %7, align 8
  %180 = getelementptr inbounds %struct.bcm_sysport_tx_ring, %struct.bcm_sysport_tx_ring* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = icmp eq i64 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %160
  %184 = load %struct.netdev_queue*, %struct.netdev_queue** %9, align 8
  %185 = call i32 @netif_tx_stop_queue(%struct.netdev_queue* %184)
  br label %186

186:                                              ; preds = %183, %160
  %187 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %5, align 8
  %188 = load i32, i32* @tx_queued, align 4
  %189 = load %struct.net_device*, %struct.net_device** %4, align 8
  %190 = load %struct.bcm_sysport_tx_ring*, %struct.bcm_sysport_tx_ring** %7, align 8
  %191 = getelementptr inbounds %struct.bcm_sysport_tx_ring, %struct.bcm_sysport_tx_ring* %190, i32 0, i32 4
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.bcm_sysport_tx_ring*, %struct.bcm_sysport_tx_ring** %7, align 8
  %194 = getelementptr inbounds %struct.bcm_sysport_tx_ring, %struct.bcm_sysport_tx_ring* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load %struct.bcm_sysport_tx_ring*, %struct.bcm_sysport_tx_ring** %7, align 8
  %197 = getelementptr inbounds %struct.bcm_sysport_tx_ring, %struct.bcm_sysport_tx_ring* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = call i32 @netif_dbg(%struct.bcm_sysport_priv* %187, i32 %188, %struct.net_device* %189, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %192, i64 %195, i64 %198)
  %200 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %200, i32* %16, align 4
  br label %201

201:                                              ; preds = %186, %80, %62, %44
  %202 = load %struct.bcm_sysport_tx_ring*, %struct.bcm_sysport_tx_ring** %7, align 8
  %203 = getelementptr inbounds %struct.bcm_sysport_tx_ring, %struct.bcm_sysport_tx_ring* %202, i32 0, i32 3
  %204 = load i64, i64* %13, align 8
  %205 = call i32 @spin_unlock_irqrestore(i32* %203, i64 %204)
  %206 = load i32, i32* %16, align 4
  ret i32 %206
}

declare dso_local %struct.bcm_sysport_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device*, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netif_tx_stop_queue(%struct.netdev_queue*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i64) #1

declare dso_local %struct.sk_buff* @bcm_sysport_insert_tsb(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @dma_map_single(%struct.device*, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i32) #1

declare dso_local i32 @netif_err(%struct.bcm_sysport_priv*, i32, %struct.net_device*, i8*, i32, i32) #1

declare dso_local i32 @dma_unmap_addr_set(%struct.bcm_sysport_cb*, i32, i32) #1

declare dso_local i32 @dma_unmap_len_set(%struct.bcm_sysport_cb*, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @tdma_writel(%struct.bcm_sysport_priv*, i32, i32) #1

declare dso_local i32 @TDMA_WRITE_PORT_HI(i32) #1

declare dso_local i32 @TDMA_WRITE_PORT_LO(i32) #1

declare dso_local i32 @netif_dbg(%struct.bcm_sysport_priv*, i32, %struct.net_device*, i8*, i32, i64, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
