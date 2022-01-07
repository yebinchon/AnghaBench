; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_rx.c_free_all_rx_skbs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_rx.c_free_all_rx_skbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_rxq = type { %struct.hinic_rq* }
%struct.hinic_rq = type { i32*, i32 }
%struct.hinic_hw_wqe = type { i32 }
%struct.hinic_sge = type { i32 }

@HINIC_RQ_WQE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hinic_rxq*)* @free_all_rx_skbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_all_rx_skbs(%struct.hinic_rxq* %0) #0 {
  %2 = alloca %struct.hinic_rxq*, align 8
  %3 = alloca %struct.hinic_rq*, align 8
  %4 = alloca %struct.hinic_hw_wqe*, align 8
  %5 = alloca %struct.hinic_sge, align 4
  %6 = alloca i64, align 8
  store %struct.hinic_rxq* %0, %struct.hinic_rxq** %2, align 8
  %7 = load %struct.hinic_rxq*, %struct.hinic_rxq** %2, align 8
  %8 = getelementptr inbounds %struct.hinic_rxq, %struct.hinic_rxq* %7, i32 0, i32 0
  %9 = load %struct.hinic_rq*, %struct.hinic_rq** %8, align 8
  store %struct.hinic_rq* %9, %struct.hinic_rq** %3, align 8
  br label %10

10:                                               ; preds = %22, %1
  %11 = load %struct.hinic_rq*, %struct.hinic_rq** %3, align 8
  %12 = getelementptr inbounds %struct.hinic_rq, %struct.hinic_rq* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @HINIC_RQ_WQE_SIZE, align 4
  %15 = call %struct.hinic_hw_wqe* @hinic_read_wqe(i32 %13, i32 %14, i64* %6)
  store %struct.hinic_hw_wqe* %15, %struct.hinic_hw_wqe** %4, align 8
  %16 = icmp ne %struct.hinic_hw_wqe* %15, null
  br i1 %16, label %17, label %42

17:                                               ; preds = %10
  %18 = load %struct.hinic_hw_wqe*, %struct.hinic_hw_wqe** %4, align 8
  %19 = call i64 @IS_ERR(%struct.hinic_hw_wqe* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %42

22:                                               ; preds = %17
  %23 = load %struct.hinic_rq*, %struct.hinic_rq** %3, align 8
  %24 = load %struct.hinic_hw_wqe*, %struct.hinic_hw_wqe** %4, align 8
  %25 = getelementptr inbounds %struct.hinic_hw_wqe, %struct.hinic_hw_wqe* %24, i32 0, i32 0
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @hinic_rq_get_sge(%struct.hinic_rq* %23, i32* %25, i64 %26, %struct.hinic_sge* %5)
  %28 = load %struct.hinic_rq*, %struct.hinic_rq** %3, align 8
  %29 = getelementptr inbounds %struct.hinic_rq, %struct.hinic_rq* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @HINIC_RQ_WQE_SIZE, align 4
  %32 = call i32 @hinic_put_wqe(i32 %30, i32 %31)
  %33 = load %struct.hinic_rxq*, %struct.hinic_rxq** %2, align 8
  %34 = load %struct.hinic_rq*, %struct.hinic_rq** %3, align 8
  %35 = getelementptr inbounds %struct.hinic_rq, %struct.hinic_rq* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* %6, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @hinic_sge_to_dma(%struct.hinic_sge* %5)
  %41 = call i32 @rx_free_skb(%struct.hinic_rxq* %33, i32 %39, i32 %40)
  br label %10

42:                                               ; preds = %21, %10
  ret void
}

declare dso_local %struct.hinic_hw_wqe* @hinic_read_wqe(i32, i32, i64*) #1

declare dso_local i64 @IS_ERR(%struct.hinic_hw_wqe*) #1

declare dso_local i32 @hinic_rq_get_sge(%struct.hinic_rq*, i32*, i64, %struct.hinic_sge*) #1

declare dso_local i32 @hinic_put_wqe(i32, i32) #1

declare dso_local i32 @rx_free_skb(%struct.hinic_rxq*, i32, i32) #1

declare dso_local i32 @hinic_sge_to_dma(%struct.hinic_sge*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
