; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ethtool.c_ixgbe_get_eee.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ethtool.c_ixgbe_get_eee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_eee = type { i32 }
%struct.ixgbe_adapter = type { i32, %struct.ixgbe_hw }
%struct.ixgbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@IXGBE_FLAG2_EEE_CAPABLE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ixgbe_phy_fw = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eee*)* @ixgbe_get_eee to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_get_eee(%struct.net_device* %0, %struct.ethtool_eee* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_eee*, align 8
  %6 = alloca %struct.ixgbe_adapter*, align 8
  %7 = alloca %struct.ixgbe_hw*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_eee* %1, %struct.ethtool_eee** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.ixgbe_adapter* @netdev_priv(%struct.net_device* %8)
  store %struct.ixgbe_adapter* %9, %struct.ixgbe_adapter** %6, align 8
  %10 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %11 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %10, i32 0, i32 1
  store %struct.ixgbe_hw* %11, %struct.ixgbe_hw** %7, align 8
  %12 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %13 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @IXGBE_FLAG2_EEE_CAPABLE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @EOPNOTSUPP, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %41

21:                                               ; preds = %2
  %22 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %23 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %21
  %28 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %29 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @ixgbe_phy_fw, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %36 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %37 = call i32 @ixgbe_get_eee_fw(%struct.ixgbe_adapter* %35, %struct.ethtool_eee* %36)
  store i32 %37, i32* %3, align 4
  br label %41

38:                                               ; preds = %27, %21
  %39 = load i32, i32* @EOPNOTSUPP, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %38, %34, %18
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.ixgbe_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ixgbe_get_eee_fw(%struct.ixgbe_adapter*, %struct.ethtool_eee*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
