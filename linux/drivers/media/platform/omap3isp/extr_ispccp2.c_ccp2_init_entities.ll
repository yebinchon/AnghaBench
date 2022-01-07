; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccp2.c_ccp2_init_entities.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccp2.c_ccp2_init_entities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_ccp2_device = type { %struct.v4l2_subdev, %struct.TYPE_2__, i32, i32, %struct.media_pad* }
%struct.v4l2_subdev = type { i32, %struct.media_entity, i32, i32, i32* }
%struct.media_entity = type { i32* }
%struct.TYPE_2__ = type { i32, i32, i32, i32*, i32, i32 }
%struct.media_pad = type { i32 }

@CCP2_INPUT_NONE = common dso_local global i32 0, align 4
@CCP2_OUTPUT_NONE = common dso_local global i32 0, align 4
@ccp2_sd_ops = common dso_local global i32 0, align 4
@ccp2_sd_internal_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"OMAP3 ISP CCP2\00", align 1
@V4L2_SUBDEV_FL_HAS_DEVNODE = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SINK = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_MUST_CONNECT = common dso_local global i32 0, align 4
@CCP2_PAD_SINK = common dso_local global i64 0, align 8
@MEDIA_PAD_FL_SOURCE = common dso_local global i32 0, align 4
@CCP2_PAD_SOURCE = common dso_local global i64 0, align 8
@ccp2_media_ops = common dso_local global i32 0, align 4
@CCP2_PADS_NUM = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i32 0, align 4
@ccp2_video_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"CCP2\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isp_ccp2_device*)* @ccp2_init_entities to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccp2_init_entities(%struct.isp_ccp2_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.isp_ccp2_device*, align 8
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.media_pad*, align 8
  %6 = alloca %struct.media_entity*, align 8
  %7 = alloca i32, align 4
  store %struct.isp_ccp2_device* %0, %struct.isp_ccp2_device** %3, align 8
  %8 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %3, align 8
  %9 = getelementptr inbounds %struct.isp_ccp2_device, %struct.isp_ccp2_device* %8, i32 0, i32 0
  store %struct.v4l2_subdev* %9, %struct.v4l2_subdev** %4, align 8
  %10 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %3, align 8
  %11 = getelementptr inbounds %struct.isp_ccp2_device, %struct.isp_ccp2_device* %10, i32 0, i32 4
  %12 = load %struct.media_pad*, %struct.media_pad** %11, align 8
  store %struct.media_pad* %12, %struct.media_pad** %5, align 8
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %14 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %13, i32 0, i32 1
  store %struct.media_entity* %14, %struct.media_entity** %6, align 8
  %15 = load i32, i32* @CCP2_INPUT_NONE, align 4
  %16 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %3, align 8
  %17 = getelementptr inbounds %struct.isp_ccp2_device, %struct.isp_ccp2_device* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @CCP2_OUTPUT_NONE, align 4
  %19 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %3, align 8
  %20 = getelementptr inbounds %struct.isp_ccp2_device, %struct.isp_ccp2_device* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 8
  %21 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %22 = call i32 @v4l2_subdev_init(%struct.v4l2_subdev* %21, i32* @ccp2_sd_ops)
  %23 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %24 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %23, i32 0, i32 4
  store i32* @ccp2_sd_internal_ops, i32** %24, align 8
  %25 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %26 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @strscpy(i32 %27, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 4)
  %29 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %30 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %29, i32 0, i32 0
  store i32 65536, i32* %30, align 8
  %31 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %32 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %3, align 8
  %33 = call i32 @v4l2_set_subdevdata(%struct.v4l2_subdev* %31, %struct.isp_ccp2_device* %32)
  %34 = load i32, i32* @V4L2_SUBDEV_FL_HAS_DEVNODE, align 4
  %35 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %36 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 8
  %39 = load i32, i32* @MEDIA_PAD_FL_SINK, align 4
  %40 = load i32, i32* @MEDIA_PAD_FL_MUST_CONNECT, align 4
  %41 = or i32 %39, %40
  %42 = load %struct.media_pad*, %struct.media_pad** %5, align 8
  %43 = load i64, i64* @CCP2_PAD_SINK, align 8
  %44 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %42, i64 %43
  %45 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %44, i32 0, i32 0
  store i32 %41, i32* %45, align 4
  %46 = load i32, i32* @MEDIA_PAD_FL_SOURCE, align 4
  %47 = load %struct.media_pad*, %struct.media_pad** %5, align 8
  %48 = load i64, i64* @CCP2_PAD_SOURCE, align 8
  %49 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %47, i64 %48
  %50 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %49, i32 0, i32 0
  store i32 %46, i32* %50, align 4
  %51 = load %struct.media_entity*, %struct.media_entity** %6, align 8
  %52 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %51, i32 0, i32 0
  store i32* @ccp2_media_ops, i32** %52, align 8
  %53 = load %struct.media_entity*, %struct.media_entity** %6, align 8
  %54 = load i32, i32* @CCP2_PADS_NUM, align 4
  %55 = load %struct.media_pad*, %struct.media_pad** %5, align 8
  %56 = call i32 @media_entity_pads_init(%struct.media_entity* %53, i32 %54, %struct.media_pad* %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %1
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %2, align 4
  br label %100

61:                                               ; preds = %1
  %62 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %63 = call i32 @ccp2_init_formats(%struct.v4l2_subdev* %62, i32* null)
  %64 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 4
  %65 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %3, align 8
  %66 = getelementptr inbounds %struct.isp_ccp2_device, %struct.isp_ccp2_device* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 5
  store i32 %64, i32* %67, align 4
  %68 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %3, align 8
  %69 = getelementptr inbounds %struct.isp_ccp2_device, %struct.isp_ccp2_device* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  store i32 32, i32* %70, align 8
  %71 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %3, align 8
  %72 = getelementptr inbounds %struct.isp_ccp2_device, %struct.isp_ccp2_device* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  store i32 -32, i32* %73, align 4
  %74 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %3, align 8
  %75 = call i32 @to_isp_device(%struct.isp_ccp2_device* %74)
  %76 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %3, align 8
  %77 = getelementptr inbounds %struct.isp_ccp2_device, %struct.isp_ccp2_device* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 4
  store i32 %75, i32* %78, align 8
  %79 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %3, align 8
  %80 = getelementptr inbounds %struct.isp_ccp2_device, %struct.isp_ccp2_device* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 3
  store i32* @ccp2_video_ops, i32** %81, align 8
  %82 = call i32 @PAGE_ALIGN(i32 16777216)
  %83 = mul nsw i32 %82, 3
  %84 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %3, align 8
  %85 = getelementptr inbounds %struct.isp_ccp2_device, %struct.isp_ccp2_device* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 2
  store i32 %83, i32* %86, align 8
  %87 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %3, align 8
  %88 = getelementptr inbounds %struct.isp_ccp2_device, %struct.isp_ccp2_device* %87, i32 0, i32 1
  %89 = call i32 @omap3isp_video_init(%struct.TYPE_2__* %88, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %61
  br label %94

93:                                               ; preds = %61
  store i32 0, i32* %2, align 4
  br label %100

94:                                               ; preds = %92
  %95 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %3, align 8
  %96 = getelementptr inbounds %struct.isp_ccp2_device, %struct.isp_ccp2_device* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %96, i32 0, i32 1
  %98 = call i32 @media_entity_cleanup(%struct.media_entity* %97)
  %99 = load i32, i32* %7, align 4
  store i32 %99, i32* %2, align 4
  br label %100

100:                                              ; preds = %94, %93, %59
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i32 @v4l2_subdev_init(%struct.v4l2_subdev*, i32*) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @v4l2_set_subdevdata(%struct.v4l2_subdev*, %struct.isp_ccp2_device*) #1

declare dso_local i32 @media_entity_pads_init(%struct.media_entity*, i32, %struct.media_pad*) #1

declare dso_local i32 @ccp2_init_formats(%struct.v4l2_subdev*, i32*) #1

declare dso_local i32 @to_isp_device(%struct.isp_ccp2_device*) #1

declare dso_local i32 @PAGE_ALIGN(i32) #1

declare dso_local i32 @omap3isp_video_init(%struct.TYPE_2__*, i8*) #1

declare dso_local i32 @media_entity_cleanup(%struct.media_entity*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
