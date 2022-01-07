; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgb/extr_ixgb_main.c_ixgb_clean_rx_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgb/extr_ixgb_main.c_ixgb_clean_rx_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgb_rx_desc = type { i32, i32, i64, i64, i64, %struct.sk_buff* }
%struct.sk_buff = type { i32, %struct.ixgb_rx_desc* }
%struct.ixgb_adapter = type { i32, %struct.pci_dev*, %struct.net_device*, %struct.ixgb_desc_ring }
%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.ixgb_desc_ring = type { i32, i32, %struct.ixgb_rx_desc* }
%struct.ixgb_buffer = type { i32, i32, i64, i64, i64, %struct.sk_buff* }

@IXGB_RX_DESC_STATUS_DD = common dso_local global i32 0, align 4
@NET_IP_ALIGN = common dso_local global %struct.ixgb_rx_desc* null, align 8
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@IXGB_RX_DESC_STATUS_EOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Receive packet consumed multiple buffers length<%x>\0A\00", align 1
@IXGB_RX_DESC_ERRORS_CE = common dso_local global i32 0, align 4
@IXGB_RX_DESC_ERRORS_SE = common dso_local global i32 0, align 4
@IXGB_RX_DESC_ERRORS_P = common dso_local global i32 0, align 4
@IXGB_RX_DESC_ERRORS_RXE = common dso_local global i32 0, align 4
@IXGB_RX_DESC_STATUS_VP = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@IXGB_RX_BUFFER_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgb_adapter*, i32*, i32)* @ixgb_clean_rx_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgb_clean_rx_irq(%struct.ixgb_adapter* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.ixgb_adapter*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ixgb_desc_ring*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.pci_dev*, align 8
  %10 = alloca %struct.ixgb_rx_desc*, align 8
  %11 = alloca %struct.ixgb_rx_desc*, align 8
  %12 = alloca %struct.ixgb_buffer*, align 8
  %13 = alloca %struct.ixgb_buffer*, align 8
  %14 = alloca %struct.ixgb_buffer*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.sk_buff*, align 8
  %21 = alloca i32, align 4
  store %struct.ixgb_adapter* %0, %struct.ixgb_adapter** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %22 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %4, align 8
  %23 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %22, i32 0, i32 3
  store %struct.ixgb_desc_ring* %23, %struct.ixgb_desc_ring** %7, align 8
  %24 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %4, align 8
  %25 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %24, i32 0, i32 2
  %26 = load %struct.net_device*, %struct.net_device** %25, align 8
  store %struct.net_device* %26, %struct.net_device** %8, align 8
  %27 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %4, align 8
  %28 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %27, i32 0, i32 1
  %29 = load %struct.pci_dev*, %struct.pci_dev** %28, align 8
  store %struct.pci_dev* %29, %struct.pci_dev** %9, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %30 = load %struct.ixgb_desc_ring*, %struct.ixgb_desc_ring** %7, align 8
  %31 = getelementptr inbounds %struct.ixgb_desc_ring, %struct.ixgb_desc_ring* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %16, align 4
  %33 = load %struct.ixgb_desc_ring*, %struct.ixgb_desc_ring** %7, align 8
  %34 = load i32, i32* %16, align 4
  %35 = bitcast %struct.ixgb_desc_ring* %33 to { i64, %struct.ixgb_rx_desc* }*
  %36 = getelementptr inbounds { i64, %struct.ixgb_rx_desc* }, { i64, %struct.ixgb_rx_desc* }* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds { i64, %struct.ixgb_rx_desc* }, { i64, %struct.ixgb_rx_desc* }* %35, i32 0, i32 1
  %39 = load %struct.ixgb_rx_desc*, %struct.ixgb_rx_desc** %38, align 8
  %40 = call %struct.ixgb_rx_desc* @IXGB_RX_DESC(i64 %37, %struct.ixgb_rx_desc* %39, i32 %34)
  store %struct.ixgb_rx_desc* %40, %struct.ixgb_rx_desc** %10, align 8
  %41 = load %struct.ixgb_desc_ring*, %struct.ixgb_desc_ring** %7, align 8
  %42 = getelementptr inbounds %struct.ixgb_desc_ring, %struct.ixgb_desc_ring* %41, i32 0, i32 2
  %43 = load %struct.ixgb_rx_desc*, %struct.ixgb_rx_desc** %42, align 8
  %44 = load i32, i32* %16, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.ixgb_rx_desc, %struct.ixgb_rx_desc* %43, i64 %45
  %47 = bitcast %struct.ixgb_rx_desc* %46 to %struct.ixgb_buffer*
  store %struct.ixgb_buffer* %47, %struct.ixgb_buffer** %12, align 8
  br label %48

48:                                               ; preds = %226, %3
  %49 = load %struct.ixgb_rx_desc*, %struct.ixgb_rx_desc** %10, align 8
  %50 = getelementptr inbounds %struct.ixgb_rx_desc, %struct.ixgb_rx_desc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @IXGB_RX_DESC_STATUS_DD, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %229

55:                                               ; preds = %48
  %56 = load i32*, i32** %5, align 8
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp sge i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %229

61:                                               ; preds = %55
  %62 = load i32*, i32** %5, align 8
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  %65 = call i32 (...) @rmb()
  %66 = load %struct.ixgb_rx_desc*, %struct.ixgb_rx_desc** %10, align 8
  %67 = getelementptr inbounds %struct.ixgb_rx_desc, %struct.ixgb_rx_desc* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %21, align 4
  %69 = load %struct.ixgb_buffer*, %struct.ixgb_buffer** %12, align 8
  %70 = getelementptr inbounds %struct.ixgb_buffer, %struct.ixgb_buffer* %69, i32 0, i32 5
  %71 = load %struct.sk_buff*, %struct.sk_buff** %70, align 8
  store %struct.sk_buff* %71, %struct.sk_buff** %20, align 8
  %72 = load %struct.ixgb_buffer*, %struct.ixgb_buffer** %12, align 8
  %73 = getelementptr inbounds %struct.ixgb_buffer, %struct.ixgb_buffer* %72, i32 0, i32 5
  store %struct.sk_buff* null, %struct.sk_buff** %73, align 8
  %74 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %75 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %74, i32 0, i32 1
  %76 = load %struct.ixgb_rx_desc*, %struct.ixgb_rx_desc** %75, align 8
  %77 = load %struct.ixgb_rx_desc*, %struct.ixgb_rx_desc** @NET_IP_ALIGN, align 8
  %78 = ptrtoint %struct.ixgb_rx_desc* %76 to i64
  %79 = ptrtoint %struct.ixgb_rx_desc* %77 to i64
  %80 = sub i64 %78, %79
  %81 = sdiv exact i64 %80, 40
  %82 = inttoptr i64 %81 to %struct.ixgb_rx_desc*
  %83 = call i32 @prefetch(%struct.ixgb_rx_desc* %82)
  %84 = load i32, i32* %16, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %16, align 4
  %86 = load %struct.ixgb_desc_ring*, %struct.ixgb_desc_ring** %7, align 8
  %87 = getelementptr inbounds %struct.ixgb_desc_ring, %struct.ixgb_desc_ring* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %85, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %61
  store i32 0, i32* %16, align 4
  br label %91

91:                                               ; preds = %90, %61
  %92 = load %struct.ixgb_desc_ring*, %struct.ixgb_desc_ring** %7, align 8
  %93 = load i32, i32* %16, align 4
  %94 = bitcast %struct.ixgb_desc_ring* %92 to { i64, %struct.ixgb_rx_desc* }*
  %95 = getelementptr inbounds { i64, %struct.ixgb_rx_desc* }, { i64, %struct.ixgb_rx_desc* }* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds { i64, %struct.ixgb_rx_desc* }, { i64, %struct.ixgb_rx_desc* }* %94, i32 0, i32 1
  %98 = load %struct.ixgb_rx_desc*, %struct.ixgb_rx_desc** %97, align 8
  %99 = call %struct.ixgb_rx_desc* @IXGB_RX_DESC(i64 %96, %struct.ixgb_rx_desc* %98, i32 %93)
  store %struct.ixgb_rx_desc* %99, %struct.ixgb_rx_desc** %11, align 8
  %100 = load %struct.ixgb_rx_desc*, %struct.ixgb_rx_desc** %11, align 8
  %101 = call i32 @prefetch(%struct.ixgb_rx_desc* %100)
  %102 = load i32, i32* %16, align 4
  %103 = add i32 %102, 1
  store i32 %103, i32* %17, align 4
  %104 = load i32, i32* %17, align 4
  %105 = load %struct.ixgb_desc_ring*, %struct.ixgb_desc_ring** %7, align 8
  %106 = getelementptr inbounds %struct.ixgb_desc_ring, %struct.ixgb_desc_ring* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %104, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %91
  store i32 0, i32* %17, align 4
  br label %110

110:                                              ; preds = %109, %91
  %111 = load %struct.ixgb_desc_ring*, %struct.ixgb_desc_ring** %7, align 8
  %112 = getelementptr inbounds %struct.ixgb_desc_ring, %struct.ixgb_desc_ring* %111, i32 0, i32 2
  %113 = load %struct.ixgb_rx_desc*, %struct.ixgb_rx_desc** %112, align 8
  %114 = load i32, i32* %17, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds %struct.ixgb_rx_desc, %struct.ixgb_rx_desc* %113, i64 %115
  %117 = bitcast %struct.ixgb_rx_desc* %116 to %struct.ixgb_buffer*
  store %struct.ixgb_buffer* %117, %struct.ixgb_buffer** %14, align 8
  %118 = load %struct.ixgb_buffer*, %struct.ixgb_buffer** %14, align 8
  %119 = bitcast %struct.ixgb_buffer* %118 to %struct.ixgb_rx_desc*
  %120 = call i32 @prefetch(%struct.ixgb_rx_desc* %119)
  %121 = load %struct.ixgb_desc_ring*, %struct.ixgb_desc_ring** %7, align 8
  %122 = getelementptr inbounds %struct.ixgb_desc_ring, %struct.ixgb_desc_ring* %121, i32 0, i32 2
  %123 = load %struct.ixgb_rx_desc*, %struct.ixgb_rx_desc** %122, align 8
  %124 = load i32, i32* %16, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds %struct.ixgb_rx_desc, %struct.ixgb_rx_desc* %123, i64 %125
  %127 = bitcast %struct.ixgb_rx_desc* %126 to %struct.ixgb_buffer*
  store %struct.ixgb_buffer* %127, %struct.ixgb_buffer** %13, align 8
  store i32 1, i32* %19, align 4
  %128 = load i32, i32* %18, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %18, align 4
  %130 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %131 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %130, i32 0, i32 0
  %132 = load %struct.ixgb_buffer*, %struct.ixgb_buffer** %12, align 8
  %133 = getelementptr inbounds %struct.ixgb_buffer, %struct.ixgb_buffer* %132, i32 0, i32 4
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.ixgb_buffer*, %struct.ixgb_buffer** %12, align 8
  %136 = getelementptr inbounds %struct.ixgb_buffer, %struct.ixgb_buffer* %135, i32 0, i32 3
  %137 = load i64, i64* %136, align 8
  %138 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %139 = call i32 @dma_unmap_single(i32* %131, i64 %134, i64 %137, i32 %138)
  %140 = load %struct.ixgb_buffer*, %struct.ixgb_buffer** %12, align 8
  %141 = getelementptr inbounds %struct.ixgb_buffer, %struct.ixgb_buffer* %140, i32 0, i32 4
  store i64 0, i64* %141, align 8
  %142 = load %struct.ixgb_rx_desc*, %struct.ixgb_rx_desc** %10, align 8
  %143 = getelementptr inbounds %struct.ixgb_rx_desc, %struct.ixgb_rx_desc* %142, i32 0, i32 3
  %144 = load i64, i64* %143, align 8
  %145 = call i32 @le16_to_cpu(i64 %144)
  store i32 %145, i32* %15, align 4
  %146 = load %struct.ixgb_rx_desc*, %struct.ixgb_rx_desc** %10, align 8
  %147 = getelementptr inbounds %struct.ixgb_rx_desc, %struct.ixgb_rx_desc* %146, i32 0, i32 3
  store i64 0, i64* %147, align 8
  %148 = load i32, i32* %21, align 4
  %149 = load i32, i32* @IXGB_RX_DESC_STATUS_EOP, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  %152 = xor i1 %151, true
  %153 = zext i1 %152 to i32
  %154 = call i64 @unlikely(i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %110
  %157 = load i32, i32* %15, align 4
  %158 = call i32 @pr_debug(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %157)
  %159 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %160 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %159)
  br label %213

161:                                              ; preds = %110
  %162 = load %struct.ixgb_rx_desc*, %struct.ixgb_rx_desc** %10, align 8
  %163 = getelementptr inbounds %struct.ixgb_rx_desc, %struct.ixgb_rx_desc* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @IXGB_RX_DESC_ERRORS_CE, align 4
  %166 = load i32, i32* @IXGB_RX_DESC_ERRORS_SE, align 4
  %167 = or i32 %165, %166
  %168 = load i32, i32* @IXGB_RX_DESC_ERRORS_P, align 4
  %169 = or i32 %167, %168
  %170 = load i32, i32* @IXGB_RX_DESC_ERRORS_RXE, align 4
  %171 = or i32 %169, %170
  %172 = and i32 %164, %171
  %173 = call i64 @unlikely(i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %161
  %176 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %177 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %176)
  br label %213

178:                                              ; preds = %161
  %179 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %4, align 8
  %180 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %179, i32 0, i32 0
  %181 = load %struct.ixgb_buffer*, %struct.ixgb_buffer** %12, align 8
  %182 = bitcast %struct.ixgb_buffer* %181 to %struct.ixgb_rx_desc*
  %183 = load i32, i32* %15, align 4
  %184 = call i32 @ixgb_check_copybreak(i32* %180, %struct.ixgb_rx_desc* %182, i32 %183, %struct.sk_buff** %20)
  %185 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %186 = load i32, i32* %15, align 4
  %187 = call i32 @skb_put(%struct.sk_buff* %185, i32 %186)
  %188 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %4, align 8
  %189 = load %struct.ixgb_rx_desc*, %struct.ixgb_rx_desc** %10, align 8
  %190 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %191 = call i32 @ixgb_rx_checksum(%struct.ixgb_adapter* %188, %struct.ixgb_rx_desc* %189, %struct.sk_buff* %190)
  %192 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %193 = load %struct.net_device*, %struct.net_device** %8, align 8
  %194 = call i32 @eth_type_trans(%struct.sk_buff* %192, %struct.net_device* %193)
  %195 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %196 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %195, i32 0, i32 0
  store i32 %194, i32* %196, align 8
  %197 = load i32, i32* %21, align 4
  %198 = load i32, i32* @IXGB_RX_DESC_STATUS_VP, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %210

201:                                              ; preds = %178
  %202 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %203 = load i32, i32* @ETH_P_8021Q, align 4
  %204 = call i32 @htons(i32 %203)
  %205 = load %struct.ixgb_rx_desc*, %struct.ixgb_rx_desc** %10, align 8
  %206 = getelementptr inbounds %struct.ixgb_rx_desc, %struct.ixgb_rx_desc* %205, i32 0, i32 2
  %207 = load i64, i64* %206, align 8
  %208 = call i32 @le16_to_cpu(i64 %207)
  %209 = call i32 @__vlan_hwaccel_put_tag(%struct.sk_buff* %202, i32 %204, i32 %208)
  br label %210

210:                                              ; preds = %201, %178
  %211 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %212 = call i32 @netif_receive_skb(%struct.sk_buff* %211)
  br label %213

213:                                              ; preds = %210, %175, %156
  %214 = load %struct.ixgb_rx_desc*, %struct.ixgb_rx_desc** %10, align 8
  %215 = getelementptr inbounds %struct.ixgb_rx_desc, %struct.ixgb_rx_desc* %214, i32 0, i32 0
  store i32 0, i32* %215, align 8
  %216 = load i32, i32* %18, align 4
  %217 = load i32, i32* @IXGB_RX_BUFFER_WRITE, align 4
  %218 = icmp sge i32 %216, %217
  %219 = zext i1 %218 to i32
  %220 = call i64 @unlikely(i32 %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %226

222:                                              ; preds = %213
  %223 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %4, align 8
  %224 = load i32, i32* %18, align 4
  %225 = call i32 @ixgb_alloc_rx_buffers(%struct.ixgb_adapter* %223, i32 %224)
  store i32 0, i32* %18, align 4
  br label %226

226:                                              ; preds = %222, %213
  %227 = load %struct.ixgb_rx_desc*, %struct.ixgb_rx_desc** %11, align 8
  store %struct.ixgb_rx_desc* %227, %struct.ixgb_rx_desc** %10, align 8
  %228 = load %struct.ixgb_buffer*, %struct.ixgb_buffer** %13, align 8
  store %struct.ixgb_buffer* %228, %struct.ixgb_buffer** %12, align 8
  br label %48

229:                                              ; preds = %60, %48
  %230 = load i32, i32* %16, align 4
  %231 = load %struct.ixgb_desc_ring*, %struct.ixgb_desc_ring** %7, align 8
  %232 = getelementptr inbounds %struct.ixgb_desc_ring, %struct.ixgb_desc_ring* %231, i32 0, i32 0
  store i32 %230, i32* %232, align 8
  %233 = load %struct.ixgb_desc_ring*, %struct.ixgb_desc_ring** %7, align 8
  %234 = call i32 @IXGB_DESC_UNUSED(%struct.ixgb_desc_ring* %233)
  store i32 %234, i32* %18, align 4
  %235 = load i32, i32* %18, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %241

237:                                              ; preds = %229
  %238 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %4, align 8
  %239 = load i32, i32* %18, align 4
  %240 = call i32 @ixgb_alloc_rx_buffers(%struct.ixgb_adapter* %238, i32 %239)
  br label %241

241:                                              ; preds = %237, %229
  %242 = load i32, i32* %19, align 4
  ret i32 %242
}

declare dso_local %struct.ixgb_rx_desc* @IXGB_RX_DESC(i64, %struct.ixgb_rx_desc*, i32) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @prefetch(%struct.ixgb_rx_desc*) #1

declare dso_local i32 @dma_unmap_single(i32*, i64, i64, i32) #1

declare dso_local i32 @le16_to_cpu(i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @dev_kfree_skb_irq(%struct.sk_buff*) #1

declare dso_local i32 @ixgb_check_copybreak(i32*, %struct.ixgb_rx_desc*, i32, %struct.sk_buff**) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @ixgb_rx_checksum(%struct.ixgb_adapter*, %struct.ixgb_rx_desc*, %struct.sk_buff*) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @__vlan_hwaccel_put_tag(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

declare dso_local i32 @ixgb_alloc_rx_buffers(%struct.ixgb_adapter*, i32) #1

declare dso_local i32 @IXGB_DESC_UNUSED(%struct.ixgb_desc_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
