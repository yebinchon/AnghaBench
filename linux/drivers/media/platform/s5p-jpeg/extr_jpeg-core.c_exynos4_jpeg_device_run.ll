; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-jpeg/extr_jpeg-core.c_exynos4_jpeg_device_run.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-jpeg/extr_jpeg-core.c_exynos4_jpeg_device_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_jpeg_ctx = type { i64, %struct.TYPE_10__, %struct.TYPE_9__, i32, %struct.s5p_jpeg*, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.s5p_jpeg = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }

@S5P_JPEG_ENCODE = common dso_local global i64 0, align 8
@SJPEG_EXYNOS4 = common dso_local global i64 0, align 8
@SJPEG_EXYNOS5433 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @exynos4_jpeg_device_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos4_jpeg_device_run(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.s5p_jpeg_ctx*, align 8
  %4 = alloca %struct.s5p_jpeg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.s5p_jpeg_ctx*
  store %struct.s5p_jpeg_ctx* %8, %struct.s5p_jpeg_ctx** %3, align 8
  %9 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %10 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %9, i32 0, i32 4
  %11 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %10, align 8
  store %struct.s5p_jpeg* %11, %struct.s5p_jpeg** %4, align 8
  %12 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %13 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %12, i32 0, i32 0
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %17 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @S5P_JPEG_ENCODE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %136

21:                                               ; preds = %1
  %22 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %23 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @exynos4_jpeg_sw_reset(i32 %24)
  %26 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %27 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %30 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %29, i32 0, i32 2
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @exynos4_jpeg_set_interrupt(i32 %28, i64 %33)
  %35 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %36 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @exynos4_jpeg_set_huf_table_enable(i32 %37, i32 1)
  %39 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %40 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @exynos4_jpeg_set_huff_tbl(i32 %41)
  %43 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %44 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %47 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @exynos4_jpeg_set_qtbl_lum(i32 %45, i32 %48)
  %50 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %51 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %54 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @exynos4_jpeg_set_qtbl_chr(i32 %52, i32 %55)
  %57 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %58 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %61 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @exynos4_jpeg_set_encode_tbl_select(i32 %59, i32 %62)
  %64 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %65 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %68 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %72 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @exynos4_jpeg_set_stream_size(i32 %66, i32 %70, i32 %74)
  %76 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %77 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %76, i32 0, i32 4
  %78 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %77, align 8
  %79 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %78, i32 0, i32 2
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @SJPEG_EXYNOS4, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %103

85:                                               ; preds = %21
  %86 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %87 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %90 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @exynos4_jpeg_set_enc_out_fmt(i32 %88, i32 %91)
  %93 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %94 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %97 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @exynos4_jpeg_set_img_fmt(i32 %95, i32 %101)
  br label %121

103:                                              ; preds = %21
  %104 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %105 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %108 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @exynos5433_jpeg_set_enc_out_fmt(i32 %106, i32 %109)
  %111 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %112 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %115 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @exynos5433_jpeg_set_img_fmt(i32 %113, i32 %119)
  br label %121

121:                                              ; preds = %103, %85
  %122 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %123 = call i32 @exynos4_jpeg_set_img_addr(%struct.s5p_jpeg_ctx* %122)
  %124 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %125 = call i32 @exynos4_jpeg_set_jpeg_addr(%struct.s5p_jpeg_ctx* %124)
  %126 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %127 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %130 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @exynos4_jpeg_set_encode_hoff_cnt(i32 %128, i32 %134)
  br label %230

136:                                              ; preds = %1
  %137 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %138 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @exynos4_jpeg_sw_reset(i32 %139)
  %141 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %142 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %145 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %144, i32 0, i32 2
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = call i32 @exynos4_jpeg_set_interrupt(i32 %143, i64 %148)
  %150 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %151 = call i32 @exynos4_jpeg_set_img_addr(%struct.s5p_jpeg_ctx* %150)
  %152 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %153 = call i32 @exynos4_jpeg_set_jpeg_addr(%struct.s5p_jpeg_ctx* %152)
  %154 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %155 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %154, i32 0, i32 2
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @SJPEG_EXYNOS5433, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %208

161:                                              ; preds = %136
  %162 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %163 = call i32 @exynos4_jpeg_parse_huff_tbl(%struct.s5p_jpeg_ctx* %162)
  %164 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %165 = call i32 @exynos4_jpeg_parse_decode_h_tbl(%struct.s5p_jpeg_ctx* %164)
  %166 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %167 = call i32 @exynos4_jpeg_parse_q_tbl(%struct.s5p_jpeg_ctx* %166)
  %168 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %169 = call i32 @exynos4_jpeg_parse_decode_q_tbl(%struct.s5p_jpeg_ctx* %168)
  %170 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %171 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @exynos4_jpeg_set_huf_table_enable(i32 %172, i32 1)
  %174 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %175 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %178 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %177, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %182 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %181, i32 0, i32 2
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @exynos4_jpeg_set_stream_size(i32 %176, i32 %180, i32 %184)
  %186 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %187 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %190 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @exynos5433_jpeg_set_enc_out_fmt(i32 %188, i32 %191)
  %193 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %194 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %197 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %196, i32 0, i32 2
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 0
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @exynos5433_jpeg_set_img_fmt(i32 %195, i32 %201)
  %203 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %204 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = call i32 @DIV_ROUND_UP(i32 %206, i32 16)
  store i32 %207, i32* %5, align 4
  br label %224

208:                                              ; preds = %136
  %209 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %210 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %213 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %212, i32 0, i32 2
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 0
  %215 = load %struct.TYPE_8__*, %struct.TYPE_8__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @exynos4_jpeg_set_img_fmt(i32 %211, i32 %217)
  %219 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %220 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = call i32 @DIV_ROUND_UP(i32 %222, i32 32)
  store i32 %223, i32* %5, align 4
  br label %224

224:                                              ; preds = %208, %161
  %225 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %226 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* %5, align 4
  %229 = call i32 @exynos4_jpeg_set_dec_bitstream_size(i32 %227, i32 %228)
  br label %230

230:                                              ; preds = %224, %121
  %231 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %232 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @exynos4_jpeg_set_sys_int_enable(i32 %233, i32 1)
  %235 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %236 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %239 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = call i32 @exynos4_jpeg_set_enc_dec_mode(i32 %237, i64 %240)
  %242 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %243 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %242, i32 0, i32 0
  %244 = load i64, i64* %6, align 8
  %245 = call i32 @spin_unlock_irqrestore(i32* %243, i64 %244)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @exynos4_jpeg_sw_reset(i32) #1

declare dso_local i32 @exynos4_jpeg_set_interrupt(i32, i64) #1

declare dso_local i32 @exynos4_jpeg_set_huf_table_enable(i32, i32) #1

declare dso_local i32 @exynos4_jpeg_set_huff_tbl(i32) #1

declare dso_local i32 @exynos4_jpeg_set_qtbl_lum(i32, i32) #1

declare dso_local i32 @exynos4_jpeg_set_qtbl_chr(i32, i32) #1

declare dso_local i32 @exynos4_jpeg_set_encode_tbl_select(i32, i32) #1

declare dso_local i32 @exynos4_jpeg_set_stream_size(i32, i32, i32) #1

declare dso_local i32 @exynos4_jpeg_set_enc_out_fmt(i32, i32) #1

declare dso_local i32 @exynos4_jpeg_set_img_fmt(i32, i32) #1

declare dso_local i32 @exynos5433_jpeg_set_enc_out_fmt(i32, i32) #1

declare dso_local i32 @exynos5433_jpeg_set_img_fmt(i32, i32) #1

declare dso_local i32 @exynos4_jpeg_set_img_addr(%struct.s5p_jpeg_ctx*) #1

declare dso_local i32 @exynos4_jpeg_set_jpeg_addr(%struct.s5p_jpeg_ctx*) #1

declare dso_local i32 @exynos4_jpeg_set_encode_hoff_cnt(i32, i32) #1

declare dso_local i32 @exynos4_jpeg_parse_huff_tbl(%struct.s5p_jpeg_ctx*) #1

declare dso_local i32 @exynos4_jpeg_parse_decode_h_tbl(%struct.s5p_jpeg_ctx*) #1

declare dso_local i32 @exynos4_jpeg_parse_q_tbl(%struct.s5p_jpeg_ctx*) #1

declare dso_local i32 @exynos4_jpeg_parse_decode_q_tbl(%struct.s5p_jpeg_ctx*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @exynos4_jpeg_set_dec_bitstream_size(i32, i32) #1

declare dso_local i32 @exynos4_jpeg_set_sys_int_enable(i32, i32) #1

declare dso_local i32 @exynos4_jpeg_set_enc_dec_mode(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
