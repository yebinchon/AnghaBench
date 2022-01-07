; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/sgi-gru/extr_grukservices.c_gru_free_kernel_contexts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/sgi-gru/extr_grukservices.c_gru_free_kernel_contexts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gru_blade_state = type { i32, %struct.gru_thread_state* }
%struct.gru_thread_state = type { i64 }

@GRU_MAX_BLADES = common dso_local global i32 0, align 4
@gru_base = common dso_local global %struct.gru_blade_state** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @gru_free_kernel_contexts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gru_free_kernel_contexts() #0 {
  %1 = alloca %struct.gru_blade_state*, align 8
  %2 = alloca %struct.gru_thread_state*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %49, %0
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @GRU_MAX_BLADES, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %52

9:                                                ; preds = %5
  %10 = load %struct.gru_blade_state**, %struct.gru_blade_state*** @gru_base, align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.gru_blade_state*, %struct.gru_blade_state** %10, i64 %12
  %14 = load %struct.gru_blade_state*, %struct.gru_blade_state** %13, align 8
  store %struct.gru_blade_state* %14, %struct.gru_blade_state** %1, align 8
  %15 = load %struct.gru_blade_state*, %struct.gru_blade_state** %1, align 8
  %16 = icmp ne %struct.gru_blade_state* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %9
  br label %49

18:                                               ; preds = %9
  %19 = load %struct.gru_blade_state*, %struct.gru_blade_state** %1, align 8
  %20 = getelementptr inbounds %struct.gru_blade_state, %struct.gru_blade_state* %19, i32 0, i32 0
  %21 = call i64 @down_write_trylock(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %45

23:                                               ; preds = %18
  %24 = load %struct.gru_blade_state*, %struct.gru_blade_state** %1, align 8
  %25 = getelementptr inbounds %struct.gru_blade_state, %struct.gru_blade_state* %24, i32 0, i32 1
  %26 = load %struct.gru_thread_state*, %struct.gru_thread_state** %25, align 8
  store %struct.gru_thread_state* %26, %struct.gru_thread_state** %2, align 8
  %27 = load %struct.gru_thread_state*, %struct.gru_thread_state** %2, align 8
  %28 = icmp ne %struct.gru_thread_state* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %23
  %30 = load %struct.gru_thread_state*, %struct.gru_thread_state** %2, align 8
  %31 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load %struct.gru_thread_state*, %struct.gru_thread_state** %2, align 8
  %36 = call i32 @gru_unload_context(%struct.gru_thread_state* %35, i32 0)
  br label %37

37:                                               ; preds = %34, %29, %23
  %38 = load %struct.gru_blade_state*, %struct.gru_blade_state** %1, align 8
  %39 = getelementptr inbounds %struct.gru_blade_state, %struct.gru_blade_state* %38, i32 0, i32 1
  store %struct.gru_thread_state* null, %struct.gru_thread_state** %39, align 8
  %40 = load %struct.gru_blade_state*, %struct.gru_blade_state** %1, align 8
  %41 = getelementptr inbounds %struct.gru_blade_state, %struct.gru_blade_state* %40, i32 0, i32 0
  %42 = call i32 @up_write(i32* %41)
  %43 = load %struct.gru_thread_state*, %struct.gru_thread_state** %2, align 8
  %44 = call i32 @kfree(%struct.gru_thread_state* %43)
  br label %48

45:                                               ; preds = %18
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %45, %37
  br label %49

49:                                               ; preds = %48, %17
  %50 = load i32, i32* %3, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %3, align 4
  br label %5

52:                                               ; preds = %5
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i64 @down_write_trylock(i32*) #1

declare dso_local i32 @gru_unload_context(%struct.gru_thread_state*, i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @kfree(%struct.gru_thread_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
