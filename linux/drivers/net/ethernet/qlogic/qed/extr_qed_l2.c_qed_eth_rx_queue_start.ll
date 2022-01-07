; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_l2.c_qed_eth_rx_queue_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_l2.c_qed_eth_rx_queue_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_queue_start_common_params = type { i32 }
%struct.qed_rxq_start_ret_params = type { i8*, i32 }
%struct.qed_queue_cid = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, i32, %struct.qed_queue_start_common_params*, i32, i32, i32, i32, %struct.qed_rxq_start_ret_params*)* @qed_eth_rx_queue_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_eth_rx_queue_start(%struct.qed_hwfn* %0, i32 %1, %struct.qed_queue_start_common_params* %2, i32 %3, i32 %4, i32 %5, i32 %6, %struct.qed_rxq_start_ret_params* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.qed_hwfn*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.qed_queue_start_common_params*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.qed_rxq_start_ret_params*, align 8
  %18 = alloca %struct.qed_queue_cid*, align 8
  %19 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %10, align 8
  store i32 %1, i32* %11, align 4
  store %struct.qed_queue_start_common_params* %2, %struct.qed_queue_start_common_params** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store %struct.qed_rxq_start_ret_params* %7, %struct.qed_rxq_start_ret_params** %17, align 8
  %20 = load %struct.qed_hwfn*, %struct.qed_hwfn** %10, align 8
  %21 = load i32, i32* %11, align 4
  %22 = load %struct.qed_queue_start_common_params*, %struct.qed_queue_start_common_params** %12, align 8
  %23 = call %struct.qed_queue_cid* @qed_eth_queue_to_cid_pf(%struct.qed_hwfn* %20, i32 %21, i32 1, %struct.qed_queue_start_common_params* %22)
  store %struct.qed_queue_cid* %23, %struct.qed_queue_cid** %18, align 8
  %24 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %18, align 8
  %25 = icmp ne %struct.qed_queue_cid* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %8
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %9, align 4
  br label %69

29:                                               ; preds = %8
  %30 = load %struct.qed_hwfn*, %struct.qed_hwfn** %10, align 8
  %31 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @IS_PF(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %29
  %36 = load %struct.qed_hwfn*, %struct.qed_hwfn** %10, align 8
  %37 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %18, align 8
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* %15, align 4
  %41 = load i32, i32* %16, align 4
  %42 = load %struct.qed_rxq_start_ret_params*, %struct.qed_rxq_start_ret_params** %17, align 8
  %43 = getelementptr inbounds %struct.qed_rxq_start_ret_params, %struct.qed_rxq_start_ret_params* %42, i32 0, i32 1
  %44 = call i32 @qed_eth_pf_rx_queue_start(%struct.qed_hwfn* %36, %struct.qed_queue_cid* %37, i32 %38, i32 %39, i32 %40, i32 %41, i32* %43)
  store i32 %44, i32* %19, align 4
  br label %55

45:                                               ; preds = %29
  %46 = load %struct.qed_hwfn*, %struct.qed_hwfn** %10, align 8
  %47 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %18, align 8
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* %16, align 4
  %52 = load %struct.qed_rxq_start_ret_params*, %struct.qed_rxq_start_ret_params** %17, align 8
  %53 = getelementptr inbounds %struct.qed_rxq_start_ret_params, %struct.qed_rxq_start_ret_params* %52, i32 0, i32 1
  %54 = call i32 @qed_vf_pf_rxq_start(%struct.qed_hwfn* %46, %struct.qed_queue_cid* %47, i32 %48, i32 %49, i32 %50, i32 %51, i32* %53)
  store i32 %54, i32* %19, align 4
  br label %55

55:                                               ; preds = %45, %35
  %56 = load i32, i32* %19, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load %struct.qed_hwfn*, %struct.qed_hwfn** %10, align 8
  %60 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %18, align 8
  %61 = call i32 @qed_eth_queue_cid_release(%struct.qed_hwfn* %59, %struct.qed_queue_cid* %60)
  br label %67

62:                                               ; preds = %55
  %63 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %18, align 8
  %64 = bitcast %struct.qed_queue_cid* %63 to i8*
  %65 = load %struct.qed_rxq_start_ret_params*, %struct.qed_rxq_start_ret_params** %17, align 8
  %66 = getelementptr inbounds %struct.qed_rxq_start_ret_params, %struct.qed_rxq_start_ret_params* %65, i32 0, i32 0
  store i8* %64, i8** %66, align 8
  br label %67

67:                                               ; preds = %62, %58
  %68 = load i32, i32* %19, align 4
  store i32 %68, i32* %9, align 4
  br label %69

69:                                               ; preds = %67, %26
  %70 = load i32, i32* %9, align 4
  ret i32 %70
}

declare dso_local %struct.qed_queue_cid* @qed_eth_queue_to_cid_pf(%struct.qed_hwfn*, i32, i32, %struct.qed_queue_start_common_params*) #1

declare dso_local i64 @IS_PF(i32) #1

declare dso_local i32 @qed_eth_pf_rx_queue_start(%struct.qed_hwfn*, %struct.qed_queue_cid*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @qed_vf_pf_rxq_start(%struct.qed_hwfn*, %struct.qed_queue_cid*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @qed_eth_queue_cid_release(%struct.qed_hwfn*, %struct.qed_queue_cid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
