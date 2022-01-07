; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/stm32/extr_stm32-dcmi.c_dcmi_try_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/stm32/extr_stm32-dcmi.c_dcmi_try_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_dcmi = type { i32, %struct.v4l2_rect, %struct.TYPE_4__, i64, i32, %struct.dcmi_format** }
%struct.v4l2_rect = type { i32, i32, i8*, i8* }
%struct.TYPE_4__ = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.v4l2_pix_format }
%struct.v4l2_pix_format = type { i64, i32, i32, i32, i32, i32 }
%struct.dcmi_format = type { i64, i32, i32 }
%struct.dcmi_framesize = type { i32, i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_format = type { i32, i32 }

@V4L2_SUBDEV_FORMAT_TRY = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@MIN_WIDTH = common dso_local global i32 0, align 4
@MAX_WIDTH = common dso_local global i32 0, align 4
@MIN_HEIGHT = common dso_local global i32 0, align 4
@MAX_HEIGHT = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_JPEG = common dso_local global i64 0, align 8
@pad = common dso_local global i32 0, align 4
@set_fmt = common dso_local global i32 0, align 4
@s32 = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32_dcmi*, %struct.v4l2_format*, %struct.dcmi_format**, %struct.dcmi_framesize*)* @dcmi_try_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dcmi_try_fmt(%struct.stm32_dcmi* %0, %struct.v4l2_format* %1, %struct.dcmi_format** %2, %struct.dcmi_framesize* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.stm32_dcmi*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.dcmi_format**, align 8
  %9 = alloca %struct.dcmi_framesize*, align 8
  %10 = alloca %struct.dcmi_format*, align 8
  %11 = alloca %struct.dcmi_framesize, align 4
  %12 = alloca %struct.v4l2_pix_format*, align 8
  %13 = alloca %struct.v4l2_subdev_pad_config, align 4
  %14 = alloca %struct.v4l2_subdev_format, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.dcmi_framesize, align 4
  %18 = alloca %struct.v4l2_rect, align 8
  %19 = alloca %struct.v4l2_rect, align 8
  store %struct.stm32_dcmi* %0, %struct.stm32_dcmi** %6, align 8
  store %struct.v4l2_format* %1, %struct.v4l2_format** %7, align 8
  store %struct.dcmi_format** %2, %struct.dcmi_format*** %8, align 8
  store %struct.dcmi_framesize* %3, %struct.dcmi_framesize** %9, align 8
  %20 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %21 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store %struct.v4l2_pix_format* %22, %struct.v4l2_pix_format** %12, align 8
  %23 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %14, i32 0, i32 0
  store i32 0, i32* %23, align 4
  %24 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %14, i32 0, i32 1
  %25 = load i32, i32* @V4L2_SUBDEV_FORMAT_TRY, align 4
  store i32 %25, i32* %24, align 4
  %26 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %6, align 8
  %27 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %12, align 8
  %28 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call %struct.dcmi_format* @find_format_by_fourcc(%struct.stm32_dcmi* %26, i64 %29)
  store %struct.dcmi_format* %30, %struct.dcmi_format** %10, align 8
  %31 = load %struct.dcmi_format*, %struct.dcmi_format** %10, align 8
  %32 = icmp ne %struct.dcmi_format* %31, null
  br i1 %32, label %57, label %33

33:                                               ; preds = %4
  %34 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %6, align 8
  %35 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* @ENODATA, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %229

41:                                               ; preds = %33
  %42 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %6, align 8
  %43 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %42, i32 0, i32 5
  %44 = load %struct.dcmi_format**, %struct.dcmi_format*** %43, align 8
  %45 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %6, align 8
  %46 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sub nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.dcmi_format*, %struct.dcmi_format** %44, i64 %49
  %51 = load %struct.dcmi_format*, %struct.dcmi_format** %50, align 8
  store %struct.dcmi_format* %51, %struct.dcmi_format** %10, align 8
  %52 = load %struct.dcmi_format*, %struct.dcmi_format** %10, align 8
  %53 = getelementptr inbounds %struct.dcmi_format, %struct.dcmi_format* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %12, align 8
  %56 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  br label %57

57:                                               ; preds = %41, %4
  %58 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %12, align 8
  %59 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @MIN_WIDTH, align 4
  %62 = load i32, i32* @MAX_WIDTH, align 4
  %63 = call i8* @clamp(i32 %60, i32 %61, i32 %62)
  %64 = ptrtoint i8* %63 to i32
  %65 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %12, align 8
  %66 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 8
  %67 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %12, align 8
  %68 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @MIN_HEIGHT, align 4
  %71 = load i32, i32* @MAX_HEIGHT, align 4
  %72 = call i8* @clamp(i32 %69, i32 %70, i32 %71)
  %73 = ptrtoint i8* %72 to i32
  %74 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %12, align 8
  %75 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 4
  %76 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %6, align 8
  %77 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %57
  %81 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %12, align 8
  %82 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @V4L2_PIX_FMT_JPEG, align 8
  %85 = icmp ne i64 %83, %84
  br label %86

86:                                               ; preds = %80, %57
  %87 = phi i1 [ false, %57 ], [ %85, %80 ]
  %88 = zext i1 %87 to i32
  store i32 %88, i32* %15, align 4
  %89 = load i32, i32* %15, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %108

91:                                               ; preds = %86
  %92 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %6, align 8
  %93 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %108

96:                                               ; preds = %91
  %97 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %6, align 8
  %98 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %12, align 8
  %99 = call i32 @__find_outer_frame_size(%struct.stm32_dcmi* %97, %struct.v4l2_pix_format* %98, %struct.dcmi_framesize* %17)
  %100 = getelementptr inbounds %struct.dcmi_framesize, %struct.dcmi_framesize* %17, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %12, align 8
  %103 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 8
  %104 = getelementptr inbounds %struct.dcmi_framesize, %struct.dcmi_framesize* %17, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %12, align 8
  %107 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 4
  br label %108

108:                                              ; preds = %96, %91, %86
  %109 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %14, i32 0, i32 0
  %110 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %12, align 8
  %111 = load %struct.dcmi_format*, %struct.dcmi_format** %10, align 8
  %112 = getelementptr inbounds %struct.dcmi_format, %struct.dcmi_format* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @v4l2_fill_mbus_format(i32* %109, %struct.v4l2_pix_format* %110, i32 %113)
  %115 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %6, align 8
  %116 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @pad, align 4
  %120 = load i32, i32* @set_fmt, align 4
  %121 = call i32 @v4l2_subdev_call(i32 %118, i32 %119, i32 %120, %struct.v4l2_subdev_pad_config* %13, %struct.v4l2_subdev_format* %14)
  store i32 %121, i32* %16, align 4
  %122 = load i32, i32* %16, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %108
  %125 = load i32, i32* %16, align 4
  store i32 %125, i32* %5, align 4
  br label %229

126:                                              ; preds = %108
  %127 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %12, align 8
  %128 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %14, i32 0, i32 0
  %129 = call i32 @v4l2_fill_pix_format(%struct.v4l2_pix_format* %127, i32* %128)
  %130 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %12, align 8
  %131 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = getelementptr inbounds %struct.dcmi_framesize, %struct.dcmi_framesize* %11, i32 0, i32 0
  store i32 %132, i32* %133, align 4
  %134 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %12, align 8
  %135 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = getelementptr inbounds %struct.dcmi_framesize, %struct.dcmi_framesize* %11, i32 0, i32 1
  store i32 %136, i32* %137, align 4
  %138 = load i32, i32* %15, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %194

140:                                              ; preds = %126
  %141 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %6, align 8
  %142 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %141, i32 0, i32 1
  %143 = bitcast %struct.v4l2_rect* %18 to i8*
  %144 = bitcast %struct.v4l2_rect* %142 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %143, i8* align 8 %144, i64 24, i1 false)
  %145 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %19, i32 0, i32 3
  store i8* null, i8** %145, align 8
  %146 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %19, i32 0, i32 2
  store i8* null, i8** %146, align 8
  %147 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %12, align 8
  %148 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %19, i32 0, i32 0
  store i32 %149, i32* %150, align 8
  %151 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %12, align 8
  %152 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %19, i32 0, i32 1
  store i32 %153, i32* %154, align 4
  %155 = call i32 @v4l2_rect_map_inside(%struct.v4l2_rect* %18, %struct.v4l2_rect* %19)
  %156 = load i32, i32* @s32, align 4
  %157 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %18, i32 0, i32 3
  %158 = load i8*, i8** %157, align 8
  %159 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %12, align 8
  %160 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %18, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = sub nsw i32 %161, %163
  %165 = call i8* @clamp_t(i32 %156, i8* %158, i32 0, i32 %164)
  %166 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %18, i32 0, i32 3
  store i8* %165, i8** %166, align 8
  %167 = load i32, i32* @s32, align 4
  %168 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %18, i32 0, i32 2
  %169 = load i8*, i8** %168, align 8
  %170 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %12, align 8
  %171 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %18, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = sub nsw i32 %172, %174
  %176 = call i8* @clamp_t(i32 %167, i8* %169, i32 0, i32 %175)
  %177 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %18, i32 0, i32 2
  store i8* %176, i8** %177, align 8
  %178 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %6, align 8
  %179 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %178, i32 0, i32 1
  %180 = bitcast %struct.v4l2_rect* %179 to i8*
  %181 = bitcast %struct.v4l2_rect* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %180, i8* align 8 %181, i64 24, i1 false)
  %182 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %6, align 8
  %183 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %12, align 8
  %187 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %186, i32 0, i32 1
  store i32 %185, i32* %187, align 8
  %188 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %6, align 8
  %189 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %12, align 8
  %193 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %192, i32 0, i32 2
  store i32 %191, i32* %193, align 4
  br label %194

194:                                              ; preds = %140, %126
  %195 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %196 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %12, align 8
  %197 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %196, i32 0, i32 5
  store i32 %195, i32* %197, align 8
  %198 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %12, align 8
  %199 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.dcmi_format*, %struct.dcmi_format** %10, align 8
  %202 = getelementptr inbounds %struct.dcmi_format, %struct.dcmi_format* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 8
  %204 = mul nsw i32 %200, %203
  %205 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %12, align 8
  %206 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %205, i32 0, i32 3
  store i32 %204, i32* %206, align 8
  %207 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %12, align 8
  %208 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 8
  %210 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %12, align 8
  %211 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 4
  %213 = mul nsw i32 %209, %212
  %214 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %12, align 8
  %215 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %214, i32 0, i32 4
  store i32 %213, i32* %215, align 4
  %216 = load %struct.dcmi_format**, %struct.dcmi_format*** %8, align 8
  %217 = icmp ne %struct.dcmi_format** %216, null
  br i1 %217, label %218, label %221

218:                                              ; preds = %194
  %219 = load %struct.dcmi_format*, %struct.dcmi_format** %10, align 8
  %220 = load %struct.dcmi_format**, %struct.dcmi_format*** %8, align 8
  store %struct.dcmi_format* %219, %struct.dcmi_format** %220, align 8
  br label %221

221:                                              ; preds = %218, %194
  %222 = load %struct.dcmi_framesize*, %struct.dcmi_framesize** %9, align 8
  %223 = icmp ne %struct.dcmi_framesize* %222, null
  br i1 %223, label %224, label %228

224:                                              ; preds = %221
  %225 = load %struct.dcmi_framesize*, %struct.dcmi_framesize** %9, align 8
  %226 = bitcast %struct.dcmi_framesize* %225 to i8*
  %227 = bitcast %struct.dcmi_framesize* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %226, i8* align 4 %227, i64 8, i1 false)
  br label %228

228:                                              ; preds = %224, %221
  store i32 0, i32* %5, align 4
  br label %229

229:                                              ; preds = %228, %124, %38
  %230 = load i32, i32* %5, align 4
  ret i32 %230
}

declare dso_local %struct.dcmi_format* @find_format_by_fourcc(%struct.stm32_dcmi*, i64) #1

declare dso_local i8* @clamp(i32, i32, i32) #1

declare dso_local i32 @__find_outer_frame_size(%struct.stm32_dcmi*, %struct.v4l2_pix_format*, %struct.dcmi_framesize*) #1

declare dso_local i32 @v4l2_fill_mbus_format(i32*, %struct.v4l2_pix_format*, i32) #1

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*) #1

declare dso_local i32 @v4l2_fill_pix_format(%struct.v4l2_pix_format*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @v4l2_rect_map_inside(%struct.v4l2_rect*, %struct.v4l2_rect*) #1

declare dso_local i8* @clamp_t(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
