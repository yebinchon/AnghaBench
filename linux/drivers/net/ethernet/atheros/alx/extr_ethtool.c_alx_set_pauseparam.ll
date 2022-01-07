; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_ethtool.c_alx_set_pauseparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_ethtool.c_alx_set_pauseparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_pauseparam = type { i64, i64, i64 }
%struct.alx_priv = type { %struct.alx_hw }
%struct.alx_hw = type { i32, i32 }

@ALX_FC_TX = common dso_local global i32 0, align 4
@ALX_FC_RX = common dso_local global i32 0, align 4
@ALX_FC_ANEG = common dso_local global i32 0, align 4
@ADVERTISED_Autoneg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_pauseparam*)* @alx_set_pauseparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alx_set_pauseparam(%struct.net_device* %0, %struct.ethtool_pauseparam* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_pauseparam*, align 8
  %6 = alloca %struct.alx_priv*, align 8
  %7 = alloca %struct.alx_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_pauseparam* %1, %struct.ethtool_pauseparam** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.alx_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.alx_priv* %12, %struct.alx_priv** %6, align 8
  %13 = load %struct.alx_priv*, %struct.alx_priv** %6, align 8
  %14 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %13, i32 0, i32 0
  store %struct.alx_hw* %14, %struct.alx_hw** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %15 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %16 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load i32, i32* @ALX_FC_TX, align 4
  %21 = load i32, i32* %10, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %10, align 4
  br label %23

23:                                               ; preds = %19, %2
  %24 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %25 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i32, i32* @ALX_FC_RX, align 4
  %30 = load i32, i32* %10, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %10, align 4
  br label %32

32:                                               ; preds = %28, %23
  %33 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %34 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i32, i32* @ALX_FC_ANEG, align 4
  %39 = load i32, i32* %10, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %10, align 4
  br label %41

41:                                               ; preds = %37, %32
  %42 = call i32 (...) @ASSERT_RTNL()
  %43 = load %struct.alx_hw*, %struct.alx_hw** %7, align 8
  %44 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @ADVERTISED_Autoneg, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %81

49:                                               ; preds = %41
  %50 = load i32, i32* %10, align 4
  %51 = load %struct.alx_hw*, %struct.alx_hw** %7, align 8
  %52 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = xor i32 %50, %53
  %55 = load i32, i32* @ALX_FC_ANEG, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %49
  store i32 1, i32* %9, align 4
  br label %59

59:                                               ; preds = %58, %49
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.alx_hw*, %struct.alx_hw** %7, align 8
  %62 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %60, %63
  %65 = load i32, i32* @ALX_FC_ANEG, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %80

68:                                               ; preds = %59
  %69 = load i32, i32* %10, align 4
  %70 = load %struct.alx_hw*, %struct.alx_hw** %7, align 8
  %71 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = xor i32 %69, %72
  %74 = load i32, i32* @ALX_FC_RX, align 4
  %75 = load i32, i32* @ALX_FC_TX, align 4
  %76 = or i32 %74, %75
  %77 = and i32 %73, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %68
  store i32 1, i32* %9, align 4
  br label %80

80:                                               ; preds = %79, %68, %59
  br label %81

81:                                               ; preds = %80, %41
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %96

84:                                               ; preds = %81
  %85 = load %struct.alx_hw*, %struct.alx_hw** %7, align 8
  %86 = load %struct.alx_hw*, %struct.alx_hw** %7, align 8
  %87 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @alx_setup_speed_duplex(%struct.alx_hw* %85, i32 %88, i32 %89)
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %84
  %94 = load i32, i32* %8, align 4
  store i32 %94, i32* %3, align 4
  br label %115

95:                                               ; preds = %84
  br label %96

96:                                               ; preds = %95, %81
  %97 = load i32, i32* %10, align 4
  %98 = load %struct.alx_hw*, %struct.alx_hw** %7, align 8
  %99 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = xor i32 %97, %100
  %102 = load i32, i32* @ALX_FC_RX, align 4
  %103 = load i32, i32* @ALX_FC_TX, align 4
  %104 = or i32 %102, %103
  %105 = and i32 %101, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %96
  %108 = load %struct.alx_hw*, %struct.alx_hw** %7, align 8
  %109 = load i32, i32* %10, align 4
  %110 = call i32 @alx_cfg_mac_flowcontrol(%struct.alx_hw* %108, i32 %109)
  br label %111

111:                                              ; preds = %107, %96
  %112 = load i32, i32* %10, align 4
  %113 = load %struct.alx_hw*, %struct.alx_hw** %7, align 8
  %114 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 4
  store i32 0, i32* %3, align 4
  br label %115

115:                                              ; preds = %111, %93
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local %struct.alx_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @alx_setup_speed_duplex(%struct.alx_hw*, i32, i32) #1

declare dso_local i32 @alx_cfg_mac_flowcontrol(%struct.alx_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
