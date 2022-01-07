; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_enet.c_hns_nic_net_reinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_enet.c_hns_nic_net_reinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.hns_nic_priv = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@NIC_STATE_REINITING = common dso_local global i32 0, align 4
@HNAE_PORT_DEBUG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hns_nic_net_reinit(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.hns_nic_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.hns_nic_priv* @netdev_priv(%struct.net_device* %5)
  store %struct.hns_nic_priv* %6, %struct.hns_nic_priv** %3, align 8
  %7 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %3, align 8
  %8 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %4, align 4
  %12 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %3, align 8
  %13 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @netif_trans_update(i32 %14)
  br label %16

16:                                               ; preds = %22, %1
  %17 = load i32, i32* @NIC_STATE_REINITING, align 4
  %18 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %3, align 8
  %19 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %18, i32 0, i32 0
  %20 = call i64 @test_and_set_bit(i32 %17, i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %16

24:                                               ; preds = %16
  %25 = load %struct.net_device*, %struct.net_device** %2, align 8
  %26 = call i32 @hns_nic_net_down(%struct.net_device* %25)
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @HNAE_PORT_DEBUG, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load %struct.net_device*, %struct.net_device** %2, align 8
  %32 = call i32 @hns_nic_net_reset(%struct.net_device* %31)
  br label %33

33:                                               ; preds = %30, %24
  %34 = load %struct.net_device*, %struct.net_device** %2, align 8
  %35 = call i32 @hns_nic_net_up(%struct.net_device* %34)
  %36 = load i32, i32* @NIC_STATE_REINITING, align 4
  %37 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %3, align 8
  %38 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %37, i32 0, i32 0
  %39 = call i32 @clear_bit(i32 %36, i32* %38)
  ret void
}

declare dso_local %struct.hns_nic_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_trans_update(i32) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @hns_nic_net_down(%struct.net_device*) #1

declare dso_local i32 @hns_nic_net_reset(%struct.net_device*) #1

declare dso_local i32 @hns_nic_net_up(%struct.net_device*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
