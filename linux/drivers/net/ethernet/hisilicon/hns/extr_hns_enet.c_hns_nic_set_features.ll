; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_enet.c_hns_nic_set_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_enet.c_hns_nic_set_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.hns_nic_priv = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@NETIF_F_TSO = common dso_local global i32 0, align 4
@NETIF_F_TSO6 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"enet v1 do not support tso!\0A\00", align 1
@fill_tso_desc = common dso_local global i32 0, align 4
@hns_nic_maybe_stop_tso = common dso_local global i32 0, align 4
@fill_v2_desc = common dso_local global i32 0, align 4
@hns_nic_maybe_stop_tx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @hns_nic_set_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_nic_set_features(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hns_nic_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.hns_nic_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.hns_nic_priv* %7, %struct.hns_nic_priv** %5, align 8
  %8 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %5, align 8
  %9 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %22 [
    i32 128, label %11
  ]

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @NETIF_F_TSO, align 4
  %14 = load i32, i32* @NETIF_F_TSO6, align 4
  %15 = or i32 %13, %14
  %16 = and i32 %12, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %11
  %19 = load %struct.net_device*, %struct.net_device** %3, align 8
  %20 = call i32 @netdev_info(%struct.net_device* %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %18, %11
  br label %50

22:                                               ; preds = %2
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @NETIF_F_TSO, align 4
  %25 = load i32, i32* @NETIF_F_TSO6, align 4
  %26 = or i32 %24, %25
  %27 = and i32 %23, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %22
  %30 = load i32, i32* @fill_tso_desc, align 4
  %31 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %5, align 8
  %32 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  store i32 %30, i32* %33, align 4
  %34 = load i32, i32* @hns_nic_maybe_stop_tso, align 4
  %35 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %5, align 8
  %36 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 4
  %38 = load %struct.net_device*, %struct.net_device** %3, align 8
  %39 = call i32 @netif_set_gso_max_size(%struct.net_device* %38, i32 28672)
  br label %49

40:                                               ; preds = %22
  %41 = load i32, i32* @fill_v2_desc, align 4
  %42 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %5, align 8
  %43 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  store i32 %41, i32* %44, align 4
  %45 = load i32, i32* @hns_nic_maybe_stop_tx, align 4
  %46 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %5, align 8
  %47 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 4
  br label %49

49:                                               ; preds = %40, %29
  br label %50

50:                                               ; preds = %49, %21
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.net_device*, %struct.net_device** %3, align 8
  %53 = getelementptr inbounds %struct.net_device, %struct.net_device* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  ret i32 0
}

declare dso_local %struct.hns_nic_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*) #1

declare dso_local i32 @netif_set_gso_max_size(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
