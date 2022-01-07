; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-dma.c_rvin_set_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-dma.c_rvin_set_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvin_dev = type { %struct.TYPE_12__, i32, %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_12__ = type { %struct.TYPE_13__, %struct.media_pipeline }
%struct.TYPE_13__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.media_device* }
%struct.media_device = type { i32 }
%struct.media_pipeline = type { i32 }
%struct.TYPE_9__ = type { %struct.v4l2_subdev* }
%struct.v4l2_subdev = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.media_pipeline* }
%struct.TYPE_8__ = type { i32 }
%struct.media_pad = type { i32 }

@video = common dso_local global i32 0, align 4
@s_stream = common dso_local global i32 0, align 4
@ENOIOCTLCMD = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rvin_dev*, i32)* @rvin_set_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rvin_set_stream(%struct.rvin_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rvin_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.media_pipeline*, align 8
  %7 = alloca %struct.media_device*, align 8
  %8 = alloca %struct.v4l2_subdev*, align 8
  %9 = alloca %struct.media_pad*, align 8
  %10 = alloca i32, align 4
  store %struct.rvin_dev* %0, %struct.rvin_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.rvin_dev*, %struct.rvin_dev** %4, align 8
  %12 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %11, i32 0, i32 3
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %36, label %17

17:                                               ; preds = %2
  %18 = load %struct.rvin_dev*, %struct.rvin_dev** %4, align 8
  %19 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %18, i32 0, i32 2
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %21, align 8
  %23 = load i32, i32* @video, align 4
  %24 = load i32, i32* @s_stream, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %22, i32 %23, i32 %24, i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @ENOIOCTLCMD, align 4
  %29 = sub nsw i32 0, %28
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %17
  br label %34

32:                                               ; preds = %17
  %33 = load i32, i32* %10, align 4
  br label %34

34:                                               ; preds = %32, %31
  %35 = phi i32 [ 0, %31 ], [ %33, %32 ]
  store i32 %35, i32* %3, align 4
  br label %128

36:                                               ; preds = %2
  %37 = load %struct.rvin_dev*, %struct.rvin_dev** %4, align 8
  %38 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %37, i32 0, i32 1
  %39 = call %struct.media_pad* @media_entity_remote_pad(i32* %38)
  store %struct.media_pad* %39, %struct.media_pad** %9, align 8
  %40 = load %struct.media_pad*, %struct.media_pad** %9, align 8
  %41 = icmp ne %struct.media_pad* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* @EPIPE, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %128

45:                                               ; preds = %36
  %46 = load %struct.media_pad*, %struct.media_pad** %9, align 8
  %47 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(i32 %48)
  store %struct.v4l2_subdev* %49, %struct.v4l2_subdev** %8, align 8
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %61, label %52

52:                                               ; preds = %45
  %53 = load %struct.rvin_dev*, %struct.rvin_dev** %4, align 8
  %54 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = call i32 @media_pipeline_stop(%struct.TYPE_13__* %55)
  %57 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %58 = load i32, i32* @video, align 4
  %59 = load i32, i32* @s_stream, align 4
  %60 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %57, i32 %58, i32 %59, i32 0)
  store i32 %60, i32* %3, align 4
  br label %128

61:                                               ; preds = %45
  %62 = load %struct.rvin_dev*, %struct.rvin_dev** %4, align 8
  %63 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %64 = load %struct.media_pad*, %struct.media_pad** %9, align 8
  %65 = call i32 @rvin_mc_validate_format(%struct.rvin_dev* %62, %struct.v4l2_subdev* %63, %struct.media_pad* %64)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = load i32, i32* %10, align 4
  store i32 %69, i32* %3, align 4
  br label %128

70:                                               ; preds = %61
  %71 = load %struct.rvin_dev*, %struct.rvin_dev** %4, align 8
  %72 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load %struct.media_device*, %struct.media_device** %75, align 8
  store %struct.media_device* %76, %struct.media_device** %7, align 8
  %77 = load %struct.media_device*, %struct.media_device** %7, align 8
  %78 = getelementptr inbounds %struct.media_device, %struct.media_device* %77, i32 0, i32 0
  %79 = call i32 @mutex_lock(i32* %78)
  %80 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %81 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = load %struct.media_pipeline*, %struct.media_pipeline** %82, align 8
  %84 = icmp ne %struct.media_pipeline* %83, null
  br i1 %84, label %85, label %90

85:                                               ; preds = %70
  %86 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %87 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = load %struct.media_pipeline*, %struct.media_pipeline** %88, align 8
  br label %94

90:                                               ; preds = %70
  %91 = load %struct.rvin_dev*, %struct.rvin_dev** %4, align 8
  %92 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 1
  br label %94

94:                                               ; preds = %90, %85
  %95 = phi %struct.media_pipeline* [ %89, %85 ], [ %93, %90 ]
  store %struct.media_pipeline* %95, %struct.media_pipeline** %6, align 8
  %96 = load %struct.rvin_dev*, %struct.rvin_dev** %4, align 8
  %97 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = load %struct.media_pipeline*, %struct.media_pipeline** %6, align 8
  %100 = call i32 @__media_pipeline_start(%struct.TYPE_13__* %98, %struct.media_pipeline* %99)
  store i32 %100, i32* %10, align 4
  %101 = load %struct.media_device*, %struct.media_device** %7, align 8
  %102 = getelementptr inbounds %struct.media_device, %struct.media_device* %101, i32 0, i32 0
  %103 = call i32 @mutex_unlock(i32* %102)
  %104 = load i32, i32* %10, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %94
  %107 = load i32, i32* %10, align 4
  store i32 %107, i32* %3, align 4
  br label %128

108:                                              ; preds = %94
  %109 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %110 = load i32, i32* @video, align 4
  %111 = load i32, i32* @s_stream, align 4
  %112 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %109, i32 %110, i32 %111, i32 1)
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* @ENOIOCTLCMD, align 4
  %115 = sub nsw i32 0, %114
  %116 = icmp eq i32 %113, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %108
  store i32 0, i32* %10, align 4
  br label %118

118:                                              ; preds = %117, %108
  %119 = load i32, i32* %10, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %118
  %122 = load %struct.rvin_dev*, %struct.rvin_dev** %4, align 8
  %123 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 0
  %125 = call i32 @media_pipeline_stop(%struct.TYPE_13__* %124)
  br label %126

126:                                              ; preds = %121, %118
  %127 = load i32, i32* %10, align 4
  store i32 %127, i32* %3, align 4
  br label %128

128:                                              ; preds = %126, %106, %68, %52, %42, %34
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local i32 @v4l2_subdev_call(%struct.v4l2_subdev*, i32, i32, i32) #1

declare dso_local %struct.media_pad* @media_entity_remote_pad(i32*) #1

declare dso_local %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(i32) #1

declare dso_local i32 @media_pipeline_stop(%struct.TYPE_13__*) #1

declare dso_local i32 @rvin_mc_validate_format(%struct.rvin_dev*, %struct.v4l2_subdev*, %struct.media_pad*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__media_pipeline_start(%struct.TYPE_13__*, %struct.media_pipeline*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
