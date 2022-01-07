; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vicodec/extr_vicodec-core.c_vidioc_try_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vicodec/extr_vicodec-core.c_vidioc_try_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_fwht_pixfmt_info = type { i32, i32, i32, i32, i32 }
%struct.vicodec_ctx = type { i64 }
%struct.v4l2_format = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, i8*, %struct.v4l2_plane_pix_format* }
%struct.v4l2_plane_pix_format = type { i32, i32, i32 }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i8* }

@pixfmt_stateless_fwht = common dso_local global %struct.v4l2_fwht_pixfmt_info zeroinitializer, align 4
@pixfmt_fwht = common dso_local global %struct.v4l2_fwht_pixfmt_info zeroinitializer, align 4
@V4L2_PIX_FMT_FWHT = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_FWHT_STATELESS = common dso_local global i32 0, align 4
@MIN_WIDTH = common dso_local global i32 0, align 4
@MAX_WIDTH = common dso_local global i32 0, align 4
@MIN_HEIGHT = common dso_local global i32 0, align 4
@MAX_HEIGHT = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vicodec_ctx*, %struct.v4l2_format*)* @vidioc_try_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_try_fmt(%struct.vicodec_ctx* %0, %struct.v4l2_format* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vicodec_ctx*, align 8
  %5 = alloca %struct.v4l2_format*, align 8
  %6 = alloca %struct.v4l2_pix_format_mplane*, align 8
  %7 = alloca %struct.v4l2_pix_format*, align 8
  %8 = alloca %struct.v4l2_plane_pix_format*, align 8
  %9 = alloca %struct.v4l2_fwht_pixfmt_info*, align 8
  store %struct.vicodec_ctx* %0, %struct.vicodec_ctx** %4, align 8
  store %struct.v4l2_format* %1, %struct.v4l2_format** %5, align 8
  %10 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %4, align 8
  %11 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, %struct.v4l2_fwht_pixfmt_info* @pixfmt_stateless_fwht, %struct.v4l2_fwht_pixfmt_info* @pixfmt_fwht
  store %struct.v4l2_fwht_pixfmt_info* %15, %struct.v4l2_fwht_pixfmt_info** %9, align 8
  %16 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %17 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %234 [
    i32 131, label %19
    i32 129, label %19
    i32 130, label %120
    i32 128, label %120
  ]

19:                                               ; preds = %2, %2
  %20 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %21 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store %struct.v4l2_pix_format* %22, %struct.v4l2_pix_format** %7, align 8
  %23 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %24 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @V4L2_PIX_FMT_FWHT, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %19
  %29 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %30 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @V4L2_PIX_FMT_FWHT_STATELESS, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %36 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = call %struct.v4l2_fwht_pixfmt_info* @find_fmt(i32 %37)
  store %struct.v4l2_fwht_pixfmt_info* %38, %struct.v4l2_fwht_pixfmt_info** %9, align 8
  br label %39

39:                                               ; preds = %34, %28, %19
  %40 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %41 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @MIN_WIDTH, align 4
  %44 = load i32, i32* @MAX_WIDTH, align 4
  %45 = call i8* @clamp(i32 %42, i32 %43, i32 %44)
  %46 = ptrtoint i8* %45 to i32
  %47 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %48 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %50 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.v4l2_fwht_pixfmt_info*, %struct.v4l2_fwht_pixfmt_info** %9, align 8
  %53 = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, %struct.v4l2_fwht_pixfmt_info* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = call i8* @vic_round_dim(i32 %51, i32 %54)
  %56 = ptrtoint i8* %55 to i32
  %57 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %58 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %60 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @MIN_HEIGHT, align 4
  %63 = load i32, i32* @MAX_HEIGHT, align 4
  %64 = call i8* @clamp(i32 %61, i32 %62, i32 %63)
  %65 = ptrtoint i8* %64 to i32
  %66 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %67 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %69 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.v4l2_fwht_pixfmt_info*, %struct.v4l2_fwht_pixfmt_info** %9, align 8
  %72 = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, %struct.v4l2_fwht_pixfmt_info* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = call i8* @vic_round_dim(i32 %70, i32 %73)
  %75 = ptrtoint i8* %74 to i32
  %76 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %77 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load i8*, i8** @V4L2_FIELD_NONE, align 8
  %79 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %80 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %79, i32 0, i32 5
  store i8* %78, i8** %80, align 8
  %81 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %82 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.v4l2_fwht_pixfmt_info*, %struct.v4l2_fwht_pixfmt_info** %9, align 8
  %85 = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, %struct.v4l2_fwht_pixfmt_info* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = mul nsw i32 %83, %86
  %88 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %89 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 8
  %90 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %91 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %94 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = mul nsw i32 %92, %95
  %97 = load %struct.v4l2_fwht_pixfmt_info*, %struct.v4l2_fwht_pixfmt_info** %9, align 8
  %98 = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, %struct.v4l2_fwht_pixfmt_info* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = mul nsw i32 %96, %99
  %101 = load %struct.v4l2_fwht_pixfmt_info*, %struct.v4l2_fwht_pixfmt_info** %9, align 8
  %102 = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, %struct.v4l2_fwht_pixfmt_info* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = sdiv i32 %100, %103
  %105 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %106 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %105, i32 0, i32 3
  store i32 %104, i32* %106, align 4
  %107 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %108 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @V4L2_PIX_FMT_FWHT, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %119

112:                                              ; preds = %39
  %113 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %114 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = sext i32 %115 to i64
  %117 = add i64 %116, 4
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %114, align 4
  br label %119

119:                                              ; preds = %112, %39
  br label %237

120:                                              ; preds = %2, %2
  %121 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %122 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  store %struct.v4l2_pix_format_mplane* %123, %struct.v4l2_pix_format_mplane** %6, align 8
  %124 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %125 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %124, i32 0, i32 6
  %126 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %125, align 8
  store %struct.v4l2_plane_pix_format* %126, %struct.v4l2_plane_pix_format** %8, align 8
  %127 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %128 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @V4L2_PIX_FMT_FWHT, align 4
  %131 = icmp ne i32 %129, %130
  br i1 %131, label %132, label %143

132:                                              ; preds = %120
  %133 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %134 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @V4L2_PIX_FMT_FWHT_STATELESS, align 4
  %137 = icmp ne i32 %135, %136
  br i1 %137, label %138, label %143

138:                                              ; preds = %132
  %139 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %140 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 8
  %142 = call %struct.v4l2_fwht_pixfmt_info* @find_fmt(i32 %141)
  store %struct.v4l2_fwht_pixfmt_info* %142, %struct.v4l2_fwht_pixfmt_info** %9, align 8
  br label %143

143:                                              ; preds = %138, %132, %120
  %144 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %145 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %144, i32 0, i32 0
  store i32 1, i32* %145, align 8
  %146 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %147 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @MIN_WIDTH, align 4
  %150 = load i32, i32* @MAX_WIDTH, align 4
  %151 = call i8* @clamp(i32 %148, i32 %149, i32 %150)
  %152 = ptrtoint i8* %151 to i32
  %153 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %154 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %153, i32 0, i32 1
  store i32 %152, i32* %154, align 4
  %155 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %156 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.v4l2_fwht_pixfmt_info*, %struct.v4l2_fwht_pixfmt_info** %9, align 8
  %159 = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, %struct.v4l2_fwht_pixfmt_info* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 4
  %161 = call i8* @vic_round_dim(i32 %157, i32 %160)
  %162 = ptrtoint i8* %161 to i32
  %163 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %164 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %163, i32 0, i32 1
  store i32 %162, i32* %164, align 4
  %165 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %166 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @MIN_HEIGHT, align 4
  %169 = load i32, i32* @MAX_HEIGHT, align 4
  %170 = call i8* @clamp(i32 %167, i32 %168, i32 %169)
  %171 = ptrtoint i8* %170 to i32
  %172 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %173 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %172, i32 0, i32 2
  store i32 %171, i32* %173, align 8
  %174 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %175 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.v4l2_fwht_pixfmt_info*, %struct.v4l2_fwht_pixfmt_info** %9, align 8
  %178 = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, %struct.v4l2_fwht_pixfmt_info* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 4
  %180 = call i8* @vic_round_dim(i32 %176, i32 %179)
  %181 = ptrtoint i8* %180 to i32
  %182 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %183 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %182, i32 0, i32 2
  store i32 %181, i32* %183, align 8
  %184 = load i8*, i8** @V4L2_FIELD_NONE, align 8
  %185 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %186 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %185, i32 0, i32 5
  store i8* %184, i8** %186, align 8
  %187 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %188 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.v4l2_fwht_pixfmt_info*, %struct.v4l2_fwht_pixfmt_info** %9, align 8
  %191 = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, %struct.v4l2_fwht_pixfmt_info* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = mul nsw i32 %189, %192
  %194 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %8, align 8
  %195 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %194, i32 0, i32 0
  store i32 %193, i32* %195, align 4
  %196 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %197 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %200 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 8
  %202 = mul nsw i32 %198, %201
  %203 = load %struct.v4l2_fwht_pixfmt_info*, %struct.v4l2_fwht_pixfmt_info** %9, align 8
  %204 = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, %struct.v4l2_fwht_pixfmt_info* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = mul nsw i32 %202, %205
  %207 = load %struct.v4l2_fwht_pixfmt_info*, %struct.v4l2_fwht_pixfmt_info** %9, align 8
  %208 = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, %struct.v4l2_fwht_pixfmt_info* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 4
  %210 = sdiv i32 %206, %209
  %211 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %8, align 8
  %212 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %211, i32 0, i32 1
  store i32 %210, i32* %212, align 4
  %213 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %214 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %213, i32 0, i32 4
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* @V4L2_PIX_FMT_FWHT, align 4
  %217 = icmp eq i32 %215, %216
  br i1 %217, label %218, label %225

218:                                              ; preds = %143
  %219 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %8, align 8
  %220 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = sext i32 %221 to i64
  %223 = add i64 %222, 4
  %224 = trunc i64 %223 to i32
  store i32 %224, i32* %220, align 4
  br label %225

225:                                              ; preds = %218, %143
  %226 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %227 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @memset(i32 %228, i32 0, i32 4)
  %230 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %8, align 8
  %231 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @memset(i32 %232, i32 0, i32 4)
  br label %237

234:                                              ; preds = %2
  %235 = load i32, i32* @EINVAL, align 4
  %236 = sub nsw i32 0, %235
  store i32 %236, i32* %3, align 4
  br label %238

237:                                              ; preds = %225, %119
  store i32 0, i32* %3, align 4
  br label %238

238:                                              ; preds = %237, %234
  %239 = load i32, i32* %3, align 4
  ret i32 %239
}

declare dso_local %struct.v4l2_fwht_pixfmt_info* @find_fmt(i32) #1

declare dso_local i8* @clamp(i32, i32, i32) #1

declare dso_local i8* @vic_round_dim(i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
