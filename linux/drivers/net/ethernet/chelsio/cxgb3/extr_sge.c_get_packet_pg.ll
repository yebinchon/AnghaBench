; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_sge.c_get_packet_pg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_sge.c_get_packet_pg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32, i32, i32 }
%struct.adapter = type { i32 }
%struct.sge_fl = type { i64, i32, i32, %struct.TYPE_4__, %struct.rx_sw_desc* }
%struct.TYPE_4__ = type { i64 }
%struct.rx_sw_desc = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64, i32, i32, i32* }
%struct.sge_rspq = type { i64, %struct.sk_buff* }
%struct.TYPE_6__ = type { i32 }

@SGE_RX_COPY_THRES = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@SGE_RX_PULL_LEN = common dso_local global i32 0, align 4
@dma_addr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.adapter*, %struct.sge_fl*, %struct.sge_rspq*, i32, i32)* @get_packet_pg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @get_packet_pg(%struct.adapter* %0, %struct.sge_fl* %1, %struct.sge_rspq* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.adapter*, align 8
  %8 = alloca %struct.sge_fl*, align 8
  %9 = alloca %struct.sge_rspq*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca %struct.rx_sw_desc*, align 8
  %15 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %7, align 8
  store %struct.sge_fl* %1, %struct.sge_fl** %8, align 8
  store %struct.sge_rspq* %2, %struct.sge_rspq** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.sge_fl*, %struct.sge_fl** %8, align 8
  %17 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %16, i32 0, i32 4
  %18 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %17, align 8
  %19 = load %struct.sge_fl*, %struct.sge_fl** %8, align 8
  %20 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.rx_sw_desc, %struct.rx_sw_desc* %18, i64 %21
  store %struct.rx_sw_desc* %22, %struct.rx_sw_desc** %14, align 8
  %23 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %14, align 8
  %24 = load i32, i32* %15, align 4
  %25 = call i32 @dma_unmap_addr(%struct.rx_sw_desc* %23, i32 %24)
  store i32 %25, i32* %15, align 4
  %26 = load %struct.sge_rspq*, %struct.sge_rspq** %9, align 8
  %27 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %26, i32 0, i32 1
  %28 = load %struct.sk_buff*, %struct.sk_buff** %27, align 8
  store %struct.sk_buff* %28, %struct.sk_buff** %13, align 8
  store %struct.sk_buff* %28, %struct.sk_buff** %12, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %30 = icmp ne %struct.sk_buff* %29, null
  br i1 %30, label %93, label %31

31:                                               ; preds = %5
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @SGE_RX_COPY_THRES, align 4
  %34 = icmp ule i32 %32, %33
  br i1 %34, label %35, label %93

35:                                               ; preds = %31
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @GFP_ATOMIC, align 4
  %38 = call %struct.sk_buff* @alloc_skb(i32 %36, i32 %37)
  store %struct.sk_buff* %38, %struct.sk_buff** %12, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %40 = icmp ne %struct.sk_buff* %39, null
  %41 = zext i1 %40 to i32
  %42 = call i64 @likely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %71

44:                                               ; preds = %35
  %45 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @__skb_put(%struct.sk_buff* %45, i32 %46)
  %48 = load %struct.adapter*, %struct.adapter** %7, align 8
  %49 = getelementptr inbounds %struct.adapter, %struct.adapter* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %15, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %54 = call i32 @pci_dma_sync_single_for_cpu(i32 %50, i32 %51, i32 %52, i32 %53)
  %55 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %56 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %14, align 8
  %59 = getelementptr inbounds %struct.rx_sw_desc, %struct.rx_sw_desc* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @memcpy(i32 %57, i32 %61, i32 %62)
  %64 = load %struct.adapter*, %struct.adapter** %7, align 8
  %65 = getelementptr inbounds %struct.adapter, %struct.adapter* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %15, align 4
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %70 = call i32 @pci_dma_sync_single_for_device(i32 %66, i32 %67, i32 %68, i32 %69)
  br label %76

71:                                               ; preds = %35
  %72 = load i32, i32* %11, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %71
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  br label %266

75:                                               ; preds = %71
  br label %76

76:                                               ; preds = %75, %44
  br label %77

77:                                               ; preds = %138, %114, %76
  %78 = load %struct.sge_fl*, %struct.sge_fl** %8, align 8
  %79 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = add i32 %80, -1
  store i32 %81, i32* %79, align 8
  %82 = load %struct.adapter*, %struct.adapter** %7, align 8
  %83 = load %struct.sge_fl*, %struct.sge_fl** %8, align 8
  %84 = load %struct.sge_fl*, %struct.sge_fl** %8, align 8
  %85 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @recycle_rx_buf(%struct.adapter* %82, %struct.sge_fl* %83, i64 %86)
  %88 = load %struct.sge_rspq*, %struct.sge_rspq** %9, align 8
  %89 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %90, 1
  store i64 %91, i64* %89, align 8
  %92 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  store %struct.sk_buff* %92, %struct.sk_buff** %6, align 8
  br label %266

93:                                               ; preds = %31, %5
  %94 = load %struct.sge_rspq*, %struct.sge_rspq** %9, align 8
  %95 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %109, label %98

98:                                               ; preds = %93
  %99 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %100 = icmp ne %struct.sk_buff* %99, null
  br i1 %100, label %107, label %101

101:                                              ; preds = %98
  %102 = load %struct.sge_fl*, %struct.sge_fl** %8, align 8
  %103 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* %11, align 4
  %106 = icmp ule i32 %104, %105
  br label %107

107:                                              ; preds = %101, %98
  %108 = phi i1 [ false, %98 ], [ %106, %101 ]
  br label %109

109:                                              ; preds = %107, %93
  %110 = phi i1 [ true, %93 ], [ %108, %107 ]
  %111 = zext i1 %110 to i32
  %112 = call i64 @unlikely(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %109
  br label %77

115:                                              ; preds = %109
  %116 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %14, align 8
  %117 = getelementptr inbounds %struct.rx_sw_desc, %struct.rx_sw_desc* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 4
  %119 = load i32*, i32** %118, align 8
  %120 = call i32 @prefetch(i32* %119)
  %121 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %122 = icmp ne %struct.sk_buff* %121, null
  br i1 %122, label %127, label %123

123:                                              ; preds = %115
  %124 = load i32, i32* @SGE_RX_PULL_LEN, align 4
  %125 = load i32, i32* @GFP_ATOMIC, align 4
  %126 = call %struct.sk_buff* @alloc_skb(i32 %124, i32 %125)
  store %struct.sk_buff* %126, %struct.sk_buff** %12, align 8
  br label %127

127:                                              ; preds = %123, %115
  %128 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %129 = icmp ne %struct.sk_buff* %128, null
  %130 = xor i1 %129, true
  %131 = zext i1 %130 to i32
  %132 = call i64 @unlikely(i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %127
  %135 = load i32, i32* %11, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %138, label %137

137:                                              ; preds = %134
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  br label %266

138:                                              ; preds = %134
  br label %77

139:                                              ; preds = %127
  %140 = load %struct.adapter*, %struct.adapter** %7, align 8
  %141 = getelementptr inbounds %struct.adapter, %struct.adapter* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %15, align 4
  %144 = load i32, i32* %10, align 4
  %145 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %146 = call i32 @pci_dma_sync_single_for_cpu(i32 %142, i32 %143, i32 %144, i32 %145)
  %147 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %14, align 8
  %148 = getelementptr inbounds %struct.rx_sw_desc, %struct.rx_sw_desc* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 4
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %150, align 4
  %152 = add nsw i32 %151, -1
  store i32 %152, i32* %150, align 4
  %153 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %14, align 8
  %154 = getelementptr inbounds %struct.rx_sw_desc, %struct.rx_sw_desc* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 4
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* %156, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %182, label %159

159:                                              ; preds = %139
  %160 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %14, align 8
  %161 = getelementptr inbounds %struct.rx_sw_desc, %struct.rx_sw_desc* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.sge_fl*, %struct.sge_fl** %8, align 8
  %165 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %164, i32 0, i32 3
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %163, %167
  br i1 %168, label %169, label %182

169:                                              ; preds = %159
  %170 = load %struct.adapter*, %struct.adapter** %7, align 8
  %171 = getelementptr inbounds %struct.adapter, %struct.adapter* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %14, align 8
  %174 = getelementptr inbounds %struct.rx_sw_desc, %struct.rx_sw_desc* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.sge_fl*, %struct.sge_fl** %8, align 8
  %178 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %181 = call i32 @pci_unmap_page(i32 %172, i32 %176, i32 %179, i32 %180)
  br label %182

182:                                              ; preds = %169, %159, %139
  %183 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %184 = icmp ne %struct.sk_buff* %183, null
  br i1 %184, label %229, label %185

185:                                              ; preds = %182
  %186 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %187 = load i32, i32* @SGE_RX_PULL_LEN, align 4
  %188 = call i32 @__skb_put(%struct.sk_buff* %186, i32 %187)
  %189 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %190 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %14, align 8
  %193 = getelementptr inbounds %struct.rx_sw_desc, %struct.rx_sw_desc* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* @SGE_RX_PULL_LEN, align 4
  %197 = call i32 @memcpy(i32 %191, i32 %195, i32 %196)
  %198 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %199 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %14, align 8
  %200 = getelementptr inbounds %struct.rx_sw_desc, %struct.rx_sw_desc* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %14, align 8
  %204 = getelementptr inbounds %struct.rx_sw_desc, %struct.rx_sw_desc* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = load i32, i32* @SGE_RX_PULL_LEN, align 4
  %208 = zext i32 %207 to i64
  %209 = add nsw i64 %206, %208
  %210 = load i32, i32* %10, align 4
  %211 = load i32, i32* @SGE_RX_PULL_LEN, align 4
  %212 = sub i32 %210, %211
  %213 = call i32 @skb_fill_page_desc(%struct.sk_buff* %198, i32 0, i64 %202, i64 %209, i32 %212)
  %214 = load i32, i32* %10, align 4
  %215 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %216 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %215, i32 0, i32 0
  store i32 %214, i32* %216, align 4
  %217 = load i32, i32* %10, align 4
  %218 = load i32, i32* @SGE_RX_PULL_LEN, align 4
  %219 = sub i32 %217, %218
  %220 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %221 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %220, i32 0, i32 1
  store i32 %219, i32* %221, align 4
  %222 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %223 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %226 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 4
  %228 = add i32 %227, %224
  store i32 %228, i32* %226, align 4
  br label %260

229:                                              ; preds = %182
  %230 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %231 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %232 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %231)
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %14, align 8
  %236 = getelementptr inbounds %struct.rx_sw_desc, %struct.rx_sw_desc* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %14, align 8
  %240 = getelementptr inbounds %struct.rx_sw_desc, %struct.rx_sw_desc* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %240, i32 0, i32 1
  %242 = load i64, i64* %241, align 8
  %243 = load i32, i32* %10, align 4
  %244 = call i32 @skb_fill_page_desc(%struct.sk_buff* %230, i32 %234, i64 %238, i64 %242, i32 %243)
  %245 = load i32, i32* %10, align 4
  %246 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %247 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = add i32 %248, %245
  store i32 %249, i32* %247, align 4
  %250 = load i32, i32* %10, align 4
  %251 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %252 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = add i32 %253, %250
  store i32 %254, i32* %252, align 4
  %255 = load i32, i32* %10, align 4
  %256 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %257 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 4
  %259 = add i32 %258, %255
  store i32 %259, i32* %257, align 4
  br label %260

260:                                              ; preds = %229, %185
  %261 = load %struct.sge_fl*, %struct.sge_fl** %8, align 8
  %262 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 8
  %264 = add i32 %263, -1
  store i32 %264, i32* %262, align 8
  %265 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  store %struct.sk_buff* %265, %struct.sk_buff** %6, align 8
  br label %266

266:                                              ; preds = %260, %137, %77, %74
  %267 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  ret %struct.sk_buff* %267
}

declare dso_local i32 @dma_unmap_addr(%struct.rx_sw_desc*, i32) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @__skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @pci_dma_sync_single_for_cpu(i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @pci_dma_sync_single_for_device(i32, i32, i32, i32) #1

declare dso_local i32 @recycle_rx_buf(%struct.adapter*, %struct.sge_fl*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @prefetch(i32*) #1

declare dso_local i32 @pci_unmap_page(i32, i32, i32, i32) #1

declare dso_local i32 @skb_fill_page_desc(%struct.sk_buff*, i32, i64, i64, i32) #1

declare dso_local %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
