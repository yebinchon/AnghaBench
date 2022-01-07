; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ethtool.c_e1000_get_pauseparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ethtool.c_e1000_get_pauseparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_pauseparam = type { i32, i32, i32 }
%struct.e1000_adapter = type { i64, %struct.e1000_hw }
%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@AUTONEG_ENABLE = common dso_local global i32 0, align 4
@AUTONEG_DISABLE = common dso_local global i32 0, align 4
@e1000_fc_rx_pause = common dso_local global i64 0, align 8
@e1000_fc_tx_pause = common dso_local global i64 0, align 8
@e1000_fc_full = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_pauseparam*)* @e1000_get_pauseparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_get_pauseparam(%struct.net_device* %0, %struct.ethtool_pauseparam* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_pauseparam*, align 8
  %5 = alloca %struct.e1000_adapter*, align 8
  %6 = alloca %struct.e1000_hw*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_pauseparam* %1, %struct.ethtool_pauseparam** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.e1000_adapter* @netdev_priv(%struct.net_device* %7)
  store %struct.e1000_adapter* %8, %struct.e1000_adapter** %5, align 8
  %9 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %10 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %9, i32 0, i32 1
  store %struct.e1000_hw* %10, %struct.e1000_hw** %6, align 8
  %11 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %12 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @AUTONEG_ENABLE, align 4
  br label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @AUTONEG_DISABLE, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  %21 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %22 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %24 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @e1000_fc_rx_pause, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %19
  %30 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %31 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %30, i32 0, i32 0
  store i32 1, i32* %31, align 4
  br label %56

32:                                               ; preds = %19
  %33 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %34 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @e1000_fc_tx_pause, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %41 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %40, i32 0, i32 1
  store i32 1, i32* %41, align 4
  br label %55

42:                                               ; preds = %32
  %43 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %44 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @e1000_fc_full, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %42
  %50 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %51 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %50, i32 0, i32 0
  store i32 1, i32* %51, align 4
  %52 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %53 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %52, i32 0, i32 1
  store i32 1, i32* %53, align 4
  br label %54

54:                                               ; preds = %49, %42
  br label %55

55:                                               ; preds = %54, %39
  br label %56

56:                                               ; preds = %55, %29
  ret void
}

declare dso_local %struct.e1000_adapter* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
