; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-jpeg/extr_jpeg-core.c_s5p_jpeg_device_run.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-jpeg/extr_jpeg-core.c_s5p_jpeg_device_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_jpeg_ctx = type { i64, %struct.s5p_jpeg*, %struct.TYPE_10__, i32, %struct.TYPE_8__, i32, i32, %struct.TYPE_6__ }
%struct.s5p_jpeg = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.vb2_v4l2_buffer = type { i32 }

@S5P_JPEG_ENCODE = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_RGB565 = common dso_local global i64 0, align 8
@S5P_JPEG_RAW_IN_565 = common dso_local global i32 0, align 4
@S5P_JPEG_RAW_IN_422 = common dso_local global i32 0, align 4
@S5P_JPEG_COEF11 = common dso_local global i32 0, align 4
@S5P_JPEG_COEF12 = common dso_local global i32 0, align 4
@S5P_JPEG_COEF13 = common dso_local global i32 0, align 4
@S5P_JPEG_COEF21 = common dso_local global i32 0, align 4
@S5P_JPEG_COEF22 = common dso_local global i32 0, align 4
@S5P_JPEG_COEF23 = common dso_local global i32 0, align 4
@S5P_JPEG_COEF31 = common dso_local global i32 0, align 4
@S5P_JPEG_COEF32 = common dso_local global i32 0, align 4
@S5P_JPEG_COEF33 = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_YUYV = common dso_local global i64 0, align 8
@S5P_JPEG_RAW_OUT_422 = common dso_local global i32 0, align 4
@S5P_JPEG_RAW_OUT_420 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @s5p_jpeg_device_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s5p_jpeg_device_run(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.s5p_jpeg_ctx*, align 8
  %4 = alloca %struct.s5p_jpeg*, align 8
  %5 = alloca %struct.vb2_v4l2_buffer*, align 8
  %6 = alloca %struct.vb2_v4l2_buffer*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.s5p_jpeg_ctx*
  store %struct.s5p_jpeg_ctx* %11, %struct.s5p_jpeg_ctx** %3, align 8
  %12 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %13 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %12, i32 0, i32 1
  %14 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %13, align 8
  store %struct.s5p_jpeg* %14, %struct.s5p_jpeg** %4, align 8
  %15 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %16 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %15, i32 0, i32 1
  %17 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %16, align 8
  %18 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %17, i32 0, i32 0
  %19 = load i64, i64* %9, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %22 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %21, i32 0, i32 7
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_next_src_buf(i32 %24)
  store %struct.vb2_v4l2_buffer* %25, %struct.vb2_v4l2_buffer** %5, align 8
  %26 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %27 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %26, i32 0, i32 7
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_next_dst_buf(i32 %29)
  store %struct.vb2_v4l2_buffer* %30, %struct.vb2_v4l2_buffer** %6, align 8
  %31 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %32 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %31, i32 0, i32 0
  %33 = call i64 @vb2_dma_contig_plane_dma_addr(i32* %32, i32 0)
  store i64 %33, i64* %7, align 8
  %34 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %35 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %34, i32 0, i32 0
  %36 = call i64 @vb2_dma_contig_plane_dma_addr(i32* %35, i32 0)
  store i64 %36, i64* %8, align 8
  %37 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %38 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @s5p_jpeg_reset(i32 %39)
  %41 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %42 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @s5p_jpeg_poweron(i32 %43)
  %45 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %46 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %49 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @s5p_jpeg_proc_mode(i32 %47, i64 %50)
  %52 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %53 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @S5P_JPEG_ENCODE, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %222

57:                                               ; preds = %1
  %58 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %59 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %58, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @V4L2_PIX_FMT_RGB565, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %57
  %67 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %68 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @S5P_JPEG_RAW_IN_565, align 4
  %71 = call i32 @s5p_jpeg_input_raw_mode(i32 %69, i32 %70)
  br label %78

72:                                               ; preds = %57
  %73 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %74 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @S5P_JPEG_RAW_IN_422, align 4
  %77 = call i32 @s5p_jpeg_input_raw_mode(i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %72, %66
  %79 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %80 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %83 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %82, i32 0, i32 6
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @s5p_jpeg_subsampling_mode(i32 %81, i32 %84)
  %86 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %87 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %90 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @s5p_jpeg_dri(i32 %88, i32 %91)
  %93 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %94 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %97 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %96, i32 0, i32 4
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @s5p_jpeg_x(i32 %95, i32 %99)
  %101 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %102 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %105 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %104, i32 0, i32 4
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @s5p_jpeg_y(i32 %103, i32 %107)
  %109 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %110 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i64, i64* %7, align 8
  %113 = call i32 @s5p_jpeg_imgadr(i32 %111, i64 %112)
  %114 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %115 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i64, i64* %8, align 8
  %118 = call i32 @s5p_jpeg_jpgadr(i32 %116, i64 %117)
  %119 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %120 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %123 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @s5p_jpeg_enc_stream_int(i32 %121, i32 %125)
  %127 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %128 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @S5P_JPEG_COEF11, align 4
  %131 = call i32 @s5p_jpeg_coef(i32 %129, i32 1, i32 1, i32 %130)
  %132 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %133 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @S5P_JPEG_COEF12, align 4
  %136 = call i32 @s5p_jpeg_coef(i32 %134, i32 1, i32 2, i32 %135)
  %137 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %138 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @S5P_JPEG_COEF13, align 4
  %141 = call i32 @s5p_jpeg_coef(i32 %139, i32 1, i32 3, i32 %140)
  %142 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %143 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @S5P_JPEG_COEF21, align 4
  %146 = call i32 @s5p_jpeg_coef(i32 %144, i32 2, i32 1, i32 %145)
  %147 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %148 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @S5P_JPEG_COEF22, align 4
  %151 = call i32 @s5p_jpeg_coef(i32 %149, i32 2, i32 2, i32 %150)
  %152 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %153 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @S5P_JPEG_COEF23, align 4
  %156 = call i32 @s5p_jpeg_coef(i32 %154, i32 2, i32 3, i32 %155)
  %157 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %158 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @S5P_JPEG_COEF31, align 4
  %161 = call i32 @s5p_jpeg_coef(i32 %159, i32 3, i32 1, i32 %160)
  %162 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %163 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @S5P_JPEG_COEF32, align 4
  %166 = call i32 @s5p_jpeg_coef(i32 %164, i32 3, i32 2, i32 %165)
  %167 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %168 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @S5P_JPEG_COEF33, align 4
  %171 = call i32 @s5p_jpeg_coef(i32 %169, i32 3, i32 3, i32 %170)
  %172 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %173 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %176 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @s5p_jpeg_set_qtbl_lum(i32 %174, i32 %177)
  %179 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %180 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %183 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @s5p_jpeg_set_qtbl_chr(i32 %181, i32 %184)
  %186 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %187 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @s5p_jpeg_qtbl(i32 %188, i32 1, i32 0)
  %190 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %191 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @s5p_jpeg_qtbl(i32 %192, i32 2, i32 1)
  %194 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %195 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @s5p_jpeg_qtbl(i32 %196, i32 3, i32 1)
  %198 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %199 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @s5p_jpeg_htbl_ac(i32 %200, i32 1)
  %202 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %203 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @s5p_jpeg_htbl_dc(i32 %204, i32 1)
  %206 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %207 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @s5p_jpeg_htbl_ac(i32 %208, i32 2)
  %210 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %211 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @s5p_jpeg_htbl_dc(i32 %212, i32 2)
  %214 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %215 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @s5p_jpeg_htbl_ac(i32 %216, i32 3)
  %218 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %219 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @s5p_jpeg_htbl_dc(i32 %220, i32 3)
  br label %266

222:                                              ; preds = %1
  %223 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %224 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @s5p_jpeg_rst_int_enable(i32 %225, i32 1)
  %227 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %228 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @s5p_jpeg_data_num_int_enable(i32 %229, i32 1)
  %231 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %232 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @s5p_jpeg_final_mcu_num_int_enable(i32 %233, i32 1)
  %235 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %236 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %235, i32 0, i32 2
  %237 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %236, i32 0, i32 0
  %238 = load %struct.TYPE_9__*, %struct.TYPE_9__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = load i64, i64* @V4L2_PIX_FMT_YUYV, align 8
  %242 = icmp eq i64 %240, %241
  br i1 %242, label %243, label %249

243:                                              ; preds = %222
  %244 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %245 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* @S5P_JPEG_RAW_OUT_422, align 4
  %248 = call i32 @s5p_jpeg_outform_raw(i32 %246, i32 %247)
  br label %255

249:                                              ; preds = %222
  %250 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %251 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = load i32, i32* @S5P_JPEG_RAW_OUT_420, align 4
  %254 = call i32 @s5p_jpeg_outform_raw(i32 %252, i32 %253)
  br label %255

255:                                              ; preds = %249, %243
  %256 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %257 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = load i64, i64* %7, align 8
  %260 = call i32 @s5p_jpeg_jpgadr(i32 %258, i64 %259)
  %261 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %262 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = load i64, i64* %8, align 8
  %265 = call i32 @s5p_jpeg_imgadr(i32 %263, i64 %264)
  br label %266

266:                                              ; preds = %255, %78
  %267 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %4, align 8
  %268 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = call i32 @s5p_jpeg_start(i32 %269)
  %271 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %272 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %271, i32 0, i32 1
  %273 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %272, align 8
  %274 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %273, i32 0, i32 0
  %275 = load i64, i64* %9, align 8
  %276 = call i32 @spin_unlock_irqrestore(i32* %274, i64 %275)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_next_src_buf(i32) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_next_dst_buf(i32) #1

declare dso_local i64 @vb2_dma_contig_plane_dma_addr(i32*, i32) #1

declare dso_local i32 @s5p_jpeg_reset(i32) #1

declare dso_local i32 @s5p_jpeg_poweron(i32) #1

declare dso_local i32 @s5p_jpeg_proc_mode(i32, i64) #1

declare dso_local i32 @s5p_jpeg_input_raw_mode(i32, i32) #1

declare dso_local i32 @s5p_jpeg_subsampling_mode(i32, i32) #1

declare dso_local i32 @s5p_jpeg_dri(i32, i32) #1

declare dso_local i32 @s5p_jpeg_x(i32, i32) #1

declare dso_local i32 @s5p_jpeg_y(i32, i32) #1

declare dso_local i32 @s5p_jpeg_imgadr(i32, i64) #1

declare dso_local i32 @s5p_jpeg_jpgadr(i32, i64) #1

declare dso_local i32 @s5p_jpeg_enc_stream_int(i32, i32) #1

declare dso_local i32 @s5p_jpeg_coef(i32, i32, i32, i32) #1

declare dso_local i32 @s5p_jpeg_set_qtbl_lum(i32, i32) #1

declare dso_local i32 @s5p_jpeg_set_qtbl_chr(i32, i32) #1

declare dso_local i32 @s5p_jpeg_qtbl(i32, i32, i32) #1

declare dso_local i32 @s5p_jpeg_htbl_ac(i32, i32) #1

declare dso_local i32 @s5p_jpeg_htbl_dc(i32, i32) #1

declare dso_local i32 @s5p_jpeg_rst_int_enable(i32, i32) #1

declare dso_local i32 @s5p_jpeg_data_num_int_enable(i32, i32) #1

declare dso_local i32 @s5p_jpeg_final_mcu_num_int_enable(i32, i32) #1

declare dso_local i32 @s5p_jpeg_outform_raw(i32, i32) #1

declare dso_local i32 @s5p_jpeg_start(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
