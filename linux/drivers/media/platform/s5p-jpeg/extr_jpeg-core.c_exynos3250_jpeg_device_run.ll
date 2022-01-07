; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-jpeg/extr_jpeg-core.c_exynos3250_jpeg_device_run.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-jpeg/extr_jpeg-core.c_exynos3250_jpeg_device_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_jpeg_ctx = type { i64, %struct.s5p_jpeg*, %struct.TYPE_12__, %struct.TYPE_10__, i32, i32, %struct.TYPE_8__, i32, i32 }
%struct.s5p_jpeg = type { i32, i32, i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_12__ = type { %struct.TYPE_11__*, i32, i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }

@S5P_JPEG_ENCODE = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_RGB565 = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_RGB565X = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_RGB32 = common dso_local global i64 0, align 8
@EXYNOS3250_IRQ_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @exynos3250_jpeg_device_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos3250_jpeg_device_run(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.s5p_jpeg_ctx*, align 8
  %4 = alloca %struct.s5p_jpeg*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.s5p_jpeg_ctx*
  store %struct.s5p_jpeg_ctx* %7, %struct.s5p_jpeg_ctx** %3, align 8
  %8 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %9 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %8, i32 0, i32 1
  %10 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %9, align 8
  store %struct.s5p_jpeg* %10, %struct.s5p_jpeg** %4, align 8
  %11 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %12 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %11, i32 0, i32 1
  %13 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %12, align 8
  %14 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %13, i32 0, i32 0
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %18 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @exynos3250_jpeg_reset(i32 %19)
  %21 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %22 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @exynos3250_jpeg_set_dma_num(i32 %23)
  %25 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %26 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @exynos3250_jpeg_poweron(i32 %27)
  %29 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %30 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @exynos3250_jpeg_clk_set(i32 %31)
  %33 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %34 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %37 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @exynos3250_jpeg_proc_mode(i32 %35, i64 %38)
  %40 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %41 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @S5P_JPEG_ENCODE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %230

45:                                               ; preds = %1
  %46 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %47 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %50 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @exynos3250_jpeg_input_raw_fmt(i32 %48, i64 %54)
  %56 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %57 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %60 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %59, i32 0, i32 8
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @exynos3250_jpeg_dri(i32 %58, i32 %61)
  %63 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %64 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %67 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %66, i32 0, i32 7
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @s5p_jpeg_set_qtbl_lum(i32 %65, i32 %68)
  %70 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %71 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %74 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %73, i32 0, i32 7
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @s5p_jpeg_set_qtbl_chr(i32 %72, i32 %75)
  %77 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %78 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @exynos3250_jpeg_qtbl(i32 %79, i32 1, i32 0)
  %81 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %82 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @exynos3250_jpeg_qtbl(i32 %83, i32 2, i32 1)
  %85 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %86 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @exynos3250_jpeg_qtbl(i32 %87, i32 3, i32 1)
  %89 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %90 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %89, i32 0, i32 3
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %112

95:                                               ; preds = %45
  %96 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %97 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @s5p_jpeg_set_hdctbl(i32 %98)
  %100 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %101 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @s5p_jpeg_set_hdctblg(i32 %102)
  %104 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %105 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @s5p_jpeg_set_hactbl(i32 %106)
  %108 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %109 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @s5p_jpeg_set_hactblg(i32 %110)
  br label %112

112:                                              ; preds = %95, %45
  %113 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %114 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @exynos3250_jpeg_htbl_ac(i32 %115, i32 1)
  %117 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %118 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @exynos3250_jpeg_htbl_dc(i32 %119, i32 1)
  %121 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %122 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @exynos3250_jpeg_htbl_ac(i32 %123, i32 2)
  %125 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %126 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @exynos3250_jpeg_htbl_dc(i32 %127, i32 2)
  %129 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %130 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @exynos3250_jpeg_htbl_ac(i32 %131, i32 3)
  %133 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %134 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @exynos3250_jpeg_htbl_dc(i32 %135, i32 3)
  %137 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %138 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %141 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %140, i32 0, i32 6
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @exynos3250_jpeg_set_x(i32 %139, i32 %143)
  %145 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %146 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %149 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %148, i32 0, i32 6
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @exynos3250_jpeg_set_y(i32 %147, i32 %151)
  %153 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %154 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %157 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %156, i32 0, i32 3
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 1
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %163 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %162, i32 0, i32 3
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @exynos3250_jpeg_stride(i32 %155, i64 %161, i32 %165)
  %167 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %168 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %171 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %170, i32 0, i32 6
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %175 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %174, i32 0, i32 6
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @exynos3250_jpeg_offset(i32 %169, i32 %173, i32 %177)
  %179 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %180 = call i32 @exynos3250_jpeg_set_img_addr(%struct.s5p_jpeg_ctx* %179)
  %181 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %182 = call i32 @exynos3250_jpeg_set_jpeg_addr(%struct.s5p_jpeg_ctx* %181)
  %183 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %184 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %187 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %186, i32 0, i32 5
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @exynos3250_jpeg_subsampling_mode(i32 %185, i32 %188)
  %190 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %191 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %194 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @exynos3250_jpeg_enc_stream_bound(i32 %192, i32 %196)
  %198 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %199 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %198, i32 0, i32 3
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 1
  %201 = load %struct.TYPE_9__*, %struct.TYPE_9__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @V4L2_PIX_FMT_RGB565, align 8
  %205 = icmp eq i64 %203, %204
  br i1 %205, label %224, label %206

206:                                              ; preds = %112
  %207 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %208 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %207, i32 0, i32 3
  %209 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %208, i32 0, i32 1
  %210 = load %struct.TYPE_9__*, %struct.TYPE_9__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* @V4L2_PIX_FMT_RGB565X, align 8
  %214 = icmp eq i64 %212, %213
  br i1 %214, label %224, label %215

215:                                              ; preds = %206
  %216 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %217 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %216, i32 0, i32 3
  %218 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %217, i32 0, i32 1
  %219 = load %struct.TYPE_9__*, %struct.TYPE_9__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* @V4L2_PIX_FMT_RGB32, align 8
  %223 = icmp eq i64 %221, %222
  br i1 %223, label %224, label %229

224:                                              ; preds = %215, %206, %112
  %225 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %226 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = call i32 @exynos3250_jpeg_set_y16(i32 %227, i32 1)
  br label %229

229:                                              ; preds = %224, %215
  br label %278

230:                                              ; preds = %1
  %231 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %232 = call i32 @exynos3250_jpeg_set_img_addr(%struct.s5p_jpeg_ctx* %231)
  %233 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %234 = call i32 @exynos3250_jpeg_set_jpeg_addr(%struct.s5p_jpeg_ctx* %233)
  %235 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %236 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %239 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %238, i32 0, i32 2
  %240 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %239, i32 0, i32 0
  %241 = load %struct.TYPE_11__*, %struct.TYPE_11__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %245 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %244, i32 0, i32 2
  %246 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 8
  %248 = call i32 @exynos3250_jpeg_stride(i32 %237, i64 %243, i32 %247)
  %249 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %250 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = call i32 @exynos3250_jpeg_offset(i32 %251, i32 0, i32 0)
  %253 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %254 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %257 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %256, i32 0, i32 4
  %258 = load i32, i32* %257, align 8
  %259 = call i32 @exynos3250_jpeg_dec_scaling_ratio(i32 %255, i32 %258)
  %260 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %261 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %264 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %263, i32 0, i32 3
  %265 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = call i32 @exynos3250_jpeg_dec_stream_size(i32 %262, i32 %266)
  %268 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %269 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %272 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %271, i32 0, i32 2
  %273 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %272, i32 0, i32 0
  %274 = load %struct.TYPE_11__*, %struct.TYPE_11__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = call i32 @exynos3250_jpeg_output_raw_fmt(i32 %270, i64 %276)
  br label %278

278:                                              ; preds = %230, %229
  %279 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %280 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = call i32 @exynos3250_jpeg_interrupts_enable(i32 %281)
  %283 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %284 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  %286 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %287 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %286, i32 0, i32 0
  %288 = load i64, i64* %287, align 8
  %289 = call i32 @exynos3250_jpeg_coef(i32 %285, i64 %288)
  %290 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %291 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 4
  %293 = load i32, i32* @EXYNOS3250_IRQ_TIMEOUT, align 4
  %294 = call i32 @exynos3250_jpeg_set_timer(i32 %292, i32 %293)
  %295 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %296 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %295, i32 0, i32 2
  store i64 0, i64* %296, align 8
  %297 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %298 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  %300 = call i32 @exynos3250_jpeg_start(i32 %299)
  %301 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %302 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %301, i32 0, i32 1
  %303 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %302, align 8
  %304 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %303, i32 0, i32 0
  %305 = load i64, i64* %5, align 8
  %306 = call i32 @spin_unlock_irqrestore(i32* %304, i64 %305)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @exynos3250_jpeg_reset(i32) #1

declare dso_local i32 @exynos3250_jpeg_set_dma_num(i32) #1

declare dso_local i32 @exynos3250_jpeg_poweron(i32) #1

declare dso_local i32 @exynos3250_jpeg_clk_set(i32) #1

declare dso_local i32 @exynos3250_jpeg_proc_mode(i32, i64) #1

declare dso_local i32 @exynos3250_jpeg_input_raw_fmt(i32, i64) #1

declare dso_local i32 @exynos3250_jpeg_dri(i32, i32) #1

declare dso_local i32 @s5p_jpeg_set_qtbl_lum(i32, i32) #1

declare dso_local i32 @s5p_jpeg_set_qtbl_chr(i32, i32) #1

declare dso_local i32 @exynos3250_jpeg_qtbl(i32, i32, i32) #1

declare dso_local i32 @s5p_jpeg_set_hdctbl(i32) #1

declare dso_local i32 @s5p_jpeg_set_hdctblg(i32) #1

declare dso_local i32 @s5p_jpeg_set_hactbl(i32) #1

declare dso_local i32 @s5p_jpeg_set_hactblg(i32) #1

declare dso_local i32 @exynos3250_jpeg_htbl_ac(i32, i32) #1

declare dso_local i32 @exynos3250_jpeg_htbl_dc(i32, i32) #1

declare dso_local i32 @exynos3250_jpeg_set_x(i32, i32) #1

declare dso_local i32 @exynos3250_jpeg_set_y(i32, i32) #1

declare dso_local i32 @exynos3250_jpeg_stride(i32, i64, i32) #1

declare dso_local i32 @exynos3250_jpeg_offset(i32, i32, i32) #1

declare dso_local i32 @exynos3250_jpeg_set_img_addr(%struct.s5p_jpeg_ctx*) #1

declare dso_local i32 @exynos3250_jpeg_set_jpeg_addr(%struct.s5p_jpeg_ctx*) #1

declare dso_local i32 @exynos3250_jpeg_subsampling_mode(i32, i32) #1

declare dso_local i32 @exynos3250_jpeg_enc_stream_bound(i32, i32) #1

declare dso_local i32 @exynos3250_jpeg_set_y16(i32, i32) #1

declare dso_local i32 @exynos3250_jpeg_dec_scaling_ratio(i32, i32) #1

declare dso_local i32 @exynos3250_jpeg_dec_stream_size(i32, i32) #1

declare dso_local i32 @exynos3250_jpeg_output_raw_fmt(i32, i64) #1

declare dso_local i32 @exynos3250_jpeg_interrupts_enable(i32) #1

declare dso_local i32 @exynos3250_jpeg_coef(i32, i64) #1

declare dso_local i32 @exynos3250_jpeg_set_timer(i32, i32) #1

declare dso_local i32 @exynos3250_jpeg_start(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
