; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/mc/extr_mc-entity.c_media_graph_walk_next.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/mc/extr_mc-entity.c_media_graph_walk_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.media_entity = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.media_graph = type { i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"walk: returning entity '%s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.media_entity* @media_graph_walk_next(%struct.media_graph* %0) #0 {
  %2 = alloca %struct.media_entity*, align 8
  %3 = alloca %struct.media_graph*, align 8
  %4 = alloca %struct.media_entity*, align 8
  store %struct.media_graph* %0, %struct.media_graph** %3, align 8
  %5 = load %struct.media_graph*, %struct.media_graph** %3, align 8
  %6 = call %struct.TYPE_6__* @stack_top(%struct.media_graph* %5)
  %7 = icmp eq %struct.TYPE_6__* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store %struct.media_entity* null, %struct.media_entity** %2, align 8
  br label %34

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %17, %9
  %11 = load %struct.media_graph*, %struct.media_graph** %3, align 8
  %12 = call i32* @link_top(%struct.media_graph* %11)
  %13 = load %struct.media_graph*, %struct.media_graph** %3, align 8
  %14 = call %struct.TYPE_6__* @stack_top(%struct.media_graph* %13)
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = icmp ne i32* %12, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = load %struct.media_graph*, %struct.media_graph** %3, align 8
  %19 = call i32 @media_graph_walk_iter(%struct.media_graph* %18)
  br label %10

20:                                               ; preds = %10
  %21 = load %struct.media_graph*, %struct.media_graph** %3, align 8
  %22 = call %struct.media_entity* @stack_pop(%struct.media_graph* %21)
  store %struct.media_entity* %22, %struct.media_entity** %4, align 8
  %23 = load %struct.media_entity*, %struct.media_entity** %4, align 8
  %24 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.media_entity*, %struct.media_entity** %4, align 8
  %30 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @dev_dbg(i32 %28, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load %struct.media_entity*, %struct.media_entity** %4, align 8
  store %struct.media_entity* %33, %struct.media_entity** %2, align 8
  br label %34

34:                                               ; preds = %20, %8
  %35 = load %struct.media_entity*, %struct.media_entity** %2, align 8
  ret %struct.media_entity* %35
}

declare dso_local %struct.TYPE_6__* @stack_top(%struct.media_graph*) #1

declare dso_local i32* @link_top(%struct.media_graph*) #1

declare dso_local i32 @media_graph_walk_iter(%struct.media_graph*) #1

declare dso_local %struct.media_entity* @stack_pop(%struct.media_graph*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
