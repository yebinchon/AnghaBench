; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_spq.c_qed_spq_blocking_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_spq.c_qed_spq_blocking_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%union.event_ring_data = type { i32 }
%struct.qed_spq_comp_done = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*, i8*, %union.event_ring_data*, i32)* @qed_spq_blocking_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_spq_blocking_cb(%struct.qed_hwfn* %0, i8* %1, %union.event_ring_data* %2, i32 %3) #0 {
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %union.event_ring_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.qed_spq_comp_done*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %5, align 8
  store i8* %1, i8** %6, align 8
  store %union.event_ring_data* %2, %union.event_ring_data** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.qed_spq_comp_done*
  store %struct.qed_spq_comp_done* %11, %struct.qed_spq_comp_done** %9, align 8
  %12 = load i32, i32* %8, align 4
  %13 = load %struct.qed_spq_comp_done*, %struct.qed_spq_comp_done** %9, align 8
  %14 = getelementptr inbounds %struct.qed_spq_comp_done, %struct.qed_spq_comp_done* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load %struct.qed_spq_comp_done*, %struct.qed_spq_comp_done** %9, align 8
  %16 = getelementptr inbounds %struct.qed_spq_comp_done, %struct.qed_spq_comp_done* %15, i32 0, i32 0
  %17 = call i32 @smp_store_release(i32* %16, i32 1)
  ret void
}

declare dso_local i32 @smp_store_release(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
