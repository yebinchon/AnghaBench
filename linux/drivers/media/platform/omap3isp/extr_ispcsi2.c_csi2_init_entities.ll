; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispcsi2.c_csi2_init_entities.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispcsi2.c_csi2_init_entities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_csi2_device = type { %struct.v4l2_subdev, %struct.TYPE_2__, i32, %struct.media_pad* }
%struct.v4l2_subdev = type { i32, %struct.media_entity, i32, i32, i32* }
%struct.media_entity = type { i32* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32*, i32 }
%struct.media_pad = type { i32 }

@csi2_ops = common dso_local global i32 0, align 4
@csi2_internal_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"OMAP3 ISP CSI2a\00", align 1
@V4L2_SUBDEV_FL_HAS_DEVNODE = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SOURCE = common dso_local global i32 0, align 4
@CSI2_PAD_SOURCE = common dso_local global i64 0, align 8
@MEDIA_PAD_FL_SINK = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_MUST_CONNECT = common dso_local global i32 0, align 4
@CSI2_PAD_SINK = common dso_local global i64 0, align 8
@csi2_media_ops = common dso_local global i32 0, align 4
@CSI2_PADS_NUM = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@csi2_ispvideo_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"CSI2a\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isp_csi2_device*)* @csi2_init_entities to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csi2_init_entities(%struct.isp_csi2_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.isp_csi2_device*, align 8
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.media_pad*, align 8
  %6 = alloca %struct.media_entity*, align 8
  %7 = alloca i32, align 4
  store %struct.isp_csi2_device* %0, %struct.isp_csi2_device** %3, align 8
  %8 = load %struct.isp_csi2_device*, %struct.isp_csi2_device** %3, align 8
  %9 = getelementptr inbounds %struct.isp_csi2_device, %struct.isp_csi2_device* %8, i32 0, i32 0
  store %struct.v4l2_subdev* %9, %struct.v4l2_subdev** %4, align 8
  %10 = load %struct.isp_csi2_device*, %struct.isp_csi2_device** %3, align 8
  %11 = getelementptr inbounds %struct.isp_csi2_device, %struct.isp_csi2_device* %10, i32 0, i32 3
  %12 = load %struct.media_pad*, %struct.media_pad** %11, align 8
  store %struct.media_pad* %12, %struct.media_pad** %5, align 8
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %14 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %13, i32 0, i32 1
  store %struct.media_entity* %14, %struct.media_entity** %6, align 8
  %15 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %16 = call i32 @v4l2_subdev_init(%struct.v4l2_subdev* %15, i32* @csi2_ops)
  %17 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %18 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %17, i32 0, i32 4
  store i32* @csi2_internal_ops, i32** %18, align 8
  %19 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %20 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @strscpy(i32 %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 4)
  %23 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %24 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %23, i32 0, i32 0
  store i32 65536, i32* %24, align 8
  %25 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %26 = load %struct.isp_csi2_device*, %struct.isp_csi2_device** %3, align 8
  %27 = call i32 @v4l2_set_subdevdata(%struct.v4l2_subdev* %25, %struct.isp_csi2_device* %26)
  %28 = load i32, i32* @V4L2_SUBDEV_FL_HAS_DEVNODE, align 4
  %29 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %30 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 8
  %33 = load i32, i32* @MEDIA_PAD_FL_SOURCE, align 4
  %34 = load %struct.media_pad*, %struct.media_pad** %5, align 8
  %35 = load i64, i64* @CSI2_PAD_SOURCE, align 8
  %36 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %34, i64 %35
  %37 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %36, i32 0, i32 0
  store i32 %33, i32* %37, align 4
  %38 = load i32, i32* @MEDIA_PAD_FL_SINK, align 4
  %39 = load i32, i32* @MEDIA_PAD_FL_MUST_CONNECT, align 4
  %40 = or i32 %38, %39
  %41 = load %struct.media_pad*, %struct.media_pad** %5, align 8
  %42 = load i64, i64* @CSI2_PAD_SINK, align 8
  %43 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %41, i64 %42
  %44 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %43, i32 0, i32 0
  store i32 %40, i32* %44, align 4
  %45 = load %struct.media_entity*, %struct.media_entity** %6, align 8
  %46 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %45, i32 0, i32 0
  store i32* @csi2_media_ops, i32** %46, align 8
  %47 = load %struct.media_entity*, %struct.media_entity** %6, align 8
  %48 = load i32, i32* @CSI2_PADS_NUM, align 4
  %49 = load %struct.media_pad*, %struct.media_pad** %5, align 8
  %50 = call i32 @media_entity_pads_init(%struct.media_entity* %47, i32 %48, %struct.media_pad* %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %1
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %2, align 4
  br label %98

55:                                               ; preds = %1
  %56 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %57 = call i32 @csi2_init_formats(%struct.v4l2_subdev* %56, i32* null)
  %58 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %59 = load %struct.isp_csi2_device*, %struct.isp_csi2_device** %3, align 8
  %60 = getelementptr inbounds %struct.isp_csi2_device, %struct.isp_csi2_device* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 6
  store i32 %58, i32* %61, align 8
  %62 = load %struct.isp_csi2_device*, %struct.isp_csi2_device** %3, align 8
  %63 = getelementptr inbounds %struct.isp_csi2_device, %struct.isp_csi2_device* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 5
  store i32* @csi2_ispvideo_ops, i32** %64, align 8
  %65 = load %struct.isp_csi2_device*, %struct.isp_csi2_device** %3, align 8
  %66 = getelementptr inbounds %struct.isp_csi2_device, %struct.isp_csi2_device* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store i32 32, i32* %67, align 8
  %68 = load %struct.isp_csi2_device*, %struct.isp_csi2_device** %3, align 8
  %69 = getelementptr inbounds %struct.isp_csi2_device, %struct.isp_csi2_device* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  store i32 1, i32* %70, align 4
  %71 = load %struct.isp_csi2_device*, %struct.isp_csi2_device** %3, align 8
  %72 = getelementptr inbounds %struct.isp_csi2_device, %struct.isp_csi2_device* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 2
  store i32 131040, i32* %73, align 8
  %74 = load %struct.isp_csi2_device*, %struct.isp_csi2_device** %3, align 8
  %75 = getelementptr inbounds %struct.isp_csi2_device, %struct.isp_csi2_device* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.isp_csi2_device*, %struct.isp_csi2_device** %3, align 8
  %78 = getelementptr inbounds %struct.isp_csi2_device, %struct.isp_csi2_device* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 4
  store i32 %76, i32* %79, align 8
  %80 = call i32 @PAGE_ALIGN(i32 16777216)
  %81 = mul nsw i32 %80, 3
  %82 = load %struct.isp_csi2_device*, %struct.isp_csi2_device** %3, align 8
  %83 = getelementptr inbounds %struct.isp_csi2_device, %struct.isp_csi2_device* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 3
  store i32 %81, i32* %84, align 4
  %85 = load %struct.isp_csi2_device*, %struct.isp_csi2_device** %3, align 8
  %86 = getelementptr inbounds %struct.isp_csi2_device, %struct.isp_csi2_device* %85, i32 0, i32 1
  %87 = call i32 @omap3isp_video_init(%struct.TYPE_2__* %86, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %55
  br label %92

91:                                               ; preds = %55
  store i32 0, i32* %2, align 4
  br label %98

92:                                               ; preds = %90
  %93 = load %struct.isp_csi2_device*, %struct.isp_csi2_device** %3, align 8
  %94 = getelementptr inbounds %struct.isp_csi2_device, %struct.isp_csi2_device* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %94, i32 0, i32 1
  %96 = call i32 @media_entity_cleanup(%struct.media_entity* %95)
  %97 = load i32, i32* %7, align 4
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %92, %91, %53
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @v4l2_subdev_init(%struct.v4l2_subdev*, i32*) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @v4l2_set_subdevdata(%struct.v4l2_subdev*, %struct.isp_csi2_device*) #1

declare dso_local i32 @media_entity_pads_init(%struct.media_entity*, i32, %struct.media_pad*) #1

declare dso_local i32 @csi2_init_formats(%struct.v4l2_subdev*, i32*) #1

declare dso_local i32 @PAGE_ALIGN(i32) #1

declare dso_local i32 @omap3isp_video_init(%struct.TYPE_2__*, i8*) #1

declare dso_local i32 @media_entity_cleanup(%struct.media_entity*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
