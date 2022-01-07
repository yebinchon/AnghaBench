; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ethtool.c_ixgbe_set_wol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ethtool.c_ixgbe_set_wol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_wolinfo = type { i32 }
%struct.ixgbe_adapter = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@WAKE_PHY = common dso_local global i32 0, align 4
@WAKE_ARP = common dso_local global i32 0, align 4
@WAKE_MAGICSECURE = common dso_local global i32 0, align 4
@WAKE_FILTER = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@WAKE_UCAST = common dso_local global i32 0, align 4
@IXGBE_WUFC_EX = common dso_local global i32 0, align 4
@WAKE_MCAST = common dso_local global i32 0, align 4
@IXGBE_WUFC_MC = common dso_local global i32 0, align 4
@WAKE_BCAST = common dso_local global i32 0, align 4
@IXGBE_WUFC_BC = common dso_local global i32 0, align 4
@WAKE_MAGIC = common dso_local global i32 0, align 4
@IXGBE_WUFC_MAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_wolinfo*)* @ixgbe_set_wol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_set_wol(%struct.net_device* %0, %struct.ethtool_wolinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_wolinfo*, align 8
  %6 = alloca %struct.ixgbe_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_wolinfo* %1, %struct.ethtool_wolinfo** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.ixgbe_adapter* @netdev_priv(%struct.net_device* %7)
  store %struct.ixgbe_adapter* %8, %struct.ixgbe_adapter** %6, align 8
  %9 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %10 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @WAKE_PHY, align 4
  %13 = load i32, i32* @WAKE_ARP, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @WAKE_MAGICSECURE, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @WAKE_FILTER, align 4
  %18 = or i32 %16, %17
  %19 = and i32 %11, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EOPNOTSUPP, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %103

24:                                               ; preds = %2
  %25 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %26 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %27 = call i64 @ixgbe_wol_exclusion(%struct.ixgbe_adapter* %25, %struct.ethtool_wolinfo* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %24
  %30 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %31 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* @EOPNOTSUPP, align 4
  %36 = sub nsw i32 0, %35
  br label %38

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %37, %34
  %39 = phi i32 [ %36, %34 ], [ 0, %37 ]
  store i32 %39, i32* %3, align 4
  br label %103

40:                                               ; preds = %24
  %41 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %42 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %41, i32 0, i32 0
  store i32 0, i32* %42, align 8
  %43 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %44 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @WAKE_UCAST, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %40
  %50 = load i32, i32* @IXGBE_WUFC_EX, align 4
  %51 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %52 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 8
  br label %55

55:                                               ; preds = %49, %40
  %56 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %57 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @WAKE_MCAST, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %55
  %63 = load i32, i32* @IXGBE_WUFC_MC, align 4
  %64 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %65 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 8
  br label %68

68:                                               ; preds = %62, %55
  %69 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %70 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @WAKE_BCAST, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %68
  %76 = load i32, i32* @IXGBE_WUFC_BC, align 4
  %77 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %78 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 8
  br label %81

81:                                               ; preds = %75, %68
  %82 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %83 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @WAKE_MAGIC, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %81
  %89 = load i32, i32* @IXGBE_WUFC_MAG, align 4
  %90 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %91 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 8
  br label %94

94:                                               ; preds = %88, %81
  %95 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %96 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %95, i32 0, i32 1
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %100 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @device_set_wakeup_enable(i32* %98, i32 %101)
  store i32 0, i32* %3, align 4
  br label %103

103:                                              ; preds = %94, %38, %21
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local %struct.ixgbe_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @ixgbe_wol_exclusion(%struct.ixgbe_adapter*, %struct.ethtool_wolinfo*) #1

declare dso_local i32 @device_set_wakeup_enable(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
