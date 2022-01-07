; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/sgi-gru/extr_grumain.c_gru_update_cch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/sgi-gru/extr_grumain.c_gru_update_cch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gru_thread_state = type { i32, i64, i8*, i32, %struct.gru_state* }
%struct.gru_state = type { %struct.gru_thread_state**, i32 }
%struct.gru_context_configuration_handle = type { i64, i32, i8*, i32* }

@CCHSTATE_ACTIVE = common dso_local global i64 0, align 8
@GRU_OPT_MISS_FMM_POLL = common dso_local global i64 0, align 8
@GRU_OPT_MISS_FMM_INTR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gru_update_cch(%struct.gru_thread_state* %0) #0 {
  %2 = alloca %struct.gru_thread_state*, align 8
  %3 = alloca %struct.gru_context_configuration_handle*, align 8
  %4 = alloca %struct.gru_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gru_thread_state* %0, %struct.gru_thread_state** %2, align 8
  %8 = load %struct.gru_thread_state*, %struct.gru_thread_state** %2, align 8
  %9 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %8, i32 0, i32 4
  %10 = load %struct.gru_state*, %struct.gru_state** %9, align 8
  store %struct.gru_state* %10, %struct.gru_state** %4, align 8
  %11 = load %struct.gru_thread_state*, %struct.gru_thread_state** %2, align 8
  %12 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %14 = load %struct.gru_state*, %struct.gru_state** %4, align 8
  %15 = getelementptr inbounds %struct.gru_state, %struct.gru_state* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call %struct.gru_context_configuration_handle* @get_cch(i32 %16, i32 %17)
  store %struct.gru_context_configuration_handle* %18, %struct.gru_context_configuration_handle** %3, align 8
  %19 = load %struct.gru_context_configuration_handle*, %struct.gru_context_configuration_handle** %3, align 8
  %20 = call i32 @lock_cch_handle(%struct.gru_context_configuration_handle* %19)
  %21 = load %struct.gru_context_configuration_handle*, %struct.gru_context_configuration_handle** %3, align 8
  %22 = getelementptr inbounds %struct.gru_context_configuration_handle, %struct.gru_context_configuration_handle* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @CCHSTATE_ACTIVE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %91

26:                                               ; preds = %1
  %27 = load %struct.gru_state*, %struct.gru_state** %4, align 8
  %28 = getelementptr inbounds %struct.gru_state, %struct.gru_state* %27, i32 0, i32 0
  %29 = load %struct.gru_thread_state**, %struct.gru_thread_state*** %28, align 8
  %30 = load %struct.gru_thread_state*, %struct.gru_thread_state** %2, align 8
  %31 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.gru_thread_state*, %struct.gru_thread_state** %29, i64 %33
  %35 = load %struct.gru_thread_state*, %struct.gru_thread_state** %34, align 8
  %36 = load %struct.gru_thread_state*, %struct.gru_thread_state** %2, align 8
  %37 = icmp ne %struct.gru_thread_state* %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %26
  br label %92

39:                                               ; preds = %26
  %40 = load %struct.gru_context_configuration_handle*, %struct.gru_context_configuration_handle** %3, align 8
  %41 = call i64 @cch_interrupt(%struct.gru_context_configuration_handle* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = call i32 (...) @BUG()
  br label %45

45:                                               ; preds = %43, %39
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %59, %45
  %47 = load i32, i32* %5, align 4
  %48 = icmp slt i32 %47, 8
  br i1 %48, label %49, label %62

49:                                               ; preds = %46
  %50 = load %struct.gru_thread_state*, %struct.gru_thread_state** %2, align 8
  %51 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.gru_context_configuration_handle*, %struct.gru_context_configuration_handle** %3, align 8
  %54 = getelementptr inbounds %struct.gru_context_configuration_handle, %struct.gru_context_configuration_handle* %53, i32 0, i32 3
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32 %52, i32* %58, align 4
  br label %59

59:                                               ; preds = %49
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %5, align 4
  br label %46

62:                                               ; preds = %46
  %63 = call i8* (...) @gru_cpu_fault_map_id()
  %64 = load %struct.gru_thread_state*, %struct.gru_thread_state** %2, align 8
  %65 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %64, i32 0, i32 2
  store i8* %63, i8** %65, align 8
  %66 = call i8* (...) @gru_cpu_fault_map_id()
  %67 = load %struct.gru_context_configuration_handle*, %struct.gru_context_configuration_handle** %3, align 8
  %68 = getelementptr inbounds %struct.gru_context_configuration_handle, %struct.gru_context_configuration_handle* %67, i32 0, i32 2
  store i8* %66, i8** %68, align 8
  %69 = load %struct.gru_thread_state*, %struct.gru_thread_state** %2, align 8
  %70 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @GRU_OPT_MISS_FMM_POLL, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %80, label %74

74:                                               ; preds = %62
  %75 = load %struct.gru_thread_state*, %struct.gru_thread_state** %2, align 8
  %76 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @GRU_OPT_MISS_FMM_INTR, align 8
  %79 = icmp eq i64 %77, %78
  br label %80

80:                                               ; preds = %74, %62
  %81 = phi i1 [ true, %62 ], [ %79, %74 ]
  %82 = zext i1 %81 to i32
  %83 = load %struct.gru_context_configuration_handle*, %struct.gru_context_configuration_handle** %3, align 8
  %84 = getelementptr inbounds %struct.gru_context_configuration_handle, %struct.gru_context_configuration_handle* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 8
  %85 = load %struct.gru_context_configuration_handle*, %struct.gru_context_configuration_handle** %3, align 8
  %86 = call i64 @cch_start(%struct.gru_context_configuration_handle* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %80
  %89 = call i32 (...) @BUG()
  br label %90

90:                                               ; preds = %88, %80
  store i32 1, i32* %7, align 4
  br label %91

91:                                               ; preds = %90, %1
  br label %92

92:                                               ; preds = %91, %38
  %93 = load %struct.gru_context_configuration_handle*, %struct.gru_context_configuration_handle** %3, align 8
  %94 = call i32 @unlock_cch_handle(%struct.gru_context_configuration_handle* %93)
  %95 = load i32, i32* %7, align 4
  ret i32 %95
}

declare dso_local %struct.gru_context_configuration_handle* @get_cch(i32, i32) #1

declare dso_local i32 @lock_cch_handle(%struct.gru_context_configuration_handle*) #1

declare dso_local i64 @cch_interrupt(%struct.gru_context_configuration_handle*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i8* @gru_cpu_fault_map_id(...) #1

declare dso_local i64 @cch_start(%struct.gru_context_configuration_handle*) #1

declare dso_local i32 @unlock_cch_handle(%struct.gru_context_configuration_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
