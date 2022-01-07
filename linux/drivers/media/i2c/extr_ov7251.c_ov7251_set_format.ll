; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov7251.c_ov7251_set_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov7251.c_ov7251_set_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_format = type { %struct.v4l2_mbus_framefmt, i32, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ov7251 = type { i32, %struct.ov7251_mode_info*, i32, i32, i32, i32 }
%struct.ov7251_mode_info = type { i32, i32, i32, i32, i32, i32 }
%struct.v4l2_rect = type { i32, i32 }

@ov7251_mode_info_data = common dso_local global i32 0, align 4
@width = common dso_local global i32 0, align 4
@height = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i32 0, align 4
@MEDIA_BUS_FMT_Y10_1X10 = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_SRGB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*)* @ov7251_set_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov7251_set_format(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_format* %2) #0 {
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %6 = alloca %struct.v4l2_subdev_format*, align 8
  %7 = alloca %struct.ov7251*, align 8
  %8 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %9 = alloca %struct.v4l2_rect*, align 8
  %10 = alloca %struct.ov7251_mode_info*, align 8
  %11 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %5, align 8
  store %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format** %6, align 8
  %12 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %13 = call %struct.ov7251* @to_ov7251(%struct.v4l2_subdev* %12)
  store %struct.ov7251* %13, %struct.ov7251** %7, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.ov7251*, %struct.ov7251** %7, align 8
  %15 = getelementptr inbounds %struct.ov7251, %struct.ov7251* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.ov7251*, %struct.ov7251** %7, align 8
  %18 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %5, align 8
  %19 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %20 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %23 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.v4l2_rect* @__ov7251_get_pad_crop(%struct.ov7251* %17, %struct.v4l2_subdev_pad_config* %18, i32 %21, i32 %24)
  store %struct.v4l2_rect* %25, %struct.v4l2_rect** %9, align 8
  %26 = load i32, i32* @ov7251_mode_info_data, align 4
  %27 = load i32, i32* @ov7251_mode_info_data, align 4
  %28 = call i32 @ARRAY_SIZE(i32 %27)
  %29 = load i32, i32* @width, align 4
  %30 = load i32, i32* @height, align 4
  %31 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %32 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %32, i32 0, i32 7
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %36 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.ov7251_mode_info* @v4l2_find_nearest_size(i32 %26, i32 %28, i32 %29, i32 %30, i32 %34, i32 %38)
  store %struct.ov7251_mode_info* %39, %struct.ov7251_mode_info** %10, align 8
  %40 = load %struct.ov7251_mode_info*, %struct.ov7251_mode_info** %10, align 8
  %41 = getelementptr inbounds %struct.ov7251_mode_info, %struct.ov7251_mode_info* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %44 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.ov7251_mode_info*, %struct.ov7251_mode_info** %10, align 8
  %46 = getelementptr inbounds %struct.ov7251_mode_info, %struct.ov7251_mode_info* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %49 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %51 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @V4L2_SUBDEV_FORMAT_ACTIVE, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %114

55:                                               ; preds = %3
  %56 = load %struct.ov7251*, %struct.ov7251** %7, align 8
  %57 = getelementptr inbounds %struct.ov7251, %struct.ov7251* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ov7251_mode_info*, %struct.ov7251_mode_info** %10, align 8
  %60 = getelementptr inbounds %struct.ov7251_mode_info, %struct.ov7251_mode_info* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @__v4l2_ctrl_s_ctrl_int64(i32 %58, i32 %61)
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %55
  br label %169

66:                                               ; preds = %55
  %67 = load %struct.ov7251*, %struct.ov7251** %7, align 8
  %68 = getelementptr inbounds %struct.ov7251, %struct.ov7251* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.ov7251_mode_info*, %struct.ov7251_mode_info** %10, align 8
  %71 = getelementptr inbounds %struct.ov7251_mode_info, %struct.ov7251_mode_info* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @__v4l2_ctrl_s_ctrl(i32 %69, i32 %72)
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %66
  br label %169

77:                                               ; preds = %66
  %78 = load %struct.ov7251*, %struct.ov7251** %7, align 8
  %79 = getelementptr inbounds %struct.ov7251, %struct.ov7251* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.ov7251_mode_info*, %struct.ov7251_mode_info** %10, align 8
  %82 = getelementptr inbounds %struct.ov7251_mode_info, %struct.ov7251_mode_info* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.ov7251_mode_info*, %struct.ov7251_mode_info** %10, align 8
  %85 = getelementptr inbounds %struct.ov7251_mode_info, %struct.ov7251_mode_info* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @__v4l2_ctrl_modify_range(i32 %80, i32 1, i32 %83, i32 1, i32 %86)
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %11, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %77
  br label %169

91:                                               ; preds = %77
  %92 = load %struct.ov7251*, %struct.ov7251** %7, align 8
  %93 = getelementptr inbounds %struct.ov7251, %struct.ov7251* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.ov7251_mode_info*, %struct.ov7251_mode_info** %10, align 8
  %96 = getelementptr inbounds %struct.ov7251_mode_info, %struct.ov7251_mode_info* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @__v4l2_ctrl_s_ctrl(i32 %94, i32 %97)
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* %11, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %91
  br label %169

102:                                              ; preds = %91
  %103 = load %struct.ov7251*, %struct.ov7251** %7, align 8
  %104 = getelementptr inbounds %struct.ov7251, %struct.ov7251* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @__v4l2_ctrl_s_ctrl(i32 %105, i32 16)
  store i32 %106, i32* %11, align 4
  %107 = load i32, i32* %11, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %102
  br label %169

110:                                              ; preds = %102
  %111 = load %struct.ov7251_mode_info*, %struct.ov7251_mode_info** %10, align 8
  %112 = load %struct.ov7251*, %struct.ov7251** %7, align 8
  %113 = getelementptr inbounds %struct.ov7251, %struct.ov7251* %112, i32 0, i32 1
  store %struct.ov7251_mode_info* %111, %struct.ov7251_mode_info** %113, align 8
  br label %114

114:                                              ; preds = %110, %3
  %115 = load %struct.ov7251*, %struct.ov7251** %7, align 8
  %116 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %5, align 8
  %117 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %118 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %121 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call %struct.v4l2_mbus_framefmt* @__ov7251_get_pad_format(%struct.ov7251* %115, %struct.v4l2_subdev_pad_config* %116, i32 %119, i32 %122)
  store %struct.v4l2_mbus_framefmt* %123, %struct.v4l2_mbus_framefmt** %8, align 8
  %124 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %125 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %128 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %127, i32 0, i32 7
  store i32 %126, i32* %128, align 4
  %129 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %130 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %133 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %132, i32 0, i32 6
  store i32 %131, i32* %133, align 4
  %134 = load i32, i32* @MEDIA_BUS_FMT_Y10_1X10, align 4
  %135 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %136 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %135, i32 0, i32 5
  store i32 %134, i32* %136, align 4
  %137 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %138 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %139 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %138, i32 0, i32 4
  store i32 %137, i32* %139, align 4
  %140 = load i32, i32* @V4L2_COLORSPACE_SRGB, align 4
  %141 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %142 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 4
  %143 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %144 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @V4L2_MAP_YCBCR_ENC_DEFAULT(i32 %145)
  %147 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %148 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %147, i32 0, i32 2
  store i32 %146, i32* %148, align 4
  %149 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %150 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %153 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @V4L2_MAP_QUANTIZATION_DEFAULT(i32 1, i32 %151, i32 %154)
  %156 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %157 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %156, i32 0, i32 3
  store i32 %155, i32* %157, align 4
  %158 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %159 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @V4L2_MAP_XFER_FUNC_DEFAULT(i32 %160)
  %162 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %163 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %162, i32 0, i32 1
  store i32 %161, i32* %163, align 4
  %164 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %165 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %164, i32 0, i32 0
  %166 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %167 = bitcast %struct.v4l2_mbus_framefmt* %165 to i8*
  %168 = bitcast %struct.v4l2_mbus_framefmt* %166 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %167, i8* align 4 %168, i64 32, i1 false)
  br label %169

169:                                              ; preds = %114, %109, %101, %90, %76, %65
  %170 = load %struct.ov7251*, %struct.ov7251** %7, align 8
  %171 = getelementptr inbounds %struct.ov7251, %struct.ov7251* %170, i32 0, i32 0
  %172 = call i32 @mutex_unlock(i32* %171)
  %173 = load i32, i32* %11, align 4
  ret i32 %173
}

declare dso_local %struct.ov7251* @to_ov7251(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.v4l2_rect* @__ov7251_get_pad_crop(%struct.ov7251*, %struct.v4l2_subdev_pad_config*, i32, i32) #1

declare dso_local %struct.ov7251_mode_info* @v4l2_find_nearest_size(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @__v4l2_ctrl_s_ctrl_int64(i32, i32) #1

declare dso_local i32 @__v4l2_ctrl_s_ctrl(i32, i32) #1

declare dso_local i32 @__v4l2_ctrl_modify_range(i32, i32, i32, i32, i32) #1

declare dso_local %struct.v4l2_mbus_framefmt* @__ov7251_get_pad_format(%struct.ov7251*, %struct.v4l2_subdev_pad_config*, i32, i32) #1

declare dso_local i32 @V4L2_MAP_YCBCR_ENC_DEFAULT(i32) #1

declare dso_local i32 @V4L2_MAP_QUANTIZATION_DEFAULT(i32, i32, i32) #1

declare dso_local i32 @V4L2_MAP_XFER_FUNC_DEFAULT(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
