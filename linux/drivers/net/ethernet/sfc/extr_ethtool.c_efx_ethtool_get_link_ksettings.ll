; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ethtool.c_efx_ethtool_get_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ethtool.c_efx_ethtool_get_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.efx_nic = type { i32, %struct.TYPE_4__*, %struct.efx_link_state }
%struct.TYPE_4__ = type { i32 (%struct.efx_nic*, %struct.ethtool_link_ksettings*)* }
%struct.efx_link_state = type { i64, i32 }

@SUPPORTED_Pause = common dso_local global i32 0, align 4
@SUPPORTED_Asym_Pause = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)* @efx_ethtool_get_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_ethtool_get_link_ksettings(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_link_ksettings*, align 8
  %5 = alloca %struct.efx_nic*, align 8
  %6 = alloca %struct.efx_link_state*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.efx_nic* @netdev_priv(%struct.net_device* %8)
  store %struct.efx_nic* %9, %struct.efx_nic** %5, align 8
  %10 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %11 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %10, i32 0, i32 2
  store %struct.efx_link_state* %11, %struct.efx_link_state** %6, align 8
  %12 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %13 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %16 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32 (%struct.efx_nic*, %struct.ethtool_link_ksettings*)*, i32 (%struct.efx_nic*, %struct.ethtool_link_ksettings*)** %18, align 8
  %20 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %21 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %22 = call i32 %19(%struct.efx_nic* %20, %struct.ethtool_link_ksettings* %21)
  %23 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %24 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %23, i32 0, i32 0
  %25 = call i32 @mutex_unlock(i32* %24)
  %26 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %27 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ethtool_convert_link_mode_to_legacy_u32(i32* %7, i32 %29)
  %31 = load i32, i32* @SUPPORTED_Pause, align 4
  %32 = load i32, i32* @SUPPORTED_Asym_Pause, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* %7, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %7, align 4
  %36 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %37 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @ethtool_convert_legacy_u32_to_link_mode(i32 %39, i32 %40)
  %42 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %43 = call i64 @LOOPBACK_INTERNAL(%struct.efx_nic* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %65

45:                                               ; preds = %2
  %46 = load %struct.efx_link_state*, %struct.efx_link_state** %6, align 8
  %47 = getelementptr inbounds %struct.efx_link_state, %struct.efx_link_state* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %50 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  store i32 %48, i32* %51, align 4
  %52 = load %struct.efx_link_state*, %struct.efx_link_state** %6, align 8
  %53 = getelementptr inbounds %struct.efx_link_state, %struct.efx_link_state* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %45
  %57 = load i32, i32* @DUPLEX_FULL, align 4
  br label %60

58:                                               ; preds = %45
  %59 = load i32, i32* @DUPLEX_HALF, align 4
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i32 [ %57, %56 ], [ %59, %58 ]
  %62 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %63 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  store i32 %61, i32* %64, align 4
  br label %65

65:                                               ; preds = %60, %2
  ret i32 0
}

declare dso_local %struct.efx_nic* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ethtool_convert_link_mode_to_legacy_u32(i32*, i32) #1

declare dso_local i32 @ethtool_convert_legacy_u32_to_link_mode(i32, i32) #1

declare dso_local i64 @LOOPBACK_INTERNAL(%struct.efx_nic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
