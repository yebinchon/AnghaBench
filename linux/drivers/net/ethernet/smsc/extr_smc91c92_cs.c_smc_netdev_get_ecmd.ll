; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smc91c92_cs.c_smc_netdev_get_ecmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smc91c92_cs.c_smc_netdev_get_ecmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i64, i32, i32 }

@SUPPORTED_TP = common dso_local global i32 0, align 4
@SUPPORTED_AUI = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Full = common dso_local global i32 0, align 4
@CONFIG = common dso_local global i64 0, align 8
@CFG_AUI_SELECT = common dso_local global i32 0, align 4
@PORT_AUI = common dso_local global i32 0, align 4
@PORT_TP = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i32 0, align 4
@MGMT = common dso_local global i64 0, align 8
@TCR = common dso_local global i64 0, align 8
@TCR_FDUPLX = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_link_ksettings*)* @smc_netdev_get_ecmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smc_netdev_get_ecmd(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_link_ksettings*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* @SUPPORTED_TP, align 4
  %12 = load i32, i32* @SUPPORTED_AUI, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @SUPPORTED_10baseT_Half, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @SUPPORTED_10baseT_Full, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %7, align 4
  %18 = call i32 @SMC_SELECT_BANK(i32 1)
  %19 = load i32, i32* %6, align 4
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* @CONFIG, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @inw(i64 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @CFG_AUI_SELECT, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i32, i32* @PORT_AUI, align 4
  br label %32

30:                                               ; preds = %2
  %31 = load i32, i32* @PORT_TP, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  %34 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %35 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 3
  store i32 %33, i32* %36, align 4
  %37 = load i32, i32* @SPEED_10, align 4
  %38 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %39 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  store i32 %37, i32* %40, align 8
  %41 = load i32, i32* %6, align 4
  %42 = zext i32 %41 to i64
  %43 = load i64, i64* @MGMT, align 8
  %44 = add nsw i64 %42, %43
  %45 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %46 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  store i64 %44, i64* %47, align 8
  %48 = call i32 @SMC_SELECT_BANK(i32 0)
  %49 = load i32, i32* %6, align 4
  %50 = zext i32 %49 to i64
  %51 = load i64, i64* @TCR, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @inw(i64 %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @TCR_FDUPLX, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %32
  %59 = load i32, i32* @DUPLEX_FULL, align 4
  br label %62

60:                                               ; preds = %32
  %61 = load i32, i32* @DUPLEX_HALF, align 4
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi i32 [ %59, %58 ], [ %61, %60 ]
  %64 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %65 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  store i32 %63, i32* %66, align 8
  %67 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %68 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @ethtool_convert_legacy_u32_to_link_mode(i32 %70, i32 %71)
  ret void
}

declare dso_local i32 @SMC_SELECT_BANK(i32) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @ethtool_convert_legacy_u32_to_link_mode(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
