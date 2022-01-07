; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispresizer.c_resizer_init_entities.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispresizer.c_resizer_init_entities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_res_device = type { %struct.v4l2_subdev, %struct.TYPE_7__, %struct.TYPE_7__, i32, %struct.media_pad* }
%struct.v4l2_subdev = type { i32, %struct.media_entity, i32, i32, i32* }
%struct.media_entity = type { i32* }
%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__, i8*, i32*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.media_pad = type { i32 }

@RESIZER_INPUT_NONE = common dso_local global i32 0, align 4
@resizer_v4l2_ops = common dso_local global i32 0, align 4
@resizer_v4l2_internal_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"OMAP3 ISP resizer\00", align 1
@V4L2_SUBDEV_FL_HAS_DEVNODE = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SINK = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_MUST_CONNECT = common dso_local global i32 0, align 4
@RESZ_PAD_SINK = common dso_local global i64 0, align 8
@MEDIA_PAD_FL_SOURCE = common dso_local global i32 0, align 4
@RESZ_PAD_SOURCE = common dso_local global i64 0, align 8
@resizer_media_ops = common dso_local global i32 0, align 4
@RESZ_PADS_NUM = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i32 0, align 4
@resizer_video_ops = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"resizer\00", align 1
@MEDIA_ENT_FL_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isp_res_device*)* @resizer_init_entities to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resizer_init_entities(%struct.isp_res_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.isp_res_device*, align 8
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.media_pad*, align 8
  %6 = alloca %struct.media_entity*, align 8
  %7 = alloca i32, align 4
  store %struct.isp_res_device* %0, %struct.isp_res_device** %3, align 8
  %8 = load %struct.isp_res_device*, %struct.isp_res_device** %3, align 8
  %9 = getelementptr inbounds %struct.isp_res_device, %struct.isp_res_device* %8, i32 0, i32 0
  store %struct.v4l2_subdev* %9, %struct.v4l2_subdev** %4, align 8
  %10 = load %struct.isp_res_device*, %struct.isp_res_device** %3, align 8
  %11 = getelementptr inbounds %struct.isp_res_device, %struct.isp_res_device* %10, i32 0, i32 4
  %12 = load %struct.media_pad*, %struct.media_pad** %11, align 8
  store %struct.media_pad* %12, %struct.media_pad** %5, align 8
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %14 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %13, i32 0, i32 1
  store %struct.media_entity* %14, %struct.media_entity** %6, align 8
  %15 = load i32, i32* @RESIZER_INPUT_NONE, align 4
  %16 = load %struct.isp_res_device*, %struct.isp_res_device** %3, align 8
  %17 = getelementptr inbounds %struct.isp_res_device, %struct.isp_res_device* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 8
  %18 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %19 = call i32 @v4l2_subdev_init(%struct.v4l2_subdev* %18, i32* @resizer_v4l2_ops)
  %20 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %21 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %20, i32 0, i32 4
  store i32* @resizer_v4l2_internal_ops, i32** %21, align 8
  %22 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %23 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @strscpy(i32 %24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 4)
  %26 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %27 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %26, i32 0, i32 0
  store i32 65536, i32* %27, align 8
  %28 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %29 = load %struct.isp_res_device*, %struct.isp_res_device** %3, align 8
  %30 = call i32 @v4l2_set_subdevdata(%struct.v4l2_subdev* %28, %struct.isp_res_device* %29)
  %31 = load i32, i32* @V4L2_SUBDEV_FL_HAS_DEVNODE, align 4
  %32 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %33 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 8
  %36 = load i32, i32* @MEDIA_PAD_FL_SINK, align 4
  %37 = load i32, i32* @MEDIA_PAD_FL_MUST_CONNECT, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.media_pad*, %struct.media_pad** %5, align 8
  %40 = load i64, i64* @RESZ_PAD_SINK, align 8
  %41 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %39, i64 %40
  %42 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %41, i32 0, i32 0
  store i32 %38, i32* %42, align 4
  %43 = load i32, i32* @MEDIA_PAD_FL_SOURCE, align 4
  %44 = load %struct.media_pad*, %struct.media_pad** %5, align 8
  %45 = load i64, i64* @RESZ_PAD_SOURCE, align 8
  %46 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %44, i64 %45
  %47 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %46, i32 0, i32 0
  store i32 %43, i32* %47, align 4
  %48 = load %struct.media_entity*, %struct.media_entity** %6, align 8
  %49 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %48, i32 0, i32 0
  store i32* @resizer_media_ops, i32** %49, align 8
  %50 = load %struct.media_entity*, %struct.media_entity** %6, align 8
  %51 = load i32, i32* @RESZ_PADS_NUM, align 4
  %52 = load %struct.media_pad*, %struct.media_pad** %5, align 8
  %53 = call i32 @media_entity_pads_init(%struct.media_entity* %50, i32 %51, %struct.media_pad* %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %1
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %2, align 4
  br label %135

58:                                               ; preds = %1
  %59 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %60 = call i32 @resizer_init_formats(%struct.v4l2_subdev* %59, i32* null)
  %61 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 4
  %62 = load %struct.isp_res_device*, %struct.isp_res_device** %3, align 8
  %63 = getelementptr inbounds %struct.isp_res_device, %struct.isp_res_device* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 5
  store i32 %61, i32* %64, align 8
  %65 = load %struct.isp_res_device*, %struct.isp_res_device** %3, align 8
  %66 = getelementptr inbounds %struct.isp_res_device, %struct.isp_res_device* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 4
  store i32* @resizer_video_ops, i32** %67, align 8
  %68 = load %struct.isp_res_device*, %struct.isp_res_device** %3, align 8
  %69 = call i8* @to_isp_device(%struct.isp_res_device* %68)
  %70 = load %struct.isp_res_device*, %struct.isp_res_device** %3, align 8
  %71 = getelementptr inbounds %struct.isp_res_device, %struct.isp_res_device* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 3
  store i8* %69, i8** %72, align 8
  %73 = call i32 @PAGE_ALIGN(i32 16777216)
  %74 = mul nsw i32 %73, 2
  %75 = mul nsw i32 %74, 3
  %76 = load %struct.isp_res_device*, %struct.isp_res_device** %3, align 8
  %77 = getelementptr inbounds %struct.isp_res_device, %struct.isp_res_device* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  store i32 %75, i32* %78, align 8
  %79 = load %struct.isp_res_device*, %struct.isp_res_device** %3, align 8
  %80 = getelementptr inbounds %struct.isp_res_device, %struct.isp_res_device* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 1
  store i32 32, i32* %81, align 4
  %82 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %83 = load %struct.isp_res_device*, %struct.isp_res_device** %3, align 8
  %84 = getelementptr inbounds %struct.isp_res_device, %struct.isp_res_device* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 5
  store i32 %82, i32* %85, align 8
  %86 = load %struct.isp_res_device*, %struct.isp_res_device** %3, align 8
  %87 = getelementptr inbounds %struct.isp_res_device, %struct.isp_res_device* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 4
  store i32* @resizer_video_ops, i32** %88, align 8
  %89 = load %struct.isp_res_device*, %struct.isp_res_device** %3, align 8
  %90 = call i8* @to_isp_device(%struct.isp_res_device* %89)
  %91 = load %struct.isp_res_device*, %struct.isp_res_device** %3, align 8
  %92 = getelementptr inbounds %struct.isp_res_device, %struct.isp_res_device* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 3
  store i8* %90, i8** %93, align 8
  %94 = call i32 @PAGE_ALIGN(i32 16777216)
  %95 = mul nsw i32 %94, 2
  %96 = mul nsw i32 %95, 3
  %97 = load %struct.isp_res_device*, %struct.isp_res_device** %3, align 8
  %98 = getelementptr inbounds %struct.isp_res_device, %struct.isp_res_device* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  store i32 %96, i32* %99, align 8
  %100 = load %struct.isp_res_device*, %struct.isp_res_device** %3, align 8
  %101 = getelementptr inbounds %struct.isp_res_device, %struct.isp_res_device* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 1
  store i32 32, i32* %102, align 4
  %103 = load %struct.isp_res_device*, %struct.isp_res_device** %3, align 8
  %104 = getelementptr inbounds %struct.isp_res_device, %struct.isp_res_device* %103, i32 0, i32 1
  %105 = call i32 @omap3isp_video_init(%struct.TYPE_7__* %104, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32 %105, i32* %7, align 4
  %106 = load i32, i32* %7, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %58
  br label %129

109:                                              ; preds = %58
  %110 = load %struct.isp_res_device*, %struct.isp_res_device** %3, align 8
  %111 = getelementptr inbounds %struct.isp_res_device, %struct.isp_res_device* %110, i32 0, i32 2
  %112 = call i32 @omap3isp_video_init(%struct.TYPE_7__* %111, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32 %112, i32* %7, align 4
  %113 = load i32, i32* %7, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %109
  br label %125

116:                                              ; preds = %109
  %117 = load i32, i32* @MEDIA_ENT_FL_DEFAULT, align 4
  %118 = load %struct.isp_res_device*, %struct.isp_res_device** %3, align 8
  %119 = getelementptr inbounds %struct.isp_res_device, %struct.isp_res_device* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = or i32 %123, %117
  store i32 %124, i32* %122, align 8
  store i32 0, i32* %2, align 4
  br label %135

125:                                              ; preds = %115
  %126 = load %struct.isp_res_device*, %struct.isp_res_device** %3, align 8
  %127 = getelementptr inbounds %struct.isp_res_device, %struct.isp_res_device* %126, i32 0, i32 1
  %128 = call i32 @omap3isp_video_cleanup(%struct.TYPE_7__* %127)
  br label %129

129:                                              ; preds = %125, %108
  %130 = load %struct.isp_res_device*, %struct.isp_res_device** %3, align 8
  %131 = getelementptr inbounds %struct.isp_res_device, %struct.isp_res_device* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %131, i32 0, i32 1
  %133 = call i32 @media_entity_cleanup(%struct.media_entity* %132)
  %134 = load i32, i32* %7, align 4
  store i32 %134, i32* %2, align 4
  br label %135

135:                                              ; preds = %129, %116, %56
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local i32 @v4l2_subdev_init(%struct.v4l2_subdev*, i32*) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @v4l2_set_subdevdata(%struct.v4l2_subdev*, %struct.isp_res_device*) #1

declare dso_local i32 @media_entity_pads_init(%struct.media_entity*, i32, %struct.media_pad*) #1

declare dso_local i32 @resizer_init_formats(%struct.v4l2_subdev*, i32*) #1

declare dso_local i8* @to_isp_device(%struct.isp_res_device*) #1

declare dso_local i32 @PAGE_ALIGN(i32) #1

declare dso_local i32 @omap3isp_video_init(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @omap3isp_video_cleanup(%struct.TYPE_7__*) #1

declare dso_local i32 @media_entity_cleanup(%struct.media_entity*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
