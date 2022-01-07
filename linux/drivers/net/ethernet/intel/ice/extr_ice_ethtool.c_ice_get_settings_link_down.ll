; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_ethtool.c_ice_get_settings_link_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_ethtool.c_ice_get_settings_link_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ethtool_link_ksettings = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.net_device = type { i32 }

@SPEED_UNKNOWN = common dso_local global i32 0, align 4
@DUPLEX_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ethtool_link_ksettings*, %struct.net_device*)* @ice_get_settings_link_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ice_get_settings_link_down(%struct.ethtool_link_ksettings* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.ethtool_link_ksettings*, align 8
  %4 = alloca %struct.net_device*, align 8
  store %struct.ethtool_link_ksettings* %0, %struct.ethtool_link_ksettings** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %5 = load %struct.net_device*, %struct.net_device** %4, align 8
  %6 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %3, align 8
  %7 = call i32 @ice_phy_type_to_ethtool(%struct.net_device* %5, %struct.ethtool_link_ksettings* %6)
  %8 = load i32, i32* @SPEED_UNKNOWN, align 4
  %9 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %3, align 8
  %10 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  store i32 %8, i32* %11, align 4
  %12 = load i32, i32* @DUPLEX_UNKNOWN, align 4
  %13 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %3, align 8
  %14 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 %12, i32* %15, align 4
  ret void
}

declare dso_local i32 @ice_phy_type_to_ethtool(%struct.net_device*, %struct.ethtool_link_ksettings*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
