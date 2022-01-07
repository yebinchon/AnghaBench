; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/mc/extr_mc-entity.c___media_pipeline_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/mc/extr_mc-entity.c___media_pipeline_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.media_entity = type { i64, %struct.media_pipeline* }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__media_pipeline_stop(%struct.media_entity* %0) #0 {
  %2 = alloca %struct.media_entity*, align 8
  %3 = alloca %struct.media_graph*, align 8
  %4 = alloca %struct.media_pipeline*, align 8
  store %struct.media_entity* %0, %struct.media_entity** %2, align 8
  %5 = load %struct.media_entity*, %struct.media_entity** %2, align 8
  %6 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %5, i32 0, i32 1
  %7 = load %struct.media_pipeline*, %struct.media_pipeline** %6, align 8
  %8 = getelementptr inbounds %struct.media_pipeline, %struct.media_pipeline* %7, i32 0, i32 1
  store %struct.media_graph* %8, %struct.media_graph** %3, align 8
  %9 = load %struct.media_entity*, %struct.media_entity** %2, align 8
  %10 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %9, i32 0, i32 1
  %11 = load %struct.media_pipeline*, %struct.media_pipeline** %10, align 8
  store %struct.media_pipeline* %11, %struct.media_pipeline** %4, align 8
  %12 = load %struct.media_pipeline*, %struct.media_pipeline** %4, align 8
  %13 = icmp ne %struct.media_pipeline* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @WARN_ON(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %58

19:                                               ; preds = %1
  %20 = load %struct.media_graph*, %struct.media_graph** %3, align 8
  %21 = load %struct.media_entity*, %struct.media_entity** %2, align 8
  %22 = call i32 @media_graph_walk_start(%struct.media_graph* %20, %struct.media_entity* %21)
  br label %23

23:                                               ; preds = %48, %19
  %24 = load %struct.media_graph*, %struct.media_graph** %3, align 8
  %25 = call %struct.media_entity* @media_graph_walk_next(%struct.media_graph* %24)
  store %struct.media_entity* %25, %struct.media_entity** %2, align 8
  %26 = icmp ne %struct.media_entity* %25, null
  br i1 %26, label %27, label %49

27:                                               ; preds = %23
  %28 = load %struct.media_entity*, %struct.media_entity** %2, align 8
  %29 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sle i64 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @WARN_ON_ONCE(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %48, label %35

35:                                               ; preds = %27
  %36 = load %struct.media_entity*, %struct.media_entity** %2, align 8
  %37 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, -1
  store i64 %39, i64* %37, align 8
  %40 = load %struct.media_entity*, %struct.media_entity** %2, align 8
  %41 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %35
  %45 = load %struct.media_entity*, %struct.media_entity** %2, align 8
  %46 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %45, i32 0, i32 1
  store %struct.media_pipeline* null, %struct.media_pipeline** %46, align 8
  br label %47

47:                                               ; preds = %44, %35
  br label %48

48:                                               ; preds = %47, %27
  br label %23

49:                                               ; preds = %23
  %50 = load %struct.media_pipeline*, %struct.media_pipeline** %4, align 8
  %51 = getelementptr inbounds %struct.media_pipeline, %struct.media_pipeline* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %51, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %49
  %56 = load %struct.media_graph*, %struct.media_graph** %3, align 8
  %57 = call i32 @media_graph_walk_cleanup(%struct.media_graph* %56)
  br label %58

58:                                               ; preds = %18, %55, %49
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @media_graph_walk_start(%struct.media_graph*, %struct.media_entity*) #1

declare dso_local %struct.media_entity* @media_graph_walk_next(%struct.media_graph*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @media_graph_walk_cleanup(%struct.media_graph*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
