; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/mc/extr_mc-entity.c_stack_pop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/mc/extr_mc-entity.c_stack_pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.media_entity = type { i32 }
%struct.media_graph = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.media_entity* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.media_entity* (%struct.media_graph*)* @stack_pop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.media_entity* @stack_pop(%struct.media_graph* %0) #0 {
  %2 = alloca %struct.media_graph*, align 8
  %3 = alloca %struct.media_entity*, align 8
  store %struct.media_graph* %0, %struct.media_graph** %2, align 8
  %4 = load %struct.media_graph*, %struct.media_graph** %2, align 8
  %5 = getelementptr inbounds %struct.media_graph, %struct.media_graph* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = load %struct.media_graph*, %struct.media_graph** %2, align 8
  %8 = getelementptr inbounds %struct.media_graph, %struct.media_graph* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.media_entity*, %struct.media_entity** %11, align 8
  store %struct.media_entity* %12, %struct.media_entity** %3, align 8
  %13 = load %struct.media_graph*, %struct.media_graph** %2, align 8
  %14 = getelementptr inbounds %struct.media_graph, %struct.media_graph* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add i64 %15, -1
  store i64 %16, i64* %14, align 8
  %17 = load %struct.media_entity*, %struct.media_entity** %3, align 8
  ret %struct.media_entity* %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
