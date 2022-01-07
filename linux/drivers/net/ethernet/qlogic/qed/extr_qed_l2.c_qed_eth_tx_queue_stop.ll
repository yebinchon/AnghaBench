; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_l2.c_qed_eth_tx_queue_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_l2.c_qed_eth_tx_queue_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_queue_cid = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_eth_tx_queue_stop(%struct.qed_hwfn* %0, i8* %1) #0 {
  %3 = alloca %struct.qed_hwfn*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.qed_queue_cid*, align 8
  %6 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.qed_queue_cid*
  store %struct.qed_queue_cid* %8, %struct.qed_queue_cid** %5, align 8
  %9 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %10 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @IS_PF(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %16 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %5, align 8
  %17 = call i32 @qed_eth_pf_tx_queue_stop(%struct.qed_hwfn* %15, %struct.qed_queue_cid* %16)
  store i32 %17, i32* %6, align 4
  br label %22

18:                                               ; preds = %2
  %19 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %20 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %5, align 8
  %21 = call i32 @qed_vf_pf_txq_stop(%struct.qed_hwfn* %19, %struct.qed_queue_cid* %20)
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %18, %14
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  %26 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %27 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %5, align 8
  %28 = call i32 @qed_eth_queue_cid_release(%struct.qed_hwfn* %26, %struct.qed_queue_cid* %27)
  br label %29

29:                                               ; preds = %25, %22
  %30 = load i32, i32* %6, align 4
  ret i32 %30
}

declare dso_local i64 @IS_PF(i32) #1

declare dso_local i32 @qed_eth_pf_tx_queue_stop(%struct.qed_hwfn*, %struct.qed_queue_cid*) #1

declare dso_local i32 @qed_vf_pf_txq_stop(%struct.qed_hwfn*, %struct.qed_queue_cid*) #1

declare dso_local i32 @qed_eth_queue_cid_release(%struct.qed_hwfn*, %struct.qed_queue_cid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
