; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_l2.c_qed_eth_rx_queue_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_l2.c_qed_eth_rx_queue_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_queue_cid = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_eth_rx_queue_stop(%struct.qed_hwfn* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.qed_queue_cid*, align 8
  %10 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.qed_queue_cid*
  store %struct.qed_queue_cid* %12, %struct.qed_queue_cid** %9, align 8
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %10, align 4
  %15 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %16 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @IS_PF(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %4
  %21 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %22 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %9, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @qed_eth_pf_rx_queue_stop(%struct.qed_hwfn* %21, %struct.qed_queue_cid* %22, i32 %23, i32 %24)
  store i32 %25, i32* %10, align 4
  br label %31

26:                                               ; preds = %4
  %27 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %28 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %9, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @qed_vf_pf_rxq_stop(%struct.qed_hwfn* %27, %struct.qed_queue_cid* %28, i32 %29)
  store i32 %30, i32* %10, align 4
  br label %31

31:                                               ; preds = %26, %20
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %36 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %9, align 8
  %37 = call i32 @qed_eth_queue_cid_release(%struct.qed_hwfn* %35, %struct.qed_queue_cid* %36)
  br label %38

38:                                               ; preds = %34, %31
  %39 = load i32, i32* %10, align 4
  ret i32 %39
}

declare dso_local i64 @IS_PF(i32) #1

declare dso_local i32 @qed_eth_pf_rx_queue_stop(%struct.qed_hwfn*, %struct.qed_queue_cid*, i32, i32) #1

declare dso_local i32 @qed_vf_pf_rxq_stop(%struct.qed_hwfn*, %struct.qed_queue_cid*, i32) #1

declare dso_local i32 @qed_eth_queue_cid_release(%struct.qed_hwfn*, %struct.qed_queue_cid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
