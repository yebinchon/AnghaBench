; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl1.c_atl1_tx_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl1.c_atl1_tx_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1_adapter = type { %struct.TYPE_4__*, %struct.atl1_tpd_ring }
%struct.TYPE_4__ = type { i32 }
%struct.atl1_tpd_ring = type { i64, %struct.atl1_buffer*, i32 }
%struct.atl1_buffer = type { i64, %struct.sk_buff*, i8* }
%struct.sk_buff = type { i64, i64, i64 }
%struct.tx_packet_desc = type { i32 }
%struct.page = type { i32 }
%struct.TYPE_3__ = type { i32, i32* }

@TPD_SEGMENT_EN_SHIFT = common dso_local global i32 0, align 4
@TPD_SEGMENT_EN_MASK = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@ATL1_MAX_TX_BUF_LEN = common dso_local global i64 0, align 8
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atl1_adapter*, %struct.sk_buff*, %struct.tx_packet_desc*)* @atl1_tx_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atl1_tx_map(%struct.atl1_adapter* %0, %struct.sk_buff* %1, %struct.tx_packet_desc* %2) #0 {
  %4 = alloca %struct.atl1_adapter*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.tx_packet_desc*, align 8
  %7 = alloca %struct.atl1_tpd_ring*, align 8
  %8 = alloca %struct.atl1_buffer*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.page*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store %struct.atl1_adapter* %0, %struct.atl1_adapter** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.tx_packet_desc* %2, %struct.tx_packet_desc** %6, align 8
  %23 = load %struct.atl1_adapter*, %struct.atl1_adapter** %4, align 8
  %24 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %23, i32 0, i32 1
  store %struct.atl1_tpd_ring* %24, %struct.atl1_tpd_ring** %7, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %9, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %9, align 8
  %32 = sub i64 %31, %30
  store i64 %32, i64* %9, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = call %struct.TYPE_3__* @skb_shinfo(%struct.sk_buff* %33)
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %12, align 4
  %37 = load %struct.atl1_tpd_ring*, %struct.atl1_tpd_ring** %7, align 8
  %38 = getelementptr inbounds %struct.atl1_tpd_ring, %struct.atl1_tpd_ring* %37, i32 0, i32 2
  %39 = call i64 @atomic_read(i32* %38)
  store i64 %39, i64* %15, align 8
  %40 = load %struct.atl1_tpd_ring*, %struct.atl1_tpd_ring** %7, align 8
  %41 = getelementptr inbounds %struct.atl1_tpd_ring, %struct.atl1_tpd_ring* %40, i32 0, i32 1
  %42 = load %struct.atl1_buffer*, %struct.atl1_buffer** %41, align 8
  %43 = load i64, i64* %15, align 8
  %44 = getelementptr inbounds %struct.atl1_buffer, %struct.atl1_buffer* %42, i64 %43
  store %struct.atl1_buffer* %44, %struct.atl1_buffer** %8, align 8
  %45 = load %struct.atl1_buffer*, %struct.atl1_buffer** %8, align 8
  %46 = getelementptr inbounds %struct.atl1_buffer, %struct.atl1_buffer* %45, i32 0, i32 1
  %47 = load %struct.sk_buff*, %struct.sk_buff** %46, align 8
  %48 = call i32 @BUG_ON(%struct.sk_buff* %47)
  %49 = load %struct.atl1_buffer*, %struct.atl1_buffer** %8, align 8
  %50 = getelementptr inbounds %struct.atl1_buffer, %struct.atl1_buffer* %49, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %50, align 8
  %51 = load %struct.tx_packet_desc*, %struct.tx_packet_desc** %6, align 8
  %52 = getelementptr inbounds %struct.tx_packet_desc, %struct.tx_packet_desc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @TPD_SEGMENT_EN_SHIFT, align 4
  %55 = ashr i32 %53, %54
  %56 = load i32, i32* @TPD_SEGMENT_EN_MASK, align 4
  %57 = and i32 %55, %56
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %14, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %184

60:                                               ; preds = %3
  %61 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %62 = call i64 @skb_transport_offset(%struct.sk_buff* %61)
  %63 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %64 = call i64 @tcp_hdrlen(%struct.sk_buff* %63)
  %65 = add i64 %62, %64
  store i64 %65, i64* %17, align 8
  %66 = load i64, i64* %17, align 8
  %67 = load %struct.atl1_buffer*, %struct.atl1_buffer** %8, align 8
  %68 = getelementptr inbounds %struct.atl1_buffer, %struct.atl1_buffer* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %70 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = call %struct.page* @virt_to_page(i64 %71)
  store %struct.page* %72, %struct.page** %10, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %74 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = call i64 @offset_in_page(i64 %75)
  store i64 %76, i64* %11, align 8
  %77 = load %struct.atl1_adapter*, %struct.atl1_adapter** %4, align 8
  %78 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %77, i32 0, i32 0
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = load %struct.page*, %struct.page** %10, align 8
  %81 = load i64, i64* %11, align 8
  %82 = load i64, i64* %17, align 8
  %83 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %84 = call i8* @pci_map_page(%struct.TYPE_4__* %79, %struct.page* %80, i64 %81, i64 %82, i32 %83)
  %85 = load %struct.atl1_buffer*, %struct.atl1_buffer** %8, align 8
  %86 = getelementptr inbounds %struct.atl1_buffer, %struct.atl1_buffer* %85, i32 0, i32 2
  store i8* %84, i8** %86, align 8
  %87 = load i64, i64* %15, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %15, align 8
  %89 = load %struct.atl1_tpd_ring*, %struct.atl1_tpd_ring** %7, align 8
  %90 = getelementptr inbounds %struct.atl1_tpd_ring, %struct.atl1_tpd_ring* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %88, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %60
  store i64 0, i64* %15, align 8
  br label %94

94:                                               ; preds = %93, %60
  %95 = load i64, i64* %9, align 8
  %96 = load i64, i64* %17, align 8
  %97 = icmp ugt i64 %95, %96
  br i1 %97, label %98, label %183

98:                                               ; preds = %94
  %99 = load i64, i64* %9, align 8
  %100 = load i64, i64* %17, align 8
  %101 = sub i64 %99, %100
  store i64 %101, i64* %16, align 8
  %102 = load i64, i64* %16, align 8
  %103 = load i64, i64* @ATL1_MAX_TX_BUF_LEN, align 8
  %104 = add i64 %102, %103
  %105 = sub i64 %104, 1
  %106 = load i64, i64* @ATL1_MAX_TX_BUF_LEN, align 8
  %107 = udiv i64 %105, %106
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %19, align 4
  store i32 0, i32* %18, align 4
  br label %109

109:                                              ; preds = %179, %98
  %110 = load i32, i32* %18, align 4
  %111 = load i32, i32* %19, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %182

113:                                              ; preds = %109
  %114 = load %struct.atl1_tpd_ring*, %struct.atl1_tpd_ring** %7, align 8
  %115 = getelementptr inbounds %struct.atl1_tpd_ring, %struct.atl1_tpd_ring* %114, i32 0, i32 1
  %116 = load %struct.atl1_buffer*, %struct.atl1_buffer** %115, align 8
  %117 = load i64, i64* %15, align 8
  %118 = getelementptr inbounds %struct.atl1_buffer, %struct.atl1_buffer* %116, i64 %117
  store %struct.atl1_buffer* %118, %struct.atl1_buffer** %8, align 8
  %119 = load %struct.atl1_buffer*, %struct.atl1_buffer** %8, align 8
  %120 = getelementptr inbounds %struct.atl1_buffer, %struct.atl1_buffer* %119, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %120, align 8
  %121 = load i64, i64* @ATL1_MAX_TX_BUF_LEN, align 8
  %122 = load i64, i64* %16, align 8
  %123 = icmp uge i64 %121, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %113
  %125 = load i64, i64* @ATL1_MAX_TX_BUF_LEN, align 8
  br label %128

126:                                              ; preds = %113
  %127 = load i64, i64* %16, align 8
  br label %128

128:                                              ; preds = %126, %124
  %129 = phi i64 [ %125, %124 ], [ %127, %126 ]
  %130 = load %struct.atl1_buffer*, %struct.atl1_buffer** %8, align 8
  %131 = getelementptr inbounds %struct.atl1_buffer, %struct.atl1_buffer* %130, i32 0, i32 0
  store i64 %129, i64* %131, align 8
  %132 = load %struct.atl1_buffer*, %struct.atl1_buffer** %8, align 8
  %133 = getelementptr inbounds %struct.atl1_buffer, %struct.atl1_buffer* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* %16, align 8
  %136 = sub i64 %135, %134
  store i64 %136, i64* %16, align 8
  %137 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %138 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* %17, align 8
  %141 = load i32, i32* %18, align 4
  %142 = sext i32 %141 to i64
  %143 = load i64, i64* @ATL1_MAX_TX_BUF_LEN, align 8
  %144 = mul i64 %142, %143
  %145 = add i64 %140, %144
  %146 = add i64 %139, %145
  %147 = call %struct.page* @virt_to_page(i64 %146)
  store %struct.page* %147, %struct.page** %10, align 8
  %148 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %149 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* %17, align 8
  %152 = load i32, i32* %18, align 4
  %153 = sext i32 %152 to i64
  %154 = load i64, i64* @ATL1_MAX_TX_BUF_LEN, align 8
  %155 = mul i64 %153, %154
  %156 = add i64 %151, %155
  %157 = add i64 %150, %156
  %158 = call i64 @offset_in_page(i64 %157)
  store i64 %158, i64* %11, align 8
  %159 = load %struct.atl1_adapter*, %struct.atl1_adapter** %4, align 8
  %160 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %159, i32 0, i32 0
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %160, align 8
  %162 = load %struct.page*, %struct.page** %10, align 8
  %163 = load i64, i64* %11, align 8
  %164 = load %struct.atl1_buffer*, %struct.atl1_buffer** %8, align 8
  %165 = getelementptr inbounds %struct.atl1_buffer, %struct.atl1_buffer* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %168 = call i8* @pci_map_page(%struct.TYPE_4__* %161, %struct.page* %162, i64 %163, i64 %166, i32 %167)
  %169 = load %struct.atl1_buffer*, %struct.atl1_buffer** %8, align 8
  %170 = getelementptr inbounds %struct.atl1_buffer, %struct.atl1_buffer* %169, i32 0, i32 2
  store i8* %168, i8** %170, align 8
  %171 = load i64, i64* %15, align 8
  %172 = add i64 %171, 1
  store i64 %172, i64* %15, align 8
  %173 = load %struct.atl1_tpd_ring*, %struct.atl1_tpd_ring** %7, align 8
  %174 = getelementptr inbounds %struct.atl1_tpd_ring, %struct.atl1_tpd_ring* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = icmp eq i64 %172, %175
  br i1 %176, label %177, label %178

177:                                              ; preds = %128
  store i64 0, i64* %15, align 8
  br label %178

178:                                              ; preds = %177, %128
  br label %179

179:                                              ; preds = %178
  %180 = load i32, i32* %18, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %18, align 4
  br label %109

182:                                              ; preds = %109
  br label %183

183:                                              ; preds = %182, %94
  br label %214

184:                                              ; preds = %3
  %185 = load i64, i64* %9, align 8
  %186 = load %struct.atl1_buffer*, %struct.atl1_buffer** %8, align 8
  %187 = getelementptr inbounds %struct.atl1_buffer, %struct.atl1_buffer* %186, i32 0, i32 0
  store i64 %185, i64* %187, align 8
  %188 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %189 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = call %struct.page* @virt_to_page(i64 %190)
  store %struct.page* %191, %struct.page** %10, align 8
  %192 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %193 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = call i64 @offset_in_page(i64 %194)
  store i64 %195, i64* %11, align 8
  %196 = load %struct.atl1_adapter*, %struct.atl1_adapter** %4, align 8
  %197 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %196, i32 0, i32 0
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** %197, align 8
  %199 = load %struct.page*, %struct.page** %10, align 8
  %200 = load i64, i64* %11, align 8
  %201 = load i64, i64* %9, align 8
  %202 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %203 = call i8* @pci_map_page(%struct.TYPE_4__* %198, %struct.page* %199, i64 %200, i64 %201, i32 %202)
  %204 = load %struct.atl1_buffer*, %struct.atl1_buffer** %8, align 8
  %205 = getelementptr inbounds %struct.atl1_buffer, %struct.atl1_buffer* %204, i32 0, i32 2
  store i8* %203, i8** %205, align 8
  %206 = load i64, i64* %15, align 8
  %207 = add i64 %206, 1
  store i64 %207, i64* %15, align 8
  %208 = load %struct.atl1_tpd_ring*, %struct.atl1_tpd_ring** %7, align 8
  %209 = getelementptr inbounds %struct.atl1_tpd_ring, %struct.atl1_tpd_ring* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = icmp eq i64 %207, %210
  br i1 %211, label %212, label %213

212:                                              ; preds = %184
  store i64 0, i64* %15, align 8
  br label %213

213:                                              ; preds = %212, %184
  br label %214

214:                                              ; preds = %213, %183
  store i32 0, i32* %13, align 4
  br label %215

215:                                              ; preds = %294, %214
  %216 = load i32, i32* %13, align 4
  %217 = load i32, i32* %12, align 4
  %218 = icmp ult i32 %216, %217
  br i1 %218, label %219, label %297

219:                                              ; preds = %215
  %220 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %221 = call %struct.TYPE_3__* @skb_shinfo(%struct.sk_buff* %220)
  %222 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %221, i32 0, i32 1
  %223 = load i32*, i32** %222, align 8
  %224 = load i32, i32* %13, align 4
  %225 = zext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %223, i64 %225
  store i32* %226, i32** %20, align 8
  %227 = load i32*, i32** %20, align 8
  %228 = call i64 @skb_frag_size(i32* %227)
  store i64 %228, i64* %9, align 8
  %229 = load i64, i64* %9, align 8
  %230 = load i64, i64* @ATL1_MAX_TX_BUF_LEN, align 8
  %231 = add i64 %229, %230
  %232 = sub i64 %231, 1
  %233 = load i64, i64* @ATL1_MAX_TX_BUF_LEN, align 8
  %234 = udiv i64 %232, %233
  store i64 %234, i64* %22, align 8
  store i64 0, i64* %21, align 8
  br label %235

235:                                              ; preds = %290, %219
  %236 = load i64, i64* %21, align 8
  %237 = load i64, i64* %22, align 8
  %238 = icmp ult i64 %236, %237
  br i1 %238, label %239, label %293

239:                                              ; preds = %235
  %240 = load %struct.atl1_tpd_ring*, %struct.atl1_tpd_ring** %7, align 8
  %241 = getelementptr inbounds %struct.atl1_tpd_ring, %struct.atl1_tpd_ring* %240, i32 0, i32 1
  %242 = load %struct.atl1_buffer*, %struct.atl1_buffer** %241, align 8
  %243 = load i64, i64* %15, align 8
  %244 = getelementptr inbounds %struct.atl1_buffer, %struct.atl1_buffer* %242, i64 %243
  store %struct.atl1_buffer* %244, %struct.atl1_buffer** %8, align 8
  %245 = load %struct.atl1_buffer*, %struct.atl1_buffer** %8, align 8
  %246 = getelementptr inbounds %struct.atl1_buffer, %struct.atl1_buffer* %245, i32 0, i32 1
  %247 = load %struct.sk_buff*, %struct.sk_buff** %246, align 8
  %248 = call i32 @BUG_ON(%struct.sk_buff* %247)
  %249 = load %struct.atl1_buffer*, %struct.atl1_buffer** %8, align 8
  %250 = getelementptr inbounds %struct.atl1_buffer, %struct.atl1_buffer* %249, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %250, align 8
  %251 = load i64, i64* %9, align 8
  %252 = load i64, i64* @ATL1_MAX_TX_BUF_LEN, align 8
  %253 = icmp ugt i64 %251, %252
  br i1 %253, label %254, label %256

254:                                              ; preds = %239
  %255 = load i64, i64* @ATL1_MAX_TX_BUF_LEN, align 8
  br label %258

256:                                              ; preds = %239
  %257 = load i64, i64* %9, align 8
  br label %258

258:                                              ; preds = %256, %254
  %259 = phi i64 [ %255, %254 ], [ %257, %256 ]
  %260 = load %struct.atl1_buffer*, %struct.atl1_buffer** %8, align 8
  %261 = getelementptr inbounds %struct.atl1_buffer, %struct.atl1_buffer* %260, i32 0, i32 0
  store i64 %259, i64* %261, align 8
  %262 = load %struct.atl1_buffer*, %struct.atl1_buffer** %8, align 8
  %263 = getelementptr inbounds %struct.atl1_buffer, %struct.atl1_buffer* %262, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = load i64, i64* %9, align 8
  %266 = sub i64 %265, %264
  store i64 %266, i64* %9, align 8
  %267 = load %struct.atl1_adapter*, %struct.atl1_adapter** %4, align 8
  %268 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %267, i32 0, i32 0
  %269 = load %struct.TYPE_4__*, %struct.TYPE_4__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %269, i32 0, i32 0
  %271 = load i32*, i32** %20, align 8
  %272 = load i64, i64* %21, align 8
  %273 = load i64, i64* @ATL1_MAX_TX_BUF_LEN, align 8
  %274 = mul i64 %272, %273
  %275 = load %struct.atl1_buffer*, %struct.atl1_buffer** %8, align 8
  %276 = getelementptr inbounds %struct.atl1_buffer, %struct.atl1_buffer* %275, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  %278 = load i32, i32* @DMA_TO_DEVICE, align 4
  %279 = call i8* @skb_frag_dma_map(i32* %270, i32* %271, i64 %274, i64 %277, i32 %278)
  %280 = load %struct.atl1_buffer*, %struct.atl1_buffer** %8, align 8
  %281 = getelementptr inbounds %struct.atl1_buffer, %struct.atl1_buffer* %280, i32 0, i32 2
  store i8* %279, i8** %281, align 8
  %282 = load i64, i64* %15, align 8
  %283 = add i64 %282, 1
  store i64 %283, i64* %15, align 8
  %284 = load %struct.atl1_tpd_ring*, %struct.atl1_tpd_ring** %7, align 8
  %285 = getelementptr inbounds %struct.atl1_tpd_ring, %struct.atl1_tpd_ring* %284, i32 0, i32 0
  %286 = load i64, i64* %285, align 8
  %287 = icmp eq i64 %283, %286
  br i1 %287, label %288, label %289

288:                                              ; preds = %258
  store i64 0, i64* %15, align 8
  br label %289

289:                                              ; preds = %288, %258
  br label %290

290:                                              ; preds = %289
  %291 = load i64, i64* %21, align 8
  %292 = add i64 %291, 1
  store i64 %292, i64* %21, align 8
  br label %235

293:                                              ; preds = %235
  br label %294

294:                                              ; preds = %293
  %295 = load i32, i32* %13, align 4
  %296 = add i32 %295, 1
  store i32 %296, i32* %13, align 4
  br label %215

297:                                              ; preds = %215
  %298 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %299 = load %struct.atl1_buffer*, %struct.atl1_buffer** %8, align 8
  %300 = getelementptr inbounds %struct.atl1_buffer, %struct.atl1_buffer* %299, i32 0, i32 1
  store %struct.sk_buff* %298, %struct.sk_buff** %300, align 8
  ret void
}

declare dso_local %struct.TYPE_3__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @BUG_ON(%struct.sk_buff*) #1

declare dso_local i64 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local i64 @tcp_hdrlen(%struct.sk_buff*) #1

declare dso_local %struct.page* @virt_to_page(i64) #1

declare dso_local i64 @offset_in_page(i64) #1

declare dso_local i8* @pci_map_page(%struct.TYPE_4__*, %struct.page*, i64, i64, i32) #1

declare dso_local i64 @skb_frag_size(i32*) #1

declare dso_local i8* @skb_frag_dma_map(i32*, i32*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
