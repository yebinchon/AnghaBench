; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/mc/extr_mc-entity.c_stack_push.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/mc/extr_mc-entity.c_stack_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.media_graph = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.media_entity*, i32 }
%struct.media_entity = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@MEDIA_ENTITY_ENUM_MAX_DEPTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.media_graph*, %struct.media_entity*)* @stack_push to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stack_push(%struct.media_graph* %0, %struct.media_entity* %1) #0 {
  %3 = alloca %struct.media_graph*, align 8
  %4 = alloca %struct.media_entity*, align 8
  store %struct.media_graph* %0, %struct.media_graph** %3, align 8
  store %struct.media_entity* %1, %struct.media_entity** %4, align 8
  %5 = load %struct.media_graph*, %struct.media_graph** %3, align 8
  %6 = getelementptr inbounds %struct.media_graph, %struct.media_graph* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @MEDIA_ENTITY_ENUM_MAX_DEPTH, align 4
  %9 = sub nsw i32 %8, 1
  %10 = icmp eq i32 %7, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 @WARN_ON(i32 1)
  br label %41

13:                                               ; preds = %2
  %14 = load %struct.media_graph*, %struct.media_graph** %3, align 8
  %15 = getelementptr inbounds %struct.media_graph, %struct.media_graph* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 8
  %18 = load %struct.media_entity*, %struct.media_entity** %4, align 8
  %19 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.media_graph*, %struct.media_graph** %3, align 8
  %23 = getelementptr inbounds %struct.media_graph, %struct.media_graph* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = load %struct.media_graph*, %struct.media_graph** %3, align 8
  %26 = getelementptr inbounds %struct.media_graph, %struct.media_graph* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  store i32 %21, i32* %30, align 8
  %31 = load %struct.media_entity*, %struct.media_entity** %4, align 8
  %32 = load %struct.media_graph*, %struct.media_graph** %3, align 8
  %33 = getelementptr inbounds %struct.media_graph, %struct.media_graph* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = load %struct.media_graph*, %struct.media_graph** %3, align 8
  %36 = getelementptr inbounds %struct.media_graph, %struct.media_graph* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store %struct.media_entity* %31, %struct.media_entity** %40, align 8
  br label %41

41:                                               ; preds = %13, %11
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
