; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-common.c_set_default_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-common.c_set_default_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coda_ctx = type { i32, %struct.TYPE_9__*, %struct.TYPE_10__*, %struct.TYPE_7__*, %struct.TYPE_6__, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i64, i32, i32, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_10__ = type { i64, i32, i32, i32 }
%struct.TYPE_7__ = type { i64*, i64* }
%struct.TYPE_6__ = type { i32, i32 }

@V4L2_PIX_FMT_JPEG = common dso_local global i64 0, align 8
@V4L2_COLORSPACE_JPEG = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_REC709 = common dso_local global i32 0, align 4
@V4L2_XFER_FUNC_DEFAULT = common dso_local global i32 0, align 4
@V4L2_YCBCR_ENC_DEFAULT = common dso_local global i32 0, align 4
@V4L2_QUANTIZATION_DEFAULT = common dso_local global i32 0, align 4
@V4L2_M2M_SRC = common dso_local global i64 0, align 8
@V4L2_M2M_DST = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_YUV420 = common dso_local global i64 0, align 8
@GDI_LINEAR_FRAME_MAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.coda_ctx*)* @set_default_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_default_params(%struct.coda_ctx* %0) #0 {
  %2 = alloca %struct.coda_ctx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.coda_ctx* %0, %struct.coda_ctx** %2, align 8
  %7 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %8 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %7, i32 0, i32 9
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %11 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %10, i32 0, i32 3
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %18 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %17, i32 0, i32 3
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 0
  %23 = load i64, i64* %22, align 8
  %24 = call %struct.TYPE_10__* @coda_find_codec(i32 %9, i64 %16, i64 %23)
  %25 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %26 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %25, i32 0, i32 2
  store %struct.TYPE_10__* %24, %struct.TYPE_10__** %26, align 8
  %27 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %28 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %27, i32 0, i32 2
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @min(i32 %31, i32 1920)
  store i32 %32, i32* %3, align 4
  %33 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %34 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %33, i32 0, i32 2
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @min(i32 %37, i32 1088)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* %4, align 4
  %41 = mul i32 %39, %40
  %42 = mul i32 %41, 3
  %43 = udiv i32 %42, 2
  store i32 %43, i32* %5, align 4
  %44 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @coda_estimate_sizeimage(%struct.coda_ctx* %44, i32 %45, i32 %46, i32 %47)
  store i32 %48, i32* %6, align 4
  %49 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %50 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %49, i32 0, i32 2
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %55 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  store i32 %53, i32* %56, align 4
  %57 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %58 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %57, i32 0, i32 3
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i64*, i64** %60, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @V4L2_PIX_FMT_JPEG, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %1
  %67 = load i32, i32* @V4L2_COLORSPACE_JPEG, align 4
  %68 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %69 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %68, i32 0, i32 8
  store i32 %67, i32* %69, align 4
  br label %74

70:                                               ; preds = %1
  %71 = load i32, i32* @V4L2_COLORSPACE_REC709, align 4
  %72 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %73 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %72, i32 0, i32 8
  store i32 %71, i32* %73, align 4
  br label %74

74:                                               ; preds = %70, %66
  %75 = load i32, i32* @V4L2_XFER_FUNC_DEFAULT, align 4
  %76 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %77 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %76, i32 0, i32 7
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* @V4L2_YCBCR_ENC_DEFAULT, align 4
  %79 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %80 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %79, i32 0, i32 6
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* @V4L2_QUANTIZATION_DEFAULT, align 4
  %82 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %83 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %82, i32 0, i32 5
  store i32 %81, i32* %83, align 8
  %84 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %85 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  store i32 30, i32* %86, align 8
  %87 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %88 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %87, i32 0, i32 3
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i64*, i64** %90, align 8
  %92 = getelementptr inbounds i64, i64* %91, i64 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %95 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %94, i32 0, i32 1
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %95, align 8
  %97 = load i64, i64* @V4L2_M2M_SRC, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  store i64 %93, i64* %99, align 8
  %100 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %101 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %100, i32 0, i32 3
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 1
  %104 = load i64*, i64** %103, align 8
  %105 = getelementptr inbounds i64, i64* %104, i64 0
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %108 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %107, i32 0, i32 1
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %108, align 8
  %110 = load i64, i64* @V4L2_M2M_DST, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  store i64 %106, i64* %112, align 8
  %113 = load i32, i32* %3, align 4
  %114 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %115 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %114, i32 0, i32 1
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %115, align 8
  %117 = load i64, i64* @V4L2_M2M_SRC, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 1
  store i32 %113, i32* %119, align 8
  %120 = load i32, i32* %4, align 4
  %121 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %122 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %121, i32 0, i32 1
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %122, align 8
  %124 = load i64, i64* @V4L2_M2M_SRC, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 2
  store i32 %120, i32* %126, align 4
  %127 = load i32, i32* %3, align 4
  %128 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %129 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %128, i32 0, i32 1
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %129, align 8
  %131 = load i64, i64* @V4L2_M2M_DST, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 1
  store i32 %127, i32* %133, align 8
  %134 = load i32, i32* %4, align 4
  %135 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %136 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %135, i32 0, i32 1
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %136, align 8
  %138 = load i64, i64* @V4L2_M2M_DST, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 2
  store i32 %134, i32* %140, align 4
  %141 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %142 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %141, i32 0, i32 2
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @V4L2_PIX_FMT_YUV420, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %176

148:                                              ; preds = %74
  %149 = load i32, i32* %3, align 4
  %150 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %151 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %150, i32 0, i32 1
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %151, align 8
  %153 = load i64, i64* @V4L2_M2M_SRC, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 3
  store i32 %149, i32* %155, align 8
  %156 = load i32, i32* %5, align 4
  %157 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %158 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %157, i32 0, i32 1
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %158, align 8
  %160 = load i64, i64* @V4L2_M2M_SRC, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 4
  store i32 %156, i32* %162, align 4
  %163 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %164 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %163, i32 0, i32 1
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %164, align 8
  %166 = load i64, i64* @V4L2_M2M_DST, align 8
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 3
  store i32 0, i32* %168, align 8
  %169 = load i32, i32* %6, align 4
  %170 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %171 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %170, i32 0, i32 1
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %171, align 8
  %173 = load i64, i64* @V4L2_M2M_DST, align 8
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 4
  store i32 %169, i32* %175, align 4
  br label %204

176:                                              ; preds = %74
  %177 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %178 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %177, i32 0, i32 1
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %178, align 8
  %180 = load i64, i64* @V4L2_M2M_SRC, align 8
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 3
  store i32 0, i32* %182, align 8
  %183 = load i32, i32* %6, align 4
  %184 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %185 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %184, i32 0, i32 1
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %185, align 8
  %187 = load i64, i64* @V4L2_M2M_SRC, align 8
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 4
  store i32 %183, i32* %189, align 4
  %190 = load i32, i32* %3, align 4
  %191 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %192 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %191, i32 0, i32 1
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %192, align 8
  %194 = load i64, i64* @V4L2_M2M_DST, align 8
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 3
  store i32 %190, i32* %196, align 8
  %197 = load i32, i32* %5, align 4
  %198 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %199 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %198, i32 0, i32 1
  %200 = load %struct.TYPE_9__*, %struct.TYPE_9__** %199, align 8
  %201 = load i64, i64* @V4L2_M2M_DST, align 8
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 4
  store i32 %197, i32* %203, align 4
  br label %204

204:                                              ; preds = %176, %148
  %205 = load i32, i32* %3, align 4
  %206 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %207 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %206, i32 0, i32 1
  %208 = load %struct.TYPE_9__*, %struct.TYPE_9__** %207, align 8
  %209 = load i64, i64* @V4L2_M2M_SRC, align 8
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 5
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 0
  store i32 %205, i32* %212, align 8
  %213 = load i32, i32* %4, align 4
  %214 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %215 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %214, i32 0, i32 1
  %216 = load %struct.TYPE_9__*, %struct.TYPE_9__** %215, align 8
  %217 = load i64, i64* @V4L2_M2M_SRC, align 8
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %218, i32 0, i32 5
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 1
  store i32 %213, i32* %220, align 4
  %221 = load i32, i32* %3, align 4
  %222 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %223 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %222, i32 0, i32 1
  %224 = load %struct.TYPE_9__*, %struct.TYPE_9__** %223, align 8
  %225 = load i64, i64* @V4L2_M2M_DST, align 8
  %226 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %224, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %226, i32 0, i32 5
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i32 0, i32 0
  store i32 %221, i32* %228, align 8
  %229 = load i32, i32* %4, align 4
  %230 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %231 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %230, i32 0, i32 1
  %232 = load %struct.TYPE_9__*, %struct.TYPE_9__** %231, align 8
  %233 = load i64, i64* @V4L2_M2M_DST, align 8
  %234 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i64 %233
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %234, i32 0, i32 5
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %235, i32 0, i32 1
  store i32 %229, i32* %236, align 4
  %237 = load i32, i32* @GDI_LINEAR_FRAME_MAP, align 4
  %238 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %239 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %238, i32 0, i32 0
  store i32 %237, i32* %239, align 8
  ret void
}

declare dso_local %struct.TYPE_10__* @coda_find_codec(i32, i64, i64) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @coda_estimate_sizeimage(%struct.coda_ctx*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
