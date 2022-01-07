; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_spq.c_qed_cqe_completion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_spq.c_qed_cqe_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.eth_slow_path_rx_cqe = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.eth_slow_path_rx_cqe*, i32)* @qed_cqe_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_cqe_completion(%struct.qed_hwfn* %0, %struct.eth_slow_path_rx_cqe* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca %struct.eth_slow_path_rx_cqe*, align 8
  %7 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %5, align 8
  store %struct.eth_slow_path_rx_cqe* %1, %struct.eth_slow_path_rx_cqe** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %9 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @IS_VF(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %20

14:                                               ; preds = %3
  %15 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %16 = load %struct.eth_slow_path_rx_cqe*, %struct.eth_slow_path_rx_cqe** %6, align 8
  %17 = getelementptr inbounds %struct.eth_slow_path_rx_cqe, %struct.eth_slow_path_rx_cqe* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @qed_spq_completion(%struct.qed_hwfn* %15, i32 %18, i32 0, i32* null)
  store i32 %19, i32* %4, align 4
  br label %20

20:                                               ; preds = %14, %13
  %21 = load i32, i32* %4, align 4
  ret i32 %21
}

declare dso_local i64 @IS_VF(i32) #1

declare dso_local i32 @qed_spq_completion(%struct.qed_hwfn*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
