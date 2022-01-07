; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_ntb_netdev.c_ntb_get_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_ntb_netdev.c_ntb_get_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i32, i32, i32 }

@supported = common dso_local global i32 0, align 4
@Backplane = common dso_local global i32 0, align 4
@advertising = common dso_local global i32 0, align 4
@SPEED_UNKNOWN = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@PORT_OTHER = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)* @ntb_get_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ntb_get_link_ksettings(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_link_ksettings*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %4, align 8
  %5 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %6 = load i32, i32* @supported, align 4
  %7 = call i32 @ethtool_link_ksettings_zero_link_mode(%struct.ethtool_link_ksettings* %5, i32 %6)
  %8 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %9 = load i32, i32* @supported, align 4
  %10 = load i32, i32* @Backplane, align 4
  %11 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %8, i32 %9, i32 %10)
  %12 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %13 = load i32, i32* @advertising, align 4
  %14 = call i32 @ethtool_link_ksettings_zero_link_mode(%struct.ethtool_link_ksettings* %12, i32 %13)
  %15 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %16 = load i32, i32* @advertising, align 4
  %17 = load i32, i32* @Backplane, align 4
  %18 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %15, i32 %16, i32 %17)
  %19 = load i32, i32* @SPEED_UNKNOWN, align 4
  %20 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %21 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 4
  store i32 %19, i32* %22, align 8
  %23 = load i32, i32* @DUPLEX_FULL, align 4
  %24 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %25 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 3
  store i32 %23, i32* %26, align 4
  %27 = load i32, i32* @PORT_OTHER, align 4
  %28 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %29 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  store i32 %27, i32* %30, align 8
  %31 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %32 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  store i64 0, i64* %33, align 8
  %34 = load i32, i32* @AUTONEG_ENABLE, align 4
  %35 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %36 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 8
  ret i32 0
}

declare dso_local i32 @ethtool_link_ksettings_zero_link_mode(%struct.ethtool_link_ksettings*, i32) #1

declare dso_local i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
