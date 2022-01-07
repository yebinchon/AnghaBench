; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-lite.c_fimc_pipeline_validate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-lite.c_fimc_pipeline_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_lite = type { %struct.TYPE_7__, %struct.flite_frame, %struct.v4l2_subdev }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.flite_frame = type { i64, i64 }
%struct.v4l2_subdev = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.media_pad* }
%struct.media_pad = type { i32, i32, i32 }
%struct.v4l2_subdev_format = type { %struct.TYPE_8__, i8*, i32 }
%struct.TYPE_8__ = type { i64, i64, i64 }

@MEDIA_PAD_FL_SINK = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i8* null, align 8
@get_fmt = common dso_local global i32 0, align 4
@ENOIOCTLCMD = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fimc_lite*)* @fimc_pipeline_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fimc_pipeline_validate(%struct.fimc_lite* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fimc_lite*, align 8
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_subdev_format, align 8
  %6 = alloca %struct.v4l2_subdev_format, align 8
  %7 = alloca %struct.media_pad*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.flite_frame*, align 8
  store %struct.fimc_lite* %0, %struct.fimc_lite** %3, align 8
  %10 = load %struct.fimc_lite*, %struct.fimc_lite** %3, align 8
  %11 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %10, i32 0, i32 2
  store %struct.v4l2_subdev* %11, %struct.v4l2_subdev** %4, align 8
  br label %12

12:                                               ; preds = %1, %137
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %14 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.media_pad*, %struct.media_pad** %15, align 8
  %17 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %16, i64 0
  store %struct.media_pad* %17, %struct.media_pad** %7, align 8
  %18 = load %struct.media_pad*, %struct.media_pad** %7, align 8
  %19 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @MEDIA_PAD_FL_SINK, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %12
  br label %138

25:                                               ; preds = %12
  %26 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %27 = load %struct.fimc_lite*, %struct.fimc_lite** %3, align 8
  %28 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %27, i32 0, i32 2
  %29 = icmp eq %struct.v4l2_subdev* %26, %28
  br i1 %29, label %30, label %51

30:                                               ; preds = %25
  %31 = load %struct.fimc_lite*, %struct.fimc_lite** %3, align 8
  %32 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %31, i32 0, i32 1
  store %struct.flite_frame* %32, %struct.flite_frame** %9, align 8
  %33 = load %struct.flite_frame*, %struct.flite_frame** %9, align 8
  %34 = getelementptr inbounds %struct.flite_frame, %struct.flite_frame* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %5, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load %struct.flite_frame*, %struct.flite_frame** %9, align 8
  %39 = getelementptr inbounds %struct.flite_frame, %struct.flite_frame* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %5, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  store i64 %40, i64* %42, align 8
  %43 = load %struct.fimc_lite*, %struct.fimc_lite** %3, align 8
  %44 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %5, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 2
  store i64 %48, i64* %50, align 8
  br label %73

51:                                               ; preds = %25
  %52 = load %struct.media_pad*, %struct.media_pad** %7, align 8
  %53 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %5, i32 0, i32 2
  store i32 %54, i32* %55, align 8
  %56 = load i8*, i8** @V4L2_SUBDEV_FORMAT_ACTIVE, align 8
  %57 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %5, i32 0, i32 1
  store i8* %56, i8** %57, align 8
  %58 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %59 = load %struct.media_pad*, %struct.media_pad** %7, align 8
  %60 = load i32, i32* @get_fmt, align 4
  %61 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %58, %struct.media_pad* %59, i32 %60, i32* null, %struct.v4l2_subdev_format* %5)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %51
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @ENOIOCTLCMD, align 4
  %67 = sub nsw i32 0, %66
  %68 = icmp ne i32 %65, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load i32, i32* @EPIPE, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %139

72:                                               ; preds = %64, %51
  br label %73

73:                                               ; preds = %72, %30
  %74 = load %struct.media_pad*, %struct.media_pad** %7, align 8
  %75 = call %struct.media_pad* @media_entity_remote_pad(%struct.media_pad* %74)
  store %struct.media_pad* %75, %struct.media_pad** %7, align 8
  %76 = load %struct.media_pad*, %struct.media_pad** %7, align 8
  %77 = icmp ne %struct.media_pad* %76, null
  br i1 %77, label %78, label %84

78:                                               ; preds = %73
  %79 = load %struct.media_pad*, %struct.media_pad** %7, align 8
  %80 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @is_media_entity_v4l2_subdev(i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %78, %73
  br label %138

85:                                               ; preds = %78
  %86 = load %struct.media_pad*, %struct.media_pad** %7, align 8
  %87 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = call %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(i32 %88)
  store %struct.v4l2_subdev* %89, %struct.v4l2_subdev** %4, align 8
  %90 = load %struct.media_pad*, %struct.media_pad** %7, align 8
  %91 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %6, i32 0, i32 2
  store i32 %92, i32* %93, align 8
  %94 = load i8*, i8** @V4L2_SUBDEV_FORMAT_ACTIVE, align 8
  %95 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %6, i32 0, i32 1
  store i8* %94, i8** %95, align 8
  %96 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %97 = load %struct.media_pad*, %struct.media_pad** %7, align 8
  %98 = load i32, i32* @get_fmt, align 4
  %99 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %96, %struct.media_pad* %97, i32 %98, i32* null, %struct.v4l2_subdev_format* %6)
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %85
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* @ENOIOCTLCMD, align 4
  %105 = sub nsw i32 0, %104
  %106 = icmp ne i32 %103, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = load i32, i32* @EPIPE, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %2, align 4
  br label %139

110:                                              ; preds = %102, %85
  %111 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %6, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %5, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %113, %116
  br i1 %117, label %134, label %118

118:                                              ; preds = %110
  %119 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %6, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %5, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %121, %124
  br i1 %125, label %134, label %126

126:                                              ; preds = %118
  %127 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %6, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %5, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %129, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %126, %118, %110
  %135 = load i32, i32* @EPIPE, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %2, align 4
  br label %139

137:                                              ; preds = %126
  br label %12

138:                                              ; preds = %84, %24
  store i32 0, i32* %2, align 4
  br label %139

139:                                              ; preds = %138, %134, %107, %69
  %140 = load i32, i32* %2, align 4
  ret i32 %140
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
