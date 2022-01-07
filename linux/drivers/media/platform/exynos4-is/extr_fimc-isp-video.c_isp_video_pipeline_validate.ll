; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-isp-video.c_isp_video_pipeline_validate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-isp-video.c_isp_video_pipeline_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_isp = type { %struct.v4l2_subdev }
%struct.v4l2_subdev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.media_pad* }
%struct.media_pad = type { i32, i32, i32 }
%struct.v4l2_subdev_format = type { %struct.TYPE_4__, i8*, i32 }
%struct.TYPE_4__ = type { i64, i64, i64 }

@MEDIA_PAD_FL_SINK = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i8* null, align 8
@get_fmt = common dso_local global i32 0, align 4
@ENOIOCTLCMD = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fimc_isp*)* @isp_video_pipeline_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isp_video_pipeline_validate(%struct.fimc_isp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fimc_isp*, align 8
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_subdev_format, align 8
  %6 = alloca %struct.v4l2_subdev_format, align 8
  %7 = alloca %struct.media_pad*, align 8
  %8 = alloca i32, align 4
  store %struct.fimc_isp* %0, %struct.fimc_isp** %3, align 8
  %9 = load %struct.fimc_isp*, %struct.fimc_isp** %3, align 8
  %10 = getelementptr inbounds %struct.fimc_isp, %struct.fimc_isp* %9, i32 0, i32 0
  store %struct.v4l2_subdev* %10, %struct.v4l2_subdev** %4, align 8
  br label %11

11:                                               ; preds = %1, %109
  %12 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %13 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.media_pad*, %struct.media_pad** %14, align 8
  %16 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %15, i64 0
  store %struct.media_pad* %16, %struct.media_pad** %7, align 8
  %17 = load %struct.media_pad*, %struct.media_pad** %7, align 8
  %18 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @MEDIA_PAD_FL_SINK, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %11
  br label %110

24:                                               ; preds = %11
  %25 = load %struct.media_pad*, %struct.media_pad** %7, align 8
  %26 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %5, i32 0, i32 2
  store i32 %27, i32* %28, align 8
  %29 = load i8*, i8** @V4L2_SUBDEV_FORMAT_ACTIVE, align 8
  %30 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %5, i32 0, i32 1
  store i8* %29, i8** %30, align 8
  %31 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %32 = load %struct.media_pad*, %struct.media_pad** %7, align 8
  %33 = load i32, i32* @get_fmt, align 4
  %34 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %31, %struct.media_pad* %32, i32 %33, i32* null, %struct.v4l2_subdev_format* %5)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %24
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @ENOIOCTLCMD, align 4
  %40 = sub nsw i32 0, %39
  %41 = icmp ne i32 %38, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* @EPIPE, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %111

45:                                               ; preds = %37, %24
  %46 = load %struct.media_pad*, %struct.media_pad** %7, align 8
  %47 = call %struct.media_pad* @media_entity_remote_pad(%struct.media_pad* %46)
  store %struct.media_pad* %47, %struct.media_pad** %7, align 8
  %48 = load %struct.media_pad*, %struct.media_pad** %7, align 8
  %49 = icmp ne %struct.media_pad* %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = load %struct.media_pad*, %struct.media_pad** %7, align 8
  %52 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @is_media_entity_v4l2_subdev(i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %50, %45
  br label %110

57:                                               ; preds = %50
  %58 = load %struct.media_pad*, %struct.media_pad** %7, align 8
  %59 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(i32 %60)
  store %struct.v4l2_subdev* %61, %struct.v4l2_subdev** %4, align 8
  %62 = load %struct.media_pad*, %struct.media_pad** %7, align 8
  %63 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %6, i32 0, i32 2
  store i32 %64, i32* %65, align 8
  %66 = load i8*, i8** @V4L2_SUBDEV_FORMAT_ACTIVE, align 8
  %67 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %6, i32 0, i32 1
  store i8* %66, i8** %67, align 8
  %68 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %69 = load %struct.media_pad*, %struct.media_pad** %7, align 8
  %70 = load i32, i32* @get_fmt, align 4
  %71 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %68, %struct.media_pad* %69, i32 %70, i32* null, %struct.v4l2_subdev_format* %6)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %57
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @ENOIOCTLCMD, align 4
  %77 = sub nsw i32 0, %76
  %78 = icmp ne i32 %75, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load i32, i32* @EPIPE, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %2, align 4
  br label %111

82:                                               ; preds = %74, %57
  %83 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %6, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %5, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %85, %88
  br i1 %89, label %106, label %90

90:                                               ; preds = %82
  %91 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %6, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %5, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %93, %96
  br i1 %97, label %106, label %98

98:                                               ; preds = %90
  %99 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %6, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %5, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %101, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %98, %90, %82
  %107 = load i32, i32* @EPIPE, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %2, align 4
  br label %111

109:                                              ; preds = %98
  br label %11

110:                                              ; preds = %56, %23
  store i32 0, i32* %2, align 4
  br label %111

111:                                              ; preds = %110, %106, %79, %42
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local i32 @v4l2_subdev_call(%struct.v4l2_subdev*, %struct.media_pad*, i32, i32*, %struct.v4l2_subdev_format*) #1

declare dso_local %struct.media_pad* @media_entity_remote_pad(%struct.media_pad*) #1

declare dso_local i32 @is_media_entity_v4l2_subdev(i32) #1

declare dso_local %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
