; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-mc.c_pipeline_pm_use_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-mc.c_pipeline_pm_use_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.media_entity = type { i64 }
%struct.media_graph = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.media_entity*, %struct.media_graph*)* @pipeline_pm_use_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pipeline_pm_use_count(%struct.media_entity* %0, %struct.media_graph* %1) #0 {
  %3 = alloca %struct.media_entity*, align 8
  %4 = alloca %struct.media_graph*, align 8
  %5 = alloca i32, align 4
  store %struct.media_entity* %0, %struct.media_entity** %3, align 8
  store %struct.media_graph* %1, %struct.media_graph** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.media_graph*, %struct.media_graph** %4, align 8
  %7 = load %struct.media_entity*, %struct.media_entity** %3, align 8
  %8 = call i32 @media_graph_walk_start(%struct.media_graph* %6, %struct.media_entity* %7)
  br label %9

9:                                                ; preds = %25, %2
  %10 = load %struct.media_graph*, %struct.media_graph** %4, align 8
  %11 = call %struct.media_entity* @media_graph_walk_next(%struct.media_graph* %10)
  store %struct.media_entity* %11, %struct.media_entity** %3, align 8
  %12 = icmp ne %struct.media_entity* %11, null
  br i1 %12, label %13, label %26

13:                                               ; preds = %9
  %14 = load %struct.media_entity*, %struct.media_entity** %3, align 8
  %15 = call i64 @is_media_entity_v4l2_video_device(%struct.media_entity* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %13
  %18 = load %struct.media_entity*, %struct.media_entity** %3, align 8
  %19 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %22, %20
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %17, %13
  br label %9

26:                                               ; preds = %9
  %27 = load i32, i32* %5, align 4
  ret i32 %27
}

declare dso_local i32 @media_graph_walk_start(%struct.media_graph*, %struct.media_entity*) #1

declare dso_local %struct.media_entity* @media_graph_walk_next(%struct.media_graph*) #1

declare dso_local i64 @is_media_entity_v4l2_video_device(%struct.media_entity*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
