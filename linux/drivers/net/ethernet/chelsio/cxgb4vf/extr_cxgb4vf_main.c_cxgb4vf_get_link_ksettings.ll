; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_cxgb4vf_main.c_cxgb4vf_get_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_cxgb4vf_main.c_cxgb4vf_get_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_3__, %struct.ethtool_link_settings }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.ethtool_link_settings = type { i32, i64, i32, i32, i64, i32 }
%struct.port_info = type { i64, i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i64, i32 }

@supported = common dso_local global i32 0, align 4
@advertising = common dso_local global i32 0, align 4
@lp_advertising = common dso_local global i32 0, align 4
@FW_PORT_TYPE_BT_SGMII = common dso_local global i64 0, align 8
@ETH_MDIO_SUPPORTS_C22 = common dso_local global i64 0, align 8
@ETH_MDIO_SUPPORTS_C45 = common dso_local global i64 0, align 8
@DUPLEX_FULL = common dso_local global i32 0, align 4
@SPEED_UNKNOWN = common dso_local global i32 0, align 4
@DUPLEX_UNKNOWN = common dso_local global i32 0, align 4
@FW_PORT_CAP32_ANEG = common dso_local global i32 0, align 4
@Autoneg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)* @cxgb4vf_get_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxgb4vf_get_link_ksettings(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_link_ksettings*, align 8
  %5 = alloca %struct.port_info*, align 8
  %6 = alloca %struct.ethtool_link_settings*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.port_info* @netdev_priv(%struct.net_device* %7)
  store %struct.port_info* %8, %struct.port_info** %5, align 8
  %9 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %10 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %9, i32 0, i32 1
  store %struct.ethtool_link_settings* %10, %struct.ethtool_link_settings** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = call i32 @netif_running(%struct.net_device* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load %struct.port_info*, %struct.port_info** %5, align 8
  %16 = call i32 @t4vf_update_port_info(%struct.port_info* %15)
  br label %17

17:                                               ; preds = %14, %2
  %18 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %19 = load i32, i32* @supported, align 4
  %20 = call i32 @ethtool_link_ksettings_zero_link_mode(%struct.ethtool_link_ksettings* %18, i32 %19)
  %21 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %22 = load i32, i32* @advertising, align 4
  %23 = call i32 @ethtool_link_ksettings_zero_link_mode(%struct.ethtool_link_ksettings* %21, i32 %22)
  %24 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %25 = load i32, i32* @lp_advertising, align 4
  %26 = call i32 @ethtool_link_ksettings_zero_link_mode(%struct.ethtool_link_ksettings* %24, i32 %25)
  %27 = load %struct.port_info*, %struct.port_info** %5, align 8
  %28 = getelementptr inbounds %struct.port_info, %struct.port_info* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.port_info*, %struct.port_info** %5, align 8
  %31 = getelementptr inbounds %struct.port_info, %struct.port_info* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @from_fw_port_mod_type(i64 %29, i32 %32)
  %34 = load %struct.ethtool_link_settings*, %struct.ethtool_link_settings** %6, align 8
  %35 = getelementptr inbounds %struct.ethtool_link_settings, %struct.ethtool_link_settings* %34, i32 0, i32 5
  store i32 %33, i32* %35, align 8
  %36 = load %struct.port_info*, %struct.port_info** %5, align 8
  %37 = getelementptr inbounds %struct.port_info, %struct.port_info* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp sge i64 %38, 0
  br i1 %39, label %40, label %60

40:                                               ; preds = %17
  %41 = load %struct.port_info*, %struct.port_info** %5, align 8
  %42 = getelementptr inbounds %struct.port_info, %struct.port_info* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = load %struct.ethtool_link_settings*, %struct.ethtool_link_settings** %6, align 8
  %46 = getelementptr inbounds %struct.ethtool_link_settings, %struct.ethtool_link_settings* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.port_info*, %struct.port_info** %5, align 8
  %48 = getelementptr inbounds %struct.port_info, %struct.port_info* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @FW_PORT_TYPE_BT_SGMII, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %40
  %53 = load i64, i64* @ETH_MDIO_SUPPORTS_C22, align 8
  br label %56

54:                                               ; preds = %40
  %55 = load i64, i64* @ETH_MDIO_SUPPORTS_C45, align 8
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i64 [ %53, %52 ], [ %55, %54 ]
  %58 = load %struct.ethtool_link_settings*, %struct.ethtool_link_settings** %6, align 8
  %59 = getelementptr inbounds %struct.ethtool_link_settings, %struct.ethtool_link_settings* %58, i32 0, i32 4
  store i64 %57, i64* %59, align 8
  br label %65

60:                                               ; preds = %17
  %61 = load %struct.ethtool_link_settings*, %struct.ethtool_link_settings** %6, align 8
  %62 = getelementptr inbounds %struct.ethtool_link_settings, %struct.ethtool_link_settings* %61, i32 0, i32 0
  store i32 255, i32* %62, align 8
  %63 = load %struct.ethtool_link_settings*, %struct.ethtool_link_settings** %6, align 8
  %64 = getelementptr inbounds %struct.ethtool_link_settings, %struct.ethtool_link_settings* %63, i32 0, i32 4
  store i64 0, i64* %64, align 8
  br label %65

65:                                               ; preds = %60, %56
  %66 = load %struct.port_info*, %struct.port_info** %5, align 8
  %67 = getelementptr inbounds %struct.port_info, %struct.port_info* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.port_info*, %struct.port_info** %5, align 8
  %70 = getelementptr inbounds %struct.port_info, %struct.port_info* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %74 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @fw_caps_to_lmm(i64 %68, i32 %72, i32 %76)
  %78 = load %struct.port_info*, %struct.port_info** %5, align 8
  %79 = getelementptr inbounds %struct.port_info, %struct.port_info* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.port_info*, %struct.port_info** %5, align 8
  %82 = getelementptr inbounds %struct.port_info, %struct.port_info* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %86 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @fw_caps_to_lmm(i64 %80, i32 %84, i32 %88)
  %90 = load %struct.port_info*, %struct.port_info** %5, align 8
  %91 = getelementptr inbounds %struct.port_info, %struct.port_info* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.port_info*, %struct.port_info** %5, align 8
  %94 = getelementptr inbounds %struct.port_info, %struct.port_info* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %98 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @fw_caps_to_lmm(i64 %92, i32 %96, i32 %100)
  %102 = load %struct.net_device*, %struct.net_device** %3, align 8
  %103 = call i64 @netif_carrier_ok(%struct.net_device* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %115

105:                                              ; preds = %65
  %106 = load %struct.port_info*, %struct.port_info** %5, align 8
  %107 = getelementptr inbounds %struct.port_info, %struct.port_info* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.ethtool_link_settings*, %struct.ethtool_link_settings** %6, align 8
  %111 = getelementptr inbounds %struct.ethtool_link_settings, %struct.ethtool_link_settings* %110, i32 0, i32 3
  store i32 %109, i32* %111, align 4
  %112 = load i32, i32* @DUPLEX_FULL, align 4
  %113 = load %struct.ethtool_link_settings*, %struct.ethtool_link_settings** %6, align 8
  %114 = getelementptr inbounds %struct.ethtool_link_settings, %struct.ethtool_link_settings* %113, i32 0, i32 2
  store i32 %112, i32* %114, align 8
  br label %122

115:                                              ; preds = %65
  %116 = load i32, i32* @SPEED_UNKNOWN, align 4
  %117 = load %struct.ethtool_link_settings*, %struct.ethtool_link_settings** %6, align 8
  %118 = getelementptr inbounds %struct.ethtool_link_settings, %struct.ethtool_link_settings* %117, i32 0, i32 3
  store i32 %116, i32* %118, align 4
  %119 = load i32, i32* @DUPLEX_UNKNOWN, align 4
  %120 = load %struct.ethtool_link_settings*, %struct.ethtool_link_settings** %6, align 8
  %121 = getelementptr inbounds %struct.ethtool_link_settings, %struct.ethtool_link_settings* %120, i32 0, i32 2
  store i32 %119, i32* %121, align 8
  br label %122

122:                                              ; preds = %115, %105
  %123 = load %struct.port_info*, %struct.port_info** %5, align 8
  %124 = getelementptr inbounds %struct.port_info, %struct.port_info* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.ethtool_link_settings*, %struct.ethtool_link_settings** %6, align 8
  %128 = getelementptr inbounds %struct.ethtool_link_settings, %struct.ethtool_link_settings* %127, i32 0, i32 1
  store i64 %126, i64* %128, align 8
  %129 = load %struct.port_info*, %struct.port_info** %5, align 8
  %130 = getelementptr inbounds %struct.port_info, %struct.port_info* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @FW_PORT_CAP32_ANEG, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %122
  %137 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %138 = load i32, i32* @supported, align 4
  %139 = load i32, i32* @Autoneg, align 4
  %140 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %137, i32 %138, i32 %139)
  br label %141

141:                                              ; preds = %136, %122
  %142 = load %struct.port_info*, %struct.port_info** %5, align 8
  %143 = getelementptr inbounds %struct.port_info, %struct.port_info* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 3
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %141
  %148 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %149 = load i32, i32* @advertising, align 4
  %150 = load i32, i32* @Autoneg, align 4
  %151 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %148, i32 %149, i32 %150)
  br label %152

152:                                              ; preds = %147, %141
  ret i32 0
}

declare dso_local %struct.port_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @t4vf_update_port_info(%struct.port_info*) #1

declare dso_local i32 @ethtool_link_ksettings_zero_link_mode(%struct.ethtool_link_ksettings*, i32) #1

declare dso_local i32 @from_fw_port_mod_type(i64, i32) #1

declare dso_local i32 @fw_caps_to_lmm(i64, i32, i32) #1

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
