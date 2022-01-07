; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/mc/extr_mc-entity.c_media_graph_walk_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/mc/extr_mc-entity.c_media_graph_walk_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.media_graph = type { i64, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32* }
%struct.media_entity = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"begin graph walk at '%s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @media_graph_walk_start(%struct.media_graph* %0, %struct.media_entity* %1) #0 {
  %3 = alloca %struct.media_graph*, align 8
  %4 = alloca %struct.media_entity*, align 8
  store %struct.media_graph* %0, %struct.media_graph** %3, align 8
  store %struct.media_entity* %1, %struct.media_entity** %4, align 8
  %5 = load %struct.media_graph*, %struct.media_graph** %3, align 8
  %6 = getelementptr inbounds %struct.media_graph, %struct.media_graph* %5, i32 0, i32 2
  %7 = call i32 @media_entity_enum_zero(i32* %6)
  %8 = load %struct.media_graph*, %struct.media_graph** %3, align 8
  %9 = getelementptr inbounds %struct.media_graph, %struct.media_graph* %8, i32 0, i32 2
  %10 = load %struct.media_entity*, %struct.media_entity** %4, align 8
  %11 = call i32 @media_entity_enum_set(i32* %9, %struct.media_entity* %10)
  %12 = load %struct.media_graph*, %struct.media_graph** %3, align 8
  %13 = getelementptr inbounds %struct.media_graph, %struct.media_graph* %12, i32 0, i32 0
  store i64 0, i64* %13, align 8
  %14 = load %struct.media_graph*, %struct.media_graph** %3, align 8
  %15 = getelementptr inbounds %struct.media_graph, %struct.media_graph* %14, i32 0, i32 1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = load %struct.media_graph*, %struct.media_graph** %3, align 8
  %18 = getelementptr inbounds %struct.media_graph, %struct.media_graph* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  store i32* null, i32** %21, align 8
  %22 = load %struct.media_graph*, %struct.media_graph** %3, align 8
  %23 = load %struct.media_entity*, %struct.media_entity** %4, align 8
  %24 = call i32 @stack_push(%struct.media_graph* %22, %struct.media_entity* %23)
  %25 = load %struct.media_entity*, %struct.media_entity** %4, align 8
  %26 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.media_entity*, %struct.media_entity** %4, align 8
  %32 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @dev_dbg(i32 %30, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %33)
  ret void
}

declare dso_local i32 @media_entity_enum_zero(i32*) #1

declare dso_local i32 @media_entity_enum_set(i32*, %struct.media_entity*) #1

declare dso_local i32 @stack_push(%struct.media_graph*, %struct.media_entity*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
