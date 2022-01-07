; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_ethtool.c_atl1c_set_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_ethtool.c_atl1c_set_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i64 }
%struct.atl1c_adapter = type { i32, %struct.TYPE_4__*, %struct.atl1c_hw }
%struct.TYPE_4__ = type { i32 }
%struct.atl1c_hw = type { i64 }

@__AT_RESETTING = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@ADVERTISED_Autoneg = common dso_local global i64 0, align 8
@SPEED_1000 = common dso_local global i64 0, align 8
@DUPLEX_FULL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"1000M half is invalid\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ADVERTISED_1000baseT_Full = common dso_local global i64 0, align 8
@SPEED_100 = common dso_local global i64 0, align 8
@ADVERTISED_100baseT_Full = common dso_local global i64 0, align 8
@ADVERTISED_100baseT_Half = common dso_local global i64 0, align 8
@ADVERTISED_10baseT_Full = common dso_local global i64 0, align 8
@ADVERTISED_10baseT_Half = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"ethtool speed/duplex setting failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)* @atl1c_set_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atl1c_set_link_ksettings(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_link_ksettings*, align 8
  %6 = alloca %struct.atl1c_adapter*, align 8
  %7 = alloca %struct.atl1c_hw*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.atl1c_adapter* @netdev_priv(%struct.net_device* %10)
  store %struct.atl1c_adapter* %11, %struct.atl1c_adapter** %6, align 8
  %12 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %6, align 8
  %13 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %12, i32 0, i32 2
  store %struct.atl1c_hw* %13, %struct.atl1c_hw** %7, align 8
  br label %14

14:                                               ; preds = %20, %2
  %15 = load i32, i32* @__AT_RESETTING, align 4
  %16 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %6, align 8
  %17 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %16, i32 0, i32 0
  %18 = call i64 @test_and_set_bit(i32 %15, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = call i32 @msleep(i32 1)
  br label %14

22:                                               ; preds = %14
  %23 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %24 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @AUTONEG_ENABLE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i64, i64* @ADVERTISED_Autoneg, align 8
  store i64 %30, i64* %8, align 8
  br label %95

31:                                               ; preds = %22
  %32 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %33 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %9, align 8
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* @SPEED_1000, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %65

39:                                               ; preds = %31
  %40 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %41 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @DUPLEX_FULL, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %63

46:                                               ; preds = %39
  %47 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %6, align 8
  %48 = call i64 @netif_msg_link(%struct.atl1c_adapter* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %6, align 8
  %52 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = call i32 @dev_warn(i32* %54, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %56

56:                                               ; preds = %50, %46
  %57 = load i32, i32* @__AT_RESETTING, align 4
  %58 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %6, align 8
  %59 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %58, i32 0, i32 0
  %60 = call i32 @clear_bit(i32 %57, i32* %59)
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %131

63:                                               ; preds = %39
  %64 = load i64, i64* @ADVERTISED_1000baseT_Full, align 8
  store i64 %64, i64* %8, align 8
  br label %94

65:                                               ; preds = %31
  %66 = load i64, i64* %9, align 8
  %67 = load i64, i64* @SPEED_100, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %81

69:                                               ; preds = %65
  %70 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %71 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @DUPLEX_FULL, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = load i64, i64* @ADVERTISED_100baseT_Full, align 8
  store i64 %77, i64* %8, align 8
  br label %80

78:                                               ; preds = %69
  %79 = load i64, i64* @ADVERTISED_100baseT_Half, align 8
  store i64 %79, i64* %8, align 8
  br label %80

80:                                               ; preds = %78, %76
  br label %93

81:                                               ; preds = %65
  %82 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %83 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @DUPLEX_FULL, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %81
  %89 = load i64, i64* @ADVERTISED_10baseT_Full, align 8
  store i64 %89, i64* %8, align 8
  br label %92

90:                                               ; preds = %81
  %91 = load i64, i64* @ADVERTISED_10baseT_Half, align 8
  store i64 %91, i64* %8, align 8
  br label %92

92:                                               ; preds = %90, %88
  br label %93

93:                                               ; preds = %92, %80
  br label %94

94:                                               ; preds = %93, %63
  br label %95

95:                                               ; preds = %94, %29
  %96 = load %struct.atl1c_hw*, %struct.atl1c_hw** %7, align 8
  %97 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* %8, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %126

101:                                              ; preds = %95
  %102 = load i64, i64* %8, align 8
  %103 = load %struct.atl1c_hw*, %struct.atl1c_hw** %7, align 8
  %104 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %103, i32 0, i32 0
  store i64 %102, i64* %104, align 8
  %105 = load %struct.atl1c_hw*, %struct.atl1c_hw** %7, align 8
  %106 = call i64 @atl1c_restart_autoneg(%struct.atl1c_hw* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %125

108:                                              ; preds = %101
  %109 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %6, align 8
  %110 = call i64 @netif_msg_link(%struct.atl1c_adapter* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %108
  %113 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %6, align 8
  %114 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %113, i32 0, i32 1
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = call i32 @dev_warn(i32* %116, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %118

118:                                              ; preds = %112, %108
  %119 = load i32, i32* @__AT_RESETTING, align 4
  %120 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %6, align 8
  %121 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %120, i32 0, i32 0
  %122 = call i32 @clear_bit(i32 %119, i32* %121)
  %123 = load i32, i32* @EINVAL, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %3, align 4
  br label %131

125:                                              ; preds = %101
  br label %126

126:                                              ; preds = %125, %95
  %127 = load i32, i32* @__AT_RESETTING, align 4
  %128 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %6, align 8
  %129 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %128, i32 0, i32 0
  %130 = call i32 @clear_bit(i32 %127, i32* %129)
  store i32 0, i32* %3, align 4
  br label %131

131:                                              ; preds = %126, %118, %56
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local %struct.atl1c_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @netif_msg_link(%struct.atl1c_adapter*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @atl1c_restart_autoneg(%struct.atl1c_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
