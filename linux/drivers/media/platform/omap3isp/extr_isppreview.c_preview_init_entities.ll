; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isppreview.c_preview_init_entities.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isppreview.c_preview_init_entities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_prev_device = type { %struct.v4l2_subdev, %struct.TYPE_3__, %struct.TYPE_3__, i32, i32, %struct.media_pad* }
%struct.v4l2_subdev = type { i32, %struct.media_entity, i32*, i32, i32, i32* }
%struct.media_entity = type { i32* }
%struct.TYPE_3__ = type { i32, i32, i8*, i32*, i32 }
%struct.media_pad = type { i32 }

@PREVIEW_INPUT_NONE = common dso_local global i32 0, align 4
@preview_v4l2_ops = common dso_local global i32 0, align 4
@preview_v4l2_internal_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"OMAP3 ISP preview\00", align 1
@V4L2_SUBDEV_FL_HAS_DEVNODE = common dso_local global i32 0, align 4
@preview_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_BRIGHTNESS = common dso_local global i32 0, align 4
@ISPPRV_BRIGHT_LOW = common dso_local global i32 0, align 4
@ISPPRV_BRIGHT_HIGH = common dso_local global i32 0, align 4
@ISPPRV_BRIGHT_STEP = common dso_local global i32 0, align 4
@ISPPRV_BRIGHT_DEF = common dso_local global i32 0, align 4
@V4L2_CID_CONTRAST = common dso_local global i32 0, align 4
@ISPPRV_CONTRAST_LOW = common dso_local global i32 0, align 4
@ISPPRV_CONTRAST_HIGH = common dso_local global i32 0, align 4
@ISPPRV_CONTRAST_STEP = common dso_local global i32 0, align 4
@ISPPRV_CONTRAST_DEF = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SINK = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_MUST_CONNECT = common dso_local global i32 0, align 4
@PREV_PAD_SINK = common dso_local global i64 0, align 8
@MEDIA_PAD_FL_SOURCE = common dso_local global i32 0, align 4
@PREV_PAD_SOURCE = common dso_local global i64 0, align 8
@preview_media_ops = common dso_local global i32 0, align 4
@PREV_PADS_NUM = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i32 0, align 4
@preview_video_ops = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"preview\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isp_prev_device*)* @preview_init_entities to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @preview_init_entities(%struct.isp_prev_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.isp_prev_device*, align 8
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.media_pad*, align 8
  %6 = alloca %struct.media_entity*, align 8
  %7 = alloca i32, align 4
  store %struct.isp_prev_device* %0, %struct.isp_prev_device** %3, align 8
  %8 = load %struct.isp_prev_device*, %struct.isp_prev_device** %3, align 8
  %9 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %8, i32 0, i32 0
  store %struct.v4l2_subdev* %9, %struct.v4l2_subdev** %4, align 8
  %10 = load %struct.isp_prev_device*, %struct.isp_prev_device** %3, align 8
  %11 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %10, i32 0, i32 5
  %12 = load %struct.media_pad*, %struct.media_pad** %11, align 8
  store %struct.media_pad* %12, %struct.media_pad** %5, align 8
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %14 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %13, i32 0, i32 1
  store %struct.media_entity* %14, %struct.media_entity** %6, align 8
  %15 = load i32, i32* @PREVIEW_INPUT_NONE, align 4
  %16 = load %struct.isp_prev_device*, %struct.isp_prev_device** %3, align 8
  %17 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %16, i32 0, i32 4
  store i32 %15, i32* %17, align 4
  %18 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %19 = call i32 @v4l2_subdev_init(%struct.v4l2_subdev* %18, i32* @preview_v4l2_ops)
  %20 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %21 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %20, i32 0, i32 5
  store i32* @preview_v4l2_internal_ops, i32** %21, align 8
  %22 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %23 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @strscpy(i32 %24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 4)
  %26 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %27 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %26, i32 0, i32 0
  store i32 65536, i32* %27, align 8
  %28 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %29 = load %struct.isp_prev_device*, %struct.isp_prev_device** %3, align 8
  %30 = call i32 @v4l2_set_subdevdata(%struct.v4l2_subdev* %28, %struct.isp_prev_device* %29)
  %31 = load i32, i32* @V4L2_SUBDEV_FL_HAS_DEVNODE, align 4
  %32 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %33 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 8
  %36 = load %struct.isp_prev_device*, %struct.isp_prev_device** %3, align 8
  %37 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %36, i32 0, i32 3
  %38 = call i32 @v4l2_ctrl_handler_init(i32* %37, i32 2)
  %39 = load %struct.isp_prev_device*, %struct.isp_prev_device** %3, align 8
  %40 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %39, i32 0, i32 3
  %41 = load i32, i32* @V4L2_CID_BRIGHTNESS, align 4
  %42 = load i32, i32* @ISPPRV_BRIGHT_LOW, align 4
  %43 = load i32, i32* @ISPPRV_BRIGHT_HIGH, align 4
  %44 = load i32, i32* @ISPPRV_BRIGHT_STEP, align 4
  %45 = load i32, i32* @ISPPRV_BRIGHT_DEF, align 4
  %46 = call i32 @v4l2_ctrl_new_std(i32* %40, i32* @preview_ctrl_ops, i32 %41, i32 %42, i32 %43, i32 %44, i32 %45)
  %47 = load %struct.isp_prev_device*, %struct.isp_prev_device** %3, align 8
  %48 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %47, i32 0, i32 3
  %49 = load i32, i32* @V4L2_CID_CONTRAST, align 4
  %50 = load i32, i32* @ISPPRV_CONTRAST_LOW, align 4
  %51 = load i32, i32* @ISPPRV_CONTRAST_HIGH, align 4
  %52 = load i32, i32* @ISPPRV_CONTRAST_STEP, align 4
  %53 = load i32, i32* @ISPPRV_CONTRAST_DEF, align 4
  %54 = call i32 @v4l2_ctrl_new_std(i32* %48, i32* @preview_ctrl_ops, i32 %49, i32 %50, i32 %51, i32 %52, i32 %53)
  %55 = load %struct.isp_prev_device*, %struct.isp_prev_device** %3, align 8
  %56 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %55, i32 0, i32 3
  %57 = call i32 @v4l2_ctrl_handler_setup(i32* %56)
  %58 = load %struct.isp_prev_device*, %struct.isp_prev_device** %3, align 8
  %59 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %58, i32 0, i32 3
  %60 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %61 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %60, i32 0, i32 2
  store i32* %59, i32** %61, align 8
  %62 = load i32, i32* @MEDIA_PAD_FL_SINK, align 4
  %63 = load i32, i32* @MEDIA_PAD_FL_MUST_CONNECT, align 4
  %64 = or i32 %62, %63
  %65 = load %struct.media_pad*, %struct.media_pad** %5, align 8
  %66 = load i64, i64* @PREV_PAD_SINK, align 8
  %67 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %65, i64 %66
  %68 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %67, i32 0, i32 0
  store i32 %64, i32* %68, align 4
  %69 = load i32, i32* @MEDIA_PAD_FL_SOURCE, align 4
  %70 = load %struct.media_pad*, %struct.media_pad** %5, align 8
  %71 = load i64, i64* @PREV_PAD_SOURCE, align 8
  %72 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %70, i64 %71
  %73 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %72, i32 0, i32 0
  store i32 %69, i32* %73, align 4
  %74 = load %struct.media_entity*, %struct.media_entity** %6, align 8
  %75 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %74, i32 0, i32 0
  store i32* @preview_media_ops, i32** %75, align 8
  %76 = load %struct.media_entity*, %struct.media_entity** %6, align 8
  %77 = load i32, i32* @PREV_PADS_NUM, align 4
  %78 = load %struct.media_pad*, %struct.media_pad** %5, align 8
  %79 = call i32 @media_entity_pads_init(%struct.media_entity* %76, i32 %77, %struct.media_pad* %78)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %1
  %83 = load i32, i32* %7, align 4
  store i32 %83, i32* %2, align 4
  br label %153

84:                                               ; preds = %1
  %85 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %86 = call i32 @preview_init_formats(%struct.v4l2_subdev* %85, i32* null)
  %87 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 4
  %88 = load %struct.isp_prev_device*, %struct.isp_prev_device** %3, align 8
  %89 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 4
  store i32 %87, i32* %90, align 8
  %91 = load %struct.isp_prev_device*, %struct.isp_prev_device** %3, align 8
  %92 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 3
  store i32* @preview_video_ops, i32** %93, align 8
  %94 = load %struct.isp_prev_device*, %struct.isp_prev_device** %3, align 8
  %95 = call i8* @to_isp_device(%struct.isp_prev_device* %94)
  %96 = load %struct.isp_prev_device*, %struct.isp_prev_device** %3, align 8
  %97 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 2
  store i8* %95, i8** %98, align 8
  %99 = call i32 @PAGE_ALIGN(i32 16777216)
  %100 = mul nsw i32 %99, 2
  %101 = mul nsw i32 %100, 3
  %102 = load %struct.isp_prev_device*, %struct.isp_prev_device** %3, align 8
  %103 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  store i32 %101, i32* %104, align 8
  %105 = load %struct.isp_prev_device*, %struct.isp_prev_device** %3, align 8
  %106 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 1
  store i32 64, i32* %107, align 4
  %108 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %109 = load %struct.isp_prev_device*, %struct.isp_prev_device** %3, align 8
  %110 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 4
  store i32 %108, i32* %111, align 8
  %112 = load %struct.isp_prev_device*, %struct.isp_prev_device** %3, align 8
  %113 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 3
  store i32* @preview_video_ops, i32** %114, align 8
  %115 = load %struct.isp_prev_device*, %struct.isp_prev_device** %3, align 8
  %116 = call i8* @to_isp_device(%struct.isp_prev_device* %115)
  %117 = load %struct.isp_prev_device*, %struct.isp_prev_device** %3, align 8
  %118 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 2
  store i8* %116, i8** %119, align 8
  %120 = call i32 @PAGE_ALIGN(i32 16777216)
  %121 = mul nsw i32 %120, 2
  %122 = mul nsw i32 %121, 3
  %123 = load %struct.isp_prev_device*, %struct.isp_prev_device** %3, align 8
  %124 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 0
  store i32 %122, i32* %125, align 8
  %126 = load %struct.isp_prev_device*, %struct.isp_prev_device** %3, align 8
  %127 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 1
  store i32 32, i32* %128, align 4
  %129 = load %struct.isp_prev_device*, %struct.isp_prev_device** %3, align 8
  %130 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %129, i32 0, i32 1
  %131 = call i32 @omap3isp_video_init(%struct.TYPE_3__* %130, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32 %131, i32* %7, align 4
  %132 = load i32, i32* %7, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %84
  br label %147

135:                                              ; preds = %84
  %136 = load %struct.isp_prev_device*, %struct.isp_prev_device** %3, align 8
  %137 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %136, i32 0, i32 2
  %138 = call i32 @omap3isp_video_init(%struct.TYPE_3__* %137, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32 %138, i32* %7, align 4
  %139 = load i32, i32* %7, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %135
  br label %143

142:                                              ; preds = %135
  store i32 0, i32* %2, align 4
  br label %153

143:                                              ; preds = %141
  %144 = load %struct.isp_prev_device*, %struct.isp_prev_device** %3, align 8
  %145 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %144, i32 0, i32 1
  %146 = call i32 @omap3isp_video_cleanup(%struct.TYPE_3__* %145)
  br label %147

147:                                              ; preds = %143, %134
  %148 = load %struct.isp_prev_device*, %struct.isp_prev_device** %3, align 8
  %149 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %149, i32 0, i32 1
  %151 = call i32 @media_entity_cleanup(%struct.media_entity* %150)
  %152 = load i32, i32* %7, align 4
  store i32 %152, i32* %2, align 4
  br label %153

153:                                              ; preds = %147, %142, %82
  %154 = load i32, i32* %2, align 4
  ret i32 %154
}

declare dso_local i32 @v4l2_subdev_init(%struct.v4l2_subdev*, i32*) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @v4l2_set_subdevdata(%struct.v4l2_subdev*, %struct.isp_prev_device*) #1

declare dso_local i32 @v4l2_ctrl_handler_init(i32*, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std(i32*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_setup(i32*) #1

declare dso_local i32 @media_entity_pads_init(%struct.media_entity*, i32, %struct.media_pad*) #1

declare dso_local i32 @preview_init_formats(%struct.v4l2_subdev*, i32*) #1

declare dso_local i8* @to_isp_device(%struct.isp_prev_device*) #1

declare dso_local i32 @PAGE_ALIGN(i32) #1

declare dso_local i32 @omap3isp_video_init(%struct.TYPE_3__*, i8*) #1

declare dso_local i32 @omap3isp_video_cleanup(%struct.TYPE_3__*) #1

declare dso_local i32 @media_entity_cleanup(%struct.media_entity*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
