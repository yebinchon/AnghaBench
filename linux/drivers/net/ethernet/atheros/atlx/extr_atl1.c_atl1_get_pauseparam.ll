; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl1.c_atl1_get_pauseparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl1.c_atl1_get_pauseparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_pauseparam = type { i32, i32, i32 }
%struct.atl1_adapter = type { %struct.atl1_hw }
%struct.atl1_hw = type { i64 }

@MEDIA_TYPE_AUTO_SENSOR = common dso_local global i64 0, align 8
@MEDIA_TYPE_1000M_FULL = common dso_local global i64 0, align 8
@AUTONEG_ENABLE = common dso_local global i32 0, align 4
@AUTONEG_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_pauseparam*)* @atl1_get_pauseparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atl1_get_pauseparam(%struct.net_device* %0, %struct.ethtool_pauseparam* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_pauseparam*, align 8
  %5 = alloca %struct.atl1_adapter*, align 8
  %6 = alloca %struct.atl1_hw*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_pauseparam* %1, %struct.ethtool_pauseparam** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.atl1_adapter* @netdev_priv(%struct.net_device* %7)
  store %struct.atl1_adapter* %8, %struct.atl1_adapter** %5, align 8
  %9 = load %struct.atl1_adapter*, %struct.atl1_adapter** %5, align 8
  %10 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %9, i32 0, i32 0
  store %struct.atl1_hw* %10, %struct.atl1_hw** %6, align 8
  %11 = load %struct.atl1_hw*, %struct.atl1_hw** %6, align 8
  %12 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @MEDIA_TYPE_AUTO_SENSOR, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %22, label %16

16:                                               ; preds = %2
  %17 = load %struct.atl1_hw*, %struct.atl1_hw** %6, align 8
  %18 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @MEDIA_TYPE_1000M_FULL, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %16, %2
  %23 = load i32, i32* @AUTONEG_ENABLE, align 4
  %24 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %25 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  br label %30

26:                                               ; preds = %16
  %27 = load i32, i32* @AUTONEG_DISABLE, align 4
  %28 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %29 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  br label %30

30:                                               ; preds = %26, %22
  %31 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %32 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %31, i32 0, i32 0
  store i32 1, i32* %32, align 4
  %33 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %34 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %33, i32 0, i32 1
  store i32 1, i32* %34, align 4
  ret void
}

declare dso_local %struct.atl1_adapter* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
