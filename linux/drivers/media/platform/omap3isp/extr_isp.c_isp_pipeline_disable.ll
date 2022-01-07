; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isp.c_isp_pipeline_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isp.c_isp_pipeline_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_pipeline = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.isp_device* }
%struct.TYPE_9__ = type { %struct.media_entity }
%struct.media_entity = type { %struct.media_pad* }
%struct.media_pad = type { i32, %struct.media_entity* }
%struct.isp_device = type { i64, i32, i32, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_16__ = type { %struct.v4l2_subdev }
%struct.v4l2_subdev = type { i64, i32, i32 }
%struct.TYPE_15__ = type { %struct.v4l2_subdev }
%struct.TYPE_14__ = type { %struct.v4l2_subdev }
%struct.TYPE_13__ = type { %struct.v4l2_subdev }
%struct.TYPE_12__ = type { %struct.v4l2_subdev }
%struct.TYPE_11__ = type { %struct.v4l2_subdev }

@MEDIA_PAD_FL_SINK = common dso_local global i32 0, align 4
@video = common dso_local global i32 0, align 4
@s_stream = common dso_local global i32 0, align 4
@isp_pipeline_wait_resizer = common dso_local global i32 0, align 4
@isp_pipeline_wait_preview = common dso_local global i32 0, align 4
@isp_pipeline_wait_ccdc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Unable to stop %s\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isp_pipeline*)* @isp_pipeline_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isp_pipeline_disable(%struct.isp_pipeline* %0) #0 {
  %2 = alloca %struct.isp_pipeline*, align 8
  %3 = alloca %struct.isp_device*, align 8
  %4 = alloca %struct.media_entity*, align 8
  %5 = alloca %struct.media_pad*, align 8
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.isp_pipeline* %0, %struct.isp_pipeline** %2, align 8
  %9 = load %struct.isp_pipeline*, %struct.isp_pipeline** %2, align 8
  %10 = getelementptr inbounds %struct.isp_pipeline, %struct.isp_pipeline* %9, i32 0, i32 0
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  %13 = load %struct.isp_device*, %struct.isp_device** %12, align 8
  store %struct.isp_device* %13, %struct.isp_device** %3, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.isp_pipeline*, %struct.isp_pipeline** %2, align 8
  %15 = getelementptr inbounds %struct.isp_pipeline, %struct.isp_pipeline* %14, i32 0, i32 0
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  store %struct.media_entity* %18, %struct.media_entity** %4, align 8
  br label %19

19:                                               ; preds = %1, %151
  %20 = load %struct.media_entity*, %struct.media_entity** %4, align 8
  %21 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %20, i32 0, i32 0
  %22 = load %struct.media_pad*, %struct.media_pad** %21, align 8
  %23 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %22, i64 0
  store %struct.media_pad* %23, %struct.media_pad** %5, align 8
  %24 = load %struct.media_pad*, %struct.media_pad** %5, align 8
  %25 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @MEDIA_PAD_FL_SINK, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %19
  br label %152

31:                                               ; preds = %19
  %32 = load %struct.media_pad*, %struct.media_pad** %5, align 8
  %33 = call %struct.media_pad* @media_entity_remote_pad(%struct.media_pad* %32)
  store %struct.media_pad* %33, %struct.media_pad** %5, align 8
  %34 = load %struct.media_pad*, %struct.media_pad** %5, align 8
  %35 = icmp ne %struct.media_pad* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load %struct.media_pad*, %struct.media_pad** %5, align 8
  %38 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %37, i32 0, i32 1
  %39 = load %struct.media_entity*, %struct.media_entity** %38, align 8
  %40 = call i32 @is_media_entity_v4l2_subdev(%struct.media_entity* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %36, %31
  br label %152

43:                                               ; preds = %36
  %44 = load %struct.media_pad*, %struct.media_pad** %5, align 8
  %45 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %44, i32 0, i32 1
  %46 = load %struct.media_entity*, %struct.media_entity** %45, align 8
  store %struct.media_entity* %46, %struct.media_entity** %4, align 8
  %47 = load %struct.media_entity*, %struct.media_entity** %4, align 8
  %48 = call %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(%struct.media_entity* %47)
  store %struct.v4l2_subdev* %48, %struct.v4l2_subdev** %6, align 8
  %49 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %50 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %51 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 0
  %53 = icmp eq %struct.v4l2_subdev* %49, %52
  br i1 %53, label %54, label %73

54:                                               ; preds = %43
  %55 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %56 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %55, i32 0, i32 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i32, i32* @video, align 4
  %59 = load i32, i32* @s_stream, align 4
  %60 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %57, i32 %58, i32 %59, i32 0)
  %61 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %62 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %61, i32 0, i32 7
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = load i32, i32* @video, align 4
  %65 = load i32, i32* @s_stream, align 4
  %66 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %63, i32 %64, i32 %65, i32 0)
  %67 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %68 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %67, i32 0, i32 6
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = load i32, i32* @video, align 4
  %71 = load i32, i32* @s_stream, align 4
  %72 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %69, i32 %70, i32 %71, i32 0)
  br label %73

73:                                               ; preds = %54, %43
  %74 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %75 = load i32, i32* @video, align 4
  %76 = load i32, i32* @s_stream, align 4
  %77 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %74, i32 %75, i32 %76, i32 0)
  store i32 %77, i32* %8, align 4
  %78 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %79 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %80 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %79, i32 0, i32 5
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  %82 = icmp eq %struct.v4l2_subdev* %78, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %73
  %84 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %85 = load i32, i32* @isp_pipeline_wait_resizer, align 4
  %86 = call i32 @isp_pipeline_wait(%struct.isp_device* %84, i32 %85)
  %87 = load i32, i32* %8, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %8, align 4
  br label %115

89:                                               ; preds = %73
  %90 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %91 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %92 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 0
  %94 = icmp eq %struct.v4l2_subdev* %90, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %89
  %96 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %97 = load i32, i32* @isp_pipeline_wait_preview, align 4
  %98 = call i32 @isp_pipeline_wait(%struct.isp_device* %96, i32 %97)
  %99 = load i32, i32* %8, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %8, align 4
  br label %114

101:                                              ; preds = %89
  %102 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %103 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %104 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %103, i32 0, i32 4
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 0
  %106 = icmp eq %struct.v4l2_subdev* %102, %105
  br i1 %106, label %107, label %113

107:                                              ; preds = %101
  %108 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %109 = load i32, i32* @isp_pipeline_wait_ccdc, align 4
  %110 = call i32 @isp_pipeline_wait(%struct.isp_device* %108, i32 %109)
  %111 = load i32, i32* %8, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %8, align 4
  br label %113

113:                                              ; preds = %107, %101
  br label %114

114:                                              ; preds = %113, %95
  br label %115

115:                                              ; preds = %114, %83
  %116 = load i32, i32* %8, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %142

118:                                              ; preds = %115
  %119 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %120 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %123 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @dev_info(i64 %121, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %124)
  %126 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %127 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %126, i32 0, i32 1
  store i32 1, i32* %127, align 8
  %128 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %129 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %130 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %129, i32 0, i32 3
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 0
  %132 = icmp eq %struct.v4l2_subdev* %128, %131
  br i1 %132, label %133, label %139

133:                                              ; preds = %118
  %134 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %135 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %134, i32 0, i32 2
  %136 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %137 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %136, i32 0, i32 1
  %138 = call i32 @media_entity_enum_set(i32* %135, i32* %137)
  br label %139

139:                                              ; preds = %133, %118
  %140 = load i32, i32* @ETIMEDOUT, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %7, align 4
  br label %142

142:                                              ; preds = %139, %115
  %143 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %144 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %147 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %145, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %142
  br label %152

151:                                              ; preds = %142
  br label %19

152:                                              ; preds = %150, %42, %30
  %153 = load i32, i32* %7, align 4
  ret i32 %153
}

declare dso_local %struct.media_pad* @media_entity_remote_pad(%struct.media_pad*) #1

declare dso_local i32 @is_media_entity_v4l2_subdev(%struct.media_entity*) #1

declare dso_local %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(%struct.media_entity*) #1

declare dso_local i32 @v4l2_subdev_call(%struct.v4l2_subdev*, i32, i32, i32) #1

declare dso_local i32 @isp_pipeline_wait(%struct.isp_device*, i32) #1

declare dso_local i32 @dev_info(i64, i8*, i32) #1

declare dso_local i32 @media_entity_enum_set(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
