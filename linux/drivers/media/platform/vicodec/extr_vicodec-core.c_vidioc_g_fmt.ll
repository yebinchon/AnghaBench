; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vicodec/extr_vicodec-core.c_vidioc_g_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vicodec/extr_vicodec-core.c_vidioc_g_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vicodec_ctx = type { %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.v4l2_format = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format }
%struct.v4l2_pix_format_mplane = type { i32, i32, %struct.TYPE_8__*, i32, i32, i32, i32, i32, i32, i8*, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32 }
%struct.vb2_queue = type { i32 }
%struct.vicodec_q_data = type { i32, i32, i32, %struct.v4l2_fwht_pixfmt_info* }
%struct.v4l2_fwht_pixfmt_info = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@multiplanar = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vicodec_ctx*, %struct.v4l2_format*)* @vidioc_g_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_g_fmt(%struct.vicodec_ctx* %0, %struct.v4l2_format* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vicodec_ctx*, align 8
  %5 = alloca %struct.v4l2_format*, align 8
  %6 = alloca %struct.vb2_queue*, align 8
  %7 = alloca %struct.vicodec_q_data*, align 8
  %8 = alloca %struct.v4l2_pix_format_mplane*, align 8
  %9 = alloca %struct.v4l2_pix_format*, align 8
  %10 = alloca %struct.v4l2_fwht_pixfmt_info*, align 8
  store %struct.vicodec_ctx* %0, %struct.vicodec_ctx** %4, align 8
  store %struct.v4l2_format* %1, %struct.v4l2_format** %5, align 8
  %11 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %4, align 8
  %12 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %16 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.vb2_queue* @v4l2_m2m_get_vq(i32 %14, i32 %17)
  store %struct.vb2_queue* %18, %struct.vb2_queue** %6, align 8
  %19 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %20 = icmp ne %struct.vb2_queue* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %191

24:                                               ; preds = %2
  %25 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %4, align 8
  %26 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %27 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call %struct.vicodec_q_data* @get_q_data(%struct.vicodec_ctx* %25, i32 %28)
  store %struct.vicodec_q_data* %29, %struct.vicodec_q_data** %7, align 8
  %30 = load %struct.vicodec_q_data*, %struct.vicodec_q_data** %7, align 8
  %31 = getelementptr inbounds %struct.vicodec_q_data, %struct.vicodec_q_data* %30, i32 0, i32 3
  %32 = load %struct.v4l2_fwht_pixfmt_info*, %struct.v4l2_fwht_pixfmt_info** %31, align 8
  store %struct.v4l2_fwht_pixfmt_info* %32, %struct.v4l2_fwht_pixfmt_info** %10, align 8
  %33 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %34 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  switch i32 %35, label %187 [
    i32 131, label %36
    i32 129, label %36
    i32 130, label %102
    i32 128, label %102
  ]

36:                                               ; preds = %24, %24
  %37 = load i32, i32* @multiplanar, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %191

42:                                               ; preds = %36
  %43 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %44 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  store %struct.v4l2_pix_format* %45, %struct.v4l2_pix_format** %9, align 8
  %46 = load %struct.vicodec_q_data*, %struct.vicodec_q_data** %7, align 8
  %47 = getelementptr inbounds %struct.vicodec_q_data, %struct.vicodec_q_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %50 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.vicodec_q_data*, %struct.vicodec_q_data** %7, align 8
  %52 = getelementptr inbounds %struct.vicodec_q_data, %struct.vicodec_q_data* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %55 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %54, i32 0, i32 9
  store i32 %53, i32* %55, align 8
  %56 = load i8*, i8** @V4L2_FIELD_NONE, align 8
  %57 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %58 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %57, i32 0, i32 8
  store i8* %56, i8** %58, align 8
  %59 = load %struct.v4l2_fwht_pixfmt_info*, %struct.v4l2_fwht_pixfmt_info** %10, align 8
  %60 = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, %struct.v4l2_fwht_pixfmt_info* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %63 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %62, i32 0, i32 7
  store i32 %61, i32* %63, align 4
  %64 = load %struct.vicodec_q_data*, %struct.vicodec_q_data** %7, align 8
  %65 = getelementptr inbounds %struct.vicodec_q_data, %struct.vicodec_q_data* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.v4l2_fwht_pixfmt_info*, %struct.v4l2_fwht_pixfmt_info** %10, align 8
  %68 = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, %struct.v4l2_fwht_pixfmt_info* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = mul nsw i32 %66, %69
  %71 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %72 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load %struct.vicodec_q_data*, %struct.vicodec_q_data** %7, align 8
  %74 = getelementptr inbounds %struct.vicodec_q_data, %struct.vicodec_q_data* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %77 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %76, i32 0, i32 6
  store i32 %75, i32* %77, align 8
  %78 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %4, align 8
  %79 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %83 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %82, i32 0, i32 5
  store i32 %81, i32* %83, align 4
  %84 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %4, align 8
  %85 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %89 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %88, i32 0, i32 4
  store i32 %87, i32* %89, align 8
  %90 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %4, align 8
  %91 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %95 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %94, i32 0, i32 3
  store i32 %93, i32* %95, align 4
  %96 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %4, align 8
  %97 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %101 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 8
  br label %190

102:                                              ; preds = %24, %24
  %103 = load i32, i32* @multiplanar, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %102
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %3, align 4
  br label %191

108:                                              ; preds = %102
  %109 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %110 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  store %struct.v4l2_pix_format_mplane* %111, %struct.v4l2_pix_format_mplane** %8, align 8
  %112 = load %struct.vicodec_q_data*, %struct.vicodec_q_data** %7, align 8
  %113 = getelementptr inbounds %struct.vicodec_q_data, %struct.vicodec_q_data* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %116 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 8
  %117 = load %struct.vicodec_q_data*, %struct.vicodec_q_data** %7, align 8
  %118 = getelementptr inbounds %struct.vicodec_q_data, %struct.vicodec_q_data* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %121 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %120, i32 0, i32 10
  store i32 %119, i32* %121, align 8
  %122 = load i8*, i8** @V4L2_FIELD_NONE, align 8
  %123 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %124 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %123, i32 0, i32 9
  store i8* %122, i8** %124, align 8
  %125 = load %struct.v4l2_fwht_pixfmt_info*, %struct.v4l2_fwht_pixfmt_info** %10, align 8
  %126 = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, %struct.v4l2_fwht_pixfmt_info* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %129 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %128, i32 0, i32 8
  store i32 %127, i32* %129, align 4
  %130 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %131 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %130, i32 0, i32 1
  store i32 1, i32* %131, align 4
  %132 = load %struct.vicodec_q_data*, %struct.vicodec_q_data** %7, align 8
  %133 = getelementptr inbounds %struct.vicodec_q_data, %struct.vicodec_q_data* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.v4l2_fwht_pixfmt_info*, %struct.v4l2_fwht_pixfmt_info** %10, align 8
  %136 = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, %struct.v4l2_fwht_pixfmt_info* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = mul nsw i32 %134, %137
  %139 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %140 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %139, i32 0, i32 2
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i64 0
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  store i32 %138, i32* %143, align 4
  %144 = load %struct.vicodec_q_data*, %struct.vicodec_q_data** %7, align 8
  %145 = getelementptr inbounds %struct.vicodec_q_data, %struct.vicodec_q_data* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %148 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %147, i32 0, i32 2
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i64 0
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 2
  store i32 %146, i32* %151, align 4
  %152 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %4, align 8
  %153 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %157 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %156, i32 0, i32 7
  store i32 %155, i32* %157, align 8
  %158 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %4, align 8
  %159 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %163 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %162, i32 0, i32 6
  store i32 %161, i32* %163, align 4
  %164 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %4, align 8
  %165 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %169 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %168, i32 0, i32 5
  store i32 %167, i32* %169, align 8
  %170 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %4, align 8
  %171 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %175 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %174, i32 0, i32 4
  store i32 %173, i32* %175, align 4
  %176 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %177 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 8
  %179 = call i32 @memset(i32 %178, i32 0, i32 4)
  %180 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %181 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %180, i32 0, i32 2
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i64 0
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @memset(i32 %185, i32 0, i32 4)
  br label %190

187:                                              ; preds = %24
  %188 = load i32, i32* @EINVAL, align 4
  %189 = sub nsw i32 0, %188
  store i32 %189, i32* %3, align 4
  br label %191

190:                                              ; preds = %108, %42
  store i32 0, i32* %3, align 4
  br label %191

191:                                              ; preds = %190, %187, %105, %39, %21
  %192 = load i32, i32* %3, align 4
  ret i32 %192
}

declare dso_local %struct.vb2_queue* @v4l2_m2m_get_vq(i32, i32) #1

declare dso_local %struct.vicodec_q_data* @get_q_data(%struct.vicodec_ctx*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
