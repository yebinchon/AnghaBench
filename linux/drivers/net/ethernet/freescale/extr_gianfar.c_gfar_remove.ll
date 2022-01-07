; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar.c_gfar_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar.c_gfar_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.gfar_private = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @gfar_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfar_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.gfar_private*, align 8
  %4 = alloca %struct.device_node*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.gfar_private* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.gfar_private* %6, %struct.gfar_private** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.device_node*, %struct.device_node** %9, align 8
  store %struct.device_node* %10, %struct.device_node** %4, align 8
  %11 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %12 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @of_node_put(i32 %13)
  %15 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %16 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @of_node_put(i32 %17)
  %19 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %20 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @unregister_netdev(i32 %21)
  %23 = load %struct.device_node*, %struct.device_node** %4, align 8
  %24 = call i64 @of_phy_is_fixed_link(%struct.device_node* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load %struct.device_node*, %struct.device_node** %4, align 8
  %28 = call i32 @of_phy_deregister_fixed_link(%struct.device_node* %27)
  br label %29

29:                                               ; preds = %26, %1
  %30 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %31 = call i32 @unmap_group_regs(%struct.gfar_private* %30)
  %32 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %33 = call i32 @gfar_free_rx_queues(%struct.gfar_private* %32)
  %34 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %35 = call i32 @gfar_free_tx_queues(%struct.gfar_private* %34)
  %36 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %37 = call i32 @free_gfar_dev(%struct.gfar_private* %36)
  ret i32 0
}

declare dso_local %struct.gfar_private* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @of_node_put(i32) #1

declare dso_local i32 @unregister_netdev(i32) #1

declare dso_local i64 @of_phy_is_fixed_link(%struct.device_node*) #1

declare dso_local i32 @of_phy_deregister_fixed_link(%struct.device_node*) #1

declare dso_local i32 @unmap_group_regs(%struct.gfar_private*) #1

declare dso_local i32 @gfar_free_rx_queues(%struct.gfar_private*) #1

declare dso_local i32 @gfar_free_tx_queues(%struct.gfar_private*) #1

declare dso_local i32 @free_gfar_dev(%struct.gfar_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
