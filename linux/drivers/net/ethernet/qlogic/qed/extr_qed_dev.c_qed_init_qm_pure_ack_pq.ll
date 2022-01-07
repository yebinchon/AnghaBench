; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_init_qm_pure_ack_pq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_init_qm_pure_ack_pq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.qed_qm_info }
%struct.qed_qm_info = type { i32 }

@PQ_FLAGS_ACK = common dso_local global i32 0, align 4
@PQ_INIT_SHARE_VPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*)* @qed_init_qm_pure_ack_pq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_init_qm_pure_ack_pq(%struct.qed_hwfn* %0) #0 {
  %2 = alloca %struct.qed_hwfn*, align 8
  %3 = alloca %struct.qed_qm_info*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %2, align 8
  %4 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %5 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %4, i32 0, i32 0
  store %struct.qed_qm_info* %5, %struct.qed_qm_info** %3, align 8
  %6 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %7 = call i32 @qed_get_pq_flags(%struct.qed_hwfn* %6)
  %8 = load i32, i32* @PQ_FLAGS_ACK, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %25

12:                                               ; preds = %1
  %13 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %14 = load i32, i32* @PQ_FLAGS_ACK, align 4
  %15 = load %struct.qed_qm_info*, %struct.qed_qm_info** %3, align 8
  %16 = getelementptr inbounds %struct.qed_qm_info, %struct.qed_qm_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @qed_init_qm_set_idx(%struct.qed_hwfn* %13, i32 %14, i32 %17)
  %19 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %20 = load %struct.qed_qm_info*, %struct.qed_qm_info** %3, align 8
  %21 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %22 = call i32 @qed_get_offload_tc(%struct.qed_hwfn* %21)
  %23 = load i32, i32* @PQ_INIT_SHARE_VPORT, align 4
  %24 = call i32 @qed_init_qm_pq(%struct.qed_hwfn* %19, %struct.qed_qm_info* %20, i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @qed_get_pq_flags(%struct.qed_hwfn*) #1

declare dso_local i32 @qed_init_qm_set_idx(%struct.qed_hwfn*, i32, i32) #1

declare dso_local i32 @qed_init_qm_pq(%struct.qed_hwfn*, %struct.qed_qm_info*, i32, i32) #1

declare dso_local i32 @qed_get_offload_tc(%struct.qed_hwfn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
