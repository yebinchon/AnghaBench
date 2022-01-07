; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_media-dev.c___fimc_md_modify_pipelines.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_media-dev.c___fimc_md_modify_pipelines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.media_entity = type { i32 }
%struct.media_graph = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.media_entity*, i32, %struct.media_graph*)* @__fimc_md_modify_pipelines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__fimc_md_modify_pipelines(%struct.media_entity* %0, i32 %1, %struct.media_graph* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.media_entity*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.media_graph*, align 8
  %8 = alloca %struct.media_entity*, align 8
  %9 = alloca i32, align 4
  store %struct.media_entity* %0, %struct.media_entity** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.media_graph* %2, %struct.media_graph** %7, align 8
  %10 = load %struct.media_entity*, %struct.media_entity** %5, align 8
  store %struct.media_entity* %10, %struct.media_entity** %8, align 8
  %11 = load %struct.media_graph*, %struct.media_graph** %7, align 8
  %12 = load %struct.media_entity*, %struct.media_entity** %5, align 8
  %13 = call i32 @media_graph_walk_start(%struct.media_graph* %11, %struct.media_entity* %12)
  br label %14

14:                                               ; preds = %30, %22, %3
  %15 = load %struct.media_graph*, %struct.media_graph** %7, align 8
  %16 = call %struct.media_entity* @media_graph_walk_next(%struct.media_graph* %15)
  store %struct.media_entity* %16, %struct.media_entity** %5, align 8
  %17 = icmp ne %struct.media_entity* %16, null
  br i1 %17, label %18, label %31

18:                                               ; preds = %14
  %19 = load %struct.media_entity*, %struct.media_entity** %5, align 8
  %20 = call i32 @is_media_entity_v4l2_video_device(%struct.media_entity* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  br label %14

23:                                               ; preds = %18
  %24 = load %struct.media_entity*, %struct.media_entity** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @__fimc_md_modify_pipeline(%struct.media_entity* %24, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %32

30:                                               ; preds = %23
  br label %14

31:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %59

32:                                               ; preds = %29
  %33 = load %struct.media_graph*, %struct.media_graph** %7, align 8
  %34 = load %struct.media_entity*, %struct.media_entity** %8, align 8
  %35 = call i32 @media_graph_walk_start(%struct.media_graph* %33, %struct.media_entity* %34)
  br label %36

36:                                               ; preds = %56, %44, %32
  %37 = load %struct.media_graph*, %struct.media_graph** %7, align 8
  %38 = call %struct.media_entity* @media_graph_walk_next(%struct.media_graph* %37)
  store %struct.media_entity* %38, %struct.media_entity** %8, align 8
  %39 = icmp ne %struct.media_entity* %38, null
  br i1 %39, label %40, label %57

40:                                               ; preds = %36
  %41 = load %struct.media_entity*, %struct.media_entity** %8, align 8
  %42 = call i32 @is_media_entity_v4l2_video_device(%struct.media_entity* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  br label %36

45:                                               ; preds = %40
  %46 = load %struct.media_entity*, %struct.media_entity** %8, align 8
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = call i32 @__fimc_md_modify_pipeline(%struct.media_entity* %46, i32 %50)
  %52 = load %struct.media_entity*, %struct.media_entity** %8, align 8
  %53 = load %struct.media_entity*, %struct.media_entity** %5, align 8
  %54 = icmp eq %struct.media_entity* %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  br label %57

56:                                               ; preds = %45
  br label %36

57:                                               ; preds = %55, %36
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %57, %31
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @media_graph_walk_start(%struct.media_graph*, %struct.media_entity*) #1

declare dso_local %struct.media_entity* @media_graph_walk_next(%struct.media_graph*) #1

declare dso_local i32 @is_media_entity_v4l2_video_device(%struct.media_entity*) #1

declare dso_local i32 @__fimc_md_modify_pipeline(%struct.media_entity*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
