; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcm63xx_enet.c_bcm_enetsw_set_ringparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcm63xx_enet.c_bcm_enetsw_set_ringparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_ringparam = type { i32, i32 }
%struct.bcm_enet_priv = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_ringparam*)* @bcm_enetsw_set_ringparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_enetsw_set_ringparam(%struct.net_device* %0, %struct.ethtool_ringparam* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_ringparam*, align 8
  %5 = alloca %struct.bcm_enet_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_ringparam* %1, %struct.ethtool_ringparam** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.bcm_enet_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.bcm_enet_priv* %9, %struct.bcm_enet_priv** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call i64 @netif_running(%struct.net_device* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = call i32 @bcm_enetsw_stop(%struct.net_device* %14)
  store i32 1, i32* %6, align 4
  br label %16

16:                                               ; preds = %13, %2
  %17 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %18 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %21 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %23 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %26 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %16
  %30 = load %struct.net_device*, %struct.net_device** %3, align 8
  %31 = call i32 @bcm_enetsw_open(%struct.net_device* %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load %struct.net_device*, %struct.net_device** %3, align 8
  %36 = call i32 @dev_close(%struct.net_device* %35)
  br label %37

37:                                               ; preds = %34, %29
  br label %38

38:                                               ; preds = %37, %16
  ret i32 0
}

declare dso_local %struct.bcm_enet_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @bcm_enetsw_stop(%struct.net_device*) #1

declare dso_local i32 @bcm_enetsw_open(%struct.net_device*) #1

declare dso_local i32 @dev_close(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
