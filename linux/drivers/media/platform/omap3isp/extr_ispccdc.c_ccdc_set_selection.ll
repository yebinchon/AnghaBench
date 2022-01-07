; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccdc.c_ccdc_set_selection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccdc.c_ccdc_set_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_selection = type { i64, i64, i32, i32, i32 }
%struct.isp_ccdc_device = type { i64 }
%struct.v4l2_mbus_framefmt = type { i32 }

@V4L2_SEL_TGT_CROP = common dso_local global i64 0, align 8
@CCDC_PAD_SOURCE_OF = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ISP_PIPELINE_STREAM_STOPPED = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@V4L2_SEL_FLAG_KEEP_CONFIG = common dso_local global i32 0, align 4
@CCDC_PAD_SINK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_selection*)* @ccdc_set_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccdc_set_selection(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_selection* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_selection*, align 8
  %8 = alloca %struct.isp_ccdc_device*, align 8
  %9 = alloca %struct.v4l2_mbus_framefmt*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_selection* %2, %struct.v4l2_subdev_selection** %7, align 8
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %11 = call %struct.isp_ccdc_device* @v4l2_get_subdevdata(%struct.v4l2_subdev* %10)
  store %struct.isp_ccdc_device* %11, %struct.isp_ccdc_device** %8, align 8
  %12 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %13 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @V4L2_SEL_TGT_CROP, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %23, label %17

17:                                               ; preds = %3
  %18 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %19 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @CCDC_PAD_SOURCE_OF, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17, %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %89

26:                                               ; preds = %17
  %27 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %8, align 8
  %28 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @ISP_PIPELINE_STREAM_STOPPED, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32, i32* @EBUSY, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %89

35:                                               ; preds = %26
  %36 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %37 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @V4L2_SEL_FLAG_KEEP_CONFIG, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %35
  %43 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %8, align 8
  %44 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %45 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %46 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call i32* @__ccdc_get_crop(%struct.isp_ccdc_device* %43, %struct.v4l2_subdev_pad_config* %44, i32 %47)
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %51 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 8
  store i32 0, i32* %4, align 4
  br label %89

52:                                               ; preds = %35
  %53 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %8, align 8
  %54 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %55 = load i64, i64* @CCDC_PAD_SINK, align 8
  %56 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %57 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = call %struct.v4l2_mbus_framefmt* @__ccdc_get_format(%struct.isp_ccdc_device* %53, %struct.v4l2_subdev_pad_config* %54, i64 %55, i32 %58)
  store %struct.v4l2_mbus_framefmt* %59, %struct.v4l2_mbus_framefmt** %9, align 8
  %60 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %8, align 8
  %61 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %62 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %63 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %62, i32 0, i32 4
  %64 = call i32 @ccdc_try_crop(%struct.isp_ccdc_device* %60, %struct.v4l2_mbus_framefmt* %61, i32* %63)
  %65 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %66 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %8, align 8
  %69 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %70 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %71 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = call i32* @__ccdc_get_crop(%struct.isp_ccdc_device* %68, %struct.v4l2_subdev_pad_config* %69, i32 %72)
  store i32 %67, i32* %73, align 4
  %74 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %8, align 8
  %75 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %76 = load i64, i64* @CCDC_PAD_SOURCE_OF, align 8
  %77 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %78 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = call %struct.v4l2_mbus_framefmt* @__ccdc_get_format(%struct.isp_ccdc_device* %74, %struct.v4l2_subdev_pad_config* %75, i64 %76, i32 %79)
  store %struct.v4l2_mbus_framefmt* %80, %struct.v4l2_mbus_framefmt** %9, align 8
  %81 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %8, align 8
  %82 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %83 = load i64, i64* @CCDC_PAD_SOURCE_OF, align 8
  %84 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %85 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %86 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @ccdc_try_format(%struct.isp_ccdc_device* %81, %struct.v4l2_subdev_pad_config* %82, i64 %83, %struct.v4l2_mbus_framefmt* %84, i32 %87)
  store i32 0, i32* %4, align 4
  br label %89

89:                                               ; preds = %52, %42, %32, %23
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local %struct.isp_ccdc_device* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32* @__ccdc_get_crop(%struct.isp_ccdc_device*, %struct.v4l2_subdev_pad_config*, i32) #1

declare dso_local %struct.v4l2_mbus_framefmt* @__ccdc_get_format(%struct.isp_ccdc_device*, %struct.v4l2_subdev_pad_config*, i64, i32) #1

declare dso_local i32 @ccdc_try_crop(%struct.isp_ccdc_device*, %struct.v4l2_mbus_framefmt*, i32*) #1

declare dso_local i32 @ccdc_try_format(%struct.isp_ccdc_device*, %struct.v4l2_subdev_pad_config*, i64, %struct.v4l2_mbus_framefmt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
