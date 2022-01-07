; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/sgi-gru/extr_grutlbpurge.c_get_lock_tgh_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/sgi-gru/extr_grutlbpurge.c_get_lock_tgh_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gru_tlb_global_handle = type { i32 }
%struct.gru_state = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gru_tlb_global_handle* (%struct.gru_state*)* @get_lock_tgh_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gru_tlb_global_handle* @get_lock_tgh_handle(%struct.gru_state* %0) #0 {
  %2 = alloca %struct.gru_state*, align 8
  %3 = alloca %struct.gru_tlb_global_handle*, align 8
  %4 = alloca i32, align 4
  store %struct.gru_state* %0, %struct.gru_state** %2, align 8
  %5 = call i32 (...) @preempt_disable()
  %6 = call i64 (...) @uv_numa_blade_id()
  %7 = load %struct.gru_state*, %struct.gru_state** %2, align 8
  %8 = getelementptr inbounds %struct.gru_state, %struct.gru_state* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %6, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.gru_state*, %struct.gru_state** %2, align 8
  %13 = call i32 @get_on_blade_tgh(%struct.gru_state* %12)
  store i32 %13, i32* %4, align 4
  br label %17

14:                                               ; preds = %1
  %15 = load %struct.gru_state*, %struct.gru_state** %2, align 8
  %16 = call i32 @get_off_blade_tgh(%struct.gru_state* %15)
  store i32 %16, i32* %4, align 4
  br label %17

17:                                               ; preds = %14, %11
  %18 = load %struct.gru_state*, %struct.gru_state** %2, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call %struct.gru_tlb_global_handle* @get_tgh_by_index(%struct.gru_state* %18, i32 %19)
  store %struct.gru_tlb_global_handle* %20, %struct.gru_tlb_global_handle** %3, align 8
  %21 = load %struct.gru_tlb_global_handle*, %struct.gru_tlb_global_handle** %3, align 8
  %22 = call i32 @lock_tgh_handle(%struct.gru_tlb_global_handle* %21)
  %23 = load %struct.gru_tlb_global_handle*, %struct.gru_tlb_global_handle** %3, align 8
  ret %struct.gru_tlb_global_handle* %23
}

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i64 @uv_numa_blade_id(...) #1

declare dso_local i32 @get_on_blade_tgh(%struct.gru_state*) #1

declare dso_local i32 @get_off_blade_tgh(%struct.gru_state*) #1

declare dso_local %struct.gru_tlb_global_handle* @get_tgh_by_index(%struct.gru_state*, i32) #1

declare dso_local i32 @lock_tgh_handle(%struct.gru_tlb_global_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
