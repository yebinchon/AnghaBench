; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-csiphy.c_msm_csiphy_register_entity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-csiphy.c_msm_csiphy_register_entity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csiphy_device = type { i32, %struct.TYPE_4__*, %struct.media_pad*, %struct.v4l2_subdev }
%struct.TYPE_4__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.media_pad = type { i32 }
%struct.v4l2_subdev = type { %struct.TYPE_5__, i32, i32, i32* }
%struct.TYPE_5__ = type { i32*, i32 }
%struct.v4l2_device = type { i32 }

@csiphy_v4l2_ops = common dso_local global i32 0, align 4
@csiphy_v4l2_internal_ops = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FL_HAS_DEVNODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@MSM_CSIPHY_NAME = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to init format: %d\0A\00", align 1
@MEDIA_PAD_FL_SINK = common dso_local global i32 0, align 4
@MSM_CSIPHY_PAD_SINK = common dso_local global i64 0, align 8
@MEDIA_PAD_FL_SOURCE = common dso_local global i32 0, align 4
@MSM_CSIPHY_PAD_SRC = common dso_local global i64 0, align 8
@MEDIA_ENT_F_IO_V4L = common dso_local global i32 0, align 4
@csiphy_media_ops = common dso_local global i32 0, align 4
@MSM_CSIPHY_PADS_NUM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed to init media entity: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Failed to register subdev: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msm_csiphy_register_entity(%struct.csiphy_device* %0, %struct.v4l2_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.csiphy_device*, align 8
  %5 = alloca %struct.v4l2_device*, align 8
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca %struct.media_pad*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  store %struct.csiphy_device* %0, %struct.csiphy_device** %4, align 8
  store %struct.v4l2_device* %1, %struct.v4l2_device** %5, align 8
  %10 = load %struct.csiphy_device*, %struct.csiphy_device** %4, align 8
  %11 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %10, i32 0, i32 3
  store %struct.v4l2_subdev* %11, %struct.v4l2_subdev** %6, align 8
  %12 = load %struct.csiphy_device*, %struct.csiphy_device** %4, align 8
  %13 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %12, i32 0, i32 2
  %14 = load %struct.media_pad*, %struct.media_pad** %13, align 8
  store %struct.media_pad* %14, %struct.media_pad** %7, align 8
  %15 = load %struct.csiphy_device*, %struct.csiphy_device** %4, align 8
  %16 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.device*, %struct.device** %18, align 8
  store %struct.device* %19, %struct.device** %8, align 8
  %20 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %21 = call i32 @v4l2_subdev_init(%struct.v4l2_subdev* %20, i32* @csiphy_v4l2_ops)
  %22 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %23 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %22, i32 0, i32 3
  store i32* @csiphy_v4l2_internal_ops, i32** %23, align 8
  %24 = load i32, i32* @V4L2_SUBDEV_FL_HAS_DEVNODE, align 4
  %25 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %26 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %30 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %33 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @ARRAY_SIZE(i32 %34)
  %36 = load i8*, i8** @MSM_CSIPHY_NAME, align 8
  %37 = load %struct.csiphy_device*, %struct.csiphy_device** %4, align 8
  %38 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @snprintf(i32 %31, i32 %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %36, i32 %39)
  %41 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %42 = load %struct.csiphy_device*, %struct.csiphy_device** %4, align 8
  %43 = call i32 @v4l2_set_subdevdata(%struct.v4l2_subdev* %41, %struct.csiphy_device* %42)
  %44 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %45 = call i32 @csiphy_init_formats(%struct.v4l2_subdev* %44, i32* null)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %2
  %49 = load %struct.device*, %struct.device** %8, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @dev_err(%struct.device* %49, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %3, align 4
  br label %98

53:                                               ; preds = %2
  %54 = load i32, i32* @MEDIA_PAD_FL_SINK, align 4
  %55 = load %struct.media_pad*, %struct.media_pad** %7, align 8
  %56 = load i64, i64* @MSM_CSIPHY_PAD_SINK, align 8
  %57 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %55, i64 %56
  %58 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %57, i32 0, i32 0
  store i32 %54, i32* %58, align 4
  %59 = load i32, i32* @MEDIA_PAD_FL_SOURCE, align 4
  %60 = load %struct.media_pad*, %struct.media_pad** %7, align 8
  %61 = load i64, i64* @MSM_CSIPHY_PAD_SRC, align 8
  %62 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %60, i64 %61
  %63 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %62, i32 0, i32 0
  store i32 %59, i32* %63, align 4
  %64 = load i32, i32* @MEDIA_ENT_F_IO_V4L, align 4
  %65 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %66 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  store i32 %64, i32* %67, align 8
  %68 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %69 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  store i32* @csiphy_media_ops, i32** %70, align 8
  %71 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %72 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %71, i32 0, i32 0
  %73 = load i32, i32* @MSM_CSIPHY_PADS_NUM, align 4
  %74 = load %struct.media_pad*, %struct.media_pad** %7, align 8
  %75 = call i32 @media_entity_pads_init(%struct.TYPE_5__* %72, i32 %73, %struct.media_pad* %74)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %53
  %79 = load %struct.device*, %struct.device** %8, align 8
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @dev_err(%struct.device* %79, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* %9, align 4
  store i32 %82, i32* %3, align 4
  br label %98

83:                                               ; preds = %53
  %84 = load %struct.v4l2_device*, %struct.v4l2_device** %5, align 8
  %85 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %86 = call i32 @v4l2_device_register_subdev(%struct.v4l2_device* %84, %struct.v4l2_subdev* %85)
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %83
  %90 = load %struct.device*, %struct.device** %8, align 8
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @dev_err(%struct.device* %90, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %91)
  %93 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %94 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %93, i32 0, i32 0
  %95 = call i32 @media_entity_cleanup(%struct.TYPE_5__* %94)
  br label %96

96:                                               ; preds = %89, %83
  %97 = load i32, i32* %9, align 4
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %96, %78, %48
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @v4l2_subdev_init(%struct.v4l2_subdev*, i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @v4l2_set_subdevdata(%struct.v4l2_subdev*, %struct.csiphy_device*) #1

declare dso_local i32 @csiphy_init_formats(%struct.v4l2_subdev*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @media_entity_pads_init(%struct.TYPE_5__*, i32, %struct.media_pad*) #1

declare dso_local i32 @v4l2_device_register_subdev(%struct.v4l2_device*, %struct.v4l2_subdev*) #1

declare dso_local i32 @media_entity_cleanup(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
