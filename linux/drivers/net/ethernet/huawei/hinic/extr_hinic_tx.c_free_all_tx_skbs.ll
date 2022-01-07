; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_tx.c_free_all_tx_skbs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_tx.c_free_all_tx_skbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_txq = type { i32, %struct.hinic_sq*, i32 }
%struct.hinic_sq = type { i32 }
%struct.hinic_dev = type { i32 }
%struct.hinic_sq_wqe = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hinic_txq*)* @free_all_tx_skbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_all_tx_skbs(%struct.hinic_txq* %0) #0 {
  %2 = alloca %struct.hinic_txq*, align 8
  %3 = alloca %struct.hinic_dev*, align 8
  %4 = alloca %struct.hinic_sq*, align 8
  %5 = alloca %struct.hinic_sq_wqe*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hinic_txq* %0, %struct.hinic_txq** %2, align 8
  %10 = load %struct.hinic_txq*, %struct.hinic_txq** %2, align 8
  %11 = getelementptr inbounds %struct.hinic_txq, %struct.hinic_txq* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.hinic_dev* @netdev_priv(i32 %12)
  store %struct.hinic_dev* %13, %struct.hinic_dev** %3, align 8
  %14 = load %struct.hinic_txq*, %struct.hinic_txq** %2, align 8
  %15 = getelementptr inbounds %struct.hinic_txq, %struct.hinic_txq* %14, i32 0, i32 1
  %16 = load %struct.hinic_sq*, %struct.hinic_sq** %15, align 8
  store %struct.hinic_sq* %16, %struct.hinic_sq** %4, align 8
  br label %17

17:                                               ; preds = %28, %1
  %18 = load %struct.hinic_sq*, %struct.hinic_sq** %4, align 8
  %19 = call %struct.hinic_sq_wqe* @hinic_sq_read_wqebb(%struct.hinic_sq* %18, %struct.sk_buff** %7, i32* %6, i32* %9)
  store %struct.hinic_sq_wqe* %19, %struct.hinic_sq_wqe** %5, align 8
  %20 = icmp ne %struct.hinic_sq_wqe* %19, null
  br i1 %20, label %21, label %49

21:                                               ; preds = %17
  %22 = load %struct.hinic_sq*, %struct.hinic_sq** %4, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call %struct.hinic_sq_wqe* @hinic_sq_read_wqe(%struct.hinic_sq* %22, %struct.sk_buff** %7, i32 %23, i32* %9)
  store %struct.hinic_sq_wqe* %24, %struct.hinic_sq_wqe** %5, align 8
  %25 = load %struct.hinic_sq_wqe*, %struct.hinic_sq_wqe** %5, align 8
  %26 = icmp ne %struct.hinic_sq_wqe* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  br label %49

28:                                               ; preds = %21
  %29 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %30 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %29)
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %8, align 4
  %34 = load %struct.hinic_sq_wqe*, %struct.hinic_sq_wqe** %5, align 8
  %35 = load %struct.hinic_txq*, %struct.hinic_txq** %2, align 8
  %36 = getelementptr inbounds %struct.hinic_txq, %struct.hinic_txq* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @hinic_sq_get_sges(%struct.hinic_sq_wqe* %34, i32 %37, i32 %38)
  %40 = load %struct.hinic_sq*, %struct.hinic_sq** %4, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @hinic_sq_put_wqe(%struct.hinic_sq* %40, i32 %41)
  %43 = load %struct.hinic_dev*, %struct.hinic_dev** %3, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %45 = load %struct.hinic_txq*, %struct.hinic_txq** %2, align 8
  %46 = getelementptr inbounds %struct.hinic_txq, %struct.hinic_txq* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @tx_free_skb(%struct.hinic_dev* %43, %struct.sk_buff* %44, i32 %47)
  br label %17

49:                                               ; preds = %27, %17
  ret void
}

declare dso_local %struct.hinic_dev* @netdev_priv(i32) #1

declare dso_local %struct.hinic_sq_wqe* @hinic_sq_read_wqebb(%struct.hinic_sq*, %struct.sk_buff**, i32*, i32*) #1

declare dso_local %struct.hinic_sq_wqe* @hinic_sq_read_wqe(%struct.hinic_sq*, %struct.sk_buff**, i32, i32*) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @hinic_sq_get_sges(%struct.hinic_sq_wqe*, i32, i32) #1

declare dso_local i32 @hinic_sq_put_wqe(%struct.hinic_sq*, i32) #1

declare dso_local i32 @tx_free_skb(%struct.hinic_dev*, %struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
