; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_queue_to_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_queue_to_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_queue = type { i64 }
%struct.hns3_nic_priv = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@HNAE3_RING_TYPE_TX = common dso_local global i32 0, align 4
@HNAE3_RING_TYPE_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hnae3_queue*, %struct.hns3_nic_priv*)* @hns3_queue_to_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns3_queue_to_ring(%struct.hnae3_queue* %0, %struct.hns3_nic_priv* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hnae3_queue*, align 8
  %5 = alloca %struct.hns3_nic_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.hnae3_queue* %0, %struct.hnae3_queue** %4, align 8
  store %struct.hns3_nic_priv* %1, %struct.hns3_nic_priv** %5, align 8
  %7 = load %struct.hnae3_queue*, %struct.hnae3_queue** %4, align 8
  %8 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %5, align 8
  %9 = load i32, i32* @HNAE3_RING_TYPE_TX, align 4
  %10 = call i32 @hns3_ring_get_cfg(%struct.hnae3_queue* %7, %struct.hns3_nic_priv* %8, i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %3, align 4
  br label %38

15:                                               ; preds = %2
  %16 = load %struct.hnae3_queue*, %struct.hnae3_queue** %4, align 8
  %17 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %5, align 8
  %18 = load i32, i32* @HNAE3_RING_TYPE_RX, align 4
  %19 = call i32 @hns3_ring_get_cfg(%struct.hnae3_queue* %16, %struct.hns3_nic_priv* %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %15
  %23 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %5, align 8
  %24 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %5, align 8
  %27 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load %struct.hnae3_queue*, %struct.hnae3_queue** %4, align 8
  %30 = getelementptr inbounds %struct.hnae3_queue, %struct.hnae3_queue* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @devm_kfree(i32 %25, i32 %34)
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %3, align 4
  br label %38

37:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %22, %13
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @hns3_ring_get_cfg(%struct.hnae3_queue*, %struct.hns3_nic_priv*, i32) #1

declare dso_local i32 @devm_kfree(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
