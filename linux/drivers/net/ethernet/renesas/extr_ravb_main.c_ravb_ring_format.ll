; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_ravb_main.c_ravb_ring_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_ravb_main.c_ravb_ring_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ravb_private = type { i32, i32*, i32*, i64*, %struct.ravb_desc*, i64*, %struct.ravb_tx_desc**, %struct.ravb_tx_desc**, i32, %struct.TYPE_3__***, i64*, i64*, i64*, i64* }
%struct.ravb_desc = type { i8*, i8* }
%struct.ravb_tx_desc = type { i8*, i8*, i8* }
%struct.TYPE_3__ = type { i32 }
%struct.ravb_ex_rx_desc = type { i8*, i8*, i8* }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DT_FEMPTY = common dso_local global i8* null, align 8
@DT_LINKFIX = common dso_local global i8* null, align 8
@DT_EEMPTY = common dso_local global i8* null, align 8
@RX_QUEUE_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32)* @ravb_ring_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ravb_ring_format(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ravb_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ravb_ex_rx_desc*, align 8
  %8 = alloca %struct.ravb_tx_desc*, align 8
  %9 = alloca %struct.ravb_desc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = call %struct.ravb_private* @netdev_priv(%struct.net_device* %14)
  store %struct.ravb_private* %15, %struct.ravb_private** %5, align 8
  %16 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %17 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %6, align 4
  %19 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %20 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 24, %26
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %10, align 4
  %29 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %30 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 24, %36
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = mul i64 %37, %39
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %11, align 4
  %42 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %43 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %42, i32 0, i32 13
  %44 = load i64*, i64** %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  store i64 0, i64* %47, align 8
  %48 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %49 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %48, i32 0, i32 12
  %50 = load i64*, i64** %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  store i64 0, i64* %53, align 8
  %54 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %55 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %54, i32 0, i32 11
  %56 = load i64*, i64** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  store i64 0, i64* %59, align 8
  %60 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %61 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %60, i32 0, i32 10
  %62 = load i64*, i64** %61, align 8
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  store i64 0, i64* %65, align 8
  %66 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %67 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %66, i32 0, i32 7
  %68 = load %struct.ravb_tx_desc**, %struct.ravb_tx_desc*** %67, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.ravb_tx_desc*, %struct.ravb_tx_desc** %68, i64 %70
  %72 = load %struct.ravb_tx_desc*, %struct.ravb_tx_desc** %71, align 8
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @memset(%struct.ravb_tx_desc* %72, i32 0, i32 %73)
  store i32 0, i32* %13, align 4
  br label %75

75:                                               ; preds = %144, %2
  %76 = load i32, i32* %13, align 4
  %77 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %78 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %4, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = icmp slt i32 %76, %83
  br i1 %84, label %85, label %147

85:                                               ; preds = %75
  %86 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %87 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %86, i32 0, i32 7
  %88 = load %struct.ravb_tx_desc**, %struct.ravb_tx_desc*** %87, align 8
  %89 = load i32, i32* %4, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.ravb_tx_desc*, %struct.ravb_tx_desc** %88, i64 %90
  %92 = load %struct.ravb_tx_desc*, %struct.ravb_tx_desc** %91, align 8
  %93 = load i32, i32* %13, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.ravb_tx_desc, %struct.ravb_tx_desc* %92, i64 %94
  %96 = bitcast %struct.ravb_tx_desc* %95 to %struct.ravb_ex_rx_desc*
  store %struct.ravb_ex_rx_desc* %96, %struct.ravb_ex_rx_desc** %7, align 8
  %97 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %98 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %97, i32 0, i32 8
  %99 = load i32, i32* %98, align 8
  %100 = call i8* @cpu_to_le16(i32 %99)
  %101 = load %struct.ravb_ex_rx_desc*, %struct.ravb_ex_rx_desc** %7, align 8
  %102 = getelementptr inbounds %struct.ravb_ex_rx_desc, %struct.ravb_ex_rx_desc* %101, i32 0, i32 2
  store i8* %100, i8** %102, align 8
  %103 = load %struct.net_device*, %struct.net_device** %3, align 8
  %104 = getelementptr inbounds %struct.net_device, %struct.net_device* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %108 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %107, i32 0, i32 9
  %109 = load %struct.TYPE_3__***, %struct.TYPE_3__**** %108, align 8
  %110 = load i32, i32* %4, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_3__**, %struct.TYPE_3__*** %109, i64 %111
  %113 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %112, align 8
  %114 = load i32, i32* %13, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %113, i64 %115
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %121 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %120, i32 0, i32 8
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %124 = call i32 @dma_map_single(i32 %106, i32 %119, i32 %122, i32 %123)
  store i32 %124, i32* %12, align 4
  %125 = load %struct.net_device*, %struct.net_device** %3, align 8
  %126 = getelementptr inbounds %struct.net_device, %struct.net_device* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %12, align 4
  %130 = call i64 @dma_mapping_error(i32 %128, i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %85
  %133 = call i8* @cpu_to_le16(i32 0)
  %134 = load %struct.ravb_ex_rx_desc*, %struct.ravb_ex_rx_desc** %7, align 8
  %135 = getelementptr inbounds %struct.ravb_ex_rx_desc, %struct.ravb_ex_rx_desc* %134, i32 0, i32 2
  store i8* %133, i8** %135, align 8
  br label %136

136:                                              ; preds = %132, %85
  %137 = load i32, i32* %12, align 4
  %138 = call i8* @cpu_to_le32(i32 %137)
  %139 = load %struct.ravb_ex_rx_desc*, %struct.ravb_ex_rx_desc** %7, align 8
  %140 = getelementptr inbounds %struct.ravb_ex_rx_desc, %struct.ravb_ex_rx_desc* %139, i32 0, i32 1
  store i8* %138, i8** %140, align 8
  %141 = load i8*, i8** @DT_FEMPTY, align 8
  %142 = load %struct.ravb_ex_rx_desc*, %struct.ravb_ex_rx_desc** %7, align 8
  %143 = getelementptr inbounds %struct.ravb_ex_rx_desc, %struct.ravb_ex_rx_desc* %142, i32 0, i32 0
  store i8* %141, i8** %143, align 8
  br label %144

144:                                              ; preds = %136
  %145 = load i32, i32* %13, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %13, align 4
  br label %75

147:                                              ; preds = %75
  %148 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %149 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %148, i32 0, i32 7
  %150 = load %struct.ravb_tx_desc**, %struct.ravb_tx_desc*** %149, align 8
  %151 = load i32, i32* %4, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.ravb_tx_desc*, %struct.ravb_tx_desc** %150, i64 %152
  %154 = load %struct.ravb_tx_desc*, %struct.ravb_tx_desc** %153, align 8
  %155 = load i32, i32* %13, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.ravb_tx_desc, %struct.ravb_tx_desc* %154, i64 %156
  %158 = bitcast %struct.ravb_tx_desc* %157 to %struct.ravb_ex_rx_desc*
  store %struct.ravb_ex_rx_desc* %158, %struct.ravb_ex_rx_desc** %7, align 8
  %159 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %160 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %159, i32 0, i32 5
  %161 = load i64*, i64** %160, align 8
  %162 = load i32, i32* %4, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i64, i64* %161, i64 %163
  %165 = load i64, i64* %164, align 8
  %166 = trunc i64 %165 to i32
  %167 = call i8* @cpu_to_le32(i32 %166)
  %168 = load %struct.ravb_ex_rx_desc*, %struct.ravb_ex_rx_desc** %7, align 8
  %169 = getelementptr inbounds %struct.ravb_ex_rx_desc, %struct.ravb_ex_rx_desc* %168, i32 0, i32 1
  store i8* %167, i8** %169, align 8
  %170 = load i8*, i8** @DT_LINKFIX, align 8
  %171 = load %struct.ravb_ex_rx_desc*, %struct.ravb_ex_rx_desc** %7, align 8
  %172 = getelementptr inbounds %struct.ravb_ex_rx_desc, %struct.ravb_ex_rx_desc* %171, i32 0, i32 0
  store i8* %170, i8** %172, align 8
  %173 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %174 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %173, i32 0, i32 6
  %175 = load %struct.ravb_tx_desc**, %struct.ravb_tx_desc*** %174, align 8
  %176 = load i32, i32* %4, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.ravb_tx_desc*, %struct.ravb_tx_desc** %175, i64 %177
  %179 = load %struct.ravb_tx_desc*, %struct.ravb_tx_desc** %178, align 8
  %180 = load i32, i32* %11, align 4
  %181 = call i32 @memset(%struct.ravb_tx_desc* %179, i32 0, i32 %180)
  store i32 0, i32* %13, align 4
  %182 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %183 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %182, i32 0, i32 6
  %184 = load %struct.ravb_tx_desc**, %struct.ravb_tx_desc*** %183, align 8
  %185 = load i32, i32* %4, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.ravb_tx_desc*, %struct.ravb_tx_desc** %184, i64 %186
  %188 = load %struct.ravb_tx_desc*, %struct.ravb_tx_desc** %187, align 8
  store %struct.ravb_tx_desc* %188, %struct.ravb_tx_desc** %8, align 8
  br label %189

189:                                              ; preds = %212, %147
  %190 = load i32, i32* %13, align 4
  %191 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %192 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %191, i32 0, i32 2
  %193 = load i32*, i32** %192, align 8
  %194 = load i32, i32* %4, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %193, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = icmp slt i32 %190, %197
  br i1 %198, label %199, label %217

199:                                              ; preds = %189
  %200 = load i8*, i8** @DT_EEMPTY, align 8
  %201 = load %struct.ravb_tx_desc*, %struct.ravb_tx_desc** %8, align 8
  %202 = getelementptr inbounds %struct.ravb_tx_desc, %struct.ravb_tx_desc* %201, i32 0, i32 0
  store i8* %200, i8** %202, align 8
  %203 = load i32, i32* %6, align 4
  %204 = icmp sgt i32 %203, 1
  br i1 %204, label %205, label %211

205:                                              ; preds = %199
  %206 = load %struct.ravb_tx_desc*, %struct.ravb_tx_desc** %8, align 8
  %207 = getelementptr inbounds %struct.ravb_tx_desc, %struct.ravb_tx_desc* %206, i32 1
  store %struct.ravb_tx_desc* %207, %struct.ravb_tx_desc** %8, align 8
  %208 = load i8*, i8** @DT_EEMPTY, align 8
  %209 = load %struct.ravb_tx_desc*, %struct.ravb_tx_desc** %8, align 8
  %210 = getelementptr inbounds %struct.ravb_tx_desc, %struct.ravb_tx_desc* %209, i32 0, i32 0
  store i8* %208, i8** %210, align 8
  br label %211

211:                                              ; preds = %205, %199
  br label %212

212:                                              ; preds = %211
  %213 = load i32, i32* %13, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %13, align 4
  %215 = load %struct.ravb_tx_desc*, %struct.ravb_tx_desc** %8, align 8
  %216 = getelementptr inbounds %struct.ravb_tx_desc, %struct.ravb_tx_desc* %215, i32 1
  store %struct.ravb_tx_desc* %216, %struct.ravb_tx_desc** %8, align 8
  br label %189

217:                                              ; preds = %189
  %218 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %219 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %218, i32 0, i32 3
  %220 = load i64*, i64** %219, align 8
  %221 = load i32, i32* %4, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i64, i64* %220, i64 %222
  %224 = load i64, i64* %223, align 8
  %225 = trunc i64 %224 to i32
  %226 = call i8* @cpu_to_le32(i32 %225)
  %227 = load %struct.ravb_tx_desc*, %struct.ravb_tx_desc** %8, align 8
  %228 = getelementptr inbounds %struct.ravb_tx_desc, %struct.ravb_tx_desc* %227, i32 0, i32 1
  store i8* %226, i8** %228, align 8
  %229 = load i8*, i8** @DT_LINKFIX, align 8
  %230 = load %struct.ravb_tx_desc*, %struct.ravb_tx_desc** %8, align 8
  %231 = getelementptr inbounds %struct.ravb_tx_desc, %struct.ravb_tx_desc* %230, i32 0, i32 0
  store i8* %229, i8** %231, align 8
  %232 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %233 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %232, i32 0, i32 4
  %234 = load %struct.ravb_desc*, %struct.ravb_desc** %233, align 8
  %235 = load i32, i32* @RX_QUEUE_OFFSET, align 4
  %236 = load i32, i32* %4, align 4
  %237 = add nsw i32 %235, %236
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.ravb_desc, %struct.ravb_desc* %234, i64 %238
  store %struct.ravb_desc* %239, %struct.ravb_desc** %9, align 8
  %240 = load i8*, i8** @DT_LINKFIX, align 8
  %241 = load %struct.ravb_desc*, %struct.ravb_desc** %9, align 8
  %242 = getelementptr inbounds %struct.ravb_desc, %struct.ravb_desc* %241, i32 0, i32 1
  store i8* %240, i8** %242, align 8
  %243 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %244 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %243, i32 0, i32 5
  %245 = load i64*, i64** %244, align 8
  %246 = load i32, i32* %4, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i64, i64* %245, i64 %247
  %249 = load i64, i64* %248, align 8
  %250 = trunc i64 %249 to i32
  %251 = call i8* @cpu_to_le32(i32 %250)
  %252 = load %struct.ravb_desc*, %struct.ravb_desc** %9, align 8
  %253 = getelementptr inbounds %struct.ravb_desc, %struct.ravb_desc* %252, i32 0, i32 0
  store i8* %251, i8** %253, align 8
  %254 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %255 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %254, i32 0, i32 4
  %256 = load %struct.ravb_desc*, %struct.ravb_desc** %255, align 8
  %257 = load i32, i32* %4, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.ravb_desc, %struct.ravb_desc* %256, i64 %258
  store %struct.ravb_desc* %259, %struct.ravb_desc** %9, align 8
  %260 = load i8*, i8** @DT_LINKFIX, align 8
  %261 = load %struct.ravb_desc*, %struct.ravb_desc** %9, align 8
  %262 = getelementptr inbounds %struct.ravb_desc, %struct.ravb_desc* %261, i32 0, i32 1
  store i8* %260, i8** %262, align 8
  %263 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %264 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %263, i32 0, i32 3
  %265 = load i64*, i64** %264, align 8
  %266 = load i32, i32* %4, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i64, i64* %265, i64 %267
  %269 = load i64, i64* %268, align 8
  %270 = trunc i64 %269 to i32
  %271 = call i8* @cpu_to_le32(i32 %270)
  %272 = load %struct.ravb_desc*, %struct.ravb_desc** %9, align 8
  %273 = getelementptr inbounds %struct.ravb_desc, %struct.ravb_desc* %272, i32 0, i32 0
  store i8* %271, i8** %273, align 8
  ret void
}

declare dso_local %struct.ravb_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(%struct.ravb_tx_desc*, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @dma_map_single(i32, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
