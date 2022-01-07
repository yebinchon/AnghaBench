; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/wiznet/extr_w5300.c_w5300_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/wiznet/extr_w5300.c_w5300_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.w5300_priv = type { i32, %struct.net_device* }
%struct.net_device = type { i32, i32, i32*, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@w5300_netdev_ops = common dso_local global i32 0, align 4
@w5300_ethtool_ops = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@w5300_napi_poll = common dso_local global i32 0, align 4
@NETIF_F_VLAN_CHALLENGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @w5300_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w5300_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.w5300_priv*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = call %struct.net_device* @alloc_etherdev(i32 16)
  store %struct.net_device* %7, %struct.net_device** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %5, align 8
  %9 = icmp ne %struct.net_device* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %62

13:                                               ; preds = %1
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = call i32 @SET_NETDEV_DEV(%struct.net_device* %14, i32* %16)
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = load %struct.net_device*, %struct.net_device** %5, align 8
  %20 = call i32 @platform_set_drvdata(%struct.platform_device* %18, %struct.net_device* %19)
  %21 = load %struct.net_device*, %struct.net_device** %5, align 8
  %22 = call %struct.w5300_priv* @netdev_priv(%struct.net_device* %21)
  store %struct.w5300_priv* %22, %struct.w5300_priv** %4, align 8
  %23 = load %struct.net_device*, %struct.net_device** %5, align 8
  %24 = load %struct.w5300_priv*, %struct.w5300_priv** %4, align 8
  %25 = getelementptr inbounds %struct.w5300_priv, %struct.w5300_priv* %24, i32 0, i32 1
  store %struct.net_device* %23, %struct.net_device** %25, align 8
  %26 = load %struct.net_device*, %struct.net_device** %5, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 3
  store i32* @w5300_netdev_ops, i32** %27, align 8
  %28 = load %struct.net_device*, %struct.net_device** %5, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 2
  store i32* @w5300_ethtool_ops, i32** %29, align 8
  %30 = load i32, i32* @HZ, align 4
  %31 = load %struct.net_device*, %struct.net_device** %5, align 8
  %32 = getelementptr inbounds %struct.net_device, %struct.net_device* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.net_device*, %struct.net_device** %5, align 8
  %34 = load %struct.w5300_priv*, %struct.w5300_priv** %4, align 8
  %35 = getelementptr inbounds %struct.w5300_priv, %struct.w5300_priv* %34, i32 0, i32 0
  %36 = load i32, i32* @w5300_napi_poll, align 4
  %37 = call i32 @netif_napi_add(%struct.net_device* %33, i32* %35, i32 %36, i32 16)
  %38 = load i32, i32* @NETIF_F_VLAN_CHALLENGED, align 4
  %39 = load %struct.net_device*, %struct.net_device** %5, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 8
  %43 = load %struct.net_device*, %struct.net_device** %5, align 8
  %44 = call i32 @register_netdev(%struct.net_device* %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %13
  br label %58

48:                                               ; preds = %13
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = call i32 @w5300_hw_probe(%struct.platform_device* %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %55

54:                                               ; preds = %48
  store i32 0, i32* %2, align 4
  br label %62

55:                                               ; preds = %53
  %56 = load %struct.net_device*, %struct.net_device** %5, align 8
  %57 = call i32 @unregister_netdev(%struct.net_device* %56)
  br label %58

58:                                               ; preds = %55, %47
  %59 = load %struct.net_device*, %struct.net_device** %5, align 8
  %60 = call i32 @free_netdev(%struct.net_device* %59)
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %58, %54, %10
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.net_device*) #1

declare dso_local %struct.w5300_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_napi_add(%struct.net_device*, i32*, i32, i32) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @w5300_hw_probe(%struct.platform_device*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
