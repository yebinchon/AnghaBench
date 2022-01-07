; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_main.c_e1000_tx_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_main.c_e1000_tx_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { i64, %struct.pci_dev*, %struct.e1000_hw }
%struct.pci_dev = type { i32 }
%struct.e1000_hw = type { i64 }
%struct.e1000_tx_ring = type { i32, i32, i32, %struct.e1000_tx_buffer* }
%struct.e1000_tx_buffer = type { i32, i32, i32, i32, i32, i64, %struct.sk_buff*, i8* }
%struct.sk_buff = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i32* }

@e1000_bus_type_pcix = common dso_local global i64 0, align 8
@jiffies = common dso_local global i8* null, align 8
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"TX DMA map failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_adapter*, %struct.e1000_tx_ring*, %struct.sk_buff*, i32, i32, i32, i32)* @e1000_tx_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_tx_map(%struct.e1000_adapter* %0, %struct.e1000_tx_ring* %1, %struct.sk_buff* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.e1000_adapter*, align 8
  %10 = alloca %struct.e1000_tx_ring*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.e1000_hw*, align 8
  %17 = alloca %struct.pci_dev*, align 8
  %18 = alloca %struct.e1000_tx_buffer*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 8
  %28 = alloca i64, align 8
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %9, align 8
  store %struct.e1000_tx_ring* %1, %struct.e1000_tx_ring** %10, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %29 = load %struct.e1000_adapter*, %struct.e1000_adapter** %9, align 8
  %30 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %29, i32 0, i32 2
  store %struct.e1000_hw* %30, %struct.e1000_hw** %16, align 8
  %31 = load %struct.e1000_adapter*, %struct.e1000_adapter** %9, align 8
  %32 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %31, i32 0, i32 1
  %33 = load %struct.pci_dev*, %struct.pci_dev** %32, align 8
  store %struct.pci_dev* %33, %struct.pci_dev** %17, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %35 = call i32 @skb_headlen(%struct.sk_buff* %34)
  store i32 %35, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %22, align 4
  %36 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %10, align 8
  %37 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %23, align 4
  br label %39

39:                                               ; preds = %193, %7
  %40 = load i32, i32* %19, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %194

42:                                               ; preds = %39
  %43 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %10, align 8
  %44 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %43, i32 0, i32 3
  %45 = load %struct.e1000_tx_buffer*, %struct.e1000_tx_buffer** %44, align 8
  %46 = load i32, i32* %23, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.e1000_tx_buffer, %struct.e1000_tx_buffer* %45, i64 %47
  store %struct.e1000_tx_buffer* %48, %struct.e1000_tx_buffer** %18, align 8
  %49 = load i32, i32* %19, align 4
  %50 = load i32, i32* %13, align 4
  %51 = call i32 @min(i32 %49, i32 %50)
  store i32 %51, i32* %21, align 4
  %52 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %70, label %56

56:                                               ; preds = %42
  %57 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %10, align 8
  %58 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %56
  %62 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %63 = call i32 @skb_is_gso(%struct.sk_buff* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %61
  %66 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %10, align 8
  %67 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %66, i32 0, i32 1
  store i32 0, i32* %67, align 4
  %68 = load i32, i32* %21, align 4
  %69 = sub i32 %68, 4
  store i32 %69, i32* %21, align 4
  br label %70

70:                                               ; preds = %65, %61, %56, %42
  %71 = load i32, i32* %15, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %70
  %74 = load i32, i32* %14, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %83, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* %21, align 4
  %78 = load i32, i32* %19, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load i32, i32* %21, align 4
  %82 = icmp ugt i32 %81, 8
  br label %83

83:                                               ; preds = %80, %76, %73, %70
  %84 = phi i1 [ false, %76 ], [ false, %73 ], [ false, %70 ], [ %82, %80 ]
  %85 = zext i1 %84 to i32
  %86 = call i64 @unlikely(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load i32, i32* %21, align 4
  %90 = sub i32 %89, 4
  store i32 %90, i32* %21, align 4
  br label %91

91:                                               ; preds = %88, %83
  %92 = load %struct.e1000_hw*, %struct.e1000_hw** %16, align 8
  %93 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @e1000_bus_type_pcix, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %103

97:                                               ; preds = %91
  %98 = load i32, i32* %21, align 4
  %99 = icmp ugt i32 %98, 2015
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load i32, i32* %22, align 4
  %102 = icmp eq i32 %101, 0
  br label %103

103:                                              ; preds = %100, %97, %91
  %104 = phi i1 [ false, %97 ], [ false, %91 ], [ %102, %100 ]
  %105 = zext i1 %104 to i32
  %106 = call i64 @unlikely(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %103
  store i32 2015, i32* %21, align 4
  br label %109

109:                                              ; preds = %108, %103
  %110 = load %struct.e1000_adapter*, %struct.e1000_adapter** %9, align 8
  %111 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %129

114:                                              ; preds = %109
  %115 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %116 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %20, align 4
  %119 = add i32 %117, %118
  %120 = load i32, i32* %21, align 4
  %121 = add i32 %119, %120
  %122 = sub i32 %121, 1
  %123 = zext i32 %122 to i64
  %124 = and i64 %123, 4
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %129, label %126

126:                                              ; preds = %114
  %127 = load i32, i32* %21, align 4
  %128 = icmp ugt i32 %127, 4
  br label %129

129:                                              ; preds = %126, %114, %109
  %130 = phi i1 [ false, %114 ], [ false, %109 ], [ %128, %126 ]
  %131 = zext i1 %130 to i32
  %132 = call i64 @unlikely(i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %129
  %135 = load i32, i32* %21, align 4
  %136 = sub i32 %135, 4
  store i32 %136, i32* %21, align 4
  br label %137

137:                                              ; preds = %134, %129
  %138 = load i32, i32* %21, align 4
  %139 = load %struct.e1000_tx_buffer*, %struct.e1000_tx_buffer** %18, align 8
  %140 = getelementptr inbounds %struct.e1000_tx_buffer, %struct.e1000_tx_buffer* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 8
  %141 = load i8*, i8** @jiffies, align 8
  %142 = load %struct.e1000_tx_buffer*, %struct.e1000_tx_buffer** %18, align 8
  %143 = getelementptr inbounds %struct.e1000_tx_buffer, %struct.e1000_tx_buffer* %142, i32 0, i32 7
  store i8* %141, i8** %143, align 8
  %144 = load %struct.e1000_tx_buffer*, %struct.e1000_tx_buffer** %18, align 8
  %145 = getelementptr inbounds %struct.e1000_tx_buffer, %struct.e1000_tx_buffer* %144, i32 0, i32 1
  store i32 0, i32* %145, align 4
  %146 = load %struct.pci_dev*, %struct.pci_dev** %17, align 8
  %147 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %146, i32 0, i32 0
  %148 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %149 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %20, align 4
  %152 = add i32 %150, %151
  %153 = load i32, i32* %21, align 4
  %154 = load i32, i32* @DMA_TO_DEVICE, align 4
  %155 = call i64 @dma_map_single(i32* %147, i32 %152, i32 %153, i32 %154)
  %156 = load %struct.e1000_tx_buffer*, %struct.e1000_tx_buffer** %18, align 8
  %157 = getelementptr inbounds %struct.e1000_tx_buffer, %struct.e1000_tx_buffer* %156, i32 0, i32 5
  store i64 %155, i64* %157, align 8
  %158 = load %struct.pci_dev*, %struct.pci_dev** %17, align 8
  %159 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %158, i32 0, i32 0
  %160 = load %struct.e1000_tx_buffer*, %struct.e1000_tx_buffer** %18, align 8
  %161 = getelementptr inbounds %struct.e1000_tx_buffer, %struct.e1000_tx_buffer* %160, i32 0, i32 5
  %162 = load i64, i64* %161, align 8
  %163 = call i64 @dma_mapping_error(i32* %159, i64 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %137
  br label %381

166:                                              ; preds = %137
  %167 = load i32, i32* %23, align 4
  %168 = load %struct.e1000_tx_buffer*, %struct.e1000_tx_buffer** %18, align 8
  %169 = getelementptr inbounds %struct.e1000_tx_buffer, %struct.e1000_tx_buffer* %168, i32 0, i32 2
  store i32 %167, i32* %169, align 8
  %170 = load i32, i32* %21, align 4
  %171 = load i32, i32* %19, align 4
  %172 = sub i32 %171, %170
  store i32 %172, i32* %19, align 4
  %173 = load i32, i32* %21, align 4
  %174 = load i32, i32* %20, align 4
  %175 = add i32 %174, %173
  store i32 %175, i32* %20, align 4
  %176 = load i32, i32* %22, align 4
  %177 = add i32 %176, 1
  store i32 %177, i32* %22, align 4
  %178 = load i32, i32* %19, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %193

180:                                              ; preds = %166
  %181 = load i32, i32* %23, align 4
  %182 = add i32 %181, 1
  store i32 %182, i32* %23, align 4
  %183 = load i32, i32* %23, align 4
  %184 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %10, align 8
  %185 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = icmp eq i32 %183, %186
  %188 = zext i1 %187 to i32
  %189 = call i64 @unlikely(i32 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %180
  store i32 0, i32* %23, align 4
  br label %192

192:                                              ; preds = %191, %180
  br label %193

193:                                              ; preds = %192, %166
  br label %39

194:                                              ; preds = %39
  store i32 0, i32* %24, align 4
  br label %195

195:                                              ; preds = %325, %194
  %196 = load i32, i32* %24, align 4
  %197 = load i32, i32* %14, align 4
  %198 = icmp ult i32 %196, %197
  br i1 %198, label %199, label %328

199:                                              ; preds = %195
  %200 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %201 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %200)
  %202 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %201, i32 0, i32 1
  %203 = load i32*, i32** %202, align 8
  %204 = load i32, i32* %24, align 4
  %205 = zext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  store i32* %206, i32** %27, align 8
  %207 = load i32*, i32** %27, align 8
  %208 = call i32 @skb_frag_size(i32* %207)
  store i32 %208, i32* %19, align 4
  store i32 0, i32* %20, align 4
  br label %209

209:                                              ; preds = %312, %199
  %210 = load i32, i32* %19, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %324

212:                                              ; preds = %209
  %213 = load i32, i32* %23, align 4
  %214 = add i32 %213, 1
  store i32 %214, i32* %23, align 4
  %215 = load i32, i32* %23, align 4
  %216 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %10, align 8
  %217 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = icmp eq i32 %215, %218
  %220 = zext i1 %219 to i32
  %221 = call i64 @unlikely(i32 %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %212
  store i32 0, i32* %23, align 4
  br label %224

224:                                              ; preds = %223, %212
  %225 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %10, align 8
  %226 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %225, i32 0, i32 3
  %227 = load %struct.e1000_tx_buffer*, %struct.e1000_tx_buffer** %226, align 8
  %228 = load i32, i32* %23, align 4
  %229 = zext i32 %228 to i64
  %230 = getelementptr inbounds %struct.e1000_tx_buffer, %struct.e1000_tx_buffer* %227, i64 %229
  store %struct.e1000_tx_buffer* %230, %struct.e1000_tx_buffer** %18, align 8
  %231 = load i32, i32* %19, align 4
  %232 = load i32, i32* %13, align 4
  %233 = call i32 @min(i32 %231, i32 %232)
  store i32 %233, i32* %21, align 4
  %234 = load i32, i32* %15, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %248

236:                                              ; preds = %224
  %237 = load i32, i32* %24, align 4
  %238 = load i32, i32* %14, align 4
  %239 = sub i32 %238, 1
  %240 = icmp eq i32 %237, %239
  br i1 %240, label %241, label %248

241:                                              ; preds = %236
  %242 = load i32, i32* %21, align 4
  %243 = load i32, i32* %19, align 4
  %244 = icmp eq i32 %242, %243
  br i1 %244, label %245, label %248

245:                                              ; preds = %241
  %246 = load i32, i32* %21, align 4
  %247 = icmp ugt i32 %246, 8
  br label %248

248:                                              ; preds = %245, %241, %236, %224
  %249 = phi i1 [ false, %241 ], [ false, %236 ], [ false, %224 ], [ %247, %245 ]
  %250 = zext i1 %249 to i32
  %251 = call i64 @unlikely(i32 %250)
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %256

253:                                              ; preds = %248
  %254 = load i32, i32* %21, align 4
  %255 = sub i32 %254, 4
  store i32 %255, i32* %21, align 4
  br label %256

256:                                              ; preds = %253, %248
  %257 = load i32*, i32** %27, align 8
  %258 = call i32 @skb_frag_page(i32* %257)
  %259 = call i64 @page_to_phys(i32 %258)
  store i64 %259, i64* %28, align 8
  %260 = load i32, i32* %20, align 4
  %261 = load i32, i32* %21, align 4
  %262 = add i32 %260, %261
  %263 = sub i32 %262, 1
  %264 = zext i32 %263 to i64
  %265 = load i64, i64* %28, align 8
  %266 = add i64 %265, %264
  store i64 %266, i64* %28, align 8
  %267 = load %struct.e1000_adapter*, %struct.e1000_adapter** %9, align 8
  %268 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %278

271:                                              ; preds = %256
  %272 = load i64, i64* %28, align 8
  %273 = and i64 %272, 4
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %278, label %275

275:                                              ; preds = %271
  %276 = load i32, i32* %21, align 4
  %277 = icmp ugt i32 %276, 4
  br label %278

278:                                              ; preds = %275, %271, %256
  %279 = phi i1 [ false, %271 ], [ false, %256 ], [ %277, %275 ]
  %280 = zext i1 %279 to i32
  %281 = call i64 @unlikely(i32 %280)
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %286

283:                                              ; preds = %278
  %284 = load i32, i32* %21, align 4
  %285 = sub i32 %284, 4
  store i32 %285, i32* %21, align 4
  br label %286

286:                                              ; preds = %283, %278
  %287 = load i32, i32* %21, align 4
  %288 = load %struct.e1000_tx_buffer*, %struct.e1000_tx_buffer** %18, align 8
  %289 = getelementptr inbounds %struct.e1000_tx_buffer, %struct.e1000_tx_buffer* %288, i32 0, i32 0
  store i32 %287, i32* %289, align 8
  %290 = load i8*, i8** @jiffies, align 8
  %291 = load %struct.e1000_tx_buffer*, %struct.e1000_tx_buffer** %18, align 8
  %292 = getelementptr inbounds %struct.e1000_tx_buffer, %struct.e1000_tx_buffer* %291, i32 0, i32 7
  store i8* %290, i8** %292, align 8
  %293 = load %struct.e1000_tx_buffer*, %struct.e1000_tx_buffer** %18, align 8
  %294 = getelementptr inbounds %struct.e1000_tx_buffer, %struct.e1000_tx_buffer* %293, i32 0, i32 1
  store i32 1, i32* %294, align 4
  %295 = load %struct.pci_dev*, %struct.pci_dev** %17, align 8
  %296 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %295, i32 0, i32 0
  %297 = load i32*, i32** %27, align 8
  %298 = load i32, i32* %20, align 4
  %299 = load i32, i32* %21, align 4
  %300 = load i32, i32* @DMA_TO_DEVICE, align 4
  %301 = call i64 @skb_frag_dma_map(i32* %296, i32* %297, i32 %298, i32 %299, i32 %300)
  %302 = load %struct.e1000_tx_buffer*, %struct.e1000_tx_buffer** %18, align 8
  %303 = getelementptr inbounds %struct.e1000_tx_buffer, %struct.e1000_tx_buffer* %302, i32 0, i32 5
  store i64 %301, i64* %303, align 8
  %304 = load %struct.pci_dev*, %struct.pci_dev** %17, align 8
  %305 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %304, i32 0, i32 0
  %306 = load %struct.e1000_tx_buffer*, %struct.e1000_tx_buffer** %18, align 8
  %307 = getelementptr inbounds %struct.e1000_tx_buffer, %struct.e1000_tx_buffer* %306, i32 0, i32 5
  %308 = load i64, i64* %307, align 8
  %309 = call i64 @dma_mapping_error(i32* %305, i64 %308)
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %311, label %312

311:                                              ; preds = %286
  br label %381

312:                                              ; preds = %286
  %313 = load i32, i32* %23, align 4
  %314 = load %struct.e1000_tx_buffer*, %struct.e1000_tx_buffer** %18, align 8
  %315 = getelementptr inbounds %struct.e1000_tx_buffer, %struct.e1000_tx_buffer* %314, i32 0, i32 2
  store i32 %313, i32* %315, align 8
  %316 = load i32, i32* %21, align 4
  %317 = load i32, i32* %19, align 4
  %318 = sub i32 %317, %316
  store i32 %318, i32* %19, align 4
  %319 = load i32, i32* %21, align 4
  %320 = load i32, i32* %20, align 4
  %321 = add i32 %320, %319
  store i32 %321, i32* %20, align 4
  %322 = load i32, i32* %22, align 4
  %323 = add i32 %322, 1
  store i32 %323, i32* %22, align 4
  br label %209

324:                                              ; preds = %209
  br label %325

325:                                              ; preds = %324
  %326 = load i32, i32* %24, align 4
  %327 = add i32 %326, 1
  store i32 %327, i32* %24, align 4
  br label %195

328:                                              ; preds = %195
  %329 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %330 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %329)
  %331 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %330, i32 0, i32 0
  %332 = load i64, i64* %331, align 8
  %333 = icmp ne i64 %332, 0
  br i1 %333, label %334, label %335

334:                                              ; preds = %328
  br label %336

335:                                              ; preds = %328
  br label %336

336:                                              ; preds = %335, %334
  %337 = phi i64 [ %332, %334 ], [ 1, %335 ]
  %338 = trunc i64 %337 to i32
  store i32 %338, i32* %26, align 4
  %339 = load i32, i32* %26, align 4
  %340 = sub i32 %339, 1
  %341 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %342 = call i32 @skb_headlen(%struct.sk_buff* %341)
  %343 = mul i32 %340, %342
  %344 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %345 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %344, i32 0, i32 1
  %346 = load i32, i32* %345, align 4
  %347 = add i32 %343, %346
  store i32 %347, i32* %25, align 4
  %348 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %349 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %10, align 8
  %350 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %349, i32 0, i32 3
  %351 = load %struct.e1000_tx_buffer*, %struct.e1000_tx_buffer** %350, align 8
  %352 = load i32, i32* %23, align 4
  %353 = zext i32 %352 to i64
  %354 = getelementptr inbounds %struct.e1000_tx_buffer, %struct.e1000_tx_buffer* %351, i64 %353
  %355 = getelementptr inbounds %struct.e1000_tx_buffer, %struct.e1000_tx_buffer* %354, i32 0, i32 6
  store %struct.sk_buff* %348, %struct.sk_buff** %355, align 8
  %356 = load i32, i32* %26, align 4
  %357 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %10, align 8
  %358 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %357, i32 0, i32 3
  %359 = load %struct.e1000_tx_buffer*, %struct.e1000_tx_buffer** %358, align 8
  %360 = load i32, i32* %23, align 4
  %361 = zext i32 %360 to i64
  %362 = getelementptr inbounds %struct.e1000_tx_buffer, %struct.e1000_tx_buffer* %359, i64 %361
  %363 = getelementptr inbounds %struct.e1000_tx_buffer, %struct.e1000_tx_buffer* %362, i32 0, i32 3
  store i32 %356, i32* %363, align 4
  %364 = load i32, i32* %25, align 4
  %365 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %10, align 8
  %366 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %365, i32 0, i32 3
  %367 = load %struct.e1000_tx_buffer*, %struct.e1000_tx_buffer** %366, align 8
  %368 = load i32, i32* %23, align 4
  %369 = zext i32 %368 to i64
  %370 = getelementptr inbounds %struct.e1000_tx_buffer, %struct.e1000_tx_buffer* %367, i64 %369
  %371 = getelementptr inbounds %struct.e1000_tx_buffer, %struct.e1000_tx_buffer* %370, i32 0, i32 4
  store i32 %364, i32* %371, align 8
  %372 = load i32, i32* %23, align 4
  %373 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %10, align 8
  %374 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %373, i32 0, i32 3
  %375 = load %struct.e1000_tx_buffer*, %struct.e1000_tx_buffer** %374, align 8
  %376 = load i32, i32* %12, align 4
  %377 = zext i32 %376 to i64
  %378 = getelementptr inbounds %struct.e1000_tx_buffer, %struct.e1000_tx_buffer* %375, i64 %377
  %379 = getelementptr inbounds %struct.e1000_tx_buffer, %struct.e1000_tx_buffer* %378, i32 0, i32 2
  store i32 %372, i32* %379, align 8
  %380 = load i32, i32* %22, align 4
  store i32 %380, i32* %8, align 4
  br label %419

381:                                              ; preds = %311, %165
  %382 = load %struct.pci_dev*, %struct.pci_dev** %17, align 8
  %383 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %382, i32 0, i32 0
  %384 = call i32 @dev_err(i32* %383, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %385 = load %struct.e1000_tx_buffer*, %struct.e1000_tx_buffer** %18, align 8
  %386 = getelementptr inbounds %struct.e1000_tx_buffer, %struct.e1000_tx_buffer* %385, i32 0, i32 5
  store i64 0, i64* %386, align 8
  %387 = load i32, i32* %22, align 4
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %389, label %392

389:                                              ; preds = %381
  %390 = load i32, i32* %22, align 4
  %391 = add i32 %390, -1
  store i32 %391, i32* %22, align 4
  br label %392

392:                                              ; preds = %389, %381
  br label %393

393:                                              ; preds = %406, %392
  %394 = load i32, i32* %22, align 4
  %395 = add i32 %394, -1
  store i32 %395, i32* %22, align 4
  %396 = icmp ne i32 %394, 0
  br i1 %396, label %397, label %418

397:                                              ; preds = %393
  %398 = load i32, i32* %23, align 4
  %399 = icmp eq i32 %398, 0
  br i1 %399, label %400, label %406

400:                                              ; preds = %397
  %401 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %10, align 8
  %402 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %401, i32 0, i32 2
  %403 = load i32, i32* %402, align 8
  %404 = load i32, i32* %23, align 4
  %405 = add i32 %404, %403
  store i32 %405, i32* %23, align 4
  br label %406

406:                                              ; preds = %400, %397
  %407 = load i32, i32* %23, align 4
  %408 = add i32 %407, -1
  store i32 %408, i32* %23, align 4
  %409 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %10, align 8
  %410 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %409, i32 0, i32 3
  %411 = load %struct.e1000_tx_buffer*, %struct.e1000_tx_buffer** %410, align 8
  %412 = load i32, i32* %23, align 4
  %413 = zext i32 %412 to i64
  %414 = getelementptr inbounds %struct.e1000_tx_buffer, %struct.e1000_tx_buffer* %411, i64 %413
  store %struct.e1000_tx_buffer* %414, %struct.e1000_tx_buffer** %18, align 8
  %415 = load %struct.e1000_adapter*, %struct.e1000_adapter** %9, align 8
  %416 = load %struct.e1000_tx_buffer*, %struct.e1000_tx_buffer** %18, align 8
  %417 = call i32 @e1000_unmap_and_free_tx_resource(%struct.e1000_adapter* %415, %struct.e1000_tx_buffer* %416)
  br label %393

418:                                              ; preds = %393
  store i32 0, i32* %8, align 4
  br label %419

419:                                              ; preds = %418, %336
  %420 = load i32, i32* %8, align 4
  ret i32 %420
}

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @dma_map_single(i32*, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i64) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local i64 @page_to_phys(i32) #1

declare dso_local i32 @skb_frag_page(i32*) #1

declare dso_local i64 @skb_frag_dma_map(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @e1000_unmap_and_free_tx_resource(%struct.e1000_adapter*, %struct.e1000_tx_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
