; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispvideo.c_isp_video_get_graph_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispvideo.c_isp_video_get_graph_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_video = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.media_entity }
%struct.media_entity = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.media_device* }
%struct.media_device = type { i32 }
%struct.isp_pipeline = type { %struct.isp_video*, %struct.isp_video*, i32 }
%struct.media_graph = type { i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@EPIPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isp_video*, %struct.isp_pipeline*)* @isp_video_get_graph_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isp_video_get_graph_data(%struct.isp_video* %0, %struct.isp_pipeline* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.isp_video*, align 8
  %5 = alloca %struct.isp_pipeline*, align 8
  %6 = alloca %struct.media_graph, align 4
  %7 = alloca %struct.media_entity*, align 8
  %8 = alloca %struct.media_device*, align 8
  %9 = alloca %struct.isp_video*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.isp_video*, align 8
  store %struct.isp_video* %0, %struct.isp_video** %4, align 8
  store %struct.isp_pipeline* %1, %struct.isp_pipeline** %5, align 8
  %12 = load %struct.isp_video*, %struct.isp_video** %4, align 8
  %13 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store %struct.media_entity* %14, %struct.media_entity** %7, align 8
  %15 = load %struct.media_entity*, %struct.media_entity** %7, align 8
  %16 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.media_device*, %struct.media_device** %17, align 8
  store %struct.media_device* %18, %struct.media_device** %8, align 8
  store %struct.isp_video* null, %struct.isp_video** %9, align 8
  %19 = load %struct.media_device*, %struct.media_device** %8, align 8
  %20 = getelementptr inbounds %struct.media_device, %struct.media_device* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.media_device*, %struct.media_device** %8, align 8
  %23 = call i32 @media_graph_walk_init(%struct.media_graph* %6, %struct.media_device* %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %2
  %27 = load %struct.media_device*, %struct.media_device** %8, align 8
  %28 = getelementptr inbounds %struct.media_device, %struct.media_device* %27, i32 0, i32 0
  %29 = call i32 @mutex_unlock(i32* %28)
  %30 = load i32, i32* %10, align 4
  store i32 %30, i32* %3, align 4
  br label %102

31:                                               ; preds = %2
  %32 = load %struct.media_entity*, %struct.media_entity** %7, align 8
  %33 = call i32 @media_graph_walk_start(%struct.media_graph* %6, %struct.media_entity* %32)
  br label %34

34:                                               ; preds = %70, %56, %51, %44, %31
  %35 = call %struct.media_entity* @media_graph_walk_next(%struct.media_graph* %6)
  store %struct.media_entity* %35, %struct.media_entity** %7, align 8
  %36 = icmp ne %struct.media_entity* %35, null
  br i1 %36, label %37, label %71

37:                                               ; preds = %34
  %38 = load %struct.isp_pipeline*, %struct.isp_pipeline** %5, align 8
  %39 = getelementptr inbounds %struct.isp_pipeline, %struct.isp_pipeline* %38, i32 0, i32 2
  %40 = load %struct.media_entity*, %struct.media_entity** %7, align 8
  %41 = call i32 @media_entity_enum_set(i32* %39, %struct.media_entity* %40)
  %42 = load %struct.isp_video*, %struct.isp_video** %9, align 8
  %43 = icmp ne %struct.isp_video* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %34

45:                                               ; preds = %37
  %46 = load %struct.media_entity*, %struct.media_entity** %7, align 8
  %47 = load %struct.isp_video*, %struct.isp_video** %4, align 8
  %48 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = icmp eq %struct.media_entity* %46, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %34

52:                                               ; preds = %45
  %53 = load %struct.media_entity*, %struct.media_entity** %7, align 8
  %54 = call i32 @is_media_entity_v4l2_video_device(%struct.media_entity* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %52
  br label %34

57:                                               ; preds = %52
  %58 = load %struct.media_entity*, %struct.media_entity** %7, align 8
  %59 = call i32 @media_entity_to_video_device(%struct.media_entity* %58)
  %60 = call %struct.isp_video* @to_isp_video(i32 %59)
  store %struct.isp_video* %60, %struct.isp_video** %11, align 8
  %61 = load %struct.isp_video*, %struct.isp_video** %11, align 8
  %62 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.isp_video*, %struct.isp_video** %4, align 8
  %65 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %63, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %57
  %69 = load %struct.isp_video*, %struct.isp_video** %11, align 8
  store %struct.isp_video* %69, %struct.isp_video** %9, align 8
  br label %70

70:                                               ; preds = %68, %57
  br label %34

71:                                               ; preds = %34
  %72 = load %struct.media_device*, %struct.media_device** %8, align 8
  %73 = getelementptr inbounds %struct.media_device, %struct.media_device* %72, i32 0, i32 0
  %74 = call i32 @mutex_unlock(i32* %73)
  %75 = call i32 @media_graph_walk_cleanup(%struct.media_graph* %6)
  %76 = load %struct.isp_video*, %struct.isp_video** %4, align 8
  %77 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %71
  %82 = load %struct.isp_video*, %struct.isp_video** %9, align 8
  %83 = load %struct.isp_pipeline*, %struct.isp_pipeline** %5, align 8
  %84 = getelementptr inbounds %struct.isp_pipeline, %struct.isp_pipeline* %83, i32 0, i32 1
  store %struct.isp_video* %82, %struct.isp_video** %84, align 8
  %85 = load %struct.isp_video*, %struct.isp_video** %4, align 8
  %86 = load %struct.isp_pipeline*, %struct.isp_pipeline** %5, align 8
  %87 = getelementptr inbounds %struct.isp_pipeline, %struct.isp_pipeline* %86, i32 0, i32 0
  store %struct.isp_video* %85, %struct.isp_video** %87, align 8
  br label %101

88:                                               ; preds = %71
  %89 = load %struct.isp_video*, %struct.isp_video** %9, align 8
  %90 = icmp eq %struct.isp_video* %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load i32, i32* @EPIPE, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %3, align 4
  br label %102

94:                                               ; preds = %88
  %95 = load %struct.isp_video*, %struct.isp_video** %4, align 8
  %96 = load %struct.isp_pipeline*, %struct.isp_pipeline** %5, align 8
  %97 = getelementptr inbounds %struct.isp_pipeline, %struct.isp_pipeline* %96, i32 0, i32 1
  store %struct.isp_video* %95, %struct.isp_video** %97, align 8
  %98 = load %struct.isp_video*, %struct.isp_video** %9, align 8
  %99 = load %struct.isp_pipeline*, %struct.isp_pipeline** %5, align 8
  %100 = getelementptr inbounds %struct.isp_pipeline, %struct.isp_pipeline* %99, i32 0, i32 0
  store %struct.isp_video* %98, %struct.isp_video** %100, align 8
  br label %101

101:                                              ; preds = %94, %81
  store i32 0, i32* %3, align 4
  br label %102

102:                                              ; preds = %101, %91, %26
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @media_graph_walk_init(%struct.media_graph*, %struct.media_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @media_graph_walk_start(%struct.media_graph*, %struct.media_entity*) #1

declare dso_local %struct.media_entity* @media_graph_walk_next(%struct.media_graph*) #1

declare dso_local i32 @media_entity_enum_set(i32*, %struct.media_entity*) #1

declare dso_local i32 @is_media_entity_v4l2_video_device(%struct.media_entity*) #1

declare dso_local %struct.isp_video* @to_isp_video(i32) #1

declare dso_local i32 @media_entity_to_video_device(%struct.media_entity*) #1

declare dso_local i32 @media_graph_walk_cleanup(%struct.media_graph*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
