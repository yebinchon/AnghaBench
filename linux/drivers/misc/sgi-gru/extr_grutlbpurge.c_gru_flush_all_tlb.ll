; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/sgi-gru/extr_grutlbpurge.c_gru_flush_all_tlb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/sgi-gru/extr_grutlbpurge.c_gru_flush_all_tlb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gru_state = type { i32 }
%struct.gru_tlb_global_handle = type { i32 }

@grudev = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"gid %d\0A\00", align 1
@GRUMAXINVAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gru_flush_all_tlb(%struct.gru_state* %0) #0 {
  %2 = alloca %struct.gru_state*, align 8
  %3 = alloca %struct.gru_tlb_global_handle*, align 8
  store %struct.gru_state* %0, %struct.gru_state** %2, align 8
  %4 = load i32, i32* @grudev, align 4
  %5 = load %struct.gru_state*, %struct.gru_state** %2, align 8
  %6 = getelementptr inbounds %struct.gru_state, %struct.gru_state* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @gru_dbg(i32 %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load %struct.gru_state*, %struct.gru_state** %2, align 8
  %10 = call %struct.gru_tlb_global_handle* @get_lock_tgh_handle(%struct.gru_state* %9)
  store %struct.gru_tlb_global_handle* %10, %struct.gru_tlb_global_handle** %3, align 8
  %11 = load %struct.gru_tlb_global_handle*, %struct.gru_tlb_global_handle** %3, align 8
  %12 = load i64, i64* @GRUMAXINVAL, align 8
  %13 = sub nsw i64 %12, 1
  %14 = call i32 @tgh_invalidate(%struct.gru_tlb_global_handle* %11, i32 0, i32 -1, i32 0, i32 1, i32 1, i64 %13, i32 65535)
  %15 = load %struct.gru_tlb_global_handle*, %struct.gru_tlb_global_handle** %3, align 8
  %16 = call i32 @get_unlock_tgh_handle(%struct.gru_tlb_global_handle* %15)
  ret void
}

declare dso_local i32 @gru_dbg(i32, i8*, i32) #1

declare dso_local %struct.gru_tlb_global_handle* @get_lock_tgh_handle(%struct.gru_state*) #1

declare dso_local i32 @tgh_invalidate(%struct.gru_tlb_global_handle*, i32, i32, i32, i32, i32, i64, i32) #1

declare dso_local i32 @get_unlock_tgh_handle(%struct.gru_tlb_global_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
