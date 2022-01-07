; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_queue.c_queue_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_queue.c_queue_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, %struct.TYPE_3__*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"queue class %d event %d\0A\00", align 1
@MAX_EVENT = common dso_local global i64 0, align 8
@SMT_E0137 = common dso_local global i32 0, align 4
@SMT_E0137_MSG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @queue_event(%struct.s_smc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.s_smc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.s_smc* %0, %struct.s_smc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* %6, align 4
  %9 = call i32 @PRINTF(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %8)
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %12 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store i32 %10, i32* %15, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %18 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  store i32 %16, i32* %21, align 4
  %22 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %23 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 1
  store %struct.TYPE_3__* %26, %struct.TYPE_3__** %24, align 8
  %27 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %28 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = load i64, i64* @MAX_EVENT, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %31
  %33 = icmp eq %struct.TYPE_3__* %26, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %3
  %35 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %36 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %40 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  store %struct.TYPE_3__* %38, %struct.TYPE_3__** %41, align 8
  br label %42

42:                                               ; preds = %34, %3
  %43 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %44 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %48 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = icmp eq %struct.TYPE_3__* %46, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %42
  %53 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %54 = load i32, i32* @SMT_E0137, align 4
  %55 = load i32, i32* @SMT_E0137_MSG, align 4
  %56 = call i32 @SMT_ERR_LOG(%struct.s_smc* %53, i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %52, %42
  ret void
}

declare dso_local i32 @PRINTF(i8*, i32, i32) #1

declare dso_local i32 @SMT_ERR_LOG(%struct.s_smc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
