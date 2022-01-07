; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_l2.c_qed_eth_tx_queue_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_l2.c_qed_eth_tx_queue_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_queue_start_common_params = type { i32 }
%struct.qed_txq_start_ret_params = type { i8*, i32 }
%struct.qed_queue_cid = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, i32, %struct.qed_queue_start_common_params*, i32, i32, i32, %struct.qed_txq_start_ret_params*)* @qed_eth_tx_queue_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_eth_tx_queue_start(%struct.qed_hwfn* %0, i32 %1, %struct.qed_queue_start_common_params* %2, i32 %3, i32 %4, i32 %5, %struct.qed_txq_start_ret_params* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.qed_hwfn*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.qed_queue_start_common_params*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.qed_txq_start_ret_params*, align 8
  %16 = alloca %struct.qed_queue_cid*, align 8
  %17 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.qed_queue_start_common_params* %2, %struct.qed_queue_start_common_params** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.qed_txq_start_ret_params* %6, %struct.qed_txq_start_ret_params** %15, align 8
  %18 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %19 = load i32, i32* %10, align 4
  %20 = load %struct.qed_queue_start_common_params*, %struct.qed_queue_start_common_params** %11, align 8
  %21 = call %struct.qed_queue_cid* @qed_eth_queue_to_cid_pf(%struct.qed_hwfn* %18, i32 %19, i32 0, %struct.qed_queue_start_common_params* %20)
  store %struct.qed_queue_cid* %21, %struct.qed_queue_cid** %16, align 8
  %22 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %16, align 8
  %23 = icmp ne %struct.qed_queue_cid* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %7
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %8, align 4
  br label %64

27:                                               ; preds = %7
  %28 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %29 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @IS_PF(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %27
  %34 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %35 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %16, align 8
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* %14, align 4
  %39 = load %struct.qed_txq_start_ret_params*, %struct.qed_txq_start_ret_params** %15, align 8
  %40 = getelementptr inbounds %struct.qed_txq_start_ret_params, %struct.qed_txq_start_ret_params* %39, i32 0, i32 1
  %41 = call i32 @qed_eth_pf_tx_queue_start(%struct.qed_hwfn* %34, %struct.qed_queue_cid* %35, i32 %36, i32 %37, i32 %38, i32* %40)
  store i32 %41, i32* %17, align 4
  br label %50

42:                                               ; preds = %27
  %43 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %44 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %16, align 8
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %14, align 4
  %47 = load %struct.qed_txq_start_ret_params*, %struct.qed_txq_start_ret_params** %15, align 8
  %48 = getelementptr inbounds %struct.qed_txq_start_ret_params, %struct.qed_txq_start_ret_params* %47, i32 0, i32 1
  %49 = call i32 @qed_vf_pf_txq_start(%struct.qed_hwfn* %43, %struct.qed_queue_cid* %44, i32 %45, i32 %46, i32* %48)
  store i32 %49, i32* %17, align 4
  br label %50

50:                                               ; preds = %42, %33
  %51 = load i32, i32* %17, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %55 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %16, align 8
  %56 = call i32 @qed_eth_queue_cid_release(%struct.qed_hwfn* %54, %struct.qed_queue_cid* %55)
  br label %62

57:                                               ; preds = %50
  %58 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %16, align 8
  %59 = bitcast %struct.qed_queue_cid* %58 to i8*
  %60 = load %struct.qed_txq_start_ret_params*, %struct.qed_txq_start_ret_params** %15, align 8
  %61 = getelementptr inbounds %struct.qed_txq_start_ret_params, %struct.qed_txq_start_ret_params* %60, i32 0, i32 0
  store i8* %59, i8** %61, align 8
  br label %62

62:                                               ; preds = %57, %53
  %63 = load i32, i32* %17, align 4
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %62, %24
  %65 = load i32, i32* %8, align 4
  ret i32 %65
}

declare dso_local %struct.qed_queue_cid* @qed_eth_queue_to_cid_pf(%struct.qed_hwfn*, i32, i32, %struct.qed_queue_start_common_params*) #1

declare dso_local i64 @IS_PF(i32) #1

declare dso_local i32 @qed_eth_pf_tx_queue_start(%struct.qed_hwfn*, %struct.qed_queue_cid*, i32, i32, i32, i32*) #1

declare dso_local i32 @qed_vf_pf_txq_start(%struct.qed_hwfn*, %struct.qed_queue_cid*, i32, i32, i32*) #1

declare dso_local i32 @qed_eth_queue_cid_release(%struct.qed_hwfn*, %struct.qed_queue_cid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
