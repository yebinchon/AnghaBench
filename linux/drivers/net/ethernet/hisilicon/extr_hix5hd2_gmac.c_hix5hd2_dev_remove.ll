; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hix5hd2_gmac.c_hix5hd2_dev_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hix5hd2_gmac.c_hix5hd2_dev_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.net_device = type { i32 }
%struct.hix5hd2_priv = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @hix5hd2_dev_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hix5hd2_dev_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.hix5hd2_priv*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.net_device* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.hix5hd2_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.hix5hd2_priv* %8, %struct.hix5hd2_priv** %4, align 8
  %9 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %4, align 8
  %10 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %9, i32 0, i32 4
  %11 = call i32 @netif_napi_del(i32* %10)
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = call i32 @unregister_netdev(%struct.net_device* %12)
  %14 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %4, align 8
  %15 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @mdiobus_unregister(i32 %16)
  %18 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %4, align 8
  %19 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @mdiobus_free(i32 %20)
  %22 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %4, align 8
  %23 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @HAS_CAP_TSO(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %4, align 8
  %29 = call i32 @hix5hd2_destroy_sg_desc_queue(%struct.hix5hd2_priv* %28)
  br label %30

30:                                               ; preds = %27, %1
  %31 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %4, align 8
  %32 = call i32 @hix5hd2_destroy_hw_desc_queue(%struct.hix5hd2_priv* %31)
  %33 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %4, align 8
  %34 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @of_node_put(i32 %35)
  %37 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %4, align 8
  %38 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %37, i32 0, i32 0
  %39 = call i32 @cancel_work_sync(i32* %38)
  %40 = load %struct.net_device*, %struct.net_device** %3, align 8
  %41 = call i32 @free_netdev(%struct.net_device* %40)
  ret i32 0
}

declare dso_local %struct.net_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.hix5hd2_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_napi_del(i32*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @mdiobus_unregister(i32) #1

declare dso_local i32 @mdiobus_free(i32) #1

declare dso_local i64 @HAS_CAP_TSO(i32) #1

declare dso_local i32 @hix5hd2_destroy_sg_desc_queue(%struct.hix5hd2_priv*) #1

declare dso_local i32 @hix5hd2_destroy_hw_desc_queue(%struct.hix5hd2_priv*) #1

declare dso_local i32 @of_node_put(i32) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
