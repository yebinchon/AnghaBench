; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_fill_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_fill_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns3_enet_ring = type { i64, %struct.hns3_desc*, %struct.hns3_desc_cb*, i32, %struct.TYPE_3__ }
%struct.hns3_desc = type { %struct.TYPE_4__, i8* }
%struct.TYPE_4__ = type { i8*, i8* }
%struct.hns3_desc_cb = type { i32, i32, i8*, i8* }
%struct.TYPE_3__ = type { i32 }
%struct.device = type { i32 }
%struct.sk_buff = type { i32 }

@DESC_TYPE_SKB = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HNS3_MAX_BD_SIZE = common dso_local global i32 0, align 4
@next_to_use = common dso_local global i32 0, align 4
@HNS3_TX_LAST_SIZE_M = common dso_local global i32 0, align 4
@DESC_TYPE_PAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns3_enet_ring*, i8*, i32, i32, i32)* @hns3_fill_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns3_fill_desc(%struct.hns3_enet_ring* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hns3_enet_ring*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.hns3_desc_cb*, align 8
  %13 = alloca %struct.hns3_desc*, align 8
  %14 = alloca %struct.device*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca %struct.sk_buff*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.hns3_enet_ring* %0, %struct.hns3_enet_ring** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %24 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %7, align 8
  %25 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %24, i32 0, i32 2
  %26 = load %struct.hns3_desc_cb*, %struct.hns3_desc_cb** %25, align 8
  %27 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %7, align 8
  %28 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.hns3_desc_cb, %struct.hns3_desc_cb* %26, i64 %29
  store %struct.hns3_desc_cb* %30, %struct.hns3_desc_cb** %12, align 8
  %31 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %7, align 8
  %32 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %31, i32 0, i32 1
  %33 = load %struct.hns3_desc*, %struct.hns3_desc** %32, align 8
  %34 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %7, align 8
  %35 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.hns3_desc, %struct.hns3_desc* %33, i64 %36
  store %struct.hns3_desc* %37, %struct.hns3_desc** %13, align 8
  %38 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %7, align 8
  %39 = call %struct.device* @ring_to_dev(%struct.hns3_enet_ring* %38)
  store %struct.device* %39, %struct.device** %14, align 8
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @DESC_TYPE_SKB, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %63

43:                                               ; preds = %5
  %44 = load i8*, i8** %8, align 8
  %45 = bitcast i8* %44 to %struct.sk_buff*
  store %struct.sk_buff* %45, %struct.sk_buff** %20, align 8
  %46 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %7, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %48 = load %struct.hns3_desc*, %struct.hns3_desc** %13, align 8
  %49 = call i32 @hns3_fill_skb_desc(%struct.hns3_enet_ring* %46, %struct.sk_buff* %47, %struct.hns3_desc* %48)
  store i32 %49, i32* %21, align 4
  %50 = load i32, i32* %21, align 4
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %43
  %54 = load i32, i32* %21, align 4
  store i32 %54, i32* %6, align 4
  br label %235

55:                                               ; preds = %43
  %56 = load %struct.device*, %struct.device** %14, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @DMA_TO_DEVICE, align 4
  %62 = call i8* @dma_map_single(%struct.device* %56, i32 %59, i32 %60, i32 %61)
  store i8* %62, i8** %19, align 8
  br label %71

63:                                               ; preds = %5
  %64 = load i8*, i8** %8, align 8
  %65 = bitcast i8* %64 to i32*
  store i32* %65, i32** %15, align 8
  %66 = load %struct.device*, %struct.device** %14, align 8
  %67 = load i32*, i32** %15, align 8
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @DMA_TO_DEVICE, align 4
  %70 = call i8* @skb_frag_dma_map(%struct.device* %66, i32* %67, i32 0, i32 %68, i32 %69)
  store i8* %70, i8** %19, align 8
  br label %71

71:                                               ; preds = %63, %55
  %72 = load %struct.device*, %struct.device** %14, align 8
  %73 = load i8*, i8** %19, align 8
  %74 = call i32 @dma_mapping_error(%struct.device* %72, i8* %73)
  %75 = call i64 @unlikely(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %91

77:                                               ; preds = %71
  %78 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %7, align 8
  %79 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %78, i32 0, i32 3
  %80 = call i32 @u64_stats_update_begin(i32* %79)
  %81 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %7, align 8
  %82 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 4
  %86 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %7, align 8
  %87 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %86, i32 0, i32 3
  %88 = call i32 @u64_stats_update_end(i32* %87)
  %89 = load i32, i32* @ENOMEM, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %6, align 4
  br label %235

91:                                               ; preds = %71
  %92 = load i32, i32* %9, align 4
  %93 = load %struct.hns3_desc_cb*, %struct.hns3_desc_cb** %12, align 8
  %94 = getelementptr inbounds %struct.hns3_desc_cb, %struct.hns3_desc_cb* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* @HNS3_MAX_BD_SIZE, align 4
  %97 = icmp ule i32 %95, %96
  %98 = zext i1 %97 to i32
  %99 = call i64 @likely(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %130

101:                                              ; preds = %91
  store i32 0, i32* %22, align 4
  %102 = load i8*, i8** %8, align 8
  %103 = load %struct.hns3_desc_cb*, %struct.hns3_desc_cb** %12, align 8
  %104 = getelementptr inbounds %struct.hns3_desc_cb, %struct.hns3_desc_cb* %103, i32 0, i32 3
  store i8* %102, i8** %104, align 8
  %105 = load i8*, i8** %19, align 8
  %106 = load %struct.hns3_desc_cb*, %struct.hns3_desc_cb** %12, align 8
  %107 = getelementptr inbounds %struct.hns3_desc_cb, %struct.hns3_desc_cb* %106, i32 0, i32 2
  store i8* %105, i8** %107, align 8
  %108 = load i32, i32* %11, align 4
  %109 = load %struct.hns3_desc_cb*, %struct.hns3_desc_cb** %12, align 8
  %110 = getelementptr inbounds %struct.hns3_desc_cb, %struct.hns3_desc_cb* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  %111 = load i8*, i8** %19, align 8
  %112 = call i8* @cpu_to_le64(i8* %111)
  %113 = load %struct.hns3_desc*, %struct.hns3_desc** %13, align 8
  %114 = getelementptr inbounds %struct.hns3_desc, %struct.hns3_desc* %113, i32 0, i32 1
  store i8* %112, i8** %114, align 8
  %115 = load i32, i32* %9, align 4
  %116 = call i8* @cpu_to_le16(i32 %115)
  %117 = load %struct.hns3_desc*, %struct.hns3_desc** %13, align 8
  %118 = getelementptr inbounds %struct.hns3_desc, %struct.hns3_desc* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 1
  store i8* %116, i8** %119, align 8
  %120 = load i32, i32* %10, align 4
  %121 = call i32 @hns3_set_txbd_baseinfo(i32* %22, i32 %120)
  %122 = load i32, i32* %22, align 4
  %123 = call i8* @cpu_to_le16(i32 %122)
  %124 = load %struct.hns3_desc*, %struct.hns3_desc** %13, align 8
  %125 = getelementptr inbounds %struct.hns3_desc, %struct.hns3_desc* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  store i8* %123, i8** %126, align 8
  %127 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %7, align 8
  %128 = load i32, i32* @next_to_use, align 4
  %129 = call i32 @ring_ptr_move_fw(%struct.hns3_enet_ring* %127, i32 %128)
  store i32 0, i32* %6, align 4
  br label %235

130:                                              ; preds = %91
  %131 = load i32, i32* %9, align 4
  %132 = call i32 @hns3_tx_bd_count(i32 %131)
  store i32 %132, i32* %16, align 4
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* @HNS3_TX_LAST_SIZE_M, align 4
  %135 = and i32 %133, %134
  store i32 %135, i32* %18, align 4
  %136 = load i32, i32* %18, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %130
  %139 = load i32, i32* %18, align 4
  br label %142

140:                                              ; preds = %130
  %141 = load i32, i32* @HNS3_MAX_BD_SIZE, align 4
  br label %142

142:                                              ; preds = %140, %138
  %143 = phi i32 [ %139, %138 ], [ %141, %140 ]
  store i32 %143, i32* %18, align 4
  store i32 0, i32* %17, align 4
  br label %144

144:                                              ; preds = %231, %142
  %145 = load i32, i32* %17, align 4
  %146 = load i32, i32* %16, align 4
  %147 = icmp ult i32 %145, %146
  br i1 %147, label %148, label %234

148:                                              ; preds = %144
  store i32 0, i32* %23, align 4
  %149 = load i8*, i8** %8, align 8
  %150 = load %struct.hns3_desc_cb*, %struct.hns3_desc_cb** %12, align 8
  %151 = getelementptr inbounds %struct.hns3_desc_cb, %struct.hns3_desc_cb* %150, i32 0, i32 3
  store i8* %149, i8** %151, align 8
  %152 = load i8*, i8** %19, align 8
  %153 = load i32, i32* @HNS3_MAX_BD_SIZE, align 4
  %154 = load i32, i32* %17, align 4
  %155 = mul i32 %153, %154
  %156 = zext i32 %155 to i64
  %157 = getelementptr i8, i8* %152, i64 %156
  %158 = load %struct.hns3_desc_cb*, %struct.hns3_desc_cb** %12, align 8
  %159 = getelementptr inbounds %struct.hns3_desc_cb, %struct.hns3_desc_cb* %158, i32 0, i32 2
  store i8* %157, i8** %159, align 8
  %160 = load i32, i32* %11, align 4
  %161 = load i32, i32* @DESC_TYPE_SKB, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %163, label %168

163:                                              ; preds = %148
  %164 = load i32, i32* %17, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %168, label %166

166:                                              ; preds = %163
  %167 = load i32, i32* @DESC_TYPE_SKB, align 4
  br label %170

168:                                              ; preds = %163, %148
  %169 = load i32, i32* @DESC_TYPE_PAGE, align 4
  br label %170

170:                                              ; preds = %168, %166
  %171 = phi i32 [ %167, %166 ], [ %169, %168 ]
  %172 = load %struct.hns3_desc_cb*, %struct.hns3_desc_cb** %12, align 8
  %173 = getelementptr inbounds %struct.hns3_desc_cb, %struct.hns3_desc_cb* %172, i32 0, i32 1
  store i32 %171, i32* %173, align 4
  %174 = load i8*, i8** %19, align 8
  %175 = load i32, i32* @HNS3_MAX_BD_SIZE, align 4
  %176 = load i32, i32* %17, align 4
  %177 = mul i32 %175, %176
  %178 = zext i32 %177 to i64
  %179 = getelementptr i8, i8* %174, i64 %178
  %180 = call i8* @cpu_to_le64(i8* %179)
  %181 = load %struct.hns3_desc*, %struct.hns3_desc** %13, align 8
  %182 = getelementptr inbounds %struct.hns3_desc, %struct.hns3_desc* %181, i32 0, i32 1
  store i8* %180, i8** %182, align 8
  %183 = load i32, i32* %17, align 4
  %184 = load i32, i32* %16, align 4
  %185 = sub i32 %184, 1
  %186 = icmp eq i32 %183, %185
  br i1 %186, label %187, label %189

187:                                              ; preds = %170
  %188 = load i32, i32* %18, align 4
  br label %191

189:                                              ; preds = %170
  %190 = load i32, i32* @HNS3_MAX_BD_SIZE, align 4
  br label %191

191:                                              ; preds = %189, %187
  %192 = phi i32 [ %188, %187 ], [ %190, %189 ]
  %193 = call i8* @cpu_to_le16(i32 %192)
  %194 = load %struct.hns3_desc*, %struct.hns3_desc** %13, align 8
  %195 = getelementptr inbounds %struct.hns3_desc, %struct.hns3_desc* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 1
  store i8* %193, i8** %196, align 8
  %197 = load i32, i32* %10, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %204

199:                                              ; preds = %191
  %200 = load i32, i32* %17, align 4
  %201 = load i32, i32* %16, align 4
  %202 = sub i32 %201, 1
  %203 = icmp eq i32 %200, %202
  br label %204

204:                                              ; preds = %199, %191
  %205 = phi i1 [ false, %191 ], [ %203, %199 ]
  %206 = zext i1 %205 to i64
  %207 = select i1 %205, i32 1, i32 0
  %208 = call i32 @hns3_set_txbd_baseinfo(i32* %23, i32 %207)
  %209 = load i32, i32* %23, align 4
  %210 = call i8* @cpu_to_le16(i32 %209)
  %211 = load %struct.hns3_desc*, %struct.hns3_desc** %13, align 8
  %212 = getelementptr inbounds %struct.hns3_desc, %struct.hns3_desc* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 0
  store i8* %210, i8** %213, align 8
  %214 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %7, align 8
  %215 = load i32, i32* @next_to_use, align 4
  %216 = call i32 @ring_ptr_move_fw(%struct.hns3_enet_ring* %214, i32 %215)
  %217 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %7, align 8
  %218 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %217, i32 0, i32 2
  %219 = load %struct.hns3_desc_cb*, %struct.hns3_desc_cb** %218, align 8
  %220 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %7, align 8
  %221 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = getelementptr inbounds %struct.hns3_desc_cb, %struct.hns3_desc_cb* %219, i64 %222
  store %struct.hns3_desc_cb* %223, %struct.hns3_desc_cb** %12, align 8
  %224 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %7, align 8
  %225 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %224, i32 0, i32 1
  %226 = load %struct.hns3_desc*, %struct.hns3_desc** %225, align 8
  %227 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %7, align 8
  %228 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = getelementptr inbounds %struct.hns3_desc, %struct.hns3_desc* %226, i64 %229
  store %struct.hns3_desc* %230, %struct.hns3_desc** %13, align 8
  br label %231

231:                                              ; preds = %204
  %232 = load i32, i32* %17, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %17, align 4
  br label %144

234:                                              ; preds = %144
  store i32 0, i32* %6, align 4
  br label %235

235:                                              ; preds = %234, %101, %77, %53
  %236 = load i32, i32* %6, align 4
  ret i32 %236
}

declare dso_local %struct.device* @ring_to_dev(%struct.hns3_enet_ring*) #1

declare dso_local i32 @hns3_fill_skb_desc(%struct.hns3_enet_ring*, %struct.sk_buff*, %struct.hns3_desc*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @dma_map_single(%struct.device*, i32, i32, i32) #1

declare dso_local i8* @skb_frag_dma_map(%struct.device*, i32*, i32, i32, i32) #1

declare dso_local i32 @dma_mapping_error(%struct.device*, i8*) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i8* @cpu_to_le64(i8*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @hns3_set_txbd_baseinfo(i32*, i32) #1

declare dso_local i32 @ring_ptr_move_fw(%struct.hns3_enet_ring*, i32) #1

declare dso_local i32 @hns3_tx_bd_count(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
