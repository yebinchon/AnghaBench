; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_ethtool.c_igc_set_pauseparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_ethtool.c_igc_set_pauseparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_pauseparam = type { i64, i64, i64 }
%struct.igc_adapter = type { i64, i32, i32, %struct.igc_hw }
%struct.igc_hw = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32, i32 }

@__IGC_RESETTING = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@igc_fc_default = common dso_local global i32 0, align 4
@igc_fc_full = common dso_local global i32 0, align 4
@igc_fc_rx_pause = common dso_local global i32 0, align 4
@igc_fc_tx_pause = common dso_local global i32 0, align 4
@igc_fc_none = common dso_local global i32 0, align 4
@igc_media_type_copper = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_pauseparam*)* @igc_set_pauseparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igc_set_pauseparam(%struct.net_device* %0, %struct.ethtool_pauseparam* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_pauseparam*, align 8
  %5 = alloca %struct.igc_adapter*, align 8
  %6 = alloca %struct.igc_hw*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_pauseparam* %1, %struct.ethtool_pauseparam** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.igc_adapter* @netdev_priv(%struct.net_device* %8)
  store %struct.igc_adapter* %9, %struct.igc_adapter** %5, align 8
  %10 = load %struct.igc_adapter*, %struct.igc_adapter** %5, align 8
  %11 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %10, i32 0, i32 3
  store %struct.igc_hw* %11, %struct.igc_hw** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %13 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.igc_adapter*, %struct.igc_adapter** %5, align 8
  %16 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  br label %17

17:                                               ; preds = %23, %2
  %18 = load i32, i32* @__IGC_RESETTING, align 4
  %19 = load %struct.igc_adapter*, %struct.igc_adapter** %5, align 8
  %20 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %19, i32 0, i32 1
  %21 = call i64 @test_and_set_bit(i32 %18, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %17

25:                                               ; preds = %17
  %26 = load %struct.igc_adapter*, %struct.igc_adapter** %5, align 8
  %27 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @AUTONEG_ENABLE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %50

31:                                               ; preds = %25
  %32 = load i32, i32* @igc_fc_default, align 4
  %33 = load %struct.igc_hw*, %struct.igc_hw** %6, align 8
  %34 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 8
  %36 = load %struct.igc_adapter*, %struct.igc_adapter** %5, align 8
  %37 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @netif_running(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %31
  %42 = load %struct.igc_adapter*, %struct.igc_adapter** %5, align 8
  %43 = call i32 @igc_down(%struct.igc_adapter* %42)
  %44 = load %struct.igc_adapter*, %struct.igc_adapter** %5, align 8
  %45 = call i32 @igc_up(%struct.igc_adapter* %44)
  br label %49

46:                                               ; preds = %31
  %47 = load %struct.igc_adapter*, %struct.igc_adapter** %5, align 8
  %48 = call i32 @igc_reset(%struct.igc_adapter* %47)
  br label %49

49:                                               ; preds = %46, %41
  br label %135

50:                                               ; preds = %25
  %51 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %52 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %50
  %56 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %57 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load i32, i32* @igc_fc_full, align 4
  %62 = load %struct.igc_hw*, %struct.igc_hw** %6, align 8
  %63 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  store i32 %61, i32* %64, align 8
  br label %113

65:                                               ; preds = %55, %50
  %66 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %67 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %65
  %71 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %72 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %70
  %76 = load i32, i32* @igc_fc_rx_pause, align 4
  %77 = load %struct.igc_hw*, %struct.igc_hw** %6, align 8
  %78 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  store i32 %76, i32* %79, align 8
  br label %112

80:                                               ; preds = %70, %65
  %81 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %82 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %95, label %85

85:                                               ; preds = %80
  %86 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %87 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %85
  %91 = load i32, i32* @igc_fc_tx_pause, align 4
  %92 = load %struct.igc_hw*, %struct.igc_hw** %6, align 8
  %93 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  store i32 %91, i32* %94, align 8
  br label %111

95:                                               ; preds = %85, %80
  %96 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %97 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %110, label %100

100:                                              ; preds = %95
  %101 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %102 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %110, label %105

105:                                              ; preds = %100
  %106 = load i32, i32* @igc_fc_none, align 4
  %107 = load %struct.igc_hw*, %struct.igc_hw** %6, align 8
  %108 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  store i32 %106, i32* %109, align 8
  br label %110

110:                                              ; preds = %105, %100, %95
  br label %111

111:                                              ; preds = %110, %90
  br label %112

112:                                              ; preds = %111, %75
  br label %113

113:                                              ; preds = %112, %60
  %114 = load %struct.igc_hw*, %struct.igc_hw** %6, align 8
  %115 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.igc_hw*, %struct.igc_hw** %6, align 8
  %119 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 1
  store i32 %117, i32* %120, align 4
  %121 = load %struct.igc_hw*, %struct.igc_hw** %6, align 8
  %122 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @igc_media_type_copper, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %113
  %128 = load %struct.igc_hw*, %struct.igc_hw** %6, align 8
  %129 = call i32 @igc_force_mac_fc(%struct.igc_hw* %128)
  br label %133

130:                                              ; preds = %113
  %131 = load %struct.igc_hw*, %struct.igc_hw** %6, align 8
  %132 = call i32 @igc_setup_link(%struct.igc_hw* %131)
  br label %133

133:                                              ; preds = %130, %127
  %134 = phi i32 [ %129, %127 ], [ %132, %130 ]
  store i32 %134, i32* %7, align 4
  br label %135

135:                                              ; preds = %133, %49
  %136 = load i32, i32* @__IGC_RESETTING, align 4
  %137 = load %struct.igc_adapter*, %struct.igc_adapter** %5, align 8
  %138 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %137, i32 0, i32 1
  %139 = call i32 @clear_bit(i32 %136, i32* %138)
  %140 = load i32, i32* %7, align 4
  ret i32 %140
}

declare dso_local %struct.igc_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i64 @netif_running(i32) #1

declare dso_local i32 @igc_down(%struct.igc_adapter*) #1

declare dso_local i32 @igc_up(%struct.igc_adapter*) #1

declare dso_local i32 @igc_reset(%struct.igc_adapter*) #1

declare dso_local i32 @igc_force_mac_fc(%struct.igc_hw*) #1

declare dso_local i32 @igc_setup_link(%struct.igc_hw*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
