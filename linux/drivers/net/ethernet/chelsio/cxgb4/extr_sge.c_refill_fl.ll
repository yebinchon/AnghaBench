; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_sge.c_refill_fl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_sge.c_refill_fl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.sge, i32 }
%struct.sge = type { i32, i32, i64, i32 }
%struct.sge_fl = type { i32, i64, i64, i32, i64, i32, i32*, %struct.rx_sw_desc*, i32, i32, i32 }
%struct.rx_sw_desc = type { i32 }
%struct.page = type { i32 }

@__GFP_NOWARN = common dso_local global i32 0, align 4
@__GFP_COMP = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@RX_LARGE_PG_BUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, %struct.sge_fl*, i32, i32)* @refill_fl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @refill_fl(%struct.adapter* %0, %struct.sge_fl* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca %struct.sge_fl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sge*, align 8
  %10 = alloca %struct.page*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.rx_sw_desc*, align 8
  %15 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store %struct.sge_fl* %1, %struct.sge_fl** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load %struct.adapter*, %struct.adapter** %5, align 8
  %17 = getelementptr inbounds %struct.adapter, %struct.adapter* %16, i32 0, i32 0
  store %struct.sge* %17, %struct.sge** %9, align 8
  %18 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %19 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %12, align 4
  %21 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %22 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %21, i32 0, i32 6
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %25 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  store i32* %27, i32** %13, align 8
  %28 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %29 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %28, i32 0, i32 7
  %30 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %29, align 8
  %31 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %32 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.rx_sw_desc, %struct.rx_sw_desc* %30, i64 %33
  store %struct.rx_sw_desc* %34, %struct.rx_sw_desc** %14, align 8
  %35 = load i32, i32* @__GFP_NOWARN, align 4
  %36 = load i32, i32* %8, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %8, align 4
  %38 = load %struct.adapter*, %struct.adapter** %5, align 8
  %39 = getelementptr inbounds %struct.adapter, %struct.adapter* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @dev_to_node(i32 %40)
  store i32 %41, i32* %15, align 4
  %42 = load %struct.sge*, %struct.sge** %9, align 8
  %43 = getelementptr inbounds %struct.sge, %struct.sge* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %4
  br label %140

47:                                               ; preds = %4
  br label %48

48:                                               ; preds = %136, %47
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %139

51:                                               ; preds = %48
  %52 = load i32, i32* %15, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @__GFP_COMP, align 4
  %55 = or i32 %53, %54
  %56 = load %struct.sge*, %struct.sge** %9, align 8
  %57 = getelementptr inbounds %struct.sge, %struct.sge* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call %struct.page* @alloc_pages_node(i32 %52, i32 %55, i32 %58)
  store %struct.page* %59, %struct.page** %10, align 8
  %60 = load %struct.page*, %struct.page** %10, align 8
  %61 = icmp ne %struct.page* %60, null
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = call i64 @unlikely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %51
  %67 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %68 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %67, i32 0, i32 10
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 8
  br label %139

71:                                               ; preds = %51
  %72 = load %struct.adapter*, %struct.adapter** %5, align 8
  %73 = getelementptr inbounds %struct.adapter, %struct.adapter* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.page*, %struct.page** %10, align 8
  %76 = load i32, i32* @PAGE_SIZE, align 4
  %77 = load %struct.sge*, %struct.sge** %9, align 8
  %78 = getelementptr inbounds %struct.sge, %struct.sge* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = shl i32 %76, %79
  %81 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %82 = call i32 @dma_map_page(i32 %74, %struct.page* %75, i32 0, i32 %80, i32 %81)
  store i32 %82, i32* %11, align 4
  %83 = load %struct.adapter*, %struct.adapter** %5, align 8
  %84 = getelementptr inbounds %struct.adapter, %struct.adapter* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @dma_mapping_error(i32 %85, i32 %86)
  %88 = call i64 @unlikely(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %71
  %91 = load %struct.page*, %struct.page** %10, align 8
  %92 = load %struct.sge*, %struct.sge** %9, align 8
  %93 = getelementptr inbounds %struct.sge, %struct.sge* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @__free_pages(%struct.page* %91, i32 %94)
  %96 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %97 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %96, i32 0, i32 8
  %98 = load i32, i32* %97, align 8
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 8
  br label %217

100:                                              ; preds = %71
  %101 = load i32, i32* @RX_LARGE_PG_BUF, align 4
  %102 = load i32, i32* %11, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %11, align 4
  %105 = call i8* @cpu_to_be64(i32 %104)
  %106 = ptrtoint i8* %105 to i32
  %107 = load i32*, i32** %13, align 8
  %108 = getelementptr inbounds i32, i32* %107, i32 1
  store i32* %108, i32** %13, align 8
  store i32 %106, i32* %107, align 4
  %109 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %14, align 8
  %110 = load %struct.page*, %struct.page** %10, align 8
  %111 = load i32, i32* %11, align 4
  %112 = call i32 @set_rx_sw_desc(%struct.rx_sw_desc* %109, %struct.page* %110, i32 %111)
  %113 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %14, align 8
  %114 = getelementptr inbounds %struct.rx_sw_desc, %struct.rx_sw_desc* %113, i32 1
  store %struct.rx_sw_desc* %114, %struct.rx_sw_desc** %14, align 8
  %115 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %116 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = add i32 %117, 1
  store i32 %118, i32* %116, align 8
  %119 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %120 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = add i64 %121, 1
  store i64 %122, i64* %120, align 8
  %123 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %124 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = icmp eq i64 %122, %125
  br i1 %126, label %127, label %136

127:                                              ; preds = %100
  %128 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %129 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %128, i32 0, i32 1
  store i64 0, i64* %129, align 8
  %130 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %131 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %130, i32 0, i32 7
  %132 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %131, align 8
  store %struct.rx_sw_desc* %132, %struct.rx_sw_desc** %14, align 8
  %133 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %134 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %133, i32 0, i32 6
  %135 = load i32*, i32** %134, align 8
  store i32* %135, i32** %13, align 8
  br label %136

136:                                              ; preds = %127, %100
  %137 = load i32, i32* %7, align 4
  %138 = add nsw i32 %137, -1
  store i32 %138, i32* %7, align 4
  br label %48

139:                                              ; preds = %66, %48
  br label %140

140:                                              ; preds = %139, %46
  br label %141

141:                                              ; preds = %215, %140
  %142 = load i32, i32* %7, align 4
  %143 = add nsw i32 %142, -1
  store i32 %143, i32* %7, align 4
  %144 = icmp ne i32 %142, 0
  br i1 %144, label %145, label %216

145:                                              ; preds = %141
  %146 = load i32, i32* %15, align 4
  %147 = load i32, i32* %8, align 4
  %148 = call %struct.page* @alloc_pages_node(i32 %146, i32 %147, i32 0)
  store %struct.page* %148, %struct.page** %10, align 8
  %149 = load %struct.page*, %struct.page** %10, align 8
  %150 = icmp ne %struct.page* %149, null
  %151 = xor i1 %150, true
  %152 = zext i1 %151 to i32
  %153 = call i64 @unlikely(i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %145
  %156 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %157 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %156, i32 0, i32 9
  %158 = load i32, i32* %157, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %157, align 4
  br label %216

160:                                              ; preds = %145
  %161 = load %struct.adapter*, %struct.adapter** %5, align 8
  %162 = getelementptr inbounds %struct.adapter, %struct.adapter* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.page*, %struct.page** %10, align 8
  %165 = load i32, i32* @PAGE_SIZE, align 4
  %166 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %167 = call i32 @dma_map_page(i32 %163, %struct.page* %164, i32 0, i32 %165, i32 %166)
  store i32 %167, i32* %11, align 4
  %168 = load %struct.adapter*, %struct.adapter** %5, align 8
  %169 = getelementptr inbounds %struct.adapter, %struct.adapter* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* %11, align 4
  %172 = call i32 @dma_mapping_error(i32 %170, i32 %171)
  %173 = call i64 @unlikely(i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %182

175:                                              ; preds = %160
  %176 = load %struct.page*, %struct.page** %10, align 8
  %177 = call i32 @put_page(%struct.page* %176)
  %178 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %179 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %178, i32 0, i32 8
  %180 = load i32, i32* %179, align 8
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %179, align 8
  br label %217

182:                                              ; preds = %160
  %183 = load i32, i32* %11, align 4
  %184 = call i8* @cpu_to_be64(i32 %183)
  %185 = ptrtoint i8* %184 to i32
  %186 = load i32*, i32** %13, align 8
  %187 = getelementptr inbounds i32, i32* %186, i32 1
  store i32* %187, i32** %13, align 8
  store i32 %185, i32* %186, align 4
  %188 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %14, align 8
  %189 = load %struct.page*, %struct.page** %10, align 8
  %190 = load i32, i32* %11, align 4
  %191 = call i32 @set_rx_sw_desc(%struct.rx_sw_desc* %188, %struct.page* %189, i32 %190)
  %192 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %14, align 8
  %193 = getelementptr inbounds %struct.rx_sw_desc, %struct.rx_sw_desc* %192, i32 1
  store %struct.rx_sw_desc* %193, %struct.rx_sw_desc** %14, align 8
  %194 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %195 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = add i32 %196, 1
  store i32 %197, i32* %195, align 8
  %198 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %199 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = add i64 %200, 1
  store i64 %201, i64* %199, align 8
  %202 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %203 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %202, i32 0, i32 2
  %204 = load i64, i64* %203, align 8
  %205 = icmp eq i64 %201, %204
  br i1 %205, label %206, label %215

206:                                              ; preds = %182
  %207 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %208 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %207, i32 0, i32 1
  store i64 0, i64* %208, align 8
  %209 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %210 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %209, i32 0, i32 7
  %211 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %210, align 8
  store %struct.rx_sw_desc* %211, %struct.rx_sw_desc** %14, align 8
  %212 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %213 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %212, i32 0, i32 6
  %214 = load i32*, i32** %213, align 8
  store i32* %214, i32** %13, align 8
  br label %215

215:                                              ; preds = %206, %182
  br label %141

216:                                              ; preds = %155, %141
  br label %217

217:                                              ; preds = %216, %175, %90
  %218 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %219 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = load i32, i32* %12, align 4
  %222 = sub i32 %220, %221
  store i32 %222, i32* %12, align 4
  %223 = load i32, i32* %12, align 4
  %224 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %225 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %224, i32 0, i32 3
  %226 = load i32, i32* %225, align 8
  %227 = add i32 %226, %223
  store i32 %227, i32* %225, align 8
  %228 = load %struct.adapter*, %struct.adapter** %5, align 8
  %229 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %230 = call i32 @ring_fl_db(%struct.adapter* %228, %struct.sge_fl* %229)
  %231 = load %struct.adapter*, %struct.adapter** %5, align 8
  %232 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %233 = call i32 @fl_starving(%struct.adapter* %231, %struct.sge_fl* %232)
  %234 = call i64 @unlikely(i32 %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %255

236:                                              ; preds = %217
  %237 = call i32 (...) @smp_wmb()
  %238 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %239 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %238, i32 0, i32 5
  %240 = load i32, i32* %239, align 8
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %239, align 8
  %242 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %243 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %242, i32 0, i32 4
  %244 = load i64, i64* %243, align 8
  %245 = load %struct.adapter*, %struct.adapter** %5, align 8
  %246 = getelementptr inbounds %struct.adapter, %struct.adapter* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.sge, %struct.sge* %246, i32 0, i32 2
  %248 = load i64, i64* %247, align 8
  %249 = sub nsw i64 %244, %248
  %250 = load %struct.adapter*, %struct.adapter** %5, align 8
  %251 = getelementptr inbounds %struct.adapter, %struct.adapter* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.sge, %struct.sge* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = call i32 @set_bit(i64 %249, i32 %253)
  br label %255

255:                                              ; preds = %236, %217
  %256 = load i32, i32* %12, align 4
  ret i32 %256
}

declare dso_local i32 @dev_to_node(i32) #1

declare dso_local %struct.page* @alloc_pages_node(i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_map_page(i32, %struct.page*, i32, i32, i32) #1

declare dso_local i32 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @__free_pages(%struct.page*, i32) #1

declare dso_local i8* @cpu_to_be64(i32) #1

declare dso_local i32 @set_rx_sw_desc(%struct.rx_sw_desc*, %struct.page*, i32) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @ring_fl_db(%struct.adapter*, %struct.sge_fl*) #1

declare dso_local i32 @fl_starving(%struct.adapter*, %struct.sge_fl*) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @set_bit(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
