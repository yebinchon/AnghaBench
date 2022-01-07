; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_alloc_bnx2x_resc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_alloc_bnx2x_resc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { i64, i32, %struct.cnic_local* }
%struct.cnic_local = type { i32, i32, i32, %struct.cnic_eth_dev*, i32, %struct.cnic_dma, i32, i32, %struct.TYPE_5__*, i32*, i8*, i8*, %struct.cnic_dma }
%struct.cnic_eth_dev = type { i32, i32, %struct.TYPE_6__*, i8* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.cnic_dma = type { i64*, i64* }
%struct.bnx2x = type { i32 }

@MAX_ISCSI_TBL_SZ = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@CNIC_ULP_ISCSI = common dso_local global i32 0, align 4
@CNIC_ULP_FCOE = common dso_local global i32 0, align 4
@CNIC_KWQ16_DATA_SIZE = common dso_local global i32 0, align 4
@CNIC_PAGE_SIZE = common dso_local global i32 0, align 4
@BNX2X_ISCSI_GLB_BUF_SIZE = common dso_local global i32 0, align 4
@CNIC_DRV_STATE_NO_ISCSI = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cnic_dev*)* @cnic_alloc_bnx2x_resc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnic_alloc_bnx2x_resc(%struct.cnic_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cnic_dev*, align 8
  %4 = alloca %struct.cnic_local*, align 8
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca %struct.cnic_eth_dev*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.cnic_dma*, align 8
  %14 = alloca i64, align 8
  store %struct.cnic_dev* %0, %struct.cnic_dev** %3, align 8
  %15 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %16 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %15, i32 0, i32 2
  %17 = load %struct.cnic_local*, %struct.cnic_local** %16, align 8
  store %struct.cnic_local* %17, %struct.cnic_local** %4, align 8
  %18 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %19 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.bnx2x* @netdev_priv(i32 %20)
  store %struct.bnx2x* %21, %struct.bnx2x** %5, align 8
  %22 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %23 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %22, i32 0, i32 3
  %24 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %23, align 8
  store %struct.cnic_eth_dev* %24, %struct.cnic_eth_dev** %6, align 8
  %25 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %6, align 8
  %26 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %25, i32 0, i32 3
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %7, align 8
  %28 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %29 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %28, i32 0, i32 12
  store %struct.cnic_dma* %29, %struct.cnic_dma** %13, align 8
  %30 = load i32, i32* @MAX_ISCSI_TBL_SZ, align 4
  %31 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %32 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %35 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %34, i32 0, i32 11
  store i8* %33, i8** %35, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = load i32, i32* @MAX_ISCSI_TBL_SZ, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr i8, i8* %36, i64 %38
  %40 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %41 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %40, i32 0, i32 10
  store i8* %39, i8** %41, align 8
  %42 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %43 = call i64 @BNX2X_CHIP_IS_E2_PLUS(%struct.bnx2x* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %68

45:                                               ; preds = %1
  %46 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %47 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %50 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %48
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %50, align 8
  %55 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %6, align 8
  %56 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %59 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %61 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %45
  %65 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %66 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %65, i32 0, i32 1
  store i32 16, i32* %66, align 4
  br label %67

67:                                               ; preds = %64, %45
  br label %68

68:                                               ; preds = %67, %1
  %69 = load i32, i32* @MAX_ISCSI_TBL_SZ, align 4
  %70 = load i32, i32* @GFP_KERNEL, align 4
  %71 = call i8* @kcalloc(i32 %69, i32 4, i32 %70)
  %72 = bitcast i8* %71 to i32*
  %73 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %74 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %73, i32 0, i32 9
  store i32* %72, i32** %74, align 8
  %75 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %76 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %75, i32 0, i32 9
  %77 = load i32*, i32** %76, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %68
  br label %298

80:                                               ; preds = %68
  %81 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %82 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @GFP_KERNEL, align 4
  %85 = call i8* @kcalloc(i32 %83, i32 4, i32 %84)
  %86 = bitcast i8* %85 to %struct.TYPE_5__*
  %87 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %88 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %87, i32 0, i32 8
  store %struct.TYPE_5__* %86, %struct.TYPE_5__** %88, align 8
  %89 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %90 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %89, i32 0, i32 8
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = icmp ne %struct.TYPE_5__* %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %80
  br label %298

94:                                               ; preds = %80
  store i32 0, i32* %8, align 4
  br label %95

95:                                               ; preds = %122, %94
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* @MAX_ISCSI_TBL_SZ, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %125

99:                                               ; preds = %95
  %100 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %101 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %100, i32 0, i32 9
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %107 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %106, i32 0, i32 8
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %107, align 8
  %109 = load i32, i32* %8, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  store i32* %105, i32** %113, align 8
  %114 = load i32, i32* @CNIC_ULP_ISCSI, align 4
  %115 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %116 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %115, i32 0, i32 8
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %116, align 8
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 2
  store i32 %114, i32* %121, align 8
  br label %122

122:                                              ; preds = %99
  %123 = load i32, i32* %8, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %8, align 4
  br label %95

125:                                              ; preds = %95
  %126 = load i32, i32* @MAX_ISCSI_TBL_SZ, align 4
  store i32 %126, i32* %8, align 4
  br label %127

127:                                              ; preds = %142, %125
  %128 = load i32, i32* %8, align 4
  %129 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %130 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp slt i32 %128, %131
  br i1 %132, label %133, label %145

133:                                              ; preds = %127
  %134 = load i32, i32* @CNIC_ULP_FCOE, align 4
  %135 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %136 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %135, i32 0, i32 8
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %136, align 8
  %138 = load i32, i32* %8, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 2
  store i32 %134, i32* %141, align 8
  br label %142

142:                                              ; preds = %133
  %143 = load i32, i32* %8, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %8, align 4
  br label %127

145:                                              ; preds = %127
  %146 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %147 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @CNIC_KWQ16_DATA_SIZE, align 4
  %150 = mul nsw i32 %148, %149
  %151 = call i32 @CNIC_PAGE_ALIGN(i32 %150)
  %152 = load i32, i32* @CNIC_PAGE_SIZE, align 4
  %153 = sdiv i32 %151, %152
  store i32 %153, i32* %12, align 4
  %154 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %155 = load %struct.cnic_dma*, %struct.cnic_dma** %13, align 8
  %156 = load i32, i32* %12, align 4
  %157 = call i32 @cnic_alloc_dma(%struct.cnic_dev* %154, %struct.cnic_dma* %155, i32 %156, i32 0)
  store i32 %157, i32* %11, align 4
  %158 = load i32, i32* %11, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %145
  br label %298

161:                                              ; preds = %145
  %162 = load i32, i32* @CNIC_PAGE_SIZE, align 4
  %163 = load i32, i32* @CNIC_KWQ16_DATA_SIZE, align 4
  %164 = sdiv i32 %162, %163
  store i32 %164, i32* %10, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %165

165:                                              ; preds = %220, %161
  %166 = load i32, i32* %8, align 4
  %167 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %168 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = icmp slt i32 %166, %169
  br i1 %170, label %171, label %223

171:                                              ; preds = %165
  %172 = load i32, i32* @CNIC_KWQ16_DATA_SIZE, align 4
  %173 = load i32, i32* %8, align 4
  %174 = load i32, i32* %10, align 4
  %175 = srem i32 %173, %174
  %176 = mul nsw i32 %172, %175
  %177 = sext i32 %176 to i64
  store i64 %177, i64* %14, align 8
  %178 = load %struct.cnic_dma*, %struct.cnic_dma** %13, align 8
  %179 = getelementptr inbounds %struct.cnic_dma, %struct.cnic_dma* %178, i32 0, i32 1
  %180 = load i64*, i64** %179, align 8
  %181 = load i32, i32* %9, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i64, i64* %180, i64 %182
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* %14, align 8
  %186 = add nsw i64 %184, %185
  %187 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %188 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %187, i32 0, i32 8
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %188, align 8
  %190 = load i32, i32* %8, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 1
  store i64 %186, i64* %193, align 8
  %194 = load %struct.cnic_dma*, %struct.cnic_dma** %13, align 8
  %195 = getelementptr inbounds %struct.cnic_dma, %struct.cnic_dma* %194, i32 0, i32 0
  %196 = load i64*, i64** %195, align 8
  %197 = load i32, i32* %9, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i64, i64* %196, i64 %198
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* %14, align 8
  %202 = add nsw i64 %200, %201
  %203 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %204 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %203, i32 0, i32 8
  %205 = load %struct.TYPE_5__*, %struct.TYPE_5__** %204, align 8
  %206 = load i32, i32* %8, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 0
  store i64 %202, i64* %209, align 8
  %210 = load i32, i32* %8, align 4
  %211 = load i32, i32* %10, align 4
  %212 = srem i32 %210, %211
  %213 = load i32, i32* %10, align 4
  %214 = sub nsw i32 %213, 1
  %215 = icmp eq i32 %212, %214
  br i1 %215, label %216, label %219

216:                                              ; preds = %171
  %217 = load i32, i32* %9, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %9, align 4
  br label %219

219:                                              ; preds = %216, %171
  br label %220

220:                                              ; preds = %219
  %221 = load i32, i32* %8, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %8, align 4
  br label %165

223:                                              ; preds = %165
  %224 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %225 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %226 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %225, i32 0, i32 7
  %227 = call i32 @cnic_alloc_kcq(%struct.cnic_dev* %224, i32* %226, i32 0)
  store i32 %227, i32* %11, align 4
  %228 = load i32, i32* %11, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %223
  br label %298

231:                                              ; preds = %223
  %232 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %233 = call i64 @CNIC_SUPPORTS_FCOE(%struct.bnx2x* %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %244

235:                                              ; preds = %231
  %236 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %237 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %238 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %237, i32 0, i32 6
  %239 = call i32 @cnic_alloc_kcq(%struct.cnic_dev* %236, i32* %238, i32 1)
  store i32 %239, i32* %11, align 4
  %240 = load i32, i32* %11, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %243

242:                                              ; preds = %235
  br label %298

243:                                              ; preds = %235
  br label %244

244:                                              ; preds = %243, %231
  %245 = load i32, i32* @BNX2X_ISCSI_GLB_BUF_SIZE, align 4
  %246 = call i32 @CNIC_PAGE_ALIGN(i32 %245)
  %247 = load i32, i32* @CNIC_PAGE_SIZE, align 4
  %248 = sdiv i32 %246, %247
  store i32 %248, i32* %12, align 4
  %249 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %250 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %251 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %250, i32 0, i32 5
  %252 = load i32, i32* %12, align 4
  %253 = call i32 @cnic_alloc_dma(%struct.cnic_dev* %249, %struct.cnic_dma* %251, i32 %252, i32 0)
  store i32 %253, i32* %11, align 4
  %254 = load i32, i32* %11, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %257

256:                                              ; preds = %244
  br label %298

257:                                              ; preds = %244
  %258 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %259 = call i32 @cnic_alloc_bnx2x_context(%struct.cnic_dev* %258)
  store i32 %259, i32* %11, align 4
  %260 = load i32, i32* %11, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %263

262:                                              ; preds = %257
  br label %298

263:                                              ; preds = %257
  %264 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %265 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %264, i32 0, i32 3
  %266 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %265, align 8
  %267 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* @CNIC_DRV_STATE_NO_ISCSI, align 4
  %270 = and i32 %268, %269
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %273

272:                                              ; preds = %263
  store i32 0, i32* %2, align 4
  br label %303

273:                                              ; preds = %263
  %274 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %275 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %274, i32 0, i32 3
  %276 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %275, align 8
  %277 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %276, i32 0, i32 2
  %278 = load %struct.TYPE_6__*, %struct.TYPE_6__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %278, i64 1
  %280 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %283 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %282, i32 0, i32 4
  store i32 %281, i32* %283, align 8
  %284 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %285 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %284, i32 0, i32 2
  store i32 15, i32* %285, align 8
  %286 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %287 = call i32 @cnic_alloc_uio_rings(%struct.cnic_dev* %286, i32 4)
  store i32 %287, i32* %11, align 4
  %288 = load i32, i32* %11, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %291

290:                                              ; preds = %273
  br label %298

291:                                              ; preds = %273
  %292 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %293 = call i32 @cnic_init_uio(%struct.cnic_dev* %292)
  store i32 %293, i32* %11, align 4
  %294 = load i32, i32* %11, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %297

296:                                              ; preds = %291
  br label %298

297:                                              ; preds = %291
  store i32 0, i32* %2, align 4
  br label %303

298:                                              ; preds = %296, %290, %262, %256, %242, %230, %160, %93, %79
  %299 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %300 = call i32 @cnic_free_resc(%struct.cnic_dev* %299)
  %301 = load i32, i32* @ENOMEM, align 4
  %302 = sub nsw i32 0, %301
  store i32 %302, i32* %2, align 4
  br label %303

303:                                              ; preds = %298, %297, %272
  %304 = load i32, i32* %2, align 4
  ret i32 %304
}

declare dso_local %struct.bnx2x* @netdev_priv(i32) #1

declare dso_local i64 @BNX2X_CHIP_IS_E2_PLUS(%struct.bnx2x*) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @CNIC_PAGE_ALIGN(i32) #1

declare dso_local i32 @cnic_alloc_dma(%struct.cnic_dev*, %struct.cnic_dma*, i32, i32) #1

declare dso_local i32 @cnic_alloc_kcq(%struct.cnic_dev*, i32*, i32) #1

declare dso_local i64 @CNIC_SUPPORTS_FCOE(%struct.bnx2x*) #1

declare dso_local i32 @cnic_alloc_bnx2x_context(%struct.cnic_dev*) #1

declare dso_local i32 @cnic_alloc_uio_rings(%struct.cnic_dev*, i32) #1

declare dso_local i32 @cnic_init_uio(%struct.cnic_dev*) #1

declare dso_local i32 @cnic_free_resc(%struct.cnic_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
