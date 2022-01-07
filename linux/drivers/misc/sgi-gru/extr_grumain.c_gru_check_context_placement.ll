; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/sgi-gru/extr_grumain.c_gru_check_context_placement.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/sgi-gru/extr_grumain.c_gru_check_context_placement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.gru_thread_state = type { i64, %struct.gru_state* }
%struct.gru_state = type { i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@check_context_unload = common dso_local global i32 0, align 4
@check_context_retarget_intr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gru_check_context_placement(%struct.gru_thread_state* %0) #0 {
  %2 = alloca %struct.gru_thread_state*, align 8
  %3 = alloca %struct.gru_state*, align 8
  store %struct.gru_thread_state* %0, %struct.gru_thread_state** %2, align 8
  %4 = load %struct.gru_thread_state*, %struct.gru_thread_state** %2, align 8
  %5 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %4, i32 0, i32 1
  %6 = load %struct.gru_state*, %struct.gru_state** %5, align 8
  store %struct.gru_state* %6, %struct.gru_state** %3, align 8
  %7 = load %struct.gru_state*, %struct.gru_state** %3, align 8
  %8 = icmp ne %struct.gru_state* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load %struct.gru_thread_state*, %struct.gru_thread_state** %2, align 8
  %11 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %12, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %9, %1
  br label %36

18:                                               ; preds = %9
  %19 = load %struct.gru_state*, %struct.gru_state** %3, align 8
  %20 = load %struct.gru_thread_state*, %struct.gru_thread_state** %2, align 8
  %21 = call i32 @gru_check_chiplet_assignment(%struct.gru_state* %19, %struct.gru_thread_state* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @check_context_unload, align 4
  %25 = call i32 @STAT(i32 %24)
  %26 = load %struct.gru_thread_state*, %struct.gru_thread_state** %2, align 8
  %27 = call i32 @gru_unload_context(%struct.gru_thread_state* %26, i32 1)
  br label %36

28:                                               ; preds = %18
  %29 = load %struct.gru_thread_state*, %struct.gru_thread_state** %2, align 8
  %30 = call i64 @gru_retarget_intr(%struct.gru_thread_state* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32, i32* @check_context_retarget_intr, align 4
  %34 = call i32 @STAT(i32 %33)
  br label %35

35:                                               ; preds = %32, %28
  br label %36

36:                                               ; preds = %17, %35, %23
  ret void
}

declare dso_local i32 @gru_check_chiplet_assignment(%struct.gru_state*, %struct.gru_thread_state*) #1

declare dso_local i32 @STAT(i32) #1

declare dso_local i32 @gru_unload_context(%struct.gru_thread_state*, i32) #1

declare dso_local i64 @gru_retarget_intr(%struct.gru_thread_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
