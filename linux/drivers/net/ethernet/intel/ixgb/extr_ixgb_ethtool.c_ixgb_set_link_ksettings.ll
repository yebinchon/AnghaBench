; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgb/extr_ixgb_ethtool.c_ixgb_set_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgb/extr_ixgb_ethtool.c_ixgb_set_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.ixgb_adapter = type { i32 }

@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@SPEED_10000 = common dso_local global i64 0, align 8
@DUPLEX_FULL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)* @ixgb_set_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgb_set_link_ksettings(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_link_ksettings*, align 8
  %6 = alloca %struct.ixgb_adapter*, align 8
  %7 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.ixgb_adapter* @netdev_priv(%struct.net_device* %8)
  store %struct.ixgb_adapter* %9, %struct.ixgb_adapter** %6, align 8
  %10 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %11 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %7, align 8
  %14 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %15 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @AUTONEG_ENABLE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %31, label %20

20:                                               ; preds = %2
  %21 = load i64, i64* %7, align 8
  %22 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %23 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %21, %25
  %27 = load i64, i64* @SPEED_10000, align 8
  %28 = load i64, i64* @DUPLEX_FULL, align 8
  %29 = add nsw i64 %27, %28
  %30 = icmp ne i64 %26, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %20, %2
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %53

34:                                               ; preds = %20
  %35 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %6, align 8
  %36 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @netif_running(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %34
  %41 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %6, align 8
  %42 = call i32 @ixgb_down(%struct.ixgb_adapter* %41, i32 1)
  %43 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %6, align 8
  %44 = call i32 @ixgb_reset(%struct.ixgb_adapter* %43)
  %45 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %6, align 8
  %46 = call i32 @ixgb_up(%struct.ixgb_adapter* %45)
  %47 = load %struct.net_device*, %struct.net_device** %4, align 8
  %48 = call i32 @ixgb_set_speed_duplex(%struct.net_device* %47)
  br label %52

49:                                               ; preds = %34
  %50 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %6, align 8
  %51 = call i32 @ixgb_reset(%struct.ixgb_adapter* %50)
  br label %52

52:                                               ; preds = %49, %40
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %31
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.ixgb_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_running(i32) #1

declare dso_local i32 @ixgb_down(%struct.ixgb_adapter*, i32) #1

declare dso_local i32 @ixgb_reset(%struct.ixgb_adapter*) #1

declare dso_local i32 @ixgb_up(%struct.ixgb_adapter*) #1

declare dso_local i32 @ixgb_set_speed_duplex(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
