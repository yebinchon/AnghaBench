; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-ethtool.c_xgbe_set_pauseparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-ethtool.c_xgbe_set_pauseparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_pauseparam = type { i64, i64, i64 }
%struct.xgbe_prv_data = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 (%struct.xgbe_prv_data.0*)* }
%struct.xgbe_prv_data.0 = type opaque
%struct.TYPE_3__ = type { i64, i64, i64, i64, %struct.ethtool_link_ksettings }
%struct.ethtool_link_ksettings = type { i32 }

@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"autoneg disabled, pause autoneg not available\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@Pause = common dso_local global i32 0, align 4
@Asym_Pause = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_pauseparam*)* @xgbe_set_pauseparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_set_pauseparam(%struct.net_device* %0, %struct.ethtool_pauseparam* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_pauseparam*, align 8
  %6 = alloca %struct.xgbe_prv_data*, align 8
  %7 = alloca %struct.ethtool_link_ksettings*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_pauseparam* %1, %struct.ethtool_pauseparam** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.xgbe_prv_data* @netdev_priv(%struct.net_device* %9)
  store %struct.xgbe_prv_data* %10, %struct.xgbe_prv_data** %6, align 8
  %11 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %12 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 4
  store %struct.ethtool_link_ksettings* %13, %struct.ethtool_link_ksettings** %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %15 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %2
  %19 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %20 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @AUTONEG_ENABLE, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  %26 = load %struct.net_device*, %struct.net_device** %4, align 8
  %27 = call i32 @netdev_err(%struct.net_device* %26, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %99

30:                                               ; preds = %18, %2
  %31 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %32 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %35 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 3
  store i64 %33, i64* %36, align 8
  %37 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %38 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %41 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  store i64 %39, i64* %42, align 8
  %43 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %44 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %47 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  store i64 %45, i64* %48, align 8
  %49 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %7, align 8
  %50 = load i32, i32* @Pause, align 4
  %51 = call i32 @XGBE_CLR_ADV(%struct.ethtool_link_ksettings* %49, i32 %50)
  %52 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %7, align 8
  %53 = load i32, i32* @Asym_Pause, align 4
  %54 = call i32 @XGBE_CLR_ADV(%struct.ethtool_link_ksettings* %52, i32 %53)
  %55 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %56 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %30
  %60 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %7, align 8
  %61 = load i32, i32* @Pause, align 4
  %62 = call i32 @XGBE_SET_ADV(%struct.ethtool_link_ksettings* %60, i32 %61)
  %63 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %7, align 8
  %64 = load i32, i32* @Asym_Pause, align 4
  %65 = call i32 @XGBE_SET_ADV(%struct.ethtool_link_ksettings* %63, i32 %64)
  br label %66

66:                                               ; preds = %59, %30
  %67 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %68 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %85

71:                                               ; preds = %66
  %72 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %7, align 8
  %73 = load i32, i32* @Asym_Pause, align 4
  %74 = call i64 @XGBE_ADV(%struct.ethtool_link_ksettings* %72, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %7, align 8
  %78 = load i32, i32* @Asym_Pause, align 4
  %79 = call i32 @XGBE_CLR_ADV(%struct.ethtool_link_ksettings* %77, i32 %78)
  br label %84

80:                                               ; preds = %71
  %81 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %7, align 8
  %82 = load i32, i32* @Asym_Pause, align 4
  %83 = call i32 @XGBE_SET_ADV(%struct.ethtool_link_ksettings* %81, i32 %82)
  br label %84

84:                                               ; preds = %80, %76
  br label %85

85:                                               ; preds = %84, %66
  %86 = load %struct.net_device*, %struct.net_device** %4, align 8
  %87 = call i64 @netif_running(%struct.net_device* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %85
  %90 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %91 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32 (%struct.xgbe_prv_data.0*)*, i32 (%struct.xgbe_prv_data.0*)** %92, align 8
  %94 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %95 = bitcast %struct.xgbe_prv_data* %94 to %struct.xgbe_prv_data.0*
  %96 = call i32 %93(%struct.xgbe_prv_data.0* %95)
  store i32 %96, i32* %8, align 4
  br label %97

97:                                               ; preds = %89, %85
  %98 = load i32, i32* %8, align 4
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %97, %25
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local %struct.xgbe_prv_data* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @XGBE_CLR_ADV(%struct.ethtool_link_ksettings*, i32) #1

declare dso_local i32 @XGBE_SET_ADV(%struct.ethtool_link_ksettings*, i32) #1

declare dso_local i64 @XGBE_ADV(%struct.ethtool_link_ksettings*, i32) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
