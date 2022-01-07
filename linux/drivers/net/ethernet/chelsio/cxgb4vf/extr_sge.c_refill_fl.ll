; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_sge.c_refill_fl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_sge.c_refill_fl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.sge, i32 }
%struct.sge = type { i32, i32 }
%struct.sge_fl = type { i32, i64, i64, i32, i32, i32*, %struct.rx_sw_desc*, i32, i32 }
%struct.rx_sw_desc = type { i32 }
%struct.page = type { i32 }

@FL_PER_EQ_UNIT = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@RX_LARGE_BUF = common dso_local global i32 0, align 4
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
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store %struct.sge_fl* %1, %struct.sge_fl** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load %struct.adapter*, %struct.adapter** %5, align 8
  %16 = getelementptr inbounds %struct.adapter, %struct.adapter* %15, i32 0, i32 0
  store %struct.sge* %16, %struct.sge** %9, align 8
  %17 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %18 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %12, align 4
  %20 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %21 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %20, i32 0, i32 5
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %24 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  store i32* %26, i32** %13, align 8
  %27 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %28 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %27, i32 0, i32 6
  %29 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %28, align 8
  %30 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %31 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.rx_sw_desc, %struct.rx_sw_desc* %29, i64 %32
  store %struct.rx_sw_desc* %33, %struct.rx_sw_desc** %14, align 8
  %34 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %35 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = add i32 %36, %37
  %39 = zext i32 %38 to i64
  %40 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %41 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* @FL_PER_EQ_UNIT, align 4
  %44 = sext i32 %43 to i64
  %45 = sub i64 %42, %44
  %46 = icmp ugt i64 %39, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @BUG_ON(i32 %47)
  %49 = load i32, i32* @__GFP_NOWARN, align 4
  %50 = load i32, i32* %8, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %8, align 4
  %52 = load %struct.sge*, %struct.sge** %9, align 8
  %53 = getelementptr inbounds %struct.sge, %struct.sge* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %4
  br label %150

57:                                               ; preds = %4
  br label %58

58:                                               ; preds = %146, %57
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %149

61:                                               ; preds = %58
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.sge*, %struct.sge** %9, align 8
  %64 = getelementptr inbounds %struct.sge, %struct.sge* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call %struct.page* @__dev_alloc_pages(i32 %62, i32 %65)
  store %struct.page* %66, %struct.page** %10, align 8
  %67 = load %struct.page*, %struct.page** %10, align 8
  %68 = icmp ne %struct.page* %67, null
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  %71 = call i64 @unlikely(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %61
  %74 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %75 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %74, i32 0, i32 8
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  br label %149

78:                                               ; preds = %61
  %79 = load %struct.page*, %struct.page** %10, align 8
  %80 = load i32, i32* @PAGE_SIZE, align 4
  %81 = load %struct.sge*, %struct.sge** %9, align 8
  %82 = getelementptr inbounds %struct.sge, %struct.sge* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = shl i32 %80, %83
  %85 = call i32 @poison_buf(%struct.page* %79, i32 %84)
  %86 = load %struct.adapter*, %struct.adapter** %5, align 8
  %87 = getelementptr inbounds %struct.adapter, %struct.adapter* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.page*, %struct.page** %10, align 8
  %90 = load i32, i32* @PAGE_SIZE, align 4
  %91 = load %struct.sge*, %struct.sge** %9, align 8
  %92 = getelementptr inbounds %struct.sge, %struct.sge* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = shl i32 %90, %93
  %95 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %96 = call i32 @dma_map_page(i32 %88, %struct.page* %89, i32 0, i32 %94, i32 %95)
  store i32 %96, i32* %11, align 4
  %97 = load %struct.adapter*, %struct.adapter** %5, align 8
  %98 = getelementptr inbounds %struct.adapter, %struct.adapter* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %11, align 4
  %101 = call i32 @dma_mapping_error(i32 %99, i32 %100)
  %102 = call i64 @unlikely(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %78
  %105 = load %struct.page*, %struct.page** %10, align 8
  %106 = load %struct.sge*, %struct.sge** %9, align 8
  %107 = getelementptr inbounds %struct.sge, %struct.sge* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @__free_pages(%struct.page* %105, i32 %108)
  br label %225

110:                                              ; preds = %78
  %111 = load i32, i32* @RX_LARGE_BUF, align 4
  %112 = load i32, i32* %11, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %11, align 4
  %114 = load i32, i32* %11, align 4
  %115 = call i8* @cpu_to_be64(i32 %114)
  %116 = ptrtoint i8* %115 to i32
  %117 = load i32*, i32** %13, align 8
  %118 = getelementptr inbounds i32, i32* %117, i32 1
  store i32* %118, i32** %13, align 8
  store i32 %116, i32* %117, align 4
  %119 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %14, align 8
  %120 = load %struct.page*, %struct.page** %10, align 8
  %121 = load i32, i32* %11, align 4
  %122 = call i32 @set_rx_sw_desc(%struct.rx_sw_desc* %119, %struct.page* %120, i32 %121)
  %123 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %14, align 8
  %124 = getelementptr inbounds %struct.rx_sw_desc, %struct.rx_sw_desc* %123, i32 1
  store %struct.rx_sw_desc* %124, %struct.rx_sw_desc** %14, align 8
  %125 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %126 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = add i32 %127, 1
  store i32 %128, i32* %126, align 8
  %129 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %130 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = add i64 %131, 1
  store i64 %132, i64* %130, align 8
  %133 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %134 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = icmp eq i64 %132, %135
  br i1 %136, label %137, label %146

137:                                              ; preds = %110
  %138 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %139 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %138, i32 0, i32 1
  store i64 0, i64* %139, align 8
  %140 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %141 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %140, i32 0, i32 6
  %142 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %141, align 8
  store %struct.rx_sw_desc* %142, %struct.rx_sw_desc** %14, align 8
  %143 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %144 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %143, i32 0, i32 5
  %145 = load i32*, i32** %144, align 8
  store i32* %145, i32** %13, align 8
  br label %146

146:                                              ; preds = %137, %110
  %147 = load i32, i32* %7, align 4
  %148 = add nsw i32 %147, -1
  store i32 %148, i32* %7, align 4
  br label %58

149:                                              ; preds = %73, %58
  br label %150

150:                                              ; preds = %149, %56
  br label %151

151:                                              ; preds = %223, %150
  %152 = load i32, i32* %7, align 4
  %153 = add nsw i32 %152, -1
  store i32 %153, i32* %7, align 4
  %154 = icmp ne i32 %152, 0
  br i1 %154, label %155, label %224

155:                                              ; preds = %151
  %156 = load i32, i32* %8, align 4
  %157 = call %struct.page* @__dev_alloc_page(i32 %156)
  store %struct.page* %157, %struct.page** %10, align 8
  %158 = load %struct.page*, %struct.page** %10, align 8
  %159 = icmp ne %struct.page* %158, null
  %160 = xor i1 %159, true
  %161 = zext i1 %160 to i32
  %162 = call i64 @unlikely(i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %155
  %165 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %166 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %165, i32 0, i32 7
  %167 = load i32, i32* %166, align 8
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %166, align 8
  br label %224

169:                                              ; preds = %155
  %170 = load %struct.page*, %struct.page** %10, align 8
  %171 = load i32, i32* @PAGE_SIZE, align 4
  %172 = call i32 @poison_buf(%struct.page* %170, i32 %171)
  %173 = load %struct.adapter*, %struct.adapter** %5, align 8
  %174 = getelementptr inbounds %struct.adapter, %struct.adapter* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.page*, %struct.page** %10, align 8
  %177 = load i32, i32* @PAGE_SIZE, align 4
  %178 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %179 = call i32 @dma_map_page(i32 %175, %struct.page* %176, i32 0, i32 %177, i32 %178)
  store i32 %179, i32* %11, align 4
  %180 = load %struct.adapter*, %struct.adapter** %5, align 8
  %181 = getelementptr inbounds %struct.adapter, %struct.adapter* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* %11, align 4
  %184 = call i32 @dma_mapping_error(i32 %182, i32 %183)
  %185 = call i64 @unlikely(i32 %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %169
  %188 = load %struct.page*, %struct.page** %10, align 8
  %189 = call i32 @put_page(%struct.page* %188)
  br label %224

190:                                              ; preds = %169
  %191 = load i32, i32* %11, align 4
  %192 = call i8* @cpu_to_be64(i32 %191)
  %193 = ptrtoint i8* %192 to i32
  %194 = load i32*, i32** %13, align 8
  %195 = getelementptr inbounds i32, i32* %194, i32 1
  store i32* %195, i32** %13, align 8
  store i32 %193, i32* %194, align 4
  %196 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %14, align 8
  %197 = load %struct.page*, %struct.page** %10, align 8
  %198 = load i32, i32* %11, align 4
  %199 = call i32 @set_rx_sw_desc(%struct.rx_sw_desc* %196, %struct.page* %197, i32 %198)
  %200 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %14, align 8
  %201 = getelementptr inbounds %struct.rx_sw_desc, %struct.rx_sw_desc* %200, i32 1
  store %struct.rx_sw_desc* %201, %struct.rx_sw_desc** %14, align 8
  %202 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %203 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = add i32 %204, 1
  store i32 %205, i32* %203, align 8
  %206 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %207 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %206, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = add i64 %208, 1
  store i64 %209, i64* %207, align 8
  %210 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %211 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %210, i32 0, i32 2
  %212 = load i64, i64* %211, align 8
  %213 = icmp eq i64 %209, %212
  br i1 %213, label %214, label %223

214:                                              ; preds = %190
  %215 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %216 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %215, i32 0, i32 1
  store i64 0, i64* %216, align 8
  %217 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %218 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %217, i32 0, i32 6
  %219 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %218, align 8
  store %struct.rx_sw_desc* %219, %struct.rx_sw_desc** %14, align 8
  %220 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %221 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %220, i32 0, i32 5
  %222 = load i32*, i32** %221, align 8
  store i32* %222, i32** %13, align 8
  br label %223

223:                                              ; preds = %214, %190
  br label %151

224:                                              ; preds = %187, %164, %151
  br label %225

225:                                              ; preds = %224, %104
  %226 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %227 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = load i32, i32* %12, align 4
  %230 = sub i32 %228, %229
  store i32 %230, i32* %12, align 4
  %231 = load i32, i32* %12, align 4
  %232 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %233 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %232, i32 0, i32 3
  %234 = load i32, i32* %233, align 8
  %235 = add i32 %234, %231
  store i32 %235, i32* %233, align 8
  %236 = load %struct.adapter*, %struct.adapter** %5, align 8
  %237 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %238 = call i32 @ring_fl_db(%struct.adapter* %236, %struct.sge_fl* %237)
  %239 = load %struct.adapter*, %struct.adapter** %5, align 8
  %240 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %241 = call i32 @fl_starving(%struct.adapter* %239, %struct.sge_fl* %240)
  %242 = call i64 @unlikely(i32 %241)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %254

244:                                              ; preds = %225
  %245 = call i32 (...) @smp_wmb()
  %246 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %247 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %246, i32 0, i32 4
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.adapter*, %struct.adapter** %5, align 8
  %250 = getelementptr inbounds %struct.adapter, %struct.adapter* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.sge, %struct.sge* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = call i32 @set_bit(i32 %248, i32 %252)
  br label %254

254:                                              ; preds = %244, %225
  %255 = load i32, i32* %12, align 4
  ret i32 %255
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.page* @__dev_alloc_pages(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @poison_buf(%struct.page*, i32) #1

declare dso_local i32 @dma_map_page(i32, %struct.page*, i32, i32, i32) #1

declare dso_local i32 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @__free_pages(%struct.page*, i32) #1

declare dso_local i8* @cpu_to_be64(i32) #1

declare dso_local i32 @set_rx_sw_desc(%struct.rx_sw_desc*, %struct.page*, i32) #1

declare dso_local %struct.page* @__dev_alloc_page(i32) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @ring_fl_db(%struct.adapter*, %struct.sge_fl*) #1

declare dso_local i32 @fl_starving(%struct.adapter*, %struct.sge_fl*) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
