; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_main.c_fec_drv_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_main.c_fec_drv_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.net_device = type { i32 }
%struct.fec_enet_private = type { i32, i32, i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @fec_drv_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fec_drv_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.fec_enet_private*, align 8
  %5 = alloca %struct.device_node*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = call %struct.net_device* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.net_device* %7, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.fec_enet_private* @netdev_priv(%struct.net_device* %8)
  store %struct.fec_enet_private* %9, %struct.fec_enet_private** %4, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %5, align 8
  %14 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %15 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %14, i32 0, i32 4
  %16 = call i32 @cancel_work_sync(i32* %15)
  %17 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %18 = call i32 @fec_ptp_stop(%struct.platform_device* %17)
  %19 = load %struct.net_device*, %struct.net_device** %3, align 8
  %20 = call i32 @unregister_netdev(%struct.net_device* %19)
  %21 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %22 = call i32 @fec_enet_mii_remove(%struct.fec_enet_private* %21)
  %23 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %24 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %1
  %28 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %29 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @regulator_disable(i64 %30)
  br label %32

32:                                               ; preds = %27, %1
  %33 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = call i32 @pm_runtime_put(%struct.TYPE_3__* %34)
  %36 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = call i32 @pm_runtime_disable(%struct.TYPE_3__* %37)
  %39 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %40 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @clk_disable_unprepare(i32 %41)
  %43 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %44 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @clk_disable_unprepare(i32 %45)
  %47 = load %struct.device_node*, %struct.device_node** %5, align 8
  %48 = call i64 @of_phy_is_fixed_link(%struct.device_node* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %32
  %51 = load %struct.device_node*, %struct.device_node** %5, align 8
  %52 = call i32 @of_phy_deregister_fixed_link(%struct.device_node* %51)
  br label %53

53:                                               ; preds = %50, %32
  %54 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %55 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @of_node_put(i32 %56)
  %58 = load %struct.net_device*, %struct.net_device** %3, align 8
  %59 = call i32 @free_netdev(%struct.net_device* %58)
  ret i32 0
}

declare dso_local %struct.net_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.fec_enet_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @fec_ptp_stop(%struct.platform_device*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @fec_enet_mii_remove(%struct.fec_enet_private*) #1

declare dso_local i32 @regulator_disable(i64) #1

declare dso_local i32 @pm_runtime_put(%struct.TYPE_3__*) #1

declare dso_local i32 @pm_runtime_disable(%struct.TYPE_3__*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i64 @of_phy_is_fixed_link(%struct.device_node*) #1

declare dso_local i32 @of_phy_deregister_fixed_link(%struct.device_node*) #1

declare dso_local i32 @of_node_put(i32) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
