; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-mdio.c_xgbe_phy_module_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-mdio.c_xgbe_phy_module_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.xgbe_prv_data.0*, %struct.ethtool_eeprom*, i32*)* }
%struct.xgbe_prv_data.0 = type opaque
%struct.ethtool_eeprom = type opaque
%struct.ethtool_eeprom.1 = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgbe_prv_data*, %struct.ethtool_eeprom.1*, i32*)* @xgbe_phy_module_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_phy_module_eeprom(%struct.xgbe_prv_data* %0, %struct.ethtool_eeprom.1* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xgbe_prv_data*, align 8
  %6 = alloca %struct.ethtool_eeprom.1*, align 8
  %7 = alloca i32*, align 8
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %5, align 8
  store %struct.ethtool_eeprom.1* %1, %struct.ethtool_eeprom.1** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %5, align 8
  %9 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32 (%struct.xgbe_prv_data.0*, %struct.ethtool_eeprom*, i32*)*, i32 (%struct.xgbe_prv_data.0*, %struct.ethtool_eeprom*, i32*)** %11, align 8
  %13 = icmp ne i32 (%struct.xgbe_prv_data.0*, %struct.ethtool_eeprom*, i32*)* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENXIO, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %29

17:                                               ; preds = %3
  %18 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %5, align 8
  %19 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32 (%struct.xgbe_prv_data.0*, %struct.ethtool_eeprom*, i32*)*, i32 (%struct.xgbe_prv_data.0*, %struct.ethtool_eeprom*, i32*)** %21, align 8
  %23 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %5, align 8
  %24 = bitcast %struct.xgbe_prv_data* %23 to %struct.xgbe_prv_data.0*
  %25 = load %struct.ethtool_eeprom.1*, %struct.ethtool_eeprom.1** %6, align 8
  %26 = bitcast %struct.ethtool_eeprom.1* %25 to %struct.ethtool_eeprom*
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 %22(%struct.xgbe_prv_data.0* %24, %struct.ethtool_eeprom* %26, i32* %27)
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %17, %14
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
