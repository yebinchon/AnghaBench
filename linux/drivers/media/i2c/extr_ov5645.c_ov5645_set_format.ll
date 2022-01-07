; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5645.c_ov5645_set_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5645.c_ov5645_set_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_format = type { %struct.v4l2_mbus_framefmt, i32, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32 }
%struct.ov5645 = type { %struct.ov5645_mode_info*, i32, i32 }
%struct.ov5645_mode_info = type { i32, i32, i32, i32 }
%struct.v4l2_rect = type { i32, i32 }

@ov5645_mode_info_data = common dso_local global i32 0, align 4
@width = common dso_local global i32 0, align 4
@height = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i32 0, align 4
@MEDIA_BUS_FMT_UYVY8_2X8 = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_SRGB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*)* @ov5645_set_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov5645_set_format(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_format*, align 8
  %8 = alloca %struct.ov5645*, align 8
  %9 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %10 = alloca %struct.v4l2_rect*, align 8
  %11 = alloca %struct.ov5645_mode_info*, align 8
  %12 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format** %7, align 8
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %14 = call %struct.ov5645* @to_ov5645(%struct.v4l2_subdev* %13)
  store %struct.ov5645* %14, %struct.ov5645** %8, align 8
  %15 = load %struct.ov5645*, %struct.ov5645** %8, align 8
  %16 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %17 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %18 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %21 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.v4l2_rect* @__ov5645_get_pad_crop(%struct.ov5645* %15, %struct.v4l2_subdev_pad_config* %16, i32 %19, i32 %22)
  store %struct.v4l2_rect* %23, %struct.v4l2_rect** %10, align 8
  %24 = load i32, i32* @ov5645_mode_info_data, align 4
  %25 = load i32, i32* @ov5645_mode_info_data, align 4
  %26 = call i32 @ARRAY_SIZE(i32 %25)
  %27 = load i32, i32* @width, align 4
  %28 = load i32, i32* @height, align 4
  %29 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %30 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %34 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.ov5645_mode_info* @v4l2_find_nearest_size(i32 %24, i32 %26, i32 %27, i32 %28, i32 %32, i32 %36)
  store %struct.ov5645_mode_info* %37, %struct.ov5645_mode_info** %11, align 8
  %38 = load %struct.ov5645_mode_info*, %struct.ov5645_mode_info** %11, align 8
  %39 = getelementptr inbounds %struct.ov5645_mode_info, %struct.ov5645_mode_info* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.v4l2_rect*, %struct.v4l2_rect** %10, align 8
  %42 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.ov5645_mode_info*, %struct.ov5645_mode_info** %11, align 8
  %44 = getelementptr inbounds %struct.ov5645_mode_info, %struct.ov5645_mode_info* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.v4l2_rect*, %struct.v4l2_rect** %10, align 8
  %47 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %49 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @V4L2_SUBDEV_FORMAT_ACTIVE, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %81

53:                                               ; preds = %3
  %54 = load %struct.ov5645*, %struct.ov5645** %8, align 8
  %55 = getelementptr inbounds %struct.ov5645, %struct.ov5645* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ov5645_mode_info*, %struct.ov5645_mode_info** %11, align 8
  %58 = getelementptr inbounds %struct.ov5645_mode_info, %struct.ov5645_mode_info* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @v4l2_ctrl_s_ctrl_int64(i32 %56, i32 %59)
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %53
  %64 = load i32, i32* %12, align 4
  store i32 %64, i32* %4, align 4
  br label %115

65:                                               ; preds = %53
  %66 = load %struct.ov5645*, %struct.ov5645** %8, align 8
  %67 = getelementptr inbounds %struct.ov5645, %struct.ov5645* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.ov5645_mode_info*, %struct.ov5645_mode_info** %11, align 8
  %70 = getelementptr inbounds %struct.ov5645_mode_info, %struct.ov5645_mode_info* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @v4l2_ctrl_s_ctrl(i32 %68, i32 %71)
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %65
  %76 = load i32, i32* %12, align 4
  store i32 %76, i32* %4, align 4
  br label %115

77:                                               ; preds = %65
  %78 = load %struct.ov5645_mode_info*, %struct.ov5645_mode_info** %11, align 8
  %79 = load %struct.ov5645*, %struct.ov5645** %8, align 8
  %80 = getelementptr inbounds %struct.ov5645, %struct.ov5645* %79, i32 0, i32 0
  store %struct.ov5645_mode_info* %78, %struct.ov5645_mode_info** %80, align 8
  br label %81

81:                                               ; preds = %77, %3
  %82 = load %struct.ov5645*, %struct.ov5645** %8, align 8
  %83 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %84 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %85 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %88 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call %struct.v4l2_mbus_framefmt* @__ov5645_get_pad_format(%struct.ov5645* %82, %struct.v4l2_subdev_pad_config* %83, i32 %86, i32 %89)
  store %struct.v4l2_mbus_framefmt* %90, %struct.v4l2_mbus_framefmt** %9, align 8
  %91 = load %struct.v4l2_rect*, %struct.v4l2_rect** %10, align 8
  %92 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %95 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %94, i32 0, i32 4
  store i32 %93, i32* %95, align 4
  %96 = load %struct.v4l2_rect*, %struct.v4l2_rect** %10, align 8
  %97 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %100 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %99, i32 0, i32 3
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* @MEDIA_BUS_FMT_UYVY8_2X8, align 4
  %102 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %103 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 4
  %104 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %105 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %106 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* @V4L2_COLORSPACE_SRGB, align 4
  %108 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %109 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 4
  %110 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %111 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %110, i32 0, i32 0
  %112 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %113 = bitcast %struct.v4l2_mbus_framefmt* %111 to i8*
  %114 = bitcast %struct.v4l2_mbus_framefmt* %112 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %113, i8* align 4 %114, i64 20, i1 false)
  store i32 0, i32* %4, align 4
  br label %115

115:                                              ; preds = %81, %75, %63
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local %struct.ov5645* @to_ov5645(%struct.v4l2_subdev*) #1

declare dso_local %struct.v4l2_rect* @__ov5645_get_pad_crop(%struct.ov5645*, %struct.v4l2_subdev_pad_config*, i32, i32) #1

declare dso_local %struct.ov5645_mode_info* @v4l2_find_nearest_size(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @v4l2_ctrl_s_ctrl_int64(i32, i32) #1

declare dso_local i32 @v4l2_ctrl_s_ctrl(i32, i32) #1

declare dso_local %struct.v4l2_mbus_framefmt* @__ov5645_get_pad_format(%struct.ov5645*, %struct.v4l2_subdev_pad_config*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
