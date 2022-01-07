; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_get_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_get_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }
%struct.sky2_port = type { i32, i32, i32, i32, %struct.sky2_hw* }
%struct.sky2_hw = type { i32 }

@PHY_ADDR_MARV = common dso_local global i32 0, align 4
@PORT_TP = common dso_local global i32 0, align 4
@SUPPORTED_Autoneg = common dso_local global i32 0, align 4
@SUPPORTED_TP = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i32 0, align 4
@PORT_FIBRE = common dso_local global i32 0, align 4
@SUPPORTED_FIBRE = common dso_local global i32 0, align 4
@SKY2_FLAG_AUTO_SPEED = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i32 0, align 4
@AUTONEG_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)* @sky2_get_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sky2_get_link_ksettings(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_link_ksettings*, align 8
  %5 = alloca %struct.sky2_port*, align 8
  %6 = alloca %struct.sky2_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.sky2_port* @netdev_priv(%struct.net_device* %9)
  store %struct.sky2_port* %10, %struct.sky2_port** %5, align 8
  %11 = load %struct.sky2_port*, %struct.sky2_port** %5, align 8
  %12 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %11, i32 0, i32 4
  %13 = load %struct.sky2_hw*, %struct.sky2_hw** %12, align 8
  store %struct.sky2_hw* %13, %struct.sky2_hw** %6, align 8
  %14 = load %struct.sky2_hw*, %struct.sky2_hw** %6, align 8
  %15 = call i32 @sky2_supported_modes(%struct.sky2_hw* %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* @PHY_ADDR_MARV, align 4
  %17 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %18 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 4
  store i32 %16, i32* %19, align 4
  %20 = load %struct.sky2_hw*, %struct.sky2_hw** %6, align 8
  %21 = call i64 @sky2_is_copper(%struct.sky2_hw* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %2
  %24 = load i32, i32* @PORT_TP, align 4
  %25 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %26 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  store i32 %24, i32* %27, align 4
  %28 = load %struct.sky2_port*, %struct.sky2_port** %5, align 8
  %29 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %32 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 3
  store i32 %30, i32* %33, align 4
  %34 = load i32, i32* @SUPPORTED_Autoneg, align 4
  %35 = load i32, i32* @SUPPORTED_TP, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* %7, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %7, align 4
  br label %53

39:                                               ; preds = %2
  %40 = load i32, i32* @SPEED_1000, align 4
  %41 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %42 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 3
  store i32 %40, i32* %43, align 4
  %44 = load i32, i32* @PORT_FIBRE, align 4
  %45 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %46 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  store i32 %44, i32* %47, align 4
  %48 = load i32, i32* @SUPPORTED_Autoneg, align 4
  %49 = load i32, i32* @SUPPORTED_FIBRE, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* %7, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %39, %23
  %54 = load %struct.sky2_port*, %struct.sky2_port** %5, align 8
  %55 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* %8, align 4
  %57 = load %struct.sky2_port*, %struct.sky2_port** %5, align 8
  %58 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @SKY2_FLAG_AUTO_SPEED, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %53
  %64 = load i32, i32* @AUTONEG_ENABLE, align 4
  br label %67

65:                                               ; preds = %53
  %66 = load i32, i32* @AUTONEG_DISABLE, align 4
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi i32 [ %64, %63 ], [ %66, %65 ]
  %69 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %70 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  store i32 %68, i32* %71, align 4
  %72 = load %struct.sky2_port*, %struct.sky2_port** %5, align 8
  %73 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %76 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  store i32 %74, i32* %77, align 4
  %78 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %79 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @ethtool_convert_legacy_u32_to_link_mode(i32 %81, i32 %82)
  %84 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %85 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @ethtool_convert_legacy_u32_to_link_mode(i32 %87, i32 %88)
  ret i32 0
}

declare dso_local %struct.sky2_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @sky2_supported_modes(%struct.sky2_hw*) #1

declare dso_local i64 @sky2_is_copper(%struct.sky2_hw*) #1

declare dso_local i32 @ethtool_convert_legacy_u32_to_link_mode(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
