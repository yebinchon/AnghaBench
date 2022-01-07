; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_enet.c_hns_nic_dev_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_enet.c_hns_nic_dev_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.net_device = type { i64, i64 }
%struct.hns_nic_priv = type { i32, i32, i32, %struct.TYPE_2__, i32*, i32* }
%struct.TYPE_2__ = type { i32* }

@NETREG_UNINITIALIZED = common dso_local global i64 0, align 8
@NIC_STATE_REMOVING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @hns_nic_dev_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_nic_dev_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.hns_nic_priv*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.net_device* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.hns_nic_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.hns_nic_priv* %8, %struct.hns_nic_priv** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @NETREG_UNINITIALIZED, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = call i32 @unregister_netdev(%struct.net_device* %15)
  br label %17

17:                                               ; preds = %14, %1
  %18 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %4, align 8
  %19 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %18, i32 0, i32 5
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %4, align 8
  %24 = call i32 @hns_nic_uninit_ring_data(%struct.hns_nic_priv* %23)
  br label %25

25:                                               ; preds = %22, %17
  %26 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %4, align 8
  %27 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %26, i32 0, i32 5
  store i32* null, i32** %27, align 8
  %28 = load %struct.net_device*, %struct.net_device** %3, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = load %struct.net_device*, %struct.net_device** %3, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @phy_disconnect(i64 %35)
  br label %37

37:                                               ; preds = %32, %25
  %38 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %4, align 8
  %39 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %38, i32 0, i32 4
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @IS_ERR_OR_NULL(i32* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %37
  %44 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %4, align 8
  %45 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %44, i32 0, i32 4
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @hnae_put_handle(i32* %46)
  br label %48

48:                                               ; preds = %43, %37
  %49 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %4, align 8
  %50 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %49, i32 0, i32 4
  store i32* null, i32** %50, align 8
  %51 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %4, align 8
  %52 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %48
  %57 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %4, align 8
  %58 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %57, i32 0, i32 3
  %59 = call i32 @hnae_unregister_notifier(%struct.TYPE_2__* %58)
  br label %60

60:                                               ; preds = %56, %48
  %61 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %4, align 8
  %62 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i32* null, i32** %63, align 8
  %64 = load i32, i32* @NIC_STATE_REMOVING, align 4
  %65 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %4, align 8
  %66 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %65, i32 0, i32 2
  %67 = call i32 @set_bit(i32 %64, i32* %66)
  %68 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %4, align 8
  %69 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %68, i32 0, i32 1
  %70 = call i32 @cancel_work_sync(i32* %69)
  %71 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %4, align 8
  %72 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @to_of_node(i32 %73)
  %75 = call i32 @of_node_put(i32 %74)
  %76 = load %struct.net_device*, %struct.net_device** %3, align 8
  %77 = call i32 @free_netdev(%struct.net_device* %76)
  ret i32 0
}

declare dso_local %struct.net_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.hns_nic_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @hns_nic_uninit_ring_data(%struct.hns_nic_priv*) #1

declare dso_local i32 @phy_disconnect(i64) #1

declare dso_local i32 @IS_ERR_OR_NULL(i32*) #1

declare dso_local i32 @hnae_put_handle(i32*) #1

declare dso_local i32 @hnae_unregister_notifier(%struct.TYPE_2__*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @of_node_put(i32) #1

declare dso_local i32 @to_of_node(i32) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
