; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccp2.c_ccp2_try_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccp2.c_ccp2_try_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_ccp2_device = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i8*, i8*, i8* }

@MEDIA_BUS_FMT_SGRBG10_DPCM8_1X8 = common dso_local global i8* null, align 8
@MEDIA_BUS_FMT_SGRBG10_1X10 = common dso_local global i8* null, align 8
@CCP2_INPUT_SENSOR = common dso_local global i32 0, align 4
@u32 = common dso_local global i32 0, align 4
@ISPCCP2_DAT_START_MIN = common dso_local global i32 0, align 4
@ISPCCP2_DAT_START_MAX = common dso_local global i32 0, align 4
@ISPCCP2_DAT_SIZE_MIN = common dso_local global i32 0, align 4
@ISPCCP2_DAT_SIZE_MAX = common dso_local global i32 0, align 4
@CCP2_INPUT_MEMORY = common dso_local global i32 0, align 4
@ISPCCP2_LCM_HSIZE_COUNT_MIN = common dso_local global i32 0, align 4
@ISPCCP2_LCM_HSIZE_COUNT_MAX = common dso_local global i32 0, align 4
@ISPCCP2_LCM_VSIZE_MIN = common dso_local global i32 0, align 4
@ISPCCP2_LCM_VSIZE_MAX = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_SRGB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp_ccp2_device*, %struct.v4l2_subdev_pad_config*, i32, %struct.v4l2_mbus_framefmt*, i32)* @ccp2_try_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccp2_try_format(%struct.isp_ccp2_device* %0, %struct.v4l2_subdev_pad_config* %1, i32 %2, %struct.v4l2_mbus_framefmt* %3, i32 %4) #0 {
  %6 = alloca %struct.isp_ccp2_device*, align 8
  %7 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.v4l2_mbus_framefmt*, align 8
  store %struct.isp_ccp2_device* %0, %struct.isp_ccp2_device** %6, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.v4l2_mbus_framefmt* %3, %struct.v4l2_mbus_framefmt** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* %8, align 4
  switch i32 %12, label %86 [
    i32 129, label %13
    i32 128, label %75
  ]

13:                                               ; preds = %5
  %14 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %15 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %14, i32 0, i32 2
  %16 = load i8*, i8** %15, align 8
  %17 = load i8*, i8** @MEDIA_BUS_FMT_SGRBG10_DPCM8_1X8, align 8
  %18 = icmp ne i8* %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load i8*, i8** @MEDIA_BUS_FMT_SGRBG10_1X10, align 8
  %21 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %22 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %21, i32 0, i32 2
  store i8* %20, i8** %22, align 8
  br label %23

23:                                               ; preds = %19, %13
  %24 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %6, align 8
  %25 = getelementptr inbounds %struct.isp_ccp2_device, %struct.isp_ccp2_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @CCP2_INPUT_SENSOR, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %48

29:                                               ; preds = %23
  %30 = load i32, i32* @u32, align 4
  %31 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %32 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %31, i32 0, i32 4
  %33 = load i8*, i8** %32, align 8
  %34 = load i32, i32* @ISPCCP2_DAT_START_MIN, align 4
  %35 = load i32, i32* @ISPCCP2_DAT_START_MAX, align 4
  %36 = call i8* @clamp_t(i32 %30, i8* %33, i32 %34, i32 %35)
  %37 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %38 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %37, i32 0, i32 4
  store i8* %36, i8** %38, align 8
  %39 = load i32, i32* @u32, align 4
  %40 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %41 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %40, i32 0, i32 3
  %42 = load i8*, i8** %41, align 8
  %43 = load i32, i32* @ISPCCP2_DAT_SIZE_MIN, align 4
  %44 = load i32, i32* @ISPCCP2_DAT_SIZE_MAX, align 4
  %45 = call i8* @clamp_t(i32 %39, i8* %42, i32 %43, i32 %44)
  %46 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %47 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %46, i32 0, i32 3
  store i8* %45, i8** %47, align 8
  br label %74

48:                                               ; preds = %23
  %49 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %6, align 8
  %50 = getelementptr inbounds %struct.isp_ccp2_device, %struct.isp_ccp2_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @CCP2_INPUT_MEMORY, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %73

54:                                               ; preds = %48
  %55 = load i32, i32* @u32, align 4
  %56 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %57 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %56, i32 0, i32 4
  %58 = load i8*, i8** %57, align 8
  %59 = load i32, i32* @ISPCCP2_LCM_HSIZE_COUNT_MIN, align 4
  %60 = load i32, i32* @ISPCCP2_LCM_HSIZE_COUNT_MAX, align 4
  %61 = call i8* @clamp_t(i32 %55, i8* %58, i32 %59, i32 %60)
  %62 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %63 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %62, i32 0, i32 4
  store i8* %61, i8** %63, align 8
  %64 = load i32, i32* @u32, align 4
  %65 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %66 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %65, i32 0, i32 3
  %67 = load i8*, i8** %66, align 8
  %68 = load i32, i32* @ISPCCP2_LCM_VSIZE_MIN, align 4
  %69 = load i32, i32* @ISPCCP2_LCM_VSIZE_MAX, align 4
  %70 = call i8* @clamp_t(i32 %64, i8* %67, i32 %68, i32 %69)
  %71 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %72 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %71, i32 0, i32 3
  store i8* %70, i8** %72, align 8
  br label %73

73:                                               ; preds = %54, %48
  br label %74

74:                                               ; preds = %73, %29
  br label %86

75:                                               ; preds = %5
  %76 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %6, align 8
  %77 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %7, align 8
  %78 = load i32, i32* %10, align 4
  %79 = call %struct.v4l2_mbus_framefmt* @__ccp2_get_format(%struct.isp_ccp2_device* %76, %struct.v4l2_subdev_pad_config* %77, i32 129, i32 %78)
  store %struct.v4l2_mbus_framefmt* %79, %struct.v4l2_mbus_framefmt** %11, align 8
  %80 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %81 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %11, align 8
  %82 = call i32 @memcpy(%struct.v4l2_mbus_framefmt* %80, %struct.v4l2_mbus_framefmt* %81, i32 32)
  %83 = load i8*, i8** @MEDIA_BUS_FMT_SGRBG10_1X10, align 8
  %84 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %85 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %84, i32 0, i32 2
  store i8* %83, i8** %85, align 8
  br label %86

86:                                               ; preds = %5, %75, %74
  %87 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %88 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %89 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* @V4L2_COLORSPACE_SRGB, align 4
  %91 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %92 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  ret void
}

declare dso_local i8* @clamp_t(i32, i8*, i32, i32) #1

declare dso_local %struct.v4l2_mbus_framefmt* @__ccp2_get_format(%struct.isp_ccp2_device*, %struct.v4l2_subdev_pad_config*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
