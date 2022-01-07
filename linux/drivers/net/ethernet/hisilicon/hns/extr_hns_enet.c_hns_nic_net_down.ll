; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_enet.c_hns_nic_net_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_enet.c_hns_nic_net_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64 }
%struct.hnae_ae_ops = type { i32 (%struct.TYPE_4__*)* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.hnae_ae_ops* }
%struct.hns_nic_priv = type { i64, %struct.TYPE_4__*, i64, i32, i32 }

@NIC_STATE_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @hns_nic_net_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_nic_net_down(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.hnae_ae_ops*, align 8
  %5 = alloca %struct.hns_nic_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.hns_nic_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.hns_nic_priv* %7, %struct.hns_nic_priv** %5, align 8
  %8 = load i32, i32* @NIC_STATE_DOWN, align 4
  %9 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %5, align 8
  %10 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %9, i32 0, i32 4
  %11 = call i64 @test_and_set_bit(i32 %8, i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %90

14:                                               ; preds = %1
  %15 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %5, align 8
  %16 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %15, i32 0, i32 3
  %17 = call i32 @del_timer_sync(i32* %16)
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = call i32 @netif_tx_stop_all_queues(%struct.net_device* %18)
  %20 = load %struct.net_device*, %struct.net_device** %2, align 8
  %21 = call i32 @netif_carrier_off(%struct.net_device* %20)
  %22 = load %struct.net_device*, %struct.net_device** %2, align 8
  %23 = call i32 @netif_tx_disable(%struct.net_device* %22)
  %24 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %5, align 8
  %25 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %24, i32 0, i32 2
  store i64 0, i64* %25, align 8
  %26 = load %struct.net_device*, %struct.net_device** %2, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %14
  %31 = load %struct.net_device*, %struct.net_device** %2, align 8
  %32 = getelementptr inbounds %struct.net_device, %struct.net_device* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @phy_stop(i64 %33)
  br label %35

35:                                               ; preds = %30, %14
  %36 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %5, align 8
  %37 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load %struct.hnae_ae_ops*, %struct.hnae_ae_ops** %41, align 8
  store %struct.hnae_ae_ops* %42, %struct.hnae_ae_ops** %4, align 8
  %43 = load %struct.hnae_ae_ops*, %struct.hnae_ae_ops** %4, align 8
  %44 = getelementptr inbounds %struct.hnae_ae_ops, %struct.hnae_ae_ops* %43, i32 0, i32 0
  %45 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %44, align 8
  %46 = icmp ne i32 (%struct.TYPE_4__*)* %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %35
  %48 = load %struct.hnae_ae_ops*, %struct.hnae_ae_ops** %4, align 8
  %49 = getelementptr inbounds %struct.hnae_ae_ops, %struct.hnae_ae_ops* %48, i32 0, i32 0
  %50 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %49, align 8
  %51 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %5, align 8
  %52 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = call i32 %50(%struct.TYPE_4__* %53)
  br label %55

55:                                               ; preds = %47, %35
  %56 = load %struct.net_device*, %struct.net_device** %2, align 8
  %57 = call i32 @netif_tx_stop_all_queues(%struct.net_device* %56)
  %58 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %5, align 8
  %59 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %58, i32 0, i32 1
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sub nsw i32 %62, 1
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %87, %55
  %65 = load i32, i32* %3, align 4
  %66 = icmp sge i32 %65, 0
  br i1 %66, label %67, label %90

67:                                               ; preds = %64
  %68 = load %struct.net_device*, %struct.net_device** %2, align 8
  %69 = load i32, i32* %3, align 4
  %70 = call i32 @hns_nic_ring_close(%struct.net_device* %68, i32 %69)
  %71 = load %struct.net_device*, %struct.net_device** %2, align 8
  %72 = load i32, i32* %3, align 4
  %73 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %5, align 8
  %74 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %73, i32 0, i32 1
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %72, %77
  %79 = call i32 @hns_nic_ring_close(%struct.net_device* %71, i32 %78)
  %80 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %5, align 8
  %81 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* %3, align 4
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %82, %84
  %86 = call i32 @hns_nic_tx_clr_all_bufs(i64 %85)
  br label %87

87:                                               ; preds = %67
  %88 = load i32, i32* %3, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %3, align 4
  br label %64

90:                                               ; preds = %13, %64
  ret void
}

declare dso_local %struct.hns_nic_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @netif_tx_stop_all_queues(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @netif_tx_disable(%struct.net_device*) #1

declare dso_local i32 @phy_stop(i64) #1

declare dso_local i32 @hns_nic_ring_close(%struct.net_device*, i32) #1

declare dso_local i32 @hns_nic_tx_clr_all_bufs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
