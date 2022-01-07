; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccdc.c_ccdc_init_entities.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccdc.c_ccdc_init_entities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_ccdc_device = type { %struct.TYPE_2__, i32, %struct.media_pad*, %struct.v4l2_subdev }
%struct.TYPE_2__ = type { i32, i32, i32, i32*, i32 }
%struct.media_pad = type { i32 }
%struct.v4l2_subdev = type { i32, i32, i32, i32*, %struct.media_entity }
%struct.media_entity = type { i32* }

@CCDC_INPUT_NONE = common dso_local global i32 0, align 4
@ccdc_v4l2_ops = common dso_local global i32 0, align 4
@ccdc_v4l2_internal_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"OMAP3 ISP CCDC\00", align 1
@V4L2_SUBDEV_FL_HAS_EVENTS = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FL_HAS_DEVNODE = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SINK = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_MUST_CONNECT = common dso_local global i32 0, align 4
@CCDC_PAD_SINK = common dso_local global i64 0, align 8
@MEDIA_PAD_FL_SOURCE = common dso_local global i8* null, align 8
@CCDC_PAD_SOURCE_VP = common dso_local global i64 0, align 8
@CCDC_PAD_SOURCE_OF = common dso_local global i64 0, align 8
@ccdc_media_ops = common dso_local global i32 0, align 4
@CCDC_PADS_NUM = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@ccdc_video_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"CCDC\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isp_ccdc_device*)* @ccdc_init_entities to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccdc_init_entities(%struct.isp_ccdc_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.isp_ccdc_device*, align 8
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.media_pad*, align 8
  %6 = alloca %struct.media_entity*, align 8
  %7 = alloca i32, align 4
  store %struct.isp_ccdc_device* %0, %struct.isp_ccdc_device** %3, align 8
  %8 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %3, align 8
  %9 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %8, i32 0, i32 3
  store %struct.v4l2_subdev* %9, %struct.v4l2_subdev** %4, align 8
  %10 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %3, align 8
  %11 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %10, i32 0, i32 2
  %12 = load %struct.media_pad*, %struct.media_pad** %11, align 8
  store %struct.media_pad* %12, %struct.media_pad** %5, align 8
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %14 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %13, i32 0, i32 4
  store %struct.media_entity* %14, %struct.media_entity** %6, align 8
  %15 = load i32, i32* @CCDC_INPUT_NONE, align 4
  %16 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %3, align 8
  %17 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 8
  %18 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %19 = call i32 @v4l2_subdev_init(%struct.v4l2_subdev* %18, i32* @ccdc_v4l2_ops)
  %20 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %21 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %20, i32 0, i32 3
  store i32* @ccdc_v4l2_internal_ops, i32** %21, align 8
  %22 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %23 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @strscpy(i32 %24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 4)
  %26 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %27 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %26, i32 0, i32 0
  store i32 65536, i32* %27, align 8
  %28 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %29 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %3, align 8
  %30 = call i32 @v4l2_set_subdevdata(%struct.v4l2_subdev* %28, %struct.isp_ccdc_device* %29)
  %31 = load i32, i32* @V4L2_SUBDEV_FL_HAS_EVENTS, align 4
  %32 = load i32, i32* @V4L2_SUBDEV_FL_HAS_DEVNODE, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %35 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load i32, i32* @MEDIA_PAD_FL_SINK, align 4
  %39 = load i32, i32* @MEDIA_PAD_FL_MUST_CONNECT, align 4
  %40 = or i32 %38, %39
  %41 = load %struct.media_pad*, %struct.media_pad** %5, align 8
  %42 = load i64, i64* @CCDC_PAD_SINK, align 8
  %43 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %41, i64 %42
  %44 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %43, i32 0, i32 0
  store i32 %40, i32* %44, align 4
  %45 = load i8*, i8** @MEDIA_PAD_FL_SOURCE, align 8
  %46 = ptrtoint i8* %45 to i32
  %47 = load %struct.media_pad*, %struct.media_pad** %5, align 8
  %48 = load i64, i64* @CCDC_PAD_SOURCE_VP, align 8
  %49 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %47, i64 %48
  %50 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %49, i32 0, i32 0
  store i32 %46, i32* %50, align 4
  %51 = load i8*, i8** @MEDIA_PAD_FL_SOURCE, align 8
  %52 = ptrtoint i8* %51 to i32
  %53 = load %struct.media_pad*, %struct.media_pad** %5, align 8
  %54 = load i64, i64* @CCDC_PAD_SOURCE_OF, align 8
  %55 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %53, i64 %54
  %56 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %55, i32 0, i32 0
  store i32 %52, i32* %56, align 4
  %57 = load %struct.media_entity*, %struct.media_entity** %6, align 8
  %58 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %57, i32 0, i32 0
  store i32* @ccdc_media_ops, i32** %58, align 8
  %59 = load %struct.media_entity*, %struct.media_entity** %6, align 8
  %60 = load i32, i32* @CCDC_PADS_NUM, align 4
  %61 = load %struct.media_pad*, %struct.media_pad** %5, align 8
  %62 = call i32 @media_entity_pads_init(%struct.media_entity* %59, i32 %60, %struct.media_pad* %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %1
  %66 = load i32, i32* %7, align 4
  store i32 %66, i32* %2, align 4
  br label %101

67:                                               ; preds = %1
  %68 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %69 = call i32 @ccdc_init_formats(%struct.v4l2_subdev* %68, i32* null)
  %70 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %71 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %3, align 8
  %72 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 4
  store i32 %70, i32* %73, align 8
  %74 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %3, align 8
  %75 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 3
  store i32* @ccdc_video_ops, i32** %76, align 8
  %77 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %3, align 8
  %78 = call i32 @to_isp_device(%struct.isp_ccdc_device* %77)
  %79 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %3, align 8
  %80 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  store i32 %78, i32* %81, align 8
  %82 = call i32 @PAGE_ALIGN(i32 16777216)
  %83 = mul nsw i32 %82, 3
  %84 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %3, align 8
  %85 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  store i32 %83, i32* %86, align 8
  %87 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %3, align 8
  %88 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  store i32 32, i32* %89, align 4
  %90 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %3, align 8
  %91 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %90, i32 0, i32 0
  %92 = call i32 @omap3isp_video_init(%struct.TYPE_2__* %91, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %67
  br label %97

96:                                               ; preds = %67
  store i32 0, i32* %2, align 4
  br label %101

97:                                               ; preds = %95
  %98 = load %struct.media_entity*, %struct.media_entity** %6, align 8
  %99 = call i32 @media_entity_cleanup(%struct.media_entity* %98)
  %100 = load i32, i32* %7, align 4
  store i32 %100, i32* %2, align 4
  br label %101

101:                                              ; preds = %97, %96, %65
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32 @v4l2_subdev_init(%struct.v4l2_subdev*, i32*) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @v4l2_set_subdevdata(%struct.v4l2_subdev*, %struct.isp_ccdc_device*) #1

declare dso_local i32 @media_entity_pads_init(%struct.media_entity*, i32, %struct.media_pad*) #1

declare dso_local i32 @ccdc_init_formats(%struct.v4l2_subdev*, i32*) #1

declare dso_local i32 @to_isp_device(%struct.isp_ccdc_device*) #1

declare dso_local i32 @PAGE_ALIGN(i32) #1

declare dso_local i32 @omap3isp_video_init(%struct.TYPE_2__*, i8*) #1

declare dso_local i32 @media_entity_cleanup(%struct.media_entity*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
