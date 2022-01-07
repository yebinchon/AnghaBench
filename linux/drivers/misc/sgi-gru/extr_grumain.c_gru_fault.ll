; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/sgi-gru/extr_grumain.c_gru_fault.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/sgi-gru/extr_grumain.c_gru_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_fault = type { i64, %struct.vm_area_struct* }
%struct.vm_area_struct = type { i32 }
%struct.gru_thread_state = type { i64, i32, i32, i32 }

@grudev = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"vma %p, vaddr 0x%lx (0x%lx)\0A\00", align 1
@nopfn = common dso_local global i32 0, align 4
@VM_FAULT_SIGBUS = common dso_local global i32 0, align 4
@load_user_context = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@GRU_ASSIGN_DELAY = common dso_local global i32 0, align 4
@GRU_STEAL_DELAY = common dso_local global i64 0, align 8
@jiffies = common dso_local global i32 0, align 4
@GRU_GSEG_PAGESIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@VM_FAULT_NOPAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gru_fault(%struct.vm_fault* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vm_fault*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.gru_thread_state*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.vm_fault* %0, %struct.vm_fault** %3, align 8
  %9 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %10 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %9, i32 0, i32 1
  %11 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  store %struct.vm_area_struct* %11, %struct.vm_area_struct** %4, align 8
  %12 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %13 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %7, align 8
  %15 = load i32, i32* @grudev, align 4
  %16 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* %7, align 8
  %19 = call i32 @GSEG_BASE(i64 %18)
  %20 = call i32 @gru_dbg(i32 %15, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), %struct.vm_area_struct* %16, i64 %17, i32 %19)
  %21 = load i32, i32* @nopfn, align 4
  %22 = call i32 @STAT(i32 %21)
  %23 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %26 = call i32 @TSID(i64 %24, %struct.vm_area_struct* %25)
  %27 = call %struct.gru_thread_state* @gru_find_thread_state(%struct.vm_area_struct* %23, i32 %26)
  store %struct.gru_thread_state* %27, %struct.gru_thread_state** %5, align 8
  %28 = load %struct.gru_thread_state*, %struct.gru_thread_state** %5, align 8
  %29 = icmp ne %struct.gru_thread_state* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %1
  %31 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %31, i32* %2, align 4
  br label %103

32:                                               ; preds = %1
  br label %33

33:                                               ; preds = %71, %32
  %34 = load %struct.gru_thread_state*, %struct.gru_thread_state** %5, align 8
  %35 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %34, i32 0, i32 1
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = call i32 (...) @preempt_disable()
  %38 = load %struct.gru_thread_state*, %struct.gru_thread_state** %5, align 8
  %39 = call i32 @gru_check_context_placement(%struct.gru_thread_state* %38)
  %40 = load %struct.gru_thread_state*, %struct.gru_thread_state** %5, align 8
  %41 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %97, label %44

44:                                               ; preds = %33
  %45 = load i32, i32* @load_user_context, align 4
  %46 = call i32 @STAT(i32 %45)
  %47 = load %struct.gru_thread_state*, %struct.gru_thread_state** %5, align 8
  %48 = call i32 @gru_assign_gru_context(%struct.gru_thread_state* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %72, label %50

50:                                               ; preds = %44
  %51 = call i32 (...) @preempt_enable()
  %52 = load %struct.gru_thread_state*, %struct.gru_thread_state** %5, align 8
  %53 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %52, i32 0, i32 1
  %54 = call i32 @mutex_unlock(i32* %53)
  %55 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %56 = call i32 @set_current_state(i32 %55)
  %57 = load i32, i32* @GRU_ASSIGN_DELAY, align 4
  %58 = call i32 @schedule_timeout(i32 %57)
  %59 = load %struct.gru_thread_state*, %struct.gru_thread_state** %5, align 8
  %60 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @GRU_STEAL_DELAY, align 8
  %63 = add i64 %61, %62
  store i64 %63, i64* %8, align 8
  %64 = load i64, i64* %8, align 8
  %65 = load i32, i32* @jiffies, align 4
  %66 = call i64 @time_before(i64 %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %50
  %69 = load %struct.gru_thread_state*, %struct.gru_thread_state** %5, align 8
  %70 = call i32 @gru_steal_context(%struct.gru_thread_state* %69)
  br label %71

71:                                               ; preds = %68, %50
  br label %33

72:                                               ; preds = %44
  %73 = load %struct.gru_thread_state*, %struct.gru_thread_state** %5, align 8
  %74 = call i32 @gru_load_context(%struct.gru_thread_state* %73)
  %75 = load %struct.gru_thread_state*, %struct.gru_thread_state** %5, align 8
  %76 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.gru_thread_state*, %struct.gru_thread_state** %5, align 8
  %79 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @gseg_physical_address(i32 %77, i32 %80)
  store i64 %81, i64* %6, align 8
  %82 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %83 = load i64, i64* %7, align 8
  %84 = load i32, i32* @GRU_GSEG_PAGESIZE, align 4
  %85 = sub nsw i32 %84, 1
  %86 = xor i32 %85, -1
  %87 = sext i32 %86 to i64
  %88 = and i64 %83, %87
  %89 = load i64, i64* %6, align 8
  %90 = load i64, i64* @PAGE_SHIFT, align 8
  %91 = lshr i64 %89, %90
  %92 = load i32, i32* @GRU_GSEG_PAGESIZE, align 4
  %93 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %94 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @remap_pfn_range(%struct.vm_area_struct* %82, i64 %88, i64 %91, i32 %92, i32 %95)
  br label %97

97:                                               ; preds = %72, %33
  %98 = call i32 (...) @preempt_enable()
  %99 = load %struct.gru_thread_state*, %struct.gru_thread_state** %5, align 8
  %100 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %99, i32 0, i32 1
  %101 = call i32 @mutex_unlock(i32* %100)
  %102 = load i32, i32* @VM_FAULT_NOPAGE, align 4
  store i32 %102, i32* %2, align 4
  br label %103

103:                                              ; preds = %97, %30
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i32 @gru_dbg(i32, i8*, %struct.vm_area_struct*, i64, i32) #1

declare dso_local i32 @GSEG_BASE(i64) #1

declare dso_local i32 @STAT(i32) #1

declare dso_local %struct.gru_thread_state* @gru_find_thread_state(%struct.vm_area_struct*, i32) #1

declare dso_local i32 @TSID(i64, %struct.vm_area_struct*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @gru_check_context_placement(%struct.gru_thread_state*) #1

declare dso_local i32 @gru_assign_gru_context(%struct.gru_thread_state*) #1

declare dso_local i32 @preempt_enable(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @schedule_timeout(i32) #1

declare dso_local i64 @time_before(i64, i32) #1

declare dso_local i32 @gru_steal_context(%struct.gru_thread_state*) #1

declare dso_local i32 @gru_load_context(%struct.gru_thread_state*) #1

declare dso_local i64 @gseg_physical_address(i32, i32) #1

declare dso_local i32 @remap_pfn_range(%struct.vm_area_struct*, i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
