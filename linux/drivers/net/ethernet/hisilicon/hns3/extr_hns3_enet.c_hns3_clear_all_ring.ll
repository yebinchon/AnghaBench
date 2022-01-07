; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_clear_all_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_clear_all_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_handle = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.hns3_nic_priv = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.hns3_enet_ring* }
%struct.hns3_enet_ring = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hnae3_handle*, i32)* @hns3_clear_all_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns3_clear_all_ring(%struct.hnae3_handle* %0, i32 %1) #0 {
  %3 = alloca %struct.hnae3_handle*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.hns3_nic_priv*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.hns3_enet_ring*, align 8
  store %struct.hnae3_handle* %0, %struct.hnae3_handle** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %10 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %5, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.hns3_nic_priv* @netdev_priv(%struct.net_device* %13)
  store %struct.hns3_nic_priv* %14, %struct.hns3_nic_priv** %6, align 8
  store i64 0, i64* %7, align 8
  br label %15

15:                                               ; preds = %53, %2
  %16 = load i64, i64* %7, align 8
  %17 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %18 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ult i64 %16, %20
  br i1 %21, label %22, label %56

22:                                               ; preds = %15
  %23 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %6, align 8
  %24 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = load i64, i64* %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %28, align 8
  store %struct.hns3_enet_ring* %29, %struct.hns3_enet_ring** %8, align 8
  %30 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %8, align 8
  %31 = call i32 @hns3_clear_tx_ring(%struct.hns3_enet_ring* %30)
  %32 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %6, align 8
  %33 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %37 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add i64 %35, %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %42, align 8
  store %struct.hns3_enet_ring* %43, %struct.hns3_enet_ring** %8, align 8
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %22
  %47 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %8, align 8
  %48 = call i32 @hns3_force_clear_rx_ring(%struct.hns3_enet_ring* %47)
  br label %52

49:                                               ; preds = %22
  %50 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %8, align 8
  %51 = call i32 @hns3_clear_rx_ring(%struct.hns3_enet_ring* %50)
  br label %52

52:                                               ; preds = %49, %46
  br label %53

53:                                               ; preds = %52
  %54 = load i64, i64* %7, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %7, align 8
  br label %15

56:                                               ; preds = %15
  ret void
}

declare dso_local %struct.hns3_nic_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @hns3_clear_tx_ring(%struct.hns3_enet_ring*) #1

declare dso_local i32 @hns3_force_clear_rx_ring(%struct.hns3_enet_ring*) #1

declare dso_local i32 @hns3_clear_rx_ring(%struct.hns3_enet_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
