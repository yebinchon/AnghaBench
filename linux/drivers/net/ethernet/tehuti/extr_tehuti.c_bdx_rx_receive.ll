; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/tehuti/extr_tehuti.c_bdx_rx_receive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/tehuti/extr_tehuti.c_bdx_rx_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bdx_priv = type { %struct.rxf_fifo, i32, %struct.net_device*, %struct.rxdb* }
%struct.rxf_fifo = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.net_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.rxdb = type { i32 }
%struct.rxd_fifo = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i64, i32 }
%struct.sk_buff = type { i32, i32, i64 }
%struct.rxd_desc = type { i32, i32, i32, i32 }
%struct.rx_map = type { i32, %struct.sk_buff* }

@BDX_MAX_RX_DONE = common dso_local global i32 0, align 4
@ENTER = common dso_local global i32 0, align 4
@TXF_WPTR_WR_PTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"wrapped desc rptr=%d tmp_len=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"rxd_err = 0x%x\0A\00", align 1
@BDX_COPYBREAK = common dso_local global i32 0, align 4
@NET_IP_ALIGN = common dso_local global i64 0, align 8
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bdx_priv*, %struct.rxd_fifo*, i32)* @bdx_rx_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bdx_rx_receive(%struct.bdx_priv* %0, %struct.rxd_fifo* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bdx_priv*, align 8
  %6 = alloca %struct.rxd_fifo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.rxd_desc*, align 8
  %12 = alloca %struct.rx_map*, align 8
  %13 = alloca %struct.rxf_fifo*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.rxdb*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.bdx_priv* %0, %struct.bdx_priv** %5, align 8
  store %struct.rxd_fifo* %1, %struct.rxd_fifo** %6, align 8
  store i32 %2, i32* %7, align 4
  %22 = load %struct.bdx_priv*, %struct.bdx_priv** %5, align 8
  %23 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %22, i32 0, i32 2
  %24 = load %struct.net_device*, %struct.net_device** %23, align 8
  store %struct.net_device* %24, %struct.net_device** %8, align 8
  store i32 0, i32* %16, align 4
  %25 = load i32, i32* @BDX_MAX_RX_DONE, align 4
  store i32 %25, i32* %17, align 4
  store %struct.rxdb* null, %struct.rxdb** %18, align 8
  %26 = load i32, i32* @ENTER, align 4
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %17, align 4
  %28 = load %struct.bdx_priv*, %struct.bdx_priv** %5, align 8
  %29 = load %struct.rxd_fifo*, %struct.rxd_fifo** %6, align 8
  %30 = getelementptr inbounds %struct.rxd_fifo, %struct.rxd_fifo* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @READ_REG(%struct.bdx_priv* %28, i32 %32)
  %34 = load i32, i32* @TXF_WPTR_WR_PTR, align 4
  %35 = and i32 %33, %34
  %36 = load %struct.rxd_fifo*, %struct.rxd_fifo** %6, align 8
  %37 = getelementptr inbounds %struct.rxd_fifo, %struct.rxd_fifo* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 8
  %39 = load %struct.rxd_fifo*, %struct.rxd_fifo** %6, align 8
  %40 = getelementptr inbounds %struct.rxd_fifo, %struct.rxd_fifo* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.rxd_fifo*, %struct.rxd_fifo** %6, align 8
  %44 = getelementptr inbounds %struct.rxd_fifo, %struct.rxd_fifo* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = sub nsw i32 %42, %46
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* %15, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %3
  %51 = load %struct.rxd_fifo*, %struct.rxd_fifo** %6, align 8
  %52 = getelementptr inbounds %struct.rxd_fifo, %struct.rxd_fifo* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %15, align 4
  %56 = add nsw i32 %54, %55
  store i32 %56, i32* %15, align 4
  br label %57

57:                                               ; preds = %50, %3
  br label %58

58:                                               ; preds = %281, %160, %57
  %59 = load i32, i32* %15, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %282

61:                                               ; preds = %58
  %62 = load %struct.rxd_fifo*, %struct.rxd_fifo** %6, align 8
  %63 = getelementptr inbounds %struct.rxd_fifo, %struct.rxd_fifo* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.rxd_fifo*, %struct.rxd_fifo** %6, align 8
  %67 = getelementptr inbounds %struct.rxd_fifo, %struct.rxd_fifo* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %65, %70
  %72 = inttoptr i64 %71 to %struct.rxd_desc*
  store %struct.rxd_desc* %72, %struct.rxd_desc** %11, align 8
  %73 = load %struct.rxd_desc*, %struct.rxd_desc** %11, align 8
  %74 = getelementptr inbounds %struct.rxd_desc, %struct.rxd_desc* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @CPU_CHIP_SWAP32(i32 %75)
  store i32 %76, i32* %19, align 4
  %77 = load %struct.rxd_desc*, %struct.rxd_desc** %11, align 8
  %78 = getelementptr inbounds %struct.rxd_desc, %struct.rxd_desc* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @CPU_CHIP_SWAP16(i32 %79)
  store i32 %80, i32* %20, align 4
  %81 = load %struct.rxd_desc*, %struct.rxd_desc** %11, align 8
  %82 = getelementptr inbounds %struct.rxd_desc, %struct.rxd_desc* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @CPU_CHIP_SWAP16(i32 %83)
  store i32 %84, i32* %21, align 4
  %85 = load %struct.rxd_desc*, %struct.rxd_desc** %11, align 8
  %86 = load i32, i32* %19, align 4
  %87 = load i32, i32* %20, align 4
  %88 = load i32, i32* %21, align 4
  %89 = call i32 @print_rxdd(%struct.rxd_desc* %85, i32 %86, i32 %87, i32 %88)
  %90 = load i32, i32* %19, align 4
  %91 = call i32 @GET_RXD_BC(i32 %90)
  %92 = shl i32 %91, 3
  store i32 %92, i32* %14, align 4
  %93 = load i32, i32* %14, align 4
  %94 = icmp sle i32 %93, 0
  %95 = zext i1 %94 to i32
  %96 = call i32 @BDX_ASSERT(i32 %95)
  %97 = load i32, i32* %14, align 4
  %98 = load i32, i32* %15, align 4
  %99 = sub nsw i32 %98, %97
  store i32 %99, i32* %15, align 4
  %100 = load i32, i32* %15, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %61
  br label %282

103:                                              ; preds = %61
  %104 = load i32, i32* %14, align 4
  %105 = load %struct.rxd_fifo*, %struct.rxd_fifo** %6, align 8
  %106 = getelementptr inbounds %struct.rxd_fifo, %struct.rxd_fifo* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, %104
  store i32 %109, i32* %107, align 4
  %110 = load %struct.rxd_fifo*, %struct.rxd_fifo** %6, align 8
  %111 = getelementptr inbounds %struct.rxd_fifo, %struct.rxd_fifo* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.rxd_fifo*, %struct.rxd_fifo** %6, align 8
  %115 = getelementptr inbounds %struct.rxd_fifo, %struct.rxd_fifo* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = sub nsw i32 %113, %117
  store i32 %118, i32* %14, align 4
  %119 = load i32, i32* %14, align 4
  %120 = icmp sge i32 %119, 0
  %121 = zext i1 %120 to i32
  %122 = call i64 @unlikely(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %155

124:                                              ; preds = %103
  %125 = load i32, i32* %14, align 4
  %126 = load %struct.rxd_fifo*, %struct.rxd_fifo** %6, align 8
  %127 = getelementptr inbounds %struct.rxd_fifo, %struct.rxd_fifo* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 1
  store i32 %125, i32* %128, align 4
  %129 = load i32, i32* %14, align 4
  %130 = icmp sgt i32 %129, 0
  br i1 %130, label %131, label %154

131:                                              ; preds = %124
  %132 = load %struct.rxd_fifo*, %struct.rxd_fifo** %6, align 8
  %133 = getelementptr inbounds %struct.rxd_fifo, %struct.rxd_fifo* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %14, align 4
  %137 = call i32 (i8*, i32, ...) @DBG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %135, i32 %136)
  %138 = load %struct.rxd_fifo*, %struct.rxd_fifo** %6, align 8
  %139 = getelementptr inbounds %struct.rxd_fifo, %struct.rxd_fifo* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 4
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.rxd_fifo*, %struct.rxd_fifo** %6, align 8
  %143 = getelementptr inbounds %struct.rxd_fifo, %struct.rxd_fifo* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = sext i32 %145 to i64
  %147 = add nsw i64 %141, %146
  %148 = load %struct.rxd_fifo*, %struct.rxd_fifo** %6, align 8
  %149 = getelementptr inbounds %struct.rxd_fifo, %struct.rxd_fifo* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 4
  %151 = load i64, i64* %150, align 8
  %152 = load i32, i32* %14, align 4
  %153 = call i32 @memcpy(i64 %147, i64 %151, i32 %152)
  br label %154

154:                                              ; preds = %131, %124
  br label %155

155:                                              ; preds = %154, %103
  %156 = load i32, i32* %19, align 4
  %157 = call i32 @GET_RXD_ERR(i32 %156)
  %158 = call i64 @unlikely(i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %172

160:                                              ; preds = %155
  %161 = load i32, i32* %19, align 4
  %162 = call i32 @GET_RXD_ERR(i32 %161)
  %163 = call i32 (i8*, i32, ...) @DBG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %162)
  %164 = load %struct.net_device*, %struct.net_device** %8, align 8
  %165 = getelementptr inbounds %struct.net_device, %struct.net_device* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %166, align 4
  %169 = load %struct.bdx_priv*, %struct.bdx_priv** %5, align 8
  %170 = load %struct.rxd_desc*, %struct.rxd_desc** %11, align 8
  %171 = call i32 @bdx_recycle_skb(%struct.bdx_priv* %169, %struct.rxd_desc* %170)
  br label %58

172:                                              ; preds = %155
  %173 = load %struct.bdx_priv*, %struct.bdx_priv** %5, align 8
  %174 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %173, i32 0, i32 0
  store %struct.rxf_fifo* %174, %struct.rxf_fifo** %13, align 8
  %175 = load %struct.bdx_priv*, %struct.bdx_priv** %5, align 8
  %176 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %175, i32 0, i32 3
  %177 = load %struct.rxdb*, %struct.rxdb** %176, align 8
  store %struct.rxdb* %177, %struct.rxdb** %18, align 8
  %178 = load %struct.rxdb*, %struct.rxdb** %18, align 8
  %179 = load %struct.rxd_desc*, %struct.rxd_desc** %11, align 8
  %180 = getelementptr inbounds %struct.rxd_desc, %struct.rxd_desc* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = call %struct.rx_map* @bdx_rxdb_addr_elem(%struct.rxdb* %178, i32 %181)
  store %struct.rx_map* %182, %struct.rx_map** %12, align 8
  %183 = load %struct.rx_map*, %struct.rx_map** %12, align 8
  %184 = getelementptr inbounds %struct.rx_map, %struct.rx_map* %183, i32 0, i32 1
  %185 = load %struct.sk_buff*, %struct.sk_buff** %184, align 8
  store %struct.sk_buff* %185, %struct.sk_buff** %9, align 8
  %186 = load i32, i32* %20, align 4
  %187 = load i32, i32* @BDX_COPYBREAK, align 4
  %188 = icmp slt i32 %186, %187
  br i1 %188, label %189, label %227

189:                                              ; preds = %172
  %190 = load %struct.bdx_priv*, %struct.bdx_priv** %5, align 8
  %191 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %190, i32 0, i32 2
  %192 = load %struct.net_device*, %struct.net_device** %191, align 8
  %193 = load i32, i32* %20, align 4
  %194 = sext i32 %193 to i64
  %195 = load i64, i64* @NET_IP_ALIGN, align 8
  %196 = add nsw i64 %194, %195
  %197 = call %struct.sk_buff* @netdev_alloc_skb(%struct.net_device* %192, i64 %196)
  store %struct.sk_buff* %197, %struct.sk_buff** %10, align 8
  %198 = icmp ne %struct.sk_buff* %197, null
  br i1 %198, label %199, label %227

199:                                              ; preds = %189
  %200 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %201 = load i64, i64* @NET_IP_ALIGN, align 8
  %202 = call i32 @skb_reserve(%struct.sk_buff* %200, i64 %201)
  %203 = load %struct.bdx_priv*, %struct.bdx_priv** %5, align 8
  %204 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.rx_map*, %struct.rx_map** %12, align 8
  %207 = getelementptr inbounds %struct.rx_map, %struct.rx_map* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.rxf_fifo*, %struct.rxf_fifo** %13, align 8
  %210 = getelementptr inbounds %struct.rxf_fifo, %struct.rxf_fifo* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %214 = call i32 @pci_dma_sync_single_for_cpu(i32 %205, i32 %208, i32 %212, i32 %213)
  %215 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %216 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %215, i32 0, i32 2
  %217 = load i64, i64* %216, align 8
  %218 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %219 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %218, i32 0, i32 2
  %220 = load i64, i64* %219, align 8
  %221 = load i32, i32* %20, align 4
  %222 = call i32 @memcpy(i64 %217, i64 %220, i32 %221)
  %223 = load %struct.bdx_priv*, %struct.bdx_priv** %5, align 8
  %224 = load %struct.rxd_desc*, %struct.rxd_desc** %11, align 8
  %225 = call i32 @bdx_recycle_skb(%struct.bdx_priv* %223, %struct.rxd_desc* %224)
  %226 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  store %struct.sk_buff* %226, %struct.sk_buff** %9, align 8
  br label %245

227:                                              ; preds = %189, %172
  %228 = load %struct.bdx_priv*, %struct.bdx_priv** %5, align 8
  %229 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.rx_map*, %struct.rx_map** %12, align 8
  %232 = getelementptr inbounds %struct.rx_map, %struct.rx_map* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = load %struct.rxf_fifo*, %struct.rxf_fifo** %13, align 8
  %235 = getelementptr inbounds %struct.rxf_fifo, %struct.rxf_fifo* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %239 = call i32 @pci_unmap_single(i32 %230, i32 %233, i32 %237, i32 %238)
  %240 = load %struct.rxdb*, %struct.rxdb** %18, align 8
  %241 = load %struct.rxd_desc*, %struct.rxd_desc** %11, align 8
  %242 = getelementptr inbounds %struct.rxd_desc, %struct.rxd_desc* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @bdx_rxdb_free_elem(%struct.rxdb* %240, i32 %243)
  br label %245

245:                                              ; preds = %227, %199
  %246 = load i32, i32* %20, align 4
  %247 = load %struct.net_device*, %struct.net_device** %8, align 8
  %248 = getelementptr inbounds %struct.net_device, %struct.net_device* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = add nsw i32 %250, %246
  store i32 %251, i32* %249, align 4
  %252 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %253 = load i32, i32* %20, align 4
  %254 = call i32 @skb_put(%struct.sk_buff* %252, i32 %253)
  %255 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %256 = load %struct.net_device*, %struct.net_device** %8, align 8
  %257 = call i32 @eth_type_trans(%struct.sk_buff* %255, %struct.net_device* %256)
  %258 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %259 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %258, i32 0, i32 1
  store i32 %257, i32* %259, align 4
  %260 = load i32, i32* %19, align 4
  %261 = call i64 @GET_RXD_PKT_ID(i32 %260)
  %262 = icmp eq i64 %261, 0
  br i1 %262, label %263, label %266

263:                                              ; preds = %245
  %264 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %265 = call i32 @skb_checksum_none_assert(%struct.sk_buff* %264)
  br label %270

266:                                              ; preds = %245
  %267 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %268 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %269 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %268, i32 0, i32 0
  store i32 %267, i32* %269, align 8
  br label %270

270:                                              ; preds = %266, %263
  %271 = load %struct.bdx_priv*, %struct.bdx_priv** %5, align 8
  %272 = load i32, i32* %19, align 4
  %273 = load i32, i32* %21, align 4
  %274 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %275 = call i32 @NETIF_RX_MUX(%struct.bdx_priv* %271, i32 %272, i32 %273, %struct.sk_buff* %274)
  %276 = load i32, i32* %16, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %16, align 4
  %278 = load i32, i32* %17, align 4
  %279 = icmp sge i32 %277, %278
  br i1 %279, label %280, label %281

280:                                              ; preds = %270
  br label %282

281:                                              ; preds = %270
  br label %58

282:                                              ; preds = %280, %102, %58
  %283 = load i32, i32* %16, align 4
  %284 = load %struct.net_device*, %struct.net_device** %8, align 8
  %285 = getelementptr inbounds %struct.net_device, %struct.net_device* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 4
  %288 = add nsw i32 %287, %283
  store i32 %288, i32* %286, align 4
  %289 = load %struct.bdx_priv*, %struct.bdx_priv** %5, align 8
  %290 = load %struct.rxd_fifo*, %struct.rxd_fifo** %6, align 8
  %291 = getelementptr inbounds %struct.rxd_fifo, %struct.rxd_fifo* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %291, i32 0, i32 3
  %293 = load i32, i32* %292, align 4
  %294 = load %struct.rxd_fifo*, %struct.rxd_fifo** %6, align 8
  %295 = getelementptr inbounds %struct.rxd_fifo, %struct.rxd_fifo* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 4
  %298 = load i32, i32* @TXF_WPTR_WR_PTR, align 4
  %299 = and i32 %297, %298
  %300 = call i32 @WRITE_REG(%struct.bdx_priv* %289, i32 %293, i32 %299)
  %301 = load %struct.bdx_priv*, %struct.bdx_priv** %5, align 8
  %302 = load %struct.bdx_priv*, %struct.bdx_priv** %5, align 8
  %303 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %302, i32 0, i32 0
  %304 = call i32 @bdx_rx_alloc_skbs(%struct.bdx_priv* %301, %struct.rxf_fifo* %303)
  %305 = load i32, i32* %16, align 4
  %306 = call i32 @RET(i32 %305)
  %307 = load i32, i32* %4, align 4
  ret i32 %307
}

declare dso_local i32 @READ_REG(%struct.bdx_priv*, i32) #1

declare dso_local i32 @CPU_CHIP_SWAP32(i32) #1

declare dso_local i32 @CPU_CHIP_SWAP16(i32) #1

declare dso_local i32 @print_rxdd(%struct.rxd_desc*, i32, i32, i32) #1

declare dso_local i32 @GET_RXD_BC(i32) #1

declare dso_local i32 @BDX_ASSERT(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @DBG(i8*, i32, ...) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

declare dso_local i32 @GET_RXD_ERR(i32) #1

declare dso_local i32 @bdx_recycle_skb(%struct.bdx_priv*, %struct.rxd_desc*) #1

declare dso_local %struct.rx_map* @bdx_rxdb_addr_elem(%struct.rxdb*, i32) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.net_device*, i64) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @pci_dma_sync_single_for_cpu(i32, i32, i32, i32) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @bdx_rxdb_free_elem(%struct.rxdb*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i64 @GET_RXD_PKT_ID(i32) #1

declare dso_local i32 @skb_checksum_none_assert(%struct.sk_buff*) #1

declare dso_local i32 @NETIF_RX_MUX(%struct.bdx_priv*, i32, i32, %struct.sk_buff*) #1

declare dso_local i32 @WRITE_REG(%struct.bdx_priv*, i32, i32) #1

declare dso_local i32 @bdx_rx_alloc_skbs(%struct.bdx_priv*, %struct.rxf_fifo*) #1

declare dso_local i32 @RET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
