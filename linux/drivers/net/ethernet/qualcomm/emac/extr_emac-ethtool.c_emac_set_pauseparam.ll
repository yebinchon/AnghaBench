; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac-ethtool.c_emac_set_pauseparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac-ethtool.c_emac_set_pauseparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_pauseparam = type { i64, i64, i64 }
%struct.emac_adapter = type { i32, i32, i32 }

@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_pauseparam*)* @emac_set_pauseparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emac_set_pauseparam(%struct.net_device* %0, %struct.ethtool_pauseparam* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_pauseparam*, align 8
  %6 = alloca %struct.emac_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_pauseparam* %1, %struct.ethtool_pauseparam** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.emac_adapter* @netdev_priv(%struct.net_device* %7)
  store %struct.emac_adapter* %8, %struct.emac_adapter** %6, align 8
  %9 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %10 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @AUTONEG_ENABLE, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = load %struct.emac_adapter*, %struct.emac_adapter** %6, align 8
  %16 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %18 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = load %struct.emac_adapter*, %struct.emac_adapter** %6, align 8
  %23 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %25 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  %28 = zext i1 %27 to i32
  %29 = load %struct.emac_adapter*, %struct.emac_adapter** %6, align 8
  %30 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load %struct.net_device*, %struct.net_device** %4, align 8
  %32 = call i64 @netif_running(%struct.net_device* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %2
  %35 = load %struct.emac_adapter*, %struct.emac_adapter** %6, align 8
  %36 = call i32 @emac_reinit_locked(%struct.emac_adapter* %35)
  store i32 %36, i32* %3, align 4
  br label %38

37:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %34
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.emac_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @emac_reinit_locked(%struct.emac_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
