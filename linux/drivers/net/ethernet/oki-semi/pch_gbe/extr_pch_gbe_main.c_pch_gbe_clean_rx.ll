; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/oki-semi/pch_gbe/extr_pch_gbe_main.c_pch_gbe_clean_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/oki-semi/pch_gbe/extr_pch_gbe_main.c_pch_gbe_clean_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pch_gbe_adapter = type { i32, %struct.TYPE_2__, %struct.pci_dev*, %struct.net_device* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.pch_gbe_rx_ring = type { i32, i32, %struct.pch_gbe_buffer* }
%struct.pch_gbe_buffer = type { i32, i32, i32, i32, %struct.sk_buff* }
%struct.sk_buff = type { i32, i32, i32 }
%struct.pch_gbe_rx_desc = type { i64, i32, i32, i32 }

@DSC_INIT16 = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"RxDecNo = 0x%04x  Status[DMA:0x%02x GBE:0x%04x TCP:0x%08x]  BufInf = 0x%p\0A\00", align 1
@PCH_GBE_RXD_GMAC_STAT_NOTOCTAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Receive Not Octal Error\0A\00", align 1
@PCH_GBE_RXD_GMAC_STAT_NBLERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Receive Nibble Error\0A\00", align 1
@PCH_GBE_RXD_GMAC_STAT_CRCERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"Receive CRC Error\0A\00", align 1
@ETH_FCS_LEN = common dso_local global i32 0, align 4
@PCH_GBE_RXD_GMAC_STAT_MARMLT = common dso_local global i32 0, align 4
@PCH_GBE_RXD_ACC_STAT_TCPIPOK = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@CHECKSUM_NONE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"Receive skb->ip_summed: %d length: %d\0A\00", align 1
@PCH_GBE_RX_BUFFER_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pch_gbe_adapter*, %struct.pch_gbe_rx_ring*, i32*, i32)* @pch_gbe_clean_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pch_gbe_clean_rx(%struct.pch_gbe_adapter* %0, %struct.pch_gbe_rx_ring* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.pch_gbe_adapter*, align 8
  %6 = alloca %struct.pch_gbe_rx_ring*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.pci_dev*, align 8
  %11 = alloca %struct.pch_gbe_buffer*, align 8
  %12 = alloca %struct.pch_gbe_rx_desc*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.sk_buff*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.pch_gbe_adapter* %0, %struct.pch_gbe_adapter** %5, align 8
  store %struct.pch_gbe_rx_ring* %1, %struct.pch_gbe_rx_ring** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %21 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %5, align 8
  %22 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %21, i32 0, i32 3
  %23 = load %struct.net_device*, %struct.net_device** %22, align 8
  store %struct.net_device* %23, %struct.net_device** %9, align 8
  %24 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %5, align 8
  %25 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %24, i32 0, i32 2
  %26 = load %struct.pci_dev*, %struct.pci_dev** %25, align 8
  store %struct.pci_dev* %26, %struct.pci_dev** %10, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %27 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %6, align 8
  %28 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %14, align 4
  br label %30

30:                                               ; preds = %242, %4
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %243

35:                                               ; preds = %30
  %36 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %6, align 8
  %37 = load i32, i32* %14, align 4
  %38 = bitcast %struct.pch_gbe_rx_ring* %36 to { i64, %struct.pch_gbe_buffer* }*
  %39 = getelementptr inbounds { i64, %struct.pch_gbe_buffer* }, { i64, %struct.pch_gbe_buffer* }* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds { i64, %struct.pch_gbe_buffer* }, { i64, %struct.pch_gbe_buffer* }* %38, i32 0, i32 1
  %42 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %41, align 8
  %43 = call %struct.pch_gbe_rx_desc* @PCH_GBE_RX_DESC(i64 %40, %struct.pch_gbe_buffer* %42, i32 %37)
  store %struct.pch_gbe_rx_desc* %43, %struct.pch_gbe_rx_desc** %12, align 8
  %44 = load %struct.pch_gbe_rx_desc*, %struct.pch_gbe_rx_desc** %12, align 8
  %45 = getelementptr inbounds %struct.pch_gbe_rx_desc, %struct.pch_gbe_rx_desc* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @DSC_INIT16, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %35
  br label %243

50:                                               ; preds = %35
  store i32 1, i32* %16, align 4
  %51 = load i32, i32* %15, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %15, align 4
  %53 = load %struct.pch_gbe_rx_desc*, %struct.pch_gbe_rx_desc** %12, align 8
  %54 = getelementptr inbounds %struct.pch_gbe_rx_desc, %struct.pch_gbe_rx_desc* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %18, align 4
  %56 = load %struct.pch_gbe_rx_desc*, %struct.pch_gbe_rx_desc** %12, align 8
  %57 = getelementptr inbounds %struct.pch_gbe_rx_desc, %struct.pch_gbe_rx_desc* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %19, align 4
  %60 = load %struct.pch_gbe_rx_desc*, %struct.pch_gbe_rx_desc** %12, align 8
  %61 = getelementptr inbounds %struct.pch_gbe_rx_desc, %struct.pch_gbe_rx_desc* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  store i32 %62, i32* %20, align 4
  %63 = load i64, i64* @DSC_INIT16, align 8
  %64 = load %struct.pch_gbe_rx_desc*, %struct.pch_gbe_rx_desc** %12, align 8
  %65 = getelementptr inbounds %struct.pch_gbe_rx_desc, %struct.pch_gbe_rx_desc* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  %66 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %6, align 8
  %67 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %66, i32 0, i32 2
  %68 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %67, align 8
  %69 = load i32, i32* %14, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.pch_gbe_buffer, %struct.pch_gbe_buffer* %68, i64 %70
  store %struct.pch_gbe_buffer* %71, %struct.pch_gbe_buffer** %11, align 8
  %72 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %11, align 8
  %73 = getelementptr inbounds %struct.pch_gbe_buffer, %struct.pch_gbe_buffer* %72, i32 0, i32 4
  %74 = load %struct.sk_buff*, %struct.sk_buff** %73, align 8
  store %struct.sk_buff* %74, %struct.sk_buff** %17, align 8
  %75 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %11, align 8
  %76 = getelementptr inbounds %struct.pch_gbe_buffer, %struct.pch_gbe_buffer* %75, i32 0, i32 4
  store %struct.sk_buff* null, %struct.sk_buff** %76, align 8
  %77 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %78 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %77, i32 0, i32 0
  %79 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %11, align 8
  %80 = getelementptr inbounds %struct.pch_gbe_buffer, %struct.pch_gbe_buffer* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %11, align 8
  %83 = getelementptr inbounds %struct.pch_gbe_buffer, %struct.pch_gbe_buffer* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %86 = call i32 @dma_unmap_single(i32* %78, i32 %81, i32 %84, i32 %85)
  %87 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %11, align 8
  %88 = getelementptr inbounds %struct.pch_gbe_buffer, %struct.pch_gbe_buffer* %87, i32 0, i32 0
  store i32 0, i32* %88, align 8
  %89 = load %struct.net_device*, %struct.net_device** %9, align 8
  %90 = load i32, i32* %14, align 4
  %91 = load i32, i32* %18, align 4
  %92 = load i32, i32* %19, align 4
  %93 = load i32, i32* %20, align 4
  %94 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %11, align 8
  %95 = call i32 (%struct.net_device*, i8*, i32, i32, ...) @netdev_dbg(%struct.net_device* %89, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 %90, i32 %91, i32 %92, i32 %93, %struct.pch_gbe_buffer* %94)
  %96 = load i32, i32* %19, align 4
  %97 = load i32, i32* @PCH_GBE_RXD_GMAC_STAT_NOTOCTAL, align 4
  %98 = and i32 %96, %97
  %99 = call i64 @unlikely(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %50
  %102 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %5, align 8
  %103 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %104, align 4
  %107 = load %struct.net_device*, %struct.net_device** %9, align 8
  %108 = call i32 @netdev_err(%struct.net_device* %107, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %222

109:                                              ; preds = %50
  %110 = load i32, i32* %19, align 4
  %111 = load i32, i32* @PCH_GBE_RXD_GMAC_STAT_NBLERR, align 4
  %112 = and i32 %110, %111
  %113 = call i64 @unlikely(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %109
  %116 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %5, align 8
  %117 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %118, align 4
  %121 = load %struct.net_device*, %struct.net_device** %9, align 8
  %122 = call i32 @netdev_err(%struct.net_device* %121, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %221

123:                                              ; preds = %109
  %124 = load i32, i32* %19, align 4
  %125 = load i32, i32* @PCH_GBE_RXD_GMAC_STAT_CRCERR, align 4
  %126 = and i32 %124, %125
  %127 = call i64 @unlikely(i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %137

129:                                              ; preds = %123
  %130 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %5, align 8
  %131 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %132, align 4
  %135 = load %struct.net_device*, %struct.net_device** %9, align 8
  %136 = call i32 @netdev_err(%struct.net_device* %135, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %220

137:                                              ; preds = %123
  %138 = load %struct.pch_gbe_rx_desc*, %struct.pch_gbe_rx_desc** %12, align 8
  %139 = getelementptr inbounds %struct.pch_gbe_rx_desc, %struct.pch_gbe_rx_desc* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = sub nsw i32 %140, 3
  %142 = load i32, i32* @ETH_FCS_LEN, align 4
  %143 = sub nsw i32 %141, %142
  store i32 %143, i32* %13, align 4
  %144 = load %struct.pch_gbe_rx_desc*, %struct.pch_gbe_rx_desc** %12, align 8
  %145 = getelementptr inbounds %struct.pch_gbe_rx_desc, %struct.pch_gbe_rx_desc* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = and i32 %146, 2
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %137
  %150 = load i32, i32* %13, align 4
  %151 = sub nsw i32 %150, 4
  store i32 %151, i32* %13, align 4
  br label %152

152:                                              ; preds = %149, %137
  %153 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %154 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %11, align 8
  %157 = getelementptr inbounds %struct.pch_gbe_buffer, %struct.pch_gbe_buffer* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %13, align 4
  %160 = call i32 @memcpy(i32 %155, i32 %158, i32 %159)
  %161 = load i32, i32* %13, align 4
  %162 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %5, align 8
  %163 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = add nsw i32 %165, %161
  store i32 %166, i32* %164, align 4
  %167 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %5, align 8
  %168 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %169, align 4
  %172 = load i32, i32* %19, align 4
  %173 = load i32, i32* @PCH_GBE_RXD_GMAC_STAT_MARMLT, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %182

176:                                              ; preds = %152
  %177 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %5, align 8
  %178 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %179, align 4
  br label %182

182:                                              ; preds = %176, %152
  %183 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %184 = load i32, i32* %13, align 4
  %185 = call i32 @skb_put(%struct.sk_buff* %183, i32 %184)
  %186 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %5, align 8
  %187 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %188 = call i32 @pch_rx_timestamp(%struct.pch_gbe_adapter* %186, %struct.sk_buff* %187)
  %189 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %190 = load %struct.net_device*, %struct.net_device** %9, align 8
  %191 = call i32 @eth_type_trans(%struct.sk_buff* %189, %struct.net_device* %190)
  %192 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %193 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %192, i32 0, i32 1
  store i32 %191, i32* %193, align 4
  %194 = load i32, i32* %20, align 4
  %195 = load i32, i32* @PCH_GBE_RXD_ACC_STAT_TCPIPOK, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %202

198:                                              ; preds = %182
  %199 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %200 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %201 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %200, i32 0, i32 0
  store i32 %199, i32* %201, align 4
  br label %206

202:                                              ; preds = %182
  %203 = load i32, i32* @CHECKSUM_NONE, align 4
  %204 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %205 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %204, i32 0, i32 0
  store i32 %203, i32* %205, align 4
  br label %206

206:                                              ; preds = %202, %198
  %207 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %5, align 8
  %208 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %207, i32 0, i32 0
  %209 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %210 = call i32 @napi_gro_receive(i32* %208, %struct.sk_buff* %209)
  %211 = load i32*, i32** %7, align 8
  %212 = load i32, i32* %211, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %211, align 4
  %214 = load %struct.net_device*, %struct.net_device** %9, align 8
  %215 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %216 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* %13, align 4
  %219 = call i32 (%struct.net_device*, i8*, i32, i32, ...) @netdev_dbg(%struct.net_device* %214, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %217, i32 %218)
  br label %220

220:                                              ; preds = %206, %129
  br label %221

221:                                              ; preds = %220, %115
  br label %222

222:                                              ; preds = %221, %101
  %223 = load i32, i32* %15, align 4
  %224 = load i32, i32* @PCH_GBE_RX_BUFFER_WRITE, align 4
  %225 = icmp uge i32 %223, %224
  %226 = zext i1 %225 to i32
  %227 = call i64 @unlikely(i32 %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %234

229:                                              ; preds = %222
  %230 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %5, align 8
  %231 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %6, align 8
  %232 = load i32, i32* %15, align 4
  %233 = call i32 @pch_gbe_alloc_rx_buffers(%struct.pch_gbe_adapter* %230, %struct.pch_gbe_rx_ring* %231, i32 %232)
  store i32 0, i32* %15, align 4
  br label %234

234:                                              ; preds = %229, %222
  %235 = load i32, i32* %14, align 4
  %236 = add i32 %235, 1
  store i32 %236, i32* %14, align 4
  %237 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %6, align 8
  %238 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = icmp eq i32 %236, %239
  br i1 %240, label %241, label %242

241:                                              ; preds = %234
  store i32 0, i32* %14, align 4
  br label %242

242:                                              ; preds = %241, %234
  br label %30

243:                                              ; preds = %49, %30
  %244 = load i32, i32* %14, align 4
  %245 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %6, align 8
  %246 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %245, i32 0, i32 0
  store i32 %244, i32* %246, align 8
  %247 = load i32, i32* %15, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %254

249:                                              ; preds = %243
  %250 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %5, align 8
  %251 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %6, align 8
  %252 = load i32, i32* %15, align 4
  %253 = call i32 @pch_gbe_alloc_rx_buffers(%struct.pch_gbe_adapter* %250, %struct.pch_gbe_rx_ring* %251, i32 %252)
  br label %254

254:                                              ; preds = %249, %243
  %255 = load i32, i32* %16, align 4
  ret i32 %255
}

declare dso_local %struct.pch_gbe_rx_desc* @PCH_GBE_RX_DESC(i64, %struct.pch_gbe_buffer*, i32) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, i32, i32, ...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @pch_rx_timestamp(%struct.pch_gbe_adapter*, %struct.sk_buff*) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @napi_gro_receive(i32*, %struct.sk_buff*) #1

declare dso_local i32 @pch_gbe_alloc_rx_buffers(%struct.pch_gbe_adapter*, %struct.pch_gbe_rx_ring*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
