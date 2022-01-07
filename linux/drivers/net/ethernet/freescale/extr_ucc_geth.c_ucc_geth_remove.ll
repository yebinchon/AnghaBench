; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_ucc_geth.c_ucc_geth_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_ucc_geth.c_ucc_geth_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.net_device = type { i32 }
%struct.ucc_geth_private = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ucc_geth_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucc_geth_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ucc_geth_private*, align 8
  %5 = alloca %struct.device_node*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = call %struct.net_device* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.net_device* %7, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.ucc_geth_private* @netdev_priv(%struct.net_device* %8)
  store %struct.ucc_geth_private* %9, %struct.ucc_geth_private** %4, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %5, align 8
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = call i32 @unregister_netdev(%struct.net_device* %14)
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  %17 = call i32 @free_netdev(%struct.net_device* %16)
  %18 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %4, align 8
  %19 = call i32 @ucc_geth_memclean(%struct.ucc_geth_private* %18)
  %20 = load %struct.device_node*, %struct.device_node** %5, align 8
  %21 = call i64 @of_phy_is_fixed_link(%struct.device_node* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load %struct.device_node*, %struct.device_node** %5, align 8
  %25 = call i32 @of_phy_deregister_fixed_link(%struct.device_node* %24)
  br label %26

26:                                               ; preds = %23, %1
  %27 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %4, align 8
  %28 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @of_node_put(i32 %31)
  %33 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %4, align 8
  %34 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @of_node_put(i32 %37)
  ret i32 0
}

declare dso_local %struct.net_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.ucc_geth_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @ucc_geth_memclean(%struct.ucc_geth_private*) #1

declare dso_local i64 @of_phy_is_fixed_link(%struct.device_node*) #1

declare dso_local i32 @of_phy_deregister_fixed_link(%struct.device_node*) #1

declare dso_local i32 @of_node_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
