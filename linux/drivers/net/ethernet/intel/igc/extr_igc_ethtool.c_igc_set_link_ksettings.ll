; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_ethtool.c_igc_set_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_ethtool.c_igc_set_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_12__, %struct.TYPE_7__ }
%struct.TYPE_12__ = type { i64, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.igc_adapter = type { i32, i32, %struct.TYPE_10__*, i64, %struct.igc_hw }
%struct.TYPE_10__ = type { i32 }
%struct.igc_hw = type { %struct.TYPE_11__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { i64, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [58 x i8] c"Cannot change link characteristics when reset is active.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ETH_TP_MDI_AUTO = common dso_local global i64 0, align 8
@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [83 x i8] c"forcing MDI/MDI-X state is not supported when link speed and/or duplex are forced\0A\00", align 1
@__IGC_RESETTING = common dso_local global i32 0, align 4
@igc_fc_default = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Force mode currently not supported\0A\00", align 1
@AUTO_ALL_MODES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)* @igc_set_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igc_set_link_ksettings(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_link_ksettings*, align 8
  %6 = alloca %struct.igc_adapter*, align 8
  %7 = alloca %struct.igc_hw*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.igc_adapter* @netdev_priv(%struct.net_device* %9)
  store %struct.igc_adapter* %10, %struct.igc_adapter** %6, align 8
  %11 = load %struct.igc_adapter*, %struct.igc_adapter** %6, align 8
  %12 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %11, i32 0, i32 4
  store %struct.igc_hw* %12, %struct.igc_hw** %7, align 8
  %13 = load %struct.igc_hw*, %struct.igc_hw** %7, align 8
  %14 = call i64 @igc_check_reset_block(%struct.igc_hw* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load %struct.igc_adapter*, %struct.igc_adapter** %6, align 8
  %18 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %17, i32 0, i32 2
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = call i32 @dev_err(i32* %20, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %144

24:                                               ; preds = %2
  %25 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %26 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %53

30:                                               ; preds = %24
  %31 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %32 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @ETH_TP_MDI_AUTO, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %30
  %38 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %39 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @AUTONEG_ENABLE, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %37
  %45 = load %struct.igc_adapter*, %struct.igc_adapter** %6, align 8
  %46 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %45, i32 0, i32 2
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = call i32 @dev_err(i32* %48, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %144

52:                                               ; preds = %37, %30
  br label %53

53:                                               ; preds = %52, %24
  br label %54

54:                                               ; preds = %60, %53
  %55 = load i32, i32* @__IGC_RESETTING, align 4
  %56 = load %struct.igc_adapter*, %struct.igc_adapter** %6, align 8
  %57 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %56, i32 0, i32 0
  %58 = call i64 @test_and_set_bit(i32 %55, i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %54

62:                                               ; preds = %54
  %63 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %64 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @ethtool_convert_link_mode_to_legacy_u32(i32* %8, i32 %66)
  %68 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %69 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @AUTONEG_ENABLE, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %92

74:                                               ; preds = %62
  %75 = load %struct.igc_hw*, %struct.igc_hw** %7, align 8
  %76 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  store i32 1, i32* %77, align 4
  %78 = load i32, i32* %8, align 4
  %79 = load %struct.igc_hw*, %struct.igc_hw** %7, align 8
  %80 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 1
  store i32 %78, i32* %81, align 8
  %82 = load %struct.igc_adapter*, %struct.igc_adapter** %6, align 8
  %83 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %74
  %87 = load i32, i32* @igc_fc_default, align 4
  %88 = load %struct.igc_hw*, %struct.igc_hw** %7, align 8
  %89 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  store i32 %87, i32* %90, align 8
  br label %91

91:                                               ; preds = %86, %74
  br label %98

92:                                               ; preds = %62
  %93 = load %struct.igc_adapter*, %struct.igc_adapter** %6, align 8
  %94 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %93, i32 0, i32 2
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = call i32 @dev_info(i32* %96, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %98

98:                                               ; preds = %92, %91
  %99 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %100 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %125

104:                                              ; preds = %98
  %105 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %106 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @ETH_TP_MDI_AUTO, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %116

111:                                              ; preds = %104
  %112 = load i64, i64* @AUTO_ALL_MODES, align 8
  %113 = load %struct.igc_hw*, %struct.igc_hw** %7, align 8
  %114 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 0
  store i64 %112, i64* %115, align 8
  br label %124

116:                                              ; preds = %104
  %117 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %118 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.igc_hw*, %struct.igc_hw** %7, align 8
  %122 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 0
  store i64 %120, i64* %123, align 8
  br label %124

124:                                              ; preds = %116, %111
  br label %125

125:                                              ; preds = %124, %98
  %126 = load %struct.igc_adapter*, %struct.igc_adapter** %6, align 8
  %127 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i64 @netif_running(i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %125
  %132 = load %struct.igc_adapter*, %struct.igc_adapter** %6, align 8
  %133 = call i32 @igc_down(%struct.igc_adapter* %132)
  %134 = load %struct.igc_adapter*, %struct.igc_adapter** %6, align 8
  %135 = call i32 @igc_up(%struct.igc_adapter* %134)
  br label %139

136:                                              ; preds = %125
  %137 = load %struct.igc_adapter*, %struct.igc_adapter** %6, align 8
  %138 = call i32 @igc_reset(%struct.igc_adapter* %137)
  br label %139

139:                                              ; preds = %136, %131
  %140 = load i32, i32* @__IGC_RESETTING, align 4
  %141 = load %struct.igc_adapter*, %struct.igc_adapter** %6, align 8
  %142 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %141, i32 0, i32 0
  %143 = call i32 @clear_bit(i32 %140, i32* %142)
  store i32 0, i32* %3, align 4
  br label %144

144:                                              ; preds = %139, %44, %16
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local %struct.igc_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @igc_check_reset_block(%struct.igc_hw*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @ethtool_convert_link_mode_to_legacy_u32(i32*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i64 @netif_running(i32) #1

declare dso_local i32 @igc_down(%struct.igc_adapter*) #1

declare dso_local i32 @igc_up(%struct.igc_adapter*) #1

declare dso_local i32 @igc_reset(%struct.igc_adapter*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
