; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_sh_vou.c_sh_vou_s_selection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_sh_vou.c_sh_vou_s_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_selection = type { i64, i64, %struct.v4l2_rect }
%struct.v4l2_rect = type { i64, i32, i64, i32 }
%struct.sh_vou_device = type { i32, i32, %struct.v4l2_rect, i32, i32, %struct.v4l2_pix_format }
%struct.v4l2_pix_format = type { i32, i32 }
%struct.v4l2_subdev_selection = type { i64, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i64, i64, i32, i32, i32 }
%struct.TYPE_3__ = type { i64, i32 }
%struct.sh_vou_geometry = type { i32, i32, i32, i32, %struct.v4l2_rect }
%struct.v4l2_subdev_format = type { i64, %struct.TYPE_4__, %struct.TYPE_3__, i32 }

@V4L2_SEL_TGT_COMPOSE = common dso_local global i64 0, align 8
@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i32 0, align 4
@MEDIA_BUS_FMT_YUYV8_2X8 = common dso_local global i64 0, align 8
@V4L2_COLORSPACE_SMPTE170M = common dso_local global i32 0, align 4
@V4L2_FIELD_INTERLACED = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@V4L2_STD_525_60 = common dso_local global i32 0, align 4
@VOU_MIN_IMAGE_WIDTH = common dso_local global i32 0, align 4
@VOU_MAX_IMAGE_WIDTH = common dso_local global i64 0, align 8
@VOU_MIN_IMAGE_HEIGHT = common dso_local global i32 0, align 4
@pad = common dso_local global i32 0, align 4
@set_selection = common dso_local global i32 0, align 4
@set_fmt = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_selection*)* @sh_vou_s_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_vou_s_selection(%struct.file* %0, i8* %1, %struct.v4l2_selection* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_selection*, align 8
  %8 = alloca %struct.v4l2_rect*, align 8
  %9 = alloca %struct.sh_vou_device*, align 8
  %10 = alloca %struct.v4l2_subdev_selection, align 8
  %11 = alloca %struct.v4l2_pix_format*, align 8
  %12 = alloca %struct.sh_vou_geometry, align 8
  %13 = alloca %struct.v4l2_subdev_format, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_selection* %2, %struct.v4l2_selection** %7, align 8
  %16 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %17 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %16, i32 0, i32 2
  store %struct.v4l2_rect* %17, %struct.v4l2_rect** %8, align 8
  %18 = load %struct.file*, %struct.file** %5, align 8
  %19 = call %struct.sh_vou_device* @video_drvdata(%struct.file* %18)
  store %struct.sh_vou_device* %19, %struct.sh_vou_device** %9, align 8
  %20 = bitcast %struct.v4l2_subdev_selection* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %20, i8 0, i64 64, i1 false)
  %21 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %10, i32 0, i32 0
  %22 = load i64, i64* @V4L2_SEL_TGT_COMPOSE, align 8
  store i64 %22, i64* %21, align 8
  %23 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %10, i32 0, i32 3
  %24 = load i32, i32* @V4L2_SUBDEV_FORMAT_ACTIVE, align 4
  store i32 %24, i32* %23, align 8
  %25 = load %struct.sh_vou_device*, %struct.sh_vou_device** %9, align 8
  %26 = getelementptr inbounds %struct.sh_vou_device, %struct.sh_vou_device* %25, i32 0, i32 5
  store %struct.v4l2_pix_format* %26, %struct.v4l2_pix_format** %11, align 8
  %27 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %13, i32 0, i32 0
  store i64 0, i64* %27, align 8
  %28 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %13, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* @MEDIA_BUS_FMT_YUYV8_2X8, align 8
  store i64 %30, i64* %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  store i32 0, i32* %32, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 3
  %34 = load i32, i32* @V4L2_COLORSPACE_SMPTE170M, align 4
  store i32 %34, i32* %33, align 4
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 4
  %36 = load i32, i32* @V4L2_FIELD_INTERLACED, align 4
  store i32 %36, i32* %35, align 8
  %37 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %13, i32 0, i32 2
  %38 = bitcast %struct.TYPE_3__* %37 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %38, i8 0, i64 16, i1 false)
  %39 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %13, i32 0, i32 3
  %40 = load i32, i32* @V4L2_SUBDEV_FORMAT_ACTIVE, align 4
  store i32 %40, i32* %39, align 8
  %41 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %42 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %52, label %46

46:                                               ; preds = %3
  %47 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %48 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @V4L2_SEL_TGT_COMPOSE, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %46, %3
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %225

55:                                               ; preds = %46
  %56 = load %struct.sh_vou_device*, %struct.sh_vou_device** %9, align 8
  %57 = getelementptr inbounds %struct.sh_vou_device, %struct.sh_vou_device* %56, i32 0, i32 4
  %58 = call i64 @vb2_is_busy(i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i32, i32* @EBUSY, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %225

63:                                               ; preds = %55
  %64 = load %struct.sh_vou_device*, %struct.sh_vou_device** %9, align 8
  %65 = getelementptr inbounds %struct.sh_vou_device, %struct.sh_vou_device* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @V4L2_STD_525_60, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  store i32 480, i32* %14, align 4
  br label %72

71:                                               ; preds = %63
  store i32 576, i32* %14, align 4
  br label %72

72:                                               ; preds = %71, %70
  %73 = load %struct.v4l2_rect*, %struct.v4l2_rect** %8, align 8
  %74 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %73, i32 0, i32 0
  %75 = load i32, i32* @VOU_MIN_IMAGE_WIDTH, align 4
  %76 = load i64, i64* @VOU_MAX_IMAGE_WIDTH, align 8
  %77 = load %struct.v4l2_rect*, %struct.v4l2_rect** %8, align 8
  %78 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %77, i32 0, i32 1
  %79 = load i32, i32* @VOU_MIN_IMAGE_HEIGHT, align 4
  %80 = load i32, i32* %14, align 4
  %81 = call i32 @v4l_bound_align_image(i64* %74, i32 %75, i64 %76, i32 1, i32* %78, i32 %79, i32 %80, i32 1, i32 0)
  %82 = load %struct.v4l2_rect*, %struct.v4l2_rect** %8, align 8
  %83 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.v4l2_rect*, %struct.v4l2_rect** %8, align 8
  %86 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %84, %87
  %89 = load i64, i64* @VOU_MAX_IMAGE_WIDTH, align 8
  %90 = icmp sgt i64 %88, %89
  br i1 %90, label %91, label %99

91:                                               ; preds = %72
  %92 = load i64, i64* @VOU_MAX_IMAGE_WIDTH, align 8
  %93 = load %struct.v4l2_rect*, %struct.v4l2_rect** %8, align 8
  %94 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = sub nsw i64 %92, %95
  %97 = load %struct.v4l2_rect*, %struct.v4l2_rect** %8, align 8
  %98 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %97, i32 0, i32 2
  store i64 %96, i64* %98, align 8
  br label %99

99:                                               ; preds = %91, %72
  %100 = load %struct.v4l2_rect*, %struct.v4l2_rect** %8, align 8
  %101 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.v4l2_rect*, %struct.v4l2_rect** %8, align 8
  %104 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = add i32 %102, %105
  %107 = load i32, i32* %14, align 4
  %108 = icmp ugt i32 %106, %107
  br i1 %108, label %109, label %117

109:                                              ; preds = %99
  %110 = load i32, i32* %14, align 4
  %111 = load %struct.v4l2_rect*, %struct.v4l2_rect** %8, align 8
  %112 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = sub i32 %110, %113
  %115 = load %struct.v4l2_rect*, %struct.v4l2_rect** %8, align 8
  %116 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %115, i32 0, i32 3
  store i32 %114, i32* %116, align 8
  br label %117

117:                                              ; preds = %109, %99
  %118 = getelementptr inbounds %struct.sh_vou_geometry, %struct.sh_vou_geometry* %12, i32 0, i32 4
  %119 = load %struct.v4l2_rect*, %struct.v4l2_rect** %8, align 8
  %120 = bitcast %struct.v4l2_rect* %118 to i8*
  %121 = bitcast %struct.v4l2_rect* %119 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %120, i8* align 8 %121, i64 32, i1 false)
  %122 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %123 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = getelementptr inbounds %struct.sh_vou_geometry, %struct.sh_vou_geometry* %12, i32 0, i32 3
  store i32 %124, i32* %125, align 4
  %126 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %127 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = getelementptr inbounds %struct.sh_vou_geometry, %struct.sh_vou_geometry* %12, i32 0, i32 2
  store i32 %128, i32* %129, align 8
  %130 = getelementptr inbounds %struct.sh_vou_geometry, %struct.sh_vou_geometry* %12, i32 0, i32 4
  %131 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %10, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 0
  store i64 %132, i64* %134, align 8
  %135 = getelementptr inbounds %struct.sh_vou_geometry, %struct.sh_vou_geometry* %12, i32 0, i32 4
  %136 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %10, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 1
  store i32 %137, i32* %139, align 8
  %140 = load %struct.sh_vou_device*, %struct.sh_vou_device** %9, align 8
  %141 = getelementptr inbounds %struct.sh_vou_device, %struct.sh_vou_device* %140, i32 0, i32 3
  %142 = load i32, i32* @pad, align 4
  %143 = load i32, i32* @set_selection, align 4
  %144 = call i32 @v4l2_device_call_until_err(i32* %141, i32 0, i32 %142, i32 %143, i32* null, %struct.v4l2_subdev_selection* %10)
  %145 = getelementptr inbounds %struct.sh_vou_geometry, %struct.sh_vou_geometry* %12, i32 0, i32 4
  %146 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %13, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 1
  store i64 %147, i64* %149, align 8
  %150 = getelementptr inbounds %struct.sh_vou_geometry, %struct.sh_vou_geometry* %12, i32 0, i32 4
  %151 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %13, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 2
  store i32 %152, i32* %154, align 8
  %155 = load %struct.sh_vou_device*, %struct.sh_vou_device** %9, align 8
  %156 = getelementptr inbounds %struct.sh_vou_device, %struct.sh_vou_device* %155, i32 0, i32 3
  %157 = load i32, i32* @pad, align 4
  %158 = load i32, i32* @set_fmt, align 4
  %159 = bitcast %struct.v4l2_subdev_format* %13 to %struct.v4l2_subdev_selection*
  %160 = call i32 @v4l2_device_call_until_err(i32* %156, i32 0, i32 %157, i32 %158, i32* null, %struct.v4l2_subdev_selection* %159)
  store i32 %160, i32* %15, align 4
  %161 = load i32, i32* %15, align 4
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %117
  %164 = load i32, i32* %15, align 4
  store i32 %164, i32* %4, align 4
  br label %225

165:                                              ; preds = %117
  %166 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %13, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = trunc i64 %168 to i32
  %170 = zext i32 %169 to i64
  %171 = load i64, i64* @VOU_MAX_IMAGE_WIDTH, align 8
  %172 = icmp sgt i64 %170, %171
  br i1 %172, label %185, label %173

173:                                              ; preds = %165
  %174 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %13, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* %14, align 4
  %178 = icmp ugt i32 %176, %177
  br i1 %178, label %185, label %179

179:                                              ; preds = %173
  %180 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %13, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @MEDIA_BUS_FMT_YUYV8_2X8, align 8
  %184 = icmp ne i64 %182, %183
  br i1 %184, label %185, label %188

185:                                              ; preds = %179, %173, %165
  %186 = load i32, i32* @EIO, align 4
  %187 = sub nsw i32 0, %186
  store i32 %187, i32* %4, align 4
  br label %225

188:                                              ; preds = %179
  %189 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %13, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = getelementptr inbounds %struct.sh_vou_geometry, %struct.sh_vou_geometry* %12, i32 0, i32 4
  %193 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %192, i32 0, i32 0
  store i64 %191, i64* %193, align 8
  %194 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %13, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = getelementptr inbounds %struct.sh_vou_geometry, %struct.sh_vou_geometry* %12, i32 0, i32 4
  %198 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %197, i32 0, i32 1
  store i32 %196, i32* %198, align 8
  %199 = load %struct.sh_vou_device*, %struct.sh_vou_device** %9, align 8
  %200 = getelementptr inbounds %struct.sh_vou_device, %struct.sh_vou_device* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = call i32 @vou_adjust_input(%struct.sh_vou_geometry* %12, i32 %201)
  %203 = load %struct.sh_vou_device*, %struct.sh_vou_device** %9, align 8
  %204 = getelementptr inbounds %struct.sh_vou_device, %struct.sh_vou_device* %203, i32 0, i32 2
  %205 = getelementptr inbounds %struct.sh_vou_geometry, %struct.sh_vou_geometry* %12, i32 0, i32 4
  %206 = bitcast %struct.v4l2_rect* %204 to i8*
  %207 = bitcast %struct.v4l2_rect* %205 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %206, i8* align 8 %207, i64 32, i1 false)
  %208 = getelementptr inbounds %struct.sh_vou_geometry, %struct.sh_vou_geometry* %12, i32 0, i32 3
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %211 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %210, i32 0, i32 1
  store i32 %209, i32* %211, align 4
  %212 = getelementptr inbounds %struct.sh_vou_geometry, %struct.sh_vou_geometry* %12, i32 0, i32 2
  %213 = load i32, i32* %212, align 8
  %214 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %215 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %214, i32 0, i32 0
  store i32 %213, i32* %215, align 4
  %216 = load %struct.sh_vou_device*, %struct.sh_vou_device** %9, align 8
  %217 = load %struct.sh_vou_device*, %struct.sh_vou_device** %9, align 8
  %218 = getelementptr inbounds %struct.sh_vou_device, %struct.sh_vou_device* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = getelementptr inbounds %struct.sh_vou_geometry, %struct.sh_vou_geometry* %12, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = getelementptr inbounds %struct.sh_vou_geometry, %struct.sh_vou_geometry* %12, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = call i32 @sh_vou_configure_geometry(%struct.sh_vou_device* %216, i32 %219, i32 %221, i32 %223)
  store i32 0, i32* %4, align 4
  br label %225

225:                                              ; preds = %188, %185, %163, %60, %52
  %226 = load i32, i32* %4, align 4
  ret i32 %226
}

declare dso_local %struct.sh_vou_device* @video_drvdata(%struct.file*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @vb2_is_busy(i32*) #1

declare dso_local i32 @v4l_bound_align_image(i64*, i32, i64, i32, i32*, i32, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @v4l2_device_call_until_err(i32*, i32, i32, i32, i32*, %struct.v4l2_subdev_selection*) #1

declare dso_local i32 @vou_adjust_input(%struct.sh_vou_geometry*, i32) #1

declare dso_local i32 @sh_vou_configure_geometry(%struct.sh_vou_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
