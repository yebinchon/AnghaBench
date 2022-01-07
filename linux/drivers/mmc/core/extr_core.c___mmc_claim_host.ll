; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_core.c___mmc_claim_host.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_core.c___mmc_claim_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.mmc_host = type { i32, i32, i32, i32 }
%struct.mmc_ctx = type { i32 }

@current = common dso_local global %struct.task_struct* null, align 8
@wait = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__mmc_claim_host(%struct.mmc_host* %0, %struct.mmc_ctx* %1, i32* %2) #0 {
  %4 = alloca %struct.mmc_host*, align 8
  %5 = alloca %struct.mmc_ctx*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.task_struct*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %4, align 8
  store %struct.mmc_ctx* %1, %struct.mmc_ctx** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.mmc_ctx*, %struct.mmc_ctx** %5, align 8
  %12 = icmp ne %struct.mmc_ctx* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %16

14:                                               ; preds = %3
  %15 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  br label %16

16:                                               ; preds = %14, %13
  %17 = phi %struct.task_struct* [ null, %13 ], [ %15, %14 ]
  store %struct.task_struct* %17, %struct.task_struct** %7, align 8
  %18 = load i32, i32* @wait, align 4
  %19 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %20 = call i32 @DECLARE_WAITQUEUE(i32 %18, %struct.task_struct* %19)
  store i32 0, i32* %10, align 4
  %21 = call i32 (...) @might_sleep()
  %22 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %23 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %22, i32 0, i32 2
  %24 = call i32 @add_wait_queue(i32* %23, i32* @wait)
  %25 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %26 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %25, i32 0, i32 3
  %27 = load i64, i64* %8, align 8
  %28 = call i32 @spin_lock_irqsave(i32* %26, i64 %27)
  br label %29

29:                                               ; preds = %16, %54
  %30 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %31 = call i32 @set_current_state(i32 %30)
  %32 = load i32*, i32** %6, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @atomic_read(i32* %35)
  br label %38

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %37, %34
  %39 = phi i32 [ %36, %34 ], [ 0, %37 ]
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %53, label %42

42:                                               ; preds = %38
  %43 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %44 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %49 = load %struct.mmc_ctx*, %struct.mmc_ctx** %5, align 8
  %50 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %51 = call i64 @mmc_ctx_matches(%struct.mmc_host* %48, %struct.mmc_ctx* %49, %struct.task_struct* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47, %42, %38
  br label %64

54:                                               ; preds = %47
  %55 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %56 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %55, i32 0, i32 3
  %57 = load i64, i64* %8, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* %56, i64 %57)
  %59 = call i32 (...) @schedule()
  %60 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %61 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %60, i32 0, i32 3
  %62 = load i64, i64* %8, align 8
  %63 = call i32 @spin_lock_irqsave(i32* %61, i64 %62)
  br label %29

64:                                               ; preds = %53
  %65 = load i32, i32* @TASK_RUNNING, align 4
  %66 = call i32 @set_current_state(i32 %65)
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %86, label %69

69:                                               ; preds = %64
  %70 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %71 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %70, i32 0, i32 0
  store i32 1, i32* %71, align 4
  %72 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %73 = load %struct.mmc_ctx*, %struct.mmc_ctx** %5, align 8
  %74 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %75 = call i32 @mmc_ctx_set_claimer(%struct.mmc_host* %72, %struct.mmc_ctx* %73, %struct.task_struct* %74)
  %76 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %77 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 4
  %80 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %81 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %84, label %85

84:                                               ; preds = %69
  store i32 1, i32* %10, align 4
  br label %85

85:                                               ; preds = %84, %69
  br label %90

86:                                               ; preds = %64
  %87 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %88 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %87, i32 0, i32 2
  %89 = call i32 @wake_up(i32* %88)
  br label %90

90:                                               ; preds = %86, %85
  %91 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %92 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %91, i32 0, i32 3
  %93 = load i64, i64* %8, align 8
  %94 = call i32 @spin_unlock_irqrestore(i32* %92, i64 %93)
  %95 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %96 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %95, i32 0, i32 2
  %97 = call i32 @remove_wait_queue(i32* %96, i32* @wait)
  %98 = load i32, i32* %10, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %90
  %101 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %102 = call i32 @mmc_dev(%struct.mmc_host* %101)
  %103 = call i32 @pm_runtime_get_sync(i32 %102)
  br label %104

104:                                              ; preds = %100, %90
  %105 = load i32, i32* %9, align 4
  ret i32 %105
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, %struct.task_struct*) #1

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @mmc_ctx_matches(%struct.mmc_host*, %struct.mmc_ctx*, %struct.task_struct*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @mmc_ctx_set_claimer(%struct.mmc_host*, %struct.mmc_ctx*, %struct.task_struct*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @mmc_dev(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
