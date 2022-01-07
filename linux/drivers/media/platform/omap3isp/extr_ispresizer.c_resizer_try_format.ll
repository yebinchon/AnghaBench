; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispresizer.c_resizer_try_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispresizer.c_resizer_try_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_res_device = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i8*, i8* }
%struct.resizer_ratio = type { i32 }
%struct.v4l2_rect = type { i32 }

@MEDIA_BUS_FMT_YUYV8_1X16 = common dso_local global i32 0, align 4
@MEDIA_BUS_FMT_UYVY8_1X16 = common dso_local global i32 0, align 4
@u32 = common dso_local global i32 0, align 4
@MIN_IN_WIDTH = common dso_local global i32 0, align 4
@MIN_IN_HEIGHT = common dso_local global i32 0, align 4
@MAX_IN_HEIGHT = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_JPEG = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp_res_device*, %struct.v4l2_subdev_pad_config*, i32, %struct.v4l2_mbus_framefmt*, i32)* @resizer_try_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resizer_try_format(%struct.isp_res_device* %0, %struct.v4l2_subdev_pad_config* %1, i32 %2, %struct.v4l2_mbus_framefmt* %3, i32 %4) #0 {
  %6 = alloca %struct.isp_res_device*, align 8
  %7 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %12 = alloca %struct.resizer_ratio, align 4
  %13 = alloca %struct.v4l2_rect, align 4
  store %struct.isp_res_device* %0, %struct.isp_res_device** %6, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.v4l2_mbus_framefmt* %3, %struct.v4l2_mbus_framefmt** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* %8, align 4
  switch i32 %14, label %70 [
    i32 129, label %15
    i32 128, label %51
  ]

15:                                               ; preds = %5
  %16 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %17 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @MEDIA_BUS_FMT_YUYV8_1X16, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %15
  %22 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %23 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @MEDIA_BUS_FMT_UYVY8_1X16, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load i32, i32* @MEDIA_BUS_FMT_YUYV8_1X16, align 4
  %29 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %30 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  br label %31

31:                                               ; preds = %27, %21, %15
  %32 = load i32, i32* @u32, align 4
  %33 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %34 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %33, i32 0, i32 4
  %35 = load i8*, i8** %34, align 8
  %36 = load i32, i32* @MIN_IN_WIDTH, align 4
  %37 = load %struct.isp_res_device*, %struct.isp_res_device** %6, align 8
  %38 = call i32 @resizer_max_in_width(%struct.isp_res_device* %37)
  %39 = call i8* @clamp_t(i32 %32, i8* %35, i32 %36, i32 %38)
  %40 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %41 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %40, i32 0, i32 4
  store i8* %39, i8** %41, align 8
  %42 = load i32, i32* @u32, align 4
  %43 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %44 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %43, i32 0, i32 3
  %45 = load i8*, i8** %44, align 8
  %46 = load i32, i32* @MIN_IN_HEIGHT, align 4
  %47 = load i32, i32* @MAX_IN_HEIGHT, align 4
  %48 = call i8* @clamp_t(i32 %42, i8* %45, i32 %46, i32 %47)
  %49 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %50 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %49, i32 0, i32 3
  store i8* %48, i8** %50, align 8
  br label %70

51:                                               ; preds = %5
  %52 = load %struct.isp_res_device*, %struct.isp_res_device** %6, align 8
  %53 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %7, align 8
  %54 = load i32, i32* %10, align 4
  %55 = call %struct.v4l2_mbus_framefmt* @__resizer_get_format(%struct.isp_res_device* %52, %struct.v4l2_subdev_pad_config* %53, i32 129, i32 %54)
  store %struct.v4l2_mbus_framefmt* %55, %struct.v4l2_mbus_framefmt** %11, align 8
  %56 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %11, align 8
  %57 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %60 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  %61 = load %struct.isp_res_device*, %struct.isp_res_device** %6, align 8
  %62 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %7, align 8
  %63 = load i32, i32* %10, align 4
  %64 = call %struct.v4l2_rect* @__resizer_get_crop(%struct.isp_res_device* %61, %struct.v4l2_subdev_pad_config* %62, i32 %63)
  %65 = bitcast %struct.v4l2_rect* %13 to i8*
  %66 = bitcast %struct.v4l2_rect* %64 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %65, i8* align 4 %66, i64 4, i1 false)
  %67 = load %struct.isp_res_device*, %struct.isp_res_device** %6, align 8
  %68 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %69 = call i32 @resizer_calc_ratios(%struct.isp_res_device* %67, %struct.v4l2_rect* %13, %struct.v4l2_mbus_framefmt* %68, %struct.resizer_ratio* %12)
  br label %70

70:                                               ; preds = %5, %51, %31
  %71 = load i32, i32* @V4L2_COLORSPACE_JPEG, align 4
  %72 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %73 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %75 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %76 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  ret void
}

declare dso_local i8* @clamp_t(i32, i8*, i32, i32) #1

declare dso_local i32 @resizer_max_in_width(%struct.isp_res_device*) #1

declare dso_local %struct.v4l2_mbus_framefmt* @__resizer_get_format(%struct.isp_res_device*, %struct.v4l2_subdev_pad_config*, i32, i32) #1

declare dso_local %struct.v4l2_rect* @__resizer_get_crop(%struct.isp_res_device*, %struct.v4l2_subdev_pad_config*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @resizer_calc_ratios(%struct.isp_res_device*, %struct.v4l2_rect*, %struct.v4l2_mbus_framefmt*, %struct.resizer_ratio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
