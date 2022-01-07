; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcmsysport.c_bcm_sysport_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcmsysport.c_bcm_sysport_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.net_device = type { i32 }
%struct.bcm_sysport_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @bcm_sysport_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_sysport_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.bcm_sysport_priv*, align 8
  %5 = alloca %struct.device_node*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = call %struct.net_device* @dev_get_drvdata(%struct.TYPE_3__* %7)
  store %struct.net_device* %8, %struct.net_device** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.bcm_sysport_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.bcm_sysport_priv* %10, %struct.bcm_sysport_priv** %4, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %5, align 8
  %15 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %4, align 8
  %16 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %15, i32 0, i32 0
  %17 = call i32 @unregister_dsa_notifier(i32* %16)
  %18 = load %struct.net_device*, %struct.net_device** %3, align 8
  %19 = call i32 @unregister_netdev(%struct.net_device* %18)
  %20 = load %struct.device_node*, %struct.device_node** %5, align 8
  %21 = call i64 @of_phy_is_fixed_link(%struct.device_node* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load %struct.device_node*, %struct.device_node** %5, align 8
  %25 = call i32 @of_phy_deregister_fixed_link(%struct.device_node* %24)
  br label %26

26:                                               ; preds = %23, %1
  %27 = load %struct.net_device*, %struct.net_device** %3, align 8
  %28 = call i32 @free_netdev(%struct.net_device* %27)
  %29 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = call i32 @dev_set_drvdata(%struct.TYPE_3__* %30, i32* null)
  ret i32 0
}

declare dso_local %struct.net_device* @dev_get_drvdata(%struct.TYPE_3__*) #1

declare dso_local %struct.bcm_sysport_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @unregister_dsa_notifier(i32*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i64 @of_phy_is_fixed_link(%struct.device_node*) #1

declare dso_local i32 @of_phy_deregister_fixed_link(%struct.device_node*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_3__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
