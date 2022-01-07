; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_rx.c_rx_alloc_pkts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_rx.c_rx_alloc_pkts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_rxq = type { i32, i32 }
%struct.hinic_dev = type { i32 }
%struct.hinic_rq_wqe = type { i32 }
%struct.hinic_sge = type { i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Failed to alloc Rx skb\0A\00", align 1
@HINIC_RQ_WQE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hinic_rxq*)* @rx_alloc_pkts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rx_alloc_pkts(%struct.hinic_rxq* %0) #0 {
  %2 = alloca %struct.hinic_rxq*, align 8
  %3 = alloca %struct.hinic_dev*, align 8
  %4 = alloca %struct.hinic_rq_wqe*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hinic_sge, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hinic_rxq* %0, %struct.hinic_rxq** %2, align 8
  %11 = load %struct.hinic_rxq*, %struct.hinic_rxq** %2, align 8
  %12 = getelementptr inbounds %struct.hinic_rxq, %struct.hinic_rxq* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.hinic_dev* @netdev_priv(i32 %13)
  store %struct.hinic_dev* %14, %struct.hinic_dev** %3, align 8
  %15 = load %struct.hinic_rxq*, %struct.hinic_rxq** %2, align 8
  %16 = getelementptr inbounds %struct.hinic_rxq, %struct.hinic_rxq* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @hinic_get_rq_free_wqebbs(i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.hinic_dev*, %struct.hinic_dev** %3, align 8
  %21 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ugt i32 %19, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load %struct.hinic_dev*, %struct.hinic_dev** %3, align 8
  %26 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %24, %1
  store i32 0, i32* %10, align 4
  br label %29

29:                                               ; preds = %75, %28
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %78

33:                                               ; preds = %29
  %34 = load %struct.hinic_rxq*, %struct.hinic_rxq** %2, align 8
  %35 = call %struct.sk_buff* @rx_alloc_skb(%struct.hinic_rxq* %34, i32* %7)
  store %struct.sk_buff* %35, %struct.sk_buff** %8, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %37 = icmp ne %struct.sk_buff* %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = load %struct.hinic_rxq*, %struct.hinic_rxq** %2, align 8
  %40 = getelementptr inbounds %struct.hinic_rxq, %struct.hinic_rxq* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @netdev_err(i32 %41, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %79

43:                                               ; preds = %33
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @hinic_set_sge(%struct.hinic_sge* %6, i32 %44, i32 %47)
  %49 = load %struct.hinic_rxq*, %struct.hinic_rxq** %2, align 8
  %50 = getelementptr inbounds %struct.hinic_rxq, %struct.hinic_rxq* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @HINIC_RQ_WQE_SIZE, align 4
  %53 = call %struct.hinic_rq_wqe* @hinic_rq_get_wqe(i32 %51, i32 %52, i32* %9)
  store %struct.hinic_rq_wqe* %53, %struct.hinic_rq_wqe** %4, align 8
  %54 = load %struct.hinic_rq_wqe*, %struct.hinic_rq_wqe** %4, align 8
  %55 = icmp ne %struct.hinic_rq_wqe* %54, null
  br i1 %55, label %61, label %56

56:                                               ; preds = %43
  %57 = load %struct.hinic_rxq*, %struct.hinic_rxq** %2, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @rx_free_skb(%struct.hinic_rxq* %57, %struct.sk_buff* %58, i32 %59)
  br label %79

61:                                               ; preds = %43
  %62 = load %struct.hinic_rxq*, %struct.hinic_rxq** %2, align 8
  %63 = getelementptr inbounds %struct.hinic_rxq, %struct.hinic_rxq* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.hinic_rq_wqe*, %struct.hinic_rq_wqe** %4, align 8
  %67 = call i32 @hinic_rq_prepare_wqe(i32 %64, i32 %65, %struct.hinic_rq_wqe* %66, %struct.hinic_sge* %6)
  %68 = load %struct.hinic_rxq*, %struct.hinic_rxq** %2, align 8
  %69 = getelementptr inbounds %struct.hinic_rxq, %struct.hinic_rxq* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %9, align 4
  %72 = load %struct.hinic_rq_wqe*, %struct.hinic_rq_wqe** %4, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %74 = call i32 @hinic_rq_write_wqe(i32 %70, i32 %71, %struct.hinic_rq_wqe* %72, %struct.sk_buff* %73)
  br label %75

75:                                               ; preds = %61
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %10, align 4
  br label %29

78:                                               ; preds = %29
  br label %79

79:                                               ; preds = %78, %56, %38
  %80 = load i32, i32* %10, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %79
  %83 = call i32 (...) @wmb()
  %84 = load %struct.hinic_rxq*, %struct.hinic_rxq** %2, align 8
  %85 = getelementptr inbounds %struct.hinic_rxq, %struct.hinic_rxq* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @hinic_rq_update(i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %82, %79
  %90 = load i32, i32* %10, align 4
  ret i32 %90
}

declare dso_local %struct.hinic_dev* @netdev_priv(i32) #1

declare dso_local i32 @hinic_get_rq_free_wqebbs(i32) #1

declare dso_local %struct.sk_buff* @rx_alloc_skb(%struct.hinic_rxq*, i32*) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @hinic_set_sge(%struct.hinic_sge*, i32, i32) #1

declare dso_local %struct.hinic_rq_wqe* @hinic_rq_get_wqe(i32, i32, i32*) #1

declare dso_local i32 @rx_free_skb(%struct.hinic_rxq*, %struct.sk_buff*, i32) #1

declare dso_local i32 @hinic_rq_prepare_wqe(i32, i32, %struct.hinic_rq_wqe*, %struct.hinic_sge*) #1

declare dso_local i32 @hinic_rq_write_wqe(i32, i32, %struct.hinic_rq_wqe*, %struct.sk_buff*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @hinic_rq_update(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
