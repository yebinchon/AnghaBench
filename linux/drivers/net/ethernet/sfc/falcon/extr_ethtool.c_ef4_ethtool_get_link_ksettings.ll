; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_ethtool.c_ef4_ethtool_get_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_ethtool.c_ef4_ethtool_get_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ef4_nic = type { i32, %struct.TYPE_3__*, %struct.ef4_link_state }
%struct.TYPE_3__ = type { i32 (%struct.ef4_nic*, %struct.ethtool_link_ksettings*)* }
%struct.ef4_link_state = type { i64, i32 }

@supported = common dso_local global i32 0, align 4
@Pause = common dso_local global i32 0, align 4
@Asym_Pause = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)* @ef4_ethtool_get_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ef4_ethtool_get_link_ksettings(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_link_ksettings*, align 8
  %5 = alloca %struct.ef4_nic*, align 8
  %6 = alloca %struct.ef4_link_state*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.ef4_nic* @netdev_priv(%struct.net_device* %7)
  store %struct.ef4_nic* %8, %struct.ef4_nic** %5, align 8
  %9 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %10 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %9, i32 0, i32 2
  store %struct.ef4_link_state* %10, %struct.ef4_link_state** %6, align 8
  %11 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %12 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %15 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32 (%struct.ef4_nic*, %struct.ethtool_link_ksettings*)*, i32 (%struct.ef4_nic*, %struct.ethtool_link_ksettings*)** %17, align 8
  %19 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %20 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %21 = call i32 %18(%struct.ef4_nic* %19, %struct.ethtool_link_ksettings* %20)
  %22 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %23 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %22, i32 0, i32 0
  %24 = call i32 @mutex_unlock(i32* %23)
  %25 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %26 = load i32, i32* @supported, align 4
  %27 = load i32, i32* @Pause, align 4
  %28 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %25, i32 %26, i32 %27)
  %29 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %30 = load i32, i32* @supported, align 4
  %31 = load i32, i32* @Asym_Pause, align 4
  %32 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %29, i32 %30, i32 %31)
  %33 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %34 = call i64 @LOOPBACK_INTERNAL(%struct.ef4_nic* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %56

36:                                               ; preds = %2
  %37 = load %struct.ef4_link_state*, %struct.ef4_link_state** %6, align 8
  %38 = getelementptr inbounds %struct.ef4_link_state, %struct.ef4_link_state* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %41 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  store i32 %39, i32* %42, align 4
  %43 = load %struct.ef4_link_state*, %struct.ef4_link_state** %6, align 8
  %44 = getelementptr inbounds %struct.ef4_link_state, %struct.ef4_link_state* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %36
  %48 = load i32, i32* @DUPLEX_FULL, align 4
  br label %51

49:                                               ; preds = %36
  %50 = load i32, i32* @DUPLEX_HALF, align 4
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %48, %47 ], [ %50, %49 ]
  %53 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %54 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 4
  br label %56

56:                                               ; preds = %51, %2
  ret i32 0
}

declare dso_local %struct.ef4_nic* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings*, i32, i32) #1

declare dso_local i64 @LOOPBACK_INTERNAL(%struct.ef4_nic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
