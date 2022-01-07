; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccdc.c___ccdc_lsc_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccdc.c___ccdc_lsc_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_ccdc_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.isp_device = type { i32 }
%struct.v4l2_mbus_framefmt = type { i64 }

@CCDC_PAD_SINK = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i32 0, align 4
@MEDIA_BUS_FMT_SGRBG10_1X10 = common dso_local global i64 0, align 8
@MEDIA_BUS_FMT_SRGGB10_1X10 = common dso_local global i64 0, align 8
@MEDIA_BUS_FMT_SBGGR10_1X10 = common dso_local global i64 0, align 8
@MEDIA_BUS_FMT_SGBRG10_1X10 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@OMAP3_ISP_SBL_CCDC_LSC_READ = common dso_local global i32 0, align 4
@OMAP3_ISP_IOMEM_CCDC = common dso_local global i32 0, align 4
@ISPCCDC_LSC_CONFIG = common dso_local global i32 0, align 4
@ISPCCDC_LSC_ENABLE = common dso_local global i32 0, align 4
@LSC_STATE_STOPPED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"LSC prefetch timeout\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@LSC_STATE_RUNNING = common dso_local global i32 0, align 4
@LSC_STATE_STOPPING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isp_ccdc_device*, i32)* @__ccdc_lsc_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ccdc_lsc_enable(%struct.isp_ccdc_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.isp_ccdc_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.isp_device*, align 8
  %7 = alloca %struct.v4l2_mbus_framefmt*, align 8
  store %struct.isp_ccdc_device* %0, %struct.isp_ccdc_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %4, align 8
  %9 = call %struct.isp_device* @to_isp_device(%struct.isp_ccdc_device* %8)
  store %struct.isp_device* %9, %struct.isp_device** %6, align 8
  %10 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %4, align 8
  %11 = load i32, i32* @CCDC_PAD_SINK, align 4
  %12 = load i32, i32* @V4L2_SUBDEV_FORMAT_ACTIVE, align 4
  %13 = call %struct.v4l2_mbus_framefmt* @__ccdc_get_format(%struct.isp_ccdc_device* %10, i32* null, i32 %11, i32 %12)
  store %struct.v4l2_mbus_framefmt* %13, %struct.v4l2_mbus_framefmt** %7, align 8
  %14 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %7, align 8
  %15 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @MEDIA_BUS_FMT_SGRBG10_1X10, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %40

19:                                               ; preds = %2
  %20 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %7, align 8
  %21 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @MEDIA_BUS_FMT_SRGGB10_1X10, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %19
  %26 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %7, align 8
  %27 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @MEDIA_BUS_FMT_SBGGR10_1X10, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %25
  %32 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %7, align 8
  %33 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @MEDIA_BUS_FMT_SGBRG10_1X10, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %92

40:                                               ; preds = %31, %25, %19, %2
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load %struct.isp_device*, %struct.isp_device** %6, align 8
  %45 = load i32, i32* @OMAP3_ISP_SBL_CCDC_LSC_READ, align 4
  %46 = call i32 @omap3isp_sbl_enable(%struct.isp_device* %44, i32 %45)
  br label %47

47:                                               ; preds = %43, %40
  %48 = load %struct.isp_device*, %struct.isp_device** %6, align 8
  %49 = load i32, i32* @OMAP3_ISP_IOMEM_CCDC, align 4
  %50 = load i32, i32* @ISPCCDC_LSC_CONFIG, align 4
  %51 = load i32, i32* @ISPCCDC_LSC_ENABLE, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i32, i32* @ISPCCDC_LSC_ENABLE, align 4
  br label %57

56:                                               ; preds = %47
  br label %57

57:                                               ; preds = %56, %54
  %58 = phi i32 [ %55, %54 ], [ 0, %56 ]
  %59 = call i32 @isp_reg_clr_set(%struct.isp_device* %48, i32 %49, i32 %50, i32 %51, i32 %58)
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %86

62:                                               ; preds = %57
  %63 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %4, align 8
  %64 = call i64 @ccdc_lsc_wait_prefetch(%struct.isp_ccdc_device* %63)
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %81

66:                                               ; preds = %62
  %67 = load %struct.isp_device*, %struct.isp_device** %6, align 8
  %68 = load i32, i32* @OMAP3_ISP_IOMEM_CCDC, align 4
  %69 = load i32, i32* @ISPCCDC_LSC_CONFIG, align 4
  %70 = load i32, i32* @ISPCCDC_LSC_ENABLE, align 4
  %71 = call i32 @isp_reg_clr(%struct.isp_device* %67, i32 %68, i32 %69, i32 %70)
  %72 = load i32, i32* @LSC_STATE_STOPPED, align 4
  %73 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %4, align 8
  %74 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  store i32 %72, i32* %75, align 4
  %76 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %4, align 8
  %77 = call i32 @to_device(%struct.isp_ccdc_device* %76)
  %78 = call i32 @dev_warn(i32 %77, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %79 = load i32, i32* @ETIMEDOUT, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %92

81:                                               ; preds = %62
  %82 = load i32, i32* @LSC_STATE_RUNNING, align 4
  %83 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %4, align 8
  %84 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  store i32 %82, i32* %85, align 4
  br label %91

86:                                               ; preds = %57
  %87 = load i32, i32* @LSC_STATE_STOPPING, align 4
  %88 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %4, align 8
  %89 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  store i32 %87, i32* %90, align 4
  br label %91

91:                                               ; preds = %86, %81
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %91, %66, %37
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local %struct.isp_device* @to_isp_device(%struct.isp_ccdc_device*) #1

declare dso_local %struct.v4l2_mbus_framefmt* @__ccdc_get_format(%struct.isp_ccdc_device*, i32*, i32, i32) #1

declare dso_local i32 @omap3isp_sbl_enable(%struct.isp_device*, i32) #1

declare dso_local i32 @isp_reg_clr_set(%struct.isp_device*, i32, i32, i32, i32) #1

declare dso_local i64 @ccdc_lsc_wait_prefetch(%struct.isp_ccdc_device*) #1

declare dso_local i32 @isp_reg_clr(%struct.isp_device*, i32, i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @to_device(%struct.isp_ccdc_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
