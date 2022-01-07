; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isph3a_af.c_omap3isp_h3a_af_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isph3a_af.c_omap3isp_h3a_af_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_device = type { i32, %struct.ispstat }
%struct.ispstat = type { %struct.omap3isp_h3a_af_config*, %struct.isp_device*, i32, %struct.omap3isp_h3a_af_config*, i32* }
%struct.omap3isp_h3a_af_config = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@h3a_af_ops = common dso_local global i32 0, align 4
@V4L2_EVENT_OMAP3ISP_AF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"AF: cannot allocate memory for recover configuration.\0A\00", align 1
@OMAP3ISP_AF_PAXEL_HZSTART_MIN = common dso_local global i32 0, align 4
@OMAP3ISP_AF_PAXEL_WIDTH_MIN = common dso_local global i32 0, align 4
@OMAP3ISP_AF_PAXEL_HEIGHT_MIN = common dso_local global i32 0, align 4
@OMAP3ISP_AF_PAXEL_HORIZONTAL_COUNT_MIN = common dso_local global i32 0, align 4
@OMAP3ISP_AF_PAXEL_VERTICAL_COUNT_MIN = common dso_local global i32 0, align 4
@OMAP3ISP_AF_PAXEL_INCREMENT_MIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"AF: recover configuration is invalid.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"AF\00", align 1
@h3a_af_subdev_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap3isp_h3a_af_init(%struct.isp_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.isp_device*, align 8
  %4 = alloca %struct.ispstat*, align 8
  %5 = alloca %struct.omap3isp_h3a_af_config*, align 8
  %6 = alloca %struct.omap3isp_h3a_af_config*, align 8
  %7 = alloca i32, align 4
  store %struct.isp_device* %0, %struct.isp_device** %3, align 8
  %8 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %9 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %8, i32 0, i32 1
  store %struct.ispstat* %9, %struct.ispstat** %4, align 8
  store %struct.omap3isp_h3a_af_config* null, %struct.omap3isp_h3a_af_config** %6, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.omap3isp_h3a_af_config* @kzalloc(i32 28, i32 %10)
  store %struct.omap3isp_h3a_af_config* %11, %struct.omap3isp_h3a_af_config** %5, align 8
  %12 = load %struct.omap3isp_h3a_af_config*, %struct.omap3isp_h3a_af_config** %5, align 8
  %13 = icmp eq %struct.omap3isp_h3a_af_config* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %100

17:                                               ; preds = %1
  %18 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %19 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %18, i32 0, i32 4
  store i32* @h3a_af_ops, i32** %19, align 8
  %20 = load %struct.omap3isp_h3a_af_config*, %struct.omap3isp_h3a_af_config** %5, align 8
  %21 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %22 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %21, i32 0, i32 3
  store %struct.omap3isp_h3a_af_config* %20, %struct.omap3isp_h3a_af_config** %22, align 8
  %23 = load i32, i32* @V4L2_EVENT_OMAP3ISP_AF, align 4
  %24 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %25 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  %26 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %27 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %28 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %27, i32 0, i32 1
  store %struct.isp_device* %26, %struct.isp_device** %28, align 8
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.omap3isp_h3a_af_config* @kzalloc(i32 28, i32 %29)
  store %struct.omap3isp_h3a_af_config* %30, %struct.omap3isp_h3a_af_config** %6, align 8
  %31 = load %struct.omap3isp_h3a_af_config*, %struct.omap3isp_h3a_af_config** %6, align 8
  %32 = icmp ne %struct.omap3isp_h3a_af_config* %31, null
  br i1 %32, label %42, label %33

33:                                               ; preds = %17
  %34 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %35 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %34, i32 0, i32 1
  %36 = load %struct.isp_device*, %struct.isp_device** %35, align 8
  %37 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %7, align 4
  br label %90

42:                                               ; preds = %17
  %43 = load i32, i32* @OMAP3ISP_AF_PAXEL_HZSTART_MIN, align 4
  %44 = load %struct.omap3isp_h3a_af_config*, %struct.omap3isp_h3a_af_config** %6, align 8
  %45 = getelementptr inbounds %struct.omap3isp_h3a_af_config, %struct.omap3isp_h3a_af_config* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 5
  store i32 %43, i32* %46, align 4
  %47 = load i32, i32* @OMAP3ISP_AF_PAXEL_WIDTH_MIN, align 4
  %48 = load %struct.omap3isp_h3a_af_config*, %struct.omap3isp_h3a_af_config** %6, align 8
  %49 = getelementptr inbounds %struct.omap3isp_h3a_af_config, %struct.omap3isp_h3a_af_config* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 4
  store i32 %47, i32* %50, align 4
  %51 = load i32, i32* @OMAP3ISP_AF_PAXEL_HEIGHT_MIN, align 4
  %52 = load %struct.omap3isp_h3a_af_config*, %struct.omap3isp_h3a_af_config** %6, align 8
  %53 = getelementptr inbounds %struct.omap3isp_h3a_af_config, %struct.omap3isp_h3a_af_config* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 3
  store i32 %51, i32* %54, align 4
  %55 = load i32, i32* @OMAP3ISP_AF_PAXEL_HORIZONTAL_COUNT_MIN, align 4
  %56 = load %struct.omap3isp_h3a_af_config*, %struct.omap3isp_h3a_af_config** %6, align 8
  %57 = getelementptr inbounds %struct.omap3isp_h3a_af_config, %struct.omap3isp_h3a_af_config* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  store i32 %55, i32* %58, align 4
  %59 = load i32, i32* @OMAP3ISP_AF_PAXEL_VERTICAL_COUNT_MIN, align 4
  %60 = load %struct.omap3isp_h3a_af_config*, %struct.omap3isp_h3a_af_config** %6, align 8
  %61 = getelementptr inbounds %struct.omap3isp_h3a_af_config, %struct.omap3isp_h3a_af_config* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  store i32 %59, i32* %62, align 4
  %63 = load i32, i32* @OMAP3ISP_AF_PAXEL_INCREMENT_MIN, align 4
  %64 = load %struct.omap3isp_h3a_af_config*, %struct.omap3isp_h3a_af_config** %6, align 8
  %65 = getelementptr inbounds %struct.omap3isp_h3a_af_config, %struct.omap3isp_h3a_af_config* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  store i32 %63, i32* %66, align 4
  %67 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %68 = load %struct.omap3isp_h3a_af_config*, %struct.omap3isp_h3a_af_config** %6, align 8
  %69 = call i64 @h3a_af_validate_params(%struct.ispstat* %67, %struct.omap3isp_h3a_af_config* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %42
  %72 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %73 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %72, i32 0, i32 1
  %74 = load %struct.isp_device*, %struct.isp_device** %73, align 8
  %75 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @dev_err(i32 %76, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %7, align 4
  br label %90

80:                                               ; preds = %42
  %81 = load %struct.omap3isp_h3a_af_config*, %struct.omap3isp_h3a_af_config** %6, align 8
  %82 = call i32 @h3a_af_get_buf_size(%struct.omap3isp_h3a_af_config* %81)
  %83 = load %struct.omap3isp_h3a_af_config*, %struct.omap3isp_h3a_af_config** %6, align 8
  %84 = getelementptr inbounds %struct.omap3isp_h3a_af_config, %struct.omap3isp_h3a_af_config* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  %85 = load %struct.omap3isp_h3a_af_config*, %struct.omap3isp_h3a_af_config** %6, align 8
  %86 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %87 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %86, i32 0, i32 0
  store %struct.omap3isp_h3a_af_config* %85, %struct.omap3isp_h3a_af_config** %87, align 8
  %88 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %89 = call i32 @omap3isp_stat_init(%struct.ispstat* %88, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* @h3a_af_subdev_ops)
  store i32 %89, i32* %7, align 4
  br label %90

90:                                               ; preds = %80, %71, %33
  %91 = load i32, i32* %7, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %90
  %94 = load %struct.omap3isp_h3a_af_config*, %struct.omap3isp_h3a_af_config** %5, align 8
  %95 = call i32 @kfree(%struct.omap3isp_h3a_af_config* %94)
  %96 = load %struct.omap3isp_h3a_af_config*, %struct.omap3isp_h3a_af_config** %6, align 8
  %97 = call i32 @kfree(%struct.omap3isp_h3a_af_config* %96)
  br label %98

98:                                               ; preds = %93, %90
  %99 = load i32, i32* %7, align 4
  store i32 %99, i32* %2, align 4
  br label %100

100:                                              ; preds = %98, %14
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local %struct.omap3isp_h3a_af_config* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i64 @h3a_af_validate_params(%struct.ispstat*, %struct.omap3isp_h3a_af_config*) #1

declare dso_local i32 @h3a_af_get_buf_size(%struct.omap3isp_h3a_af_config*) #1

declare dso_local i32 @omap3isp_stat_init(%struct.ispstat*, i8*, i32*) #1

declare dso_local i32 @kfree(%struct.omap3isp_h3a_af_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
