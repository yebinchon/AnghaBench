; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_reset_tx_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_reset_tx_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_handle = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.hns3_nic_priv = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.netdev_queue = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hnae3_handle*)* @hns3_reset_tx_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns3_reset_tx_queue(%struct.hnae3_handle* %0) #0 {
  %2 = alloca %struct.hnae3_handle*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.hns3_nic_priv*, align 8
  %5 = alloca %struct.netdev_queue*, align 8
  %6 = alloca i64, align 8
  store %struct.hnae3_handle* %0, %struct.hnae3_handle** %2, align 8
  %7 = load %struct.hnae3_handle*, %struct.hnae3_handle** %2, align 8
  %8 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %10 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %10, %struct.net_device** %3, align 8
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = call %struct.hns3_nic_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.hns3_nic_priv* %12, %struct.hns3_nic_priv** %4, align 8
  store i64 0, i64* %6, align 8
  br label %13

13:                                               ; preds = %32, %1
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.hnae3_handle*, %struct.hnae3_handle** %2, align 8
  %16 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ult i64 %14, %18
  br i1 %19, label %20, label %35

20:                                               ; preds = %13
  %21 = load %struct.net_device*, %struct.net_device** %3, align 8
  %22 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %4, align 8
  %23 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = load i64, i64* %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device* %21, i32 %28)
  store %struct.netdev_queue* %29, %struct.netdev_queue** %5, align 8
  %30 = load %struct.netdev_queue*, %struct.netdev_queue** %5, align 8
  %31 = call i32 @netdev_tx_reset_queue(%struct.netdev_queue* %30)
  br label %32

32:                                               ; preds = %20
  %33 = load i64, i64* %6, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %6, align 8
  br label %13

35:                                               ; preds = %13
  ret void
}

declare dso_local %struct.hns3_nic_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device*, i32) #1

declare dso_local i32 @netdev_tx_reset_queue(%struct.netdev_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
