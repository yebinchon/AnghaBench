; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_video.c_vsp1_video_pipeline_build.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_video.c_vsp1_video_pipeline_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsp1_pipeline = type { i64, %struct.vsp1_rwpf*, %struct.vsp1_rwpf**, %struct.vsp1_entity*, %struct.vsp1_entity*, %struct.vsp1_entity*, %struct.vsp1_entity*, i32 }
%struct.vsp1_rwpf = type { %struct.TYPE_10__*, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64 }
%struct.vsp1_entity = type { i32, %struct.vsp1_pipeline*, i32 }
%struct.vsp1_video = type { %struct.TYPE_12__*, %struct.TYPE_7__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_7__ = type { %struct.media_entity }
%struct.media_entity = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.media_device* }
%struct.media_device = type { i32 }
%struct.media_graph = type { i32 }
%struct.v4l2_subdev = type { i32 }

@EPIPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vsp1_pipeline*, %struct.vsp1_video*)* @vsp1_video_pipeline_build to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vsp1_video_pipeline_build(%struct.vsp1_pipeline* %0, %struct.vsp1_video* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vsp1_pipeline*, align 8
  %5 = alloca %struct.vsp1_video*, align 8
  %6 = alloca %struct.media_graph, align 4
  %7 = alloca %struct.media_entity*, align 8
  %8 = alloca %struct.media_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.v4l2_subdev*, align 8
  %12 = alloca %struct.vsp1_rwpf*, align 8
  %13 = alloca %struct.vsp1_entity*, align 8
  store %struct.vsp1_pipeline* %0, %struct.vsp1_pipeline** %4, align 8
  store %struct.vsp1_video* %1, %struct.vsp1_video** %5, align 8
  %14 = load %struct.vsp1_video*, %struct.vsp1_video** %5, align 8
  %15 = getelementptr inbounds %struct.vsp1_video, %struct.vsp1_video* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  store %struct.media_entity* %16, %struct.media_entity** %7, align 8
  %17 = load %struct.media_entity*, %struct.media_entity** %7, align 8
  %18 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load %struct.media_device*, %struct.media_device** %19, align 8
  store %struct.media_device* %20, %struct.media_device** %8, align 8
  %21 = load %struct.media_device*, %struct.media_device** %8, align 8
  %22 = call i32 @media_graph_walk_init(%struct.media_graph* %6, %struct.media_device* %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %3, align 4
  br label %159

27:                                               ; preds = %2
  %28 = load %struct.media_entity*, %struct.media_entity** %7, align 8
  %29 = call i32 @media_graph_walk_start(%struct.media_graph* %6, %struct.media_entity* %28)
  br label %30

30:                                               ; preds = %101, %37, %27
  %31 = call %struct.media_entity* @media_graph_walk_next(%struct.media_graph* %6)
  store %struct.media_entity* %31, %struct.media_entity** %7, align 8
  %32 = icmp ne %struct.media_entity* %31, null
  br i1 %32, label %33, label %102

33:                                               ; preds = %30
  %34 = load %struct.media_entity*, %struct.media_entity** %7, align 8
  %35 = call i32 @is_media_entity_v4l2_subdev(%struct.media_entity* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  br label %30

38:                                               ; preds = %33
  %39 = load %struct.media_entity*, %struct.media_entity** %7, align 8
  %40 = call %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(%struct.media_entity* %39)
  store %struct.v4l2_subdev* %40, %struct.v4l2_subdev** %11, align 8
  %41 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %11, align 8
  %42 = call %struct.vsp1_entity* @to_vsp1_entity(%struct.v4l2_subdev* %41)
  store %struct.vsp1_entity* %42, %struct.vsp1_entity** %13, align 8
  %43 = load %struct.vsp1_entity*, %struct.vsp1_entity** %13, align 8
  %44 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %43, i32 0, i32 2
  %45 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %4, align 8
  %46 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %45, i32 0, i32 7
  %47 = call i32 @list_add_tail(i32* %44, i32* %46)
  %48 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %4, align 8
  %49 = load %struct.vsp1_entity*, %struct.vsp1_entity** %13, align 8
  %50 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %49, i32 0, i32 1
  store %struct.vsp1_pipeline* %48, %struct.vsp1_pipeline** %50, align 8
  %51 = load %struct.vsp1_entity*, %struct.vsp1_entity** %13, align 8
  %52 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  switch i32 %53, label %100 [
    i32 129, label %54
    i32 128, label %74
    i32 130, label %84
    i32 133, label %88
    i32 134, label %88
    i32 132, label %92
    i32 131, label %96
  ]

54:                                               ; preds = %38
  %55 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %11, align 8
  %56 = call %struct.vsp1_rwpf* @to_rwpf(%struct.v4l2_subdev* %55)
  store %struct.vsp1_rwpf* %56, %struct.vsp1_rwpf** %12, align 8
  %57 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %12, align 8
  %58 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %4, align 8
  %59 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %58, i32 0, i32 2
  %60 = load %struct.vsp1_rwpf**, %struct.vsp1_rwpf*** %59, align 8
  %61 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %12, align 8
  %62 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %60, i64 %64
  store %struct.vsp1_rwpf* %57, %struct.vsp1_rwpf** %65, align 8
  %66 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %4, align 8
  %67 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %68, 1
  store i64 %69, i64* %67, align 8
  %70 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %12, align 8
  %71 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %70, i32 0, i32 0
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  store i64 %69, i64* %73, align 8
  br label %101

74:                                               ; preds = %38
  %75 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %11, align 8
  %76 = call %struct.vsp1_rwpf* @to_rwpf(%struct.v4l2_subdev* %75)
  store %struct.vsp1_rwpf* %76, %struct.vsp1_rwpf** %12, align 8
  %77 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %12, align 8
  %78 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %4, align 8
  %79 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %78, i32 0, i32 1
  store %struct.vsp1_rwpf* %77, %struct.vsp1_rwpf** %79, align 8
  %80 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %12, align 8
  %81 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %80, i32 0, i32 0
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  store i64 0, i64* %83, align 8
  br label %101

84:                                               ; preds = %38
  %85 = load %struct.vsp1_entity*, %struct.vsp1_entity** %13, align 8
  %86 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %4, align 8
  %87 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %86, i32 0, i32 6
  store %struct.vsp1_entity* %85, %struct.vsp1_entity** %87, align 8
  br label %101

88:                                               ; preds = %38, %38
  %89 = load %struct.vsp1_entity*, %struct.vsp1_entity** %13, align 8
  %90 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %4, align 8
  %91 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %90, i32 0, i32 5
  store %struct.vsp1_entity* %89, %struct.vsp1_entity** %91, align 8
  br label %101

92:                                               ; preds = %38
  %93 = load %struct.vsp1_entity*, %struct.vsp1_entity** %13, align 8
  %94 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %4, align 8
  %95 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %94, i32 0, i32 4
  store %struct.vsp1_entity* %93, %struct.vsp1_entity** %95, align 8
  br label %101

96:                                               ; preds = %38
  %97 = load %struct.vsp1_entity*, %struct.vsp1_entity** %13, align 8
  %98 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %4, align 8
  %99 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %98, i32 0, i32 3
  store %struct.vsp1_entity* %97, %struct.vsp1_entity** %99, align 8
  br label %101

100:                                              ; preds = %38
  br label %101

101:                                              ; preds = %100, %96, %92, %88, %84, %74, %54
  br label %30

102:                                              ; preds = %30
  %103 = call i32 @media_graph_walk_cleanup(%struct.media_graph* %6)
  %104 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %4, align 8
  %105 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %113, label %108

108:                                              ; preds = %102
  %109 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %4, align 8
  %110 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %109, i32 0, i32 1
  %111 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %110, align 8
  %112 = icmp ne %struct.vsp1_rwpf* %111, null
  br i1 %112, label %116, label %113

113:                                              ; preds = %108, %102
  %114 = load i32, i32* @EPIPE, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %3, align 4
  br label %159

116:                                              ; preds = %108
  store i32 0, i32* %9, align 4
  br label %117

117:                                              ; preds = %155, %116
  %118 = load i32, i32* %9, align 4
  %119 = load %struct.vsp1_video*, %struct.vsp1_video** %5, align 8
  %120 = getelementptr inbounds %struct.vsp1_video, %struct.vsp1_video* %119, i32 0, i32 0
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = icmp ult i32 %118, %125
  br i1 %126, label %127, label %158

127:                                              ; preds = %117
  %128 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %4, align 8
  %129 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %128, i32 0, i32 2
  %130 = load %struct.vsp1_rwpf**, %struct.vsp1_rwpf*** %129, align 8
  %131 = load i32, i32* %9, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %130, i64 %132
  %134 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %133, align 8
  %135 = icmp ne %struct.vsp1_rwpf* %134, null
  br i1 %135, label %137, label %136

136:                                              ; preds = %127
  br label %155

137:                                              ; preds = %127
  %138 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %4, align 8
  %139 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %4, align 8
  %140 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %139, i32 0, i32 2
  %141 = load %struct.vsp1_rwpf**, %struct.vsp1_rwpf*** %140, align 8
  %142 = load i32, i32* %9, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %141, i64 %143
  %145 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %144, align 8
  %146 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %4, align 8
  %147 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %146, i32 0, i32 1
  %148 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %147, align 8
  %149 = call i32 @vsp1_video_pipeline_build_branch(%struct.vsp1_pipeline* %138, %struct.vsp1_rwpf* %145, %struct.vsp1_rwpf* %148)
  store i32 %149, i32* %10, align 4
  %150 = load i32, i32* %10, align 4
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %137
  %153 = load i32, i32* %10, align 4
  store i32 %153, i32* %3, align 4
  br label %159

154:                                              ; preds = %137
  br label %155

155:                                              ; preds = %154, %136
  %156 = load i32, i32* %9, align 4
  %157 = add i32 %156, 1
  store i32 %157, i32* %9, align 4
  br label %117

158:                                              ; preds = %117
  store i32 0, i32* %3, align 4
  br label %159

159:                                              ; preds = %158, %152, %113, %25
  %160 = load i32, i32* %3, align 4
  ret i32 %160
}

declare dso_local i32 @media_graph_walk_init(%struct.media_graph*, %struct.media_device*) #1

declare dso_local i32 @media_graph_walk_start(%struct.media_graph*, %struct.media_entity*) #1

declare dso_local %struct.media_entity* @media_graph_walk_next(%struct.media_graph*) #1

declare dso_local i32 @is_media_entity_v4l2_subdev(%struct.media_entity*) #1

declare dso_local %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(%struct.media_entity*) #1

declare dso_local %struct.vsp1_entity* @to_vsp1_entity(%struct.v4l2_subdev*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local %struct.vsp1_rwpf* @to_rwpf(%struct.v4l2_subdev*) #1

declare dso_local i32 @media_graph_walk_cleanup(%struct.media_graph*) #1

declare dso_local i32 @vsp1_video_pipeline_build_branch(%struct.vsp1_pipeline*, %struct.vsp1_rwpf*, %struct.vsp1_rwpf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
