; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ll2.c_qed_ll2_lb_rxq_completion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ll2.c_qed_ll2_lb_rxq_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_ll2_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, i8*)* @qed_ll2_lb_rxq_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_ll2_lb_rxq_completion(%struct.qed_hwfn* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.qed_ll2_info*, align 8
  %7 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.qed_ll2_info*
  store %struct.qed_ll2_info* %9, %struct.qed_ll2_info** %6, align 8
  %10 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %6, align 8
  %11 = call i32 @QED_LL2_RX_REGISTERED(%struct.qed_ll2_info* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %29

14:                                               ; preds = %2
  %15 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %16 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %6, align 8
  %17 = call i32 @qed_ll2_lb_rxq_handler(%struct.qed_hwfn* %15, %struct.qed_ll2_info* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %3, align 4
  br label %29

22:                                               ; preds = %14
  %23 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %24 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %6, align 8
  %25 = call i32 @qed_ooo_submit_rx_buffers(%struct.qed_hwfn* %23, %struct.qed_ll2_info* %24)
  %26 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %27 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %6, align 8
  %28 = call i32 @qed_ooo_submit_tx_buffers(%struct.qed_hwfn* %26, %struct.qed_ll2_info* %27)
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %22, %20, %13
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @QED_LL2_RX_REGISTERED(%struct.qed_ll2_info*) #1

declare dso_local i32 @qed_ll2_lb_rxq_handler(%struct.qed_hwfn*, %struct.qed_ll2_info*) #1

declare dso_local i32 @qed_ooo_submit_rx_buffers(%struct.qed_hwfn*, %struct.qed_ll2_info*) #1

declare dso_local i32 @qed_ooo_submit_tx_buffers(%struct.qed_hwfn*, %struct.qed_ll2_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
