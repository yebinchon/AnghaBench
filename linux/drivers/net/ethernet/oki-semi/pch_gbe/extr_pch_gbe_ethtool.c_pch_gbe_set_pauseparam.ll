; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/oki-semi/pch_gbe/extr_pch_gbe_ethtool.c_pch_gbe_set_pauseparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/oki-semi/pch_gbe/extr_pch_gbe_ethtool.c_pch_gbe_set_pauseparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_pauseparam = type { i64, i64, i64 }
%struct.pch_gbe_adapter = type { i32, %struct.pch_gbe_hw }
%struct.pch_gbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@PCH_GBE_FC_FULL = common dso_local global i32 0, align 4
@PCH_GBE_FC_RX_PAUSE = common dso_local global i32 0, align 4
@PCH_GBE_FC_TX_PAUSE = common dso_local global i32 0, align 4
@PCH_GBE_FC_NONE = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_pauseparam*)* @pch_gbe_set_pauseparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pch_gbe_set_pauseparam(%struct.net_device* %0, %struct.ethtool_pauseparam* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_pauseparam*, align 8
  %5 = alloca %struct.pch_gbe_adapter*, align 8
  %6 = alloca %struct.pch_gbe_hw*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_pauseparam* %1, %struct.ethtool_pauseparam** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.pch_gbe_adapter* @netdev_priv(%struct.net_device* %8)
  store %struct.pch_gbe_adapter* %9, %struct.pch_gbe_adapter** %5, align 8
  %10 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %5, align 8
  %11 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %10, i32 0, i32 1
  store %struct.pch_gbe_hw* %11, %struct.pch_gbe_hw** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %13 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %6, align 8
  %16 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i64 %14, i64* %17, align 8
  %18 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %19 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %2
  %23 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %24 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load i32, i32* @PCH_GBE_FC_FULL, align 4
  %29 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %6, align 8
  %30 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 8
  br label %80

32:                                               ; preds = %22, %2
  %33 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %34 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %32
  %38 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %39 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* @PCH_GBE_FC_RX_PAUSE, align 4
  %44 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %6, align 8
  %45 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  store i32 %43, i32* %46, align 8
  br label %79

47:                                               ; preds = %37, %32
  %48 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %49 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %62, label %52

52:                                               ; preds = %47
  %53 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %54 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load i32, i32* @PCH_GBE_FC_TX_PAUSE, align 4
  %59 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %6, align 8
  %60 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  store i32 %58, i32* %61, align 8
  br label %78

62:                                               ; preds = %52, %47
  %63 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %64 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %77, label %67

67:                                               ; preds = %62
  %68 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %69 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %67
  %73 = load i32, i32* @PCH_GBE_FC_NONE, align 4
  %74 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %6, align 8
  %75 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  store i32 %73, i32* %76, align 8
  br label %77

77:                                               ; preds = %72, %67, %62
  br label %78

78:                                               ; preds = %77, %57
  br label %79

79:                                               ; preds = %78, %42
  br label %80

80:                                               ; preds = %79, %27
  %81 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %6, align 8
  %82 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @AUTONEG_ENABLE, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %102

87:                                               ; preds = %80
  %88 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %5, align 8
  %89 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i64 @netif_running(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %87
  %94 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %5, align 8
  %95 = call i32 @pch_gbe_down(%struct.pch_gbe_adapter* %94)
  %96 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %5, align 8
  %97 = call i32 @pch_gbe_up(%struct.pch_gbe_adapter* %96)
  store i32 %97, i32* %7, align 4
  br label %101

98:                                               ; preds = %87
  %99 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %5, align 8
  %100 = call i32 @pch_gbe_reset(%struct.pch_gbe_adapter* %99)
  br label %101

101:                                              ; preds = %98, %93
  br label %105

102:                                              ; preds = %80
  %103 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %6, align 8
  %104 = call i32 @pch_gbe_mac_force_mac_fc(%struct.pch_gbe_hw* %103)
  store i32 %104, i32* %7, align 4
  br label %105

105:                                              ; preds = %102, %101
  %106 = load i32, i32* %7, align 4
  ret i32 %106
}

declare dso_local %struct.pch_gbe_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_running(i32) #1

declare dso_local i32 @pch_gbe_down(%struct.pch_gbe_adapter*) #1

declare dso_local i32 @pch_gbe_up(%struct.pch_gbe_adapter*) #1

declare dso_local i32 @pch_gbe_reset(%struct.pch_gbe_adapter*) #1

declare dso_local i32 @pch_gbe_mac_force_mac_fc(%struct.pch_gbe_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
