; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ethtool.c_e1000_set_pauseparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ethtool.c_e1000_set_pauseparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.ethtool_pauseparam = type { i64, i64, i64 }
%struct.e1000_adapter = type { i64, i32, i32, %struct.e1000_hw }
%struct.e1000_hw = type { %struct.TYPE_9__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 (%struct.e1000_hw.0*)* }
%struct.e1000_hw.0 = type opaque
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32, i32 }

@__E1000_RESETTING = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@e1000_fc_default = common dso_local global i32 0, align 4
@e1000_fc_full = common dso_local global i32 0, align 4
@e1000_fc_rx_pause = common dso_local global i32 0, align 4
@e1000_fc_tx_pause = common dso_local global i32 0, align 4
@e1000_fc_none = common dso_local global i32 0, align 4
@e1000_media_type_fiber = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_pauseparam*)* @e1000_set_pauseparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_set_pauseparam(%struct.net_device* %0, %struct.ethtool_pauseparam* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_pauseparam*, align 8
  %5 = alloca %struct.e1000_adapter*, align 8
  %6 = alloca %struct.e1000_hw*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_pauseparam* %1, %struct.ethtool_pauseparam** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.e1000_adapter* @netdev_priv(%struct.net_device* %8)
  store %struct.e1000_adapter* %9, %struct.e1000_adapter** %5, align 8
  %10 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %11 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %10, i32 0, i32 3
  store %struct.e1000_hw* %11, %struct.e1000_hw** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %13 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %16 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  br label %17

17:                                               ; preds = %23, %2
  %18 = load i32, i32* @__E1000_RESETTING, align 4
  %19 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %20 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %19, i32 0, i32 1
  %21 = call i64 @test_and_set_bit(i32 %18, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %17

25:                                               ; preds = %17
  %26 = load %struct.net_device*, %struct.net_device** %3, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @pm_runtime_get_sync(i32 %29)
  %31 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %32 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @AUTONEG_ENABLE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %55

36:                                               ; preds = %25
  %37 = load i32, i32* @e1000_fc_default, align 4
  %38 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %39 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 8
  %41 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %42 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @netif_running(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %36
  %47 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %48 = call i32 @e1000e_down(%struct.e1000_adapter* %47, i32 1)
  %49 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %50 = call i32 @e1000e_up(%struct.e1000_adapter* %49)
  br label %54

51:                                               ; preds = %36
  %52 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %53 = call i32 @e1000e_reset(%struct.e1000_adapter* %52)
  br label %54

54:                                               ; preds = %51, %46
  br label %151

55:                                               ; preds = %25
  %56 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %57 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %55
  %61 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %62 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load i32, i32* @e1000_fc_full, align 4
  %67 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %68 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 8
  br label %118

70:                                               ; preds = %60, %55
  %71 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %72 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %70
  %76 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %77 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %75
  %81 = load i32, i32* @e1000_fc_rx_pause, align 4
  %82 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %83 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  store i32 %81, i32* %84, align 8
  br label %117

85:                                               ; preds = %75, %70
  %86 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %87 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %100, label %90

90:                                               ; preds = %85
  %91 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %92 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %90
  %96 = load i32, i32* @e1000_fc_tx_pause, align 4
  %97 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %98 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  store i32 %96, i32* %99, align 8
  br label %116

100:                                              ; preds = %90, %85
  %101 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %102 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %115, label %105

105:                                              ; preds = %100
  %106 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %107 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %115, label %110

110:                                              ; preds = %105
  %111 = load i32, i32* @e1000_fc_none, align 4
  %112 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %113 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  store i32 %111, i32* %114, align 8
  br label %115

115:                                              ; preds = %110, %105, %100
  br label %116

116:                                              ; preds = %115, %95
  br label %117

117:                                              ; preds = %116, %80
  br label %118

118:                                              ; preds = %117, %65
  %119 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %120 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %124 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 1
  store i32 %122, i32* %125, align 4
  %126 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %127 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @e1000_media_type_fiber, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %141

132:                                              ; preds = %118
  %133 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %134 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %136, align 8
  %138 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %139 = bitcast %struct.e1000_hw* %138 to %struct.e1000_hw.0*
  %140 = call i32 %137(%struct.e1000_hw.0* %139)
  store i32 %140, i32* %7, align 4
  br label %150

141:                                              ; preds = %118
  %142 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %143 = call i32 @e1000e_force_mac_fc(%struct.e1000_hw* %142)
  store i32 %143, i32* %7, align 4
  %144 = load i32, i32* %7, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %141
  br label %152

147:                                              ; preds = %141
  %148 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %149 = call i32 @e1000e_set_fc_watermarks(%struct.e1000_hw* %148)
  br label %150

150:                                              ; preds = %147, %132
  br label %151

151:                                              ; preds = %150, %54
  br label %152

152:                                              ; preds = %151, %146
  %153 = load %struct.net_device*, %struct.net_device** %3, align 8
  %154 = getelementptr inbounds %struct.net_device, %struct.net_device* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @pm_runtime_put_sync(i32 %156)
  %158 = load i32, i32* @__E1000_RESETTING, align 4
  %159 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %160 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %159, i32 0, i32 1
  %161 = call i32 @clear_bit(i32 %158, i32* %160)
  %162 = load i32, i32* %7, align 4
  ret i32 %162
}

declare dso_local %struct.e1000_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i64 @netif_running(i32) #1

declare dso_local i32 @e1000e_down(%struct.e1000_adapter*, i32) #1

declare dso_local i32 @e1000e_up(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000e_reset(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000e_force_mac_fc(%struct.e1000_hw*) #1

declare dso_local i32 @e1000e_set_fc_watermarks(%struct.e1000_hw*) #1

declare dso_local i32 @pm_runtime_put_sync(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
