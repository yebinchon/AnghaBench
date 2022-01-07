; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-lite.c_fimc_lite_create_capture_subdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-lite.c_fimc_lite_create_capture_subdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_lite = type { i32, i32, %struct.TYPE_5__*, %struct.v4l2_subdev, %struct.v4l2_ctrl_handler }
%struct.TYPE_5__ = type { i8* }
%struct.v4l2_subdev = type { i32, %struct.TYPE_4__, i32*, %struct.v4l2_ctrl_handler*, i32, i32 }
%struct.TYPE_4__ = type { i32*, i32 }
%struct.v4l2_ctrl_handler = type { i32 }

@fimc_lite_subdev_ops = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FL_HAS_DEVNODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"FIMC-LITE.%d\00", align 1
@MEDIA_PAD_FL_SINK = common dso_local global i8* null, align 8
@FLITE_SD_PAD_SINK = common dso_local global i64 0, align 8
@MEDIA_PAD_FL_SOURCE = common dso_local global i8* null, align 8
@FLITE_SD_PAD_SOURCE_DMA = common dso_local global i64 0, align 8
@FLITE_SD_PAD_SOURCE_ISP = common dso_local global i64 0, align 8
@FLITE_SD_PADS_NUM = common dso_local global i32 0, align 4
@fimc_lite_ctrl = common dso_local global i32 0, align 4
@fimc_lite_subdev_internal_ops = common dso_local global i32 0, align 4
@MEDIA_ENT_F_PROC_VIDEO_SCALER = common dso_local global i32 0, align 4
@fimc_lite_subdev_media_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fimc_lite*)* @fimc_lite_create_capture_subdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fimc_lite_create_capture_subdev(%struct.fimc_lite* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fimc_lite*, align 8
  %4 = alloca %struct.v4l2_ctrl_handler*, align 8
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca i32, align 4
  store %struct.fimc_lite* %0, %struct.fimc_lite** %3, align 8
  %7 = load %struct.fimc_lite*, %struct.fimc_lite** %3, align 8
  %8 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %7, i32 0, i32 4
  store %struct.v4l2_ctrl_handler* %8, %struct.v4l2_ctrl_handler** %4, align 8
  %9 = load %struct.fimc_lite*, %struct.fimc_lite** %3, align 8
  %10 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %9, i32 0, i32 3
  store %struct.v4l2_subdev* %10, %struct.v4l2_subdev** %5, align 8
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %12 = call i32 @v4l2_subdev_init(%struct.v4l2_subdev* %11, i32* @fimc_lite_subdev_ops)
  %13 = load i32, i32* @V4L2_SUBDEV_FL_HAS_DEVNODE, align 4
  %14 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %15 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 4
  %18 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %19 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.fimc_lite*, %struct.fimc_lite** %3, align 8
  %22 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @snprintf(i32 %20, i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i8*, i8** @MEDIA_PAD_FL_SINK, align 8
  %26 = load %struct.fimc_lite*, %struct.fimc_lite** %3, align 8
  %27 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %26, i32 0, i32 2
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = load i64, i64* @FLITE_SD_PAD_SINK, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  store i8* %25, i8** %31, align 8
  %32 = load i8*, i8** @MEDIA_PAD_FL_SOURCE, align 8
  %33 = load %struct.fimc_lite*, %struct.fimc_lite** %3, align 8
  %34 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %33, i32 0, i32 2
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = load i64, i64* @FLITE_SD_PAD_SOURCE_DMA, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  store i8* %32, i8** %38, align 8
  %39 = load i8*, i8** @MEDIA_PAD_FL_SOURCE, align 8
  %40 = load %struct.fimc_lite*, %struct.fimc_lite** %3, align 8
  %41 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %40, i32 0, i32 2
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = load i64, i64* @FLITE_SD_PAD_SOURCE_ISP, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  store i8* %39, i8** %45, align 8
  %46 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %47 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %46, i32 0, i32 1
  %48 = load i32, i32* @FLITE_SD_PADS_NUM, align 4
  %49 = load %struct.fimc_lite*, %struct.fimc_lite** %3, align 8
  %50 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %49, i32 0, i32 2
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = call i32 @media_entity_pads_init(%struct.TYPE_4__* %47, i32 %48, %struct.TYPE_5__* %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %1
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %2, align 4
  br label %94

57:                                               ; preds = %1
  %58 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %59 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %58, i32 1)
  %60 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %61 = call i32 @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %60, i32* @fimc_lite_ctrl, i32* null)
  %62 = load %struct.fimc_lite*, %struct.fimc_lite** %3, align 8
  %63 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %65 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %57
  %69 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %70 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %69, i32 0, i32 1
  %71 = call i32 @media_entity_cleanup(%struct.TYPE_4__* %70)
  %72 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %73 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %2, align 4
  br label %94

75:                                               ; preds = %57
  %76 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %77 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %78 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %77, i32 0, i32 3
  store %struct.v4l2_ctrl_handler* %76, %struct.v4l2_ctrl_handler** %78, align 8
  %79 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %80 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %79, i32 0, i32 2
  store i32* @fimc_lite_subdev_internal_ops, i32** %80, align 8
  %81 = load i32, i32* @MEDIA_ENT_F_PROC_VIDEO_SCALER, align 4
  %82 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %83 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  store i32 %81, i32* %84, align 8
  %85 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %86 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  store i32* @fimc_lite_subdev_media_ops, i32** %87, align 8
  %88 = load i32, i32* @THIS_MODULE, align 4
  %89 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %90 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %92 = load %struct.fimc_lite*, %struct.fimc_lite** %3, align 8
  %93 = call i32 @v4l2_set_subdevdata(%struct.v4l2_subdev* %91, %struct.fimc_lite* %92)
  store i32 0, i32* %2, align 4
  br label %94

94:                                               ; preds = %75, %68, %55
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i32 @v4l2_subdev_init(%struct.v4l2_subdev*, i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @media_entity_pads_init(%struct.TYPE_4__*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local i32 @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler*, i32*, i32*) #1

declare dso_local i32 @media_entity_cleanup(%struct.TYPE_4__*) #1

declare dso_local i32 @v4l2_set_subdevdata(%struct.v4l2_subdev*, %struct.fimc_lite*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
