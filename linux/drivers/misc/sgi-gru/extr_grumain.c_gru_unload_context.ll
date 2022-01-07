; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/sgi-gru/extr_grumain.c_gru_unload_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/sgi-gru/extr_grumain.c_gru_unload_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gru_thread_state = type { i32, i32, i32, i32, i32, i32, %struct.gru_state* }
%struct.gru_state = type { i32 }
%struct.gru_context_configuration_handle = type { i32 }

@GRU_GSEG_PAGESIZE = common dso_local global i32 0, align 4
@grudev = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"gts %p, cbrmap 0x%lx, dsrmap 0x%lx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gru_unload_context(%struct.gru_thread_state* %0, i32 %1) #0 {
  %3 = alloca %struct.gru_thread_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gru_state*, align 8
  %6 = alloca %struct.gru_context_configuration_handle*, align 8
  %7 = alloca i32, align 4
  store %struct.gru_thread_state* %0, %struct.gru_thread_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.gru_thread_state*, %struct.gru_thread_state** %3, align 8
  %9 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %8, i32 0, i32 6
  %10 = load %struct.gru_state*, %struct.gru_state** %9, align 8
  store %struct.gru_state* %10, %struct.gru_state** %5, align 8
  %11 = load %struct.gru_thread_state*, %struct.gru_thread_state** %3, align 8
  %12 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %7, align 4
  %14 = load %struct.gru_thread_state*, %struct.gru_thread_state** %3, align 8
  %15 = call i32 @is_kernel_context(%struct.gru_thread_state* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %2
  %18 = load %struct.gru_thread_state*, %struct.gru_thread_state** %3, align 8
  %19 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.gru_thread_state*, %struct.gru_thread_state** %3, align 8
  %22 = call i32 @UGRUADDR(%struct.gru_thread_state* %21)
  %23 = load i32, i32* @GRU_GSEG_PAGESIZE, align 4
  %24 = call i32 @zap_vma_ptes(i32 %20, i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %17, %2
  %26 = load %struct.gru_state*, %struct.gru_state** %5, align 8
  %27 = getelementptr inbounds %struct.gru_state, %struct.gru_state* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call %struct.gru_context_configuration_handle* @get_cch(i32 %28, i32 %29)
  store %struct.gru_context_configuration_handle* %30, %struct.gru_context_configuration_handle** %6, align 8
  %31 = load i32, i32* @grudev, align 4
  %32 = load %struct.gru_thread_state*, %struct.gru_thread_state** %3, align 8
  %33 = load %struct.gru_thread_state*, %struct.gru_thread_state** %3, align 8
  %34 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.gru_thread_state*, %struct.gru_thread_state** %3, align 8
  %37 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @gru_dbg(i32 %31, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), %struct.gru_thread_state* %32, i32 %35, i32 %38)
  %40 = load %struct.gru_context_configuration_handle*, %struct.gru_context_configuration_handle** %6, align 8
  %41 = call i32 @lock_cch_handle(%struct.gru_context_configuration_handle* %40)
  %42 = load %struct.gru_context_configuration_handle*, %struct.gru_context_configuration_handle** %6, align 8
  %43 = call i64 @cch_interrupt_sync(%struct.gru_context_configuration_handle* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %25
  %46 = call i32 (...) @BUG()
  br label %47

47:                                               ; preds = %45, %25
  %48 = load %struct.gru_thread_state*, %struct.gru_thread_state** %3, align 8
  %49 = call i32 @is_kernel_context(%struct.gru_thread_state* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = load %struct.gru_state*, %struct.gru_state** %5, align 8
  %53 = load %struct.gru_thread_state*, %struct.gru_thread_state** %3, align 8
  %54 = call i32 @gru_unload_mm_tracker(%struct.gru_state* %52, %struct.gru_thread_state* %53)
  br label %55

55:                                               ; preds = %51, %47
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %75

58:                                               ; preds = %55
  %59 = load %struct.gru_thread_state*, %struct.gru_thread_state** %3, align 8
  %60 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.gru_state*, %struct.gru_state** %5, align 8
  %63 = getelementptr inbounds %struct.gru_state, %struct.gru_state* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.gru_thread_state*, %struct.gru_thread_state** %3, align 8
  %67 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.gru_thread_state*, %struct.gru_thread_state** %3, align 8
  %70 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @gru_unload_context_data(i32 %61, i32 %64, i32 %65, i32 %68, i32 %71)
  %73 = load %struct.gru_thread_state*, %struct.gru_thread_state** %3, align 8
  %74 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %73, i32 0, i32 1
  store i32 1, i32* %74, align 4
  br label %75

75:                                               ; preds = %58, %55
  %76 = load %struct.gru_context_configuration_handle*, %struct.gru_context_configuration_handle** %6, align 8
  %77 = call i64 @cch_deallocate(%struct.gru_context_configuration_handle* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = call i32 (...) @BUG()
  br label %81

81:                                               ; preds = %79, %75
  %82 = load %struct.gru_context_configuration_handle*, %struct.gru_context_configuration_handle** %6, align 8
  %83 = call i32 @unlock_cch_handle(%struct.gru_context_configuration_handle* %82)
  %84 = load %struct.gru_thread_state*, %struct.gru_thread_state** %3, align 8
  %85 = call i32 @gru_free_gru_context(%struct.gru_thread_state* %84)
  ret void
}

declare dso_local i32 @is_kernel_context(%struct.gru_thread_state*) #1

declare dso_local i32 @zap_vma_ptes(i32, i32, i32) #1

declare dso_local i32 @UGRUADDR(%struct.gru_thread_state*) #1

declare dso_local %struct.gru_context_configuration_handle* @get_cch(i32, i32) #1

declare dso_local i32 @gru_dbg(i32, i8*, %struct.gru_thread_state*, i32, i32) #1

declare dso_local i32 @lock_cch_handle(%struct.gru_context_configuration_handle*) #1

declare dso_local i64 @cch_interrupt_sync(%struct.gru_context_configuration_handle*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @gru_unload_mm_tracker(%struct.gru_state*, %struct.gru_thread_state*) #1

declare dso_local i32 @gru_unload_context_data(i32, i32, i32, i32, i32) #1

declare dso_local i64 @cch_deallocate(%struct.gru_context_configuration_handle*) #1

declare dso_local i32 @unlock_cch_handle(%struct.gru_context_configuration_handle*) #1

declare dso_local i32 @gru_free_gru_context(%struct.gru_thread_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
