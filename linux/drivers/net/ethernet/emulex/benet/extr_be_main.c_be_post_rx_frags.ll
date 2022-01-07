; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_post_rx_frags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_post_rx_frags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_rx_obj = type { i32, %struct.be_rx_page_info*, %struct.be_queue_info, %struct.be_adapter* }
%struct.be_rx_page_info = type { i32, i32, %struct.page* }
%struct.page = type { i32 }
%struct.be_queue_info = type { i64, i32, i32 }
%struct.be_adapter = type { i64, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%struct.be_eth_rx_d = type { i8*, i8* }
%struct.TYPE_6__ = type { i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@rx_frag_size = common dso_local global i64 0, align 8
@bus = common dso_local global i32 0, align 4
@MAX_NUM_POST_ERX_DB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.be_rx_obj*, i32, i64)* @be_post_rx_frags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @be_post_rx_frags(%struct.be_rx_obj* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.be_rx_obj*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.be_adapter*, align 8
  %8 = alloca %struct.be_rx_page_info*, align 8
  %9 = alloca %struct.be_rx_page_info*, align 8
  %10 = alloca %struct.be_queue_info*, align 8
  %11 = alloca %struct.page*, align 8
  %12 = alloca %struct.device*, align 8
  %13 = alloca %struct.be_eth_rx_d*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.be_rx_obj* %0, %struct.be_rx_obj** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %19 = load %struct.be_rx_obj*, %struct.be_rx_obj** %4, align 8
  %20 = getelementptr inbounds %struct.be_rx_obj, %struct.be_rx_obj* %19, i32 0, i32 3
  %21 = load %struct.be_adapter*, %struct.be_adapter** %20, align 8
  store %struct.be_adapter* %21, %struct.be_adapter** %7, align 8
  store %struct.be_rx_page_info* null, %struct.be_rx_page_info** %8, align 8
  store %struct.be_rx_page_info* null, %struct.be_rx_page_info** %9, align 8
  %22 = load %struct.be_rx_obj*, %struct.be_rx_obj** %4, align 8
  %23 = getelementptr inbounds %struct.be_rx_obj, %struct.be_rx_obj* %22, i32 0, i32 2
  store %struct.be_queue_info* %23, %struct.be_queue_info** %10, align 8
  store %struct.page* null, %struct.page** %11, align 8
  %24 = load %struct.be_adapter*, %struct.be_adapter** %7, align 8
  %25 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %24, i32 0, i32 2
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store %struct.device* %27, %struct.device** %12, align 8
  store i32 0, i32* %14, align 4
  store i64 0, i64* %17, align 8
  store i64 0, i64* %18, align 8
  %28 = load %struct.be_rx_obj*, %struct.be_rx_obj** %4, align 8
  %29 = getelementptr inbounds %struct.be_rx_obj, %struct.be_rx_obj* %28, i32 0, i32 1
  %30 = load %struct.be_rx_page_info*, %struct.be_rx_page_info** %29, align 8
  %31 = load %struct.be_queue_info*, %struct.be_queue_info** %10, align 8
  %32 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.be_rx_page_info, %struct.be_rx_page_info* %30, i64 %33
  store %struct.be_rx_page_info* %34, %struct.be_rx_page_info** %8, align 8
  store i64 0, i64* %16, align 8
  br label %35

35:                                               ; preds = %151, %3
  %36 = load i64, i64* %16, align 8
  %37 = load i64, i64* %6, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %35
  %40 = load %struct.be_rx_page_info*, %struct.be_rx_page_info** %8, align 8
  %41 = getelementptr inbounds %struct.be_rx_page_info, %struct.be_rx_page_info* %40, i32 0, i32 2
  %42 = load %struct.page*, %struct.page** %41, align 8
  %43 = icmp ne %struct.page* %42, null
  %44 = xor i1 %43, true
  br label %45

45:                                               ; preds = %39, %35
  %46 = phi i1 [ false, %35 ], [ %44, %39 ]
  br i1 %46, label %47, label %154

47:                                               ; preds = %45
  %48 = load %struct.page*, %struct.page** %11, align 8
  %49 = icmp ne %struct.page* %48, null
  br i1 %49, label %89, label %50

50:                                               ; preds = %47
  %51 = load %struct.be_adapter*, %struct.be_adapter** %7, align 8
  %52 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call %struct.page* @be_alloc_pages(i64 %53, i32 %54)
  store %struct.page* %55, %struct.page** %11, align 8
  %56 = load %struct.page*, %struct.page** %11, align 8
  %57 = icmp ne %struct.page* %56, null
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = call i64 @unlikely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %50
  %63 = load %struct.be_rx_obj*, %struct.be_rx_obj** %4, align 8
  %64 = call %struct.TYPE_6__* @rx_stats(%struct.be_rx_obj* %63)
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 4
  br label %154

68:                                               ; preds = %50
  %69 = load %struct.device*, %struct.device** %12, align 8
  %70 = load %struct.page*, %struct.page** %11, align 8
  %71 = load %struct.be_adapter*, %struct.be_adapter** %7, align 8
  %72 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %75 = call i32 @dma_map_page(%struct.device* %69, %struct.page* %70, i32 0, i64 %73, i32 %74)
  store i32 %75, i32* %14, align 4
  %76 = load %struct.device*, %struct.device** %12, align 8
  %77 = load i32, i32* %14, align 4
  %78 = call i64 @dma_mapping_error(%struct.device* %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %68
  %81 = load %struct.page*, %struct.page** %11, align 8
  %82 = call i32 @put_page(%struct.page* %81)
  store %struct.page* null, %struct.page** %11, align 8
  %83 = load %struct.be_adapter*, %struct.be_adapter** %7, align 8
  %84 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 8
  br label %154

88:                                               ; preds = %68
  store i64 0, i64* %17, align 8
  br label %95

89:                                               ; preds = %47
  %90 = load %struct.page*, %struct.page** %11, align 8
  %91 = call i32 @get_page(%struct.page* %90)
  %92 = load i64, i64* @rx_frag_size, align 8
  %93 = load i64, i64* %17, align 8
  %94 = add nsw i64 %93, %92
  store i64 %94, i64* %17, align 8
  br label %95

95:                                               ; preds = %89, %88
  %96 = load i64, i64* %17, align 8
  %97 = trunc i64 %96 to i32
  %98 = load %struct.be_rx_page_info*, %struct.be_rx_page_info** %8, align 8
  %99 = getelementptr inbounds %struct.be_rx_page_info, %struct.be_rx_page_info* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = load %struct.page*, %struct.page** %11, align 8
  %101 = load %struct.be_rx_page_info*, %struct.be_rx_page_info** %8, align 8
  %102 = getelementptr inbounds %struct.be_rx_page_info, %struct.be_rx_page_info* %101, i32 0, i32 2
  store %struct.page* %100, %struct.page** %102, align 8
  %103 = load %struct.be_queue_info*, %struct.be_queue_info** %10, align 8
  %104 = call %struct.be_eth_rx_d* @queue_head_node(%struct.be_queue_info* %103)
  store %struct.be_eth_rx_d* %104, %struct.be_eth_rx_d** %13, align 8
  %105 = load i32, i32* %14, align 4
  %106 = load %struct.be_rx_page_info*, %struct.be_rx_page_info** %8, align 8
  %107 = getelementptr inbounds %struct.be_rx_page_info, %struct.be_rx_page_info* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = add nsw i32 %105, %108
  store i32 %109, i32* %15, align 4
  %110 = load i32, i32* %15, align 4
  %111 = call i8* @cpu_to_le32(i32 %110)
  %112 = load %struct.be_eth_rx_d*, %struct.be_eth_rx_d** %13, align 8
  %113 = getelementptr inbounds %struct.be_eth_rx_d, %struct.be_eth_rx_d* %112, i32 0, i32 1
  store i8* %111, i8** %113, align 8
  %114 = load i32, i32* %15, align 4
  %115 = call i32 @upper_32_bits(i32 %114)
  %116 = call i8* @cpu_to_le32(i32 %115)
  %117 = load %struct.be_eth_rx_d*, %struct.be_eth_rx_d** %13, align 8
  %118 = getelementptr inbounds %struct.be_eth_rx_d, %struct.be_eth_rx_d* %117, i32 0, i32 0
  store i8* %116, i8** %118, align 8
  %119 = load i64, i64* %17, align 8
  %120 = load i64, i64* @rx_frag_size, align 8
  %121 = add nsw i64 %119, %120
  %122 = load i64, i64* @rx_frag_size, align 8
  %123 = add nsw i64 %121, %122
  %124 = load %struct.be_adapter*, %struct.be_adapter** %7, align 8
  %125 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp sgt i64 %123, %126
  br i1 %127, label %128, label %135

128:                                              ; preds = %95
  store %struct.page* null, %struct.page** %11, align 8
  %129 = load %struct.be_rx_page_info*, %struct.be_rx_page_info** %8, align 8
  %130 = getelementptr inbounds %struct.be_rx_page_info, %struct.be_rx_page_info* %129, i32 0, i32 1
  store i32 1, i32* %130, align 4
  %131 = load %struct.be_rx_page_info*, %struct.be_rx_page_info** %8, align 8
  %132 = load i32, i32* @bus, align 4
  %133 = load i32, i32* %14, align 4
  %134 = call i32 @dma_unmap_addr_set(%struct.be_rx_page_info* %131, i32 %132, i32 %133)
  br label %140

135:                                              ; preds = %95
  %136 = load %struct.be_rx_page_info*, %struct.be_rx_page_info** %8, align 8
  %137 = load i32, i32* @bus, align 4
  %138 = load i32, i32* %15, align 4
  %139 = call i32 @dma_unmap_addr_set(%struct.be_rx_page_info* %136, i32 %137, i32 %138)
  br label %140

140:                                              ; preds = %135, %128
  %141 = load %struct.be_rx_page_info*, %struct.be_rx_page_info** %8, align 8
  store %struct.be_rx_page_info* %141, %struct.be_rx_page_info** %9, align 8
  %142 = load %struct.be_queue_info*, %struct.be_queue_info** %10, align 8
  %143 = call i32 @queue_head_inc(%struct.be_queue_info* %142)
  %144 = load %struct.be_rx_obj*, %struct.be_rx_obj** %4, align 8
  %145 = getelementptr inbounds %struct.be_rx_obj, %struct.be_rx_obj* %144, i32 0, i32 1
  %146 = load %struct.be_rx_page_info*, %struct.be_rx_page_info** %145, align 8
  %147 = load %struct.be_queue_info*, %struct.be_queue_info** %10, align 8
  %148 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = getelementptr inbounds %struct.be_rx_page_info, %struct.be_rx_page_info* %146, i64 %149
  store %struct.be_rx_page_info* %150, %struct.be_rx_page_info** %8, align 8
  br label %151

151:                                              ; preds = %140
  %152 = load i64, i64* %16, align 8
  %153 = add nsw i64 %152, 1
  store i64 %153, i64* %16, align 8
  br label %35

154:                                              ; preds = %80, %62, %45
  %155 = load %struct.page*, %struct.page** %11, align 8
  %156 = icmp ne %struct.page* %155, null
  br i1 %156, label %157, label %164

157:                                              ; preds = %154
  %158 = load %struct.be_rx_page_info*, %struct.be_rx_page_info** %9, align 8
  %159 = getelementptr inbounds %struct.be_rx_page_info, %struct.be_rx_page_info* %158, i32 0, i32 1
  store i32 1, i32* %159, align 4
  %160 = load %struct.be_rx_page_info*, %struct.be_rx_page_info** %9, align 8
  %161 = load i32, i32* @bus, align 4
  %162 = load i32, i32* %14, align 4
  %163 = call i32 @dma_unmap_addr_set(%struct.be_rx_page_info* %160, i32 %161, i32 %162)
  br label %164

164:                                              ; preds = %157, %154
  %165 = load i64, i64* %16, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %197

167:                                              ; preds = %164
  %168 = load i64, i64* %16, align 8
  %169 = load %struct.be_queue_info*, %struct.be_queue_info** %10, align 8
  %170 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %169, i32 0, i32 1
  %171 = call i32 @atomic_add(i64 %168, i32* %170)
  %172 = load %struct.be_rx_obj*, %struct.be_rx_obj** %4, align 8
  %173 = getelementptr inbounds %struct.be_rx_obj, %struct.be_rx_obj* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %167
  %177 = load %struct.be_rx_obj*, %struct.be_rx_obj** %4, align 8
  %178 = getelementptr inbounds %struct.be_rx_obj, %struct.be_rx_obj* %177, i32 0, i32 0
  store i32 0, i32* %178, align 8
  br label %179

179:                                              ; preds = %176, %167
  br label %180

180:                                              ; preds = %193, %179
  %181 = load i32, i32* @MAX_NUM_POST_ERX_DB, align 4
  %182 = load i64, i64* %16, align 8
  %183 = call i64 @min(i32 %181, i64 %182)
  store i64 %183, i64* %18, align 8
  %184 = load %struct.be_adapter*, %struct.be_adapter** %7, align 8
  %185 = load %struct.be_queue_info*, %struct.be_queue_info** %10, align 8
  %186 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = load i64, i64* %18, align 8
  %189 = call i32 @be_rxq_notify(%struct.be_adapter* %184, i32 %187, i64 %188)
  %190 = load i64, i64* %18, align 8
  %191 = load i64, i64* %16, align 8
  %192 = sub nsw i64 %191, %190
  store i64 %192, i64* %16, align 8
  br label %193

193:                                              ; preds = %180
  %194 = load i64, i64* %16, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %180, label %196

196:                                              ; preds = %193
  br label %206

197:                                              ; preds = %164
  %198 = load %struct.be_queue_info*, %struct.be_queue_info** %10, align 8
  %199 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %198, i32 0, i32 1
  %200 = call i64 @atomic_read(i32* %199)
  %201 = icmp eq i64 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %197
  %203 = load %struct.be_rx_obj*, %struct.be_rx_obj** %4, align 8
  %204 = getelementptr inbounds %struct.be_rx_obj, %struct.be_rx_obj* %203, i32 0, i32 0
  store i32 1, i32* %204, align 8
  br label %205

205:                                              ; preds = %202, %197
  br label %206

206:                                              ; preds = %205, %196
  ret void
}

declare dso_local %struct.page* @be_alloc_pages(i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.TYPE_6__* @rx_stats(%struct.be_rx_obj*) #1

declare dso_local i32 @dma_map_page(%struct.device*, %struct.page*, i32, i64, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i32) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local %struct.be_eth_rx_d* @queue_head_node(%struct.be_queue_info*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @dma_unmap_addr_set(%struct.be_rx_page_info*, i32, i32) #1

declare dso_local i32 @queue_head_inc(%struct.be_queue_info*) #1

declare dso_local i32 @atomic_add(i64, i32*) #1

declare dso_local i64 @min(i32, i64) #1

declare dso_local i32 @be_rxq_notify(%struct.be_adapter*, i32, i64) #1

declare dso_local i64 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
