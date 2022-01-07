; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-mc.c_pipeline_pm_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-mc.c_pipeline_pm_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.media_entity = type { i32 }
%struct.media_graph = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.media_entity*, i32, %struct.media_graph*)* @pipeline_pm_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pipeline_pm_power(%struct.media_entity* %0, i32 %1, %struct.media_graph* %2) #0 {
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
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %67

14:                                               ; preds = %3
  %15 = load %struct.media_graph*, %struct.media_graph** %7, align 8
  %16 = load %struct.media_entity*, %struct.media_entity** %5, align 8
  %17 = call i32 @media_graph_walk_start(%struct.media_graph* %15, %struct.media_entity* %16)
  br label %18

18:                                               ; preds = %35, %14
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = load %struct.media_graph*, %struct.media_graph** %7, align 8
  %23 = call %struct.media_entity* @media_graph_walk_next(%struct.media_graph* %22)
  store %struct.media_entity* %23, %struct.media_entity** %5, align 8
  %24 = icmp ne %struct.media_entity* %23, null
  br label %25

25:                                               ; preds = %21, %18
  %26 = phi i1 [ false, %18 ], [ %24, %21 ]
  br i1 %26, label %27, label %36

27:                                               ; preds = %25
  %28 = load %struct.media_entity*, %struct.media_entity** %5, align 8
  %29 = call i64 @is_media_entity_v4l2_subdev(%struct.media_entity* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load %struct.media_entity*, %struct.media_entity** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @pipeline_pm_power_one(%struct.media_entity* %32, i32 %33)
  store i32 %34, i32* %9, align 4
  br label %35

35:                                               ; preds = %31, %27
  br label %18

36:                                               ; preds = %25
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %4, align 4
  br label %67

41:                                               ; preds = %36
  %42 = load %struct.media_graph*, %struct.media_graph** %7, align 8
  %43 = load %struct.media_entity*, %struct.media_entity** %8, align 8
  %44 = call i32 @media_graph_walk_start(%struct.media_graph* %42, %struct.media_entity* %43)
  br label %45

45:                                               ; preds = %64, %41
  %46 = load %struct.media_graph*, %struct.media_graph** %7, align 8
  %47 = call %struct.media_entity* @media_graph_walk_next(%struct.media_graph* %46)
  store %struct.media_entity* %47, %struct.media_entity** %8, align 8
  %48 = icmp ne %struct.media_entity* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load %struct.media_entity*, %struct.media_entity** %8, align 8
  %51 = load %struct.media_entity*, %struct.media_entity** %5, align 8
  %52 = icmp ne %struct.media_entity* %50, %51
  br label %53

53:                                               ; preds = %49, %45
  %54 = phi i1 [ false, %45 ], [ %52, %49 ]
  br i1 %54, label %55, label %65

55:                                               ; preds = %53
  %56 = load %struct.media_entity*, %struct.media_entity** %8, align 8
  %57 = call i64 @is_media_entity_v4l2_subdev(%struct.media_entity* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load %struct.media_entity*, %struct.media_entity** %8, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sub nsw i32 0, %61
  %63 = call i32 @pipeline_pm_power_one(%struct.media_entity* %60, i32 %62)
  br label %64

64:                                               ; preds = %59, %55
  br label %45

65:                                               ; preds = %53
  %66 = load i32, i32* %9, align 4
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %65, %39, %13
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @media_graph_walk_start(%struct.media_graph*, %struct.media_entity*) #1

declare dso_local %struct.media_entity* @media_graph_walk_next(%struct.media_graph*) #1

declare dso_local i64 @is_media_entity_v4l2_subdev(%struct.media_entity*) #1

declare dso_local i32 @pipeline_pm_power_one(%struct.media_entity*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
