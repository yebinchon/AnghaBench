; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_ethtool.c_fm10k_get_channels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_ethtool.c_fm10k_get_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_channels = type { i32, i32, i32, i32 }
%struct.fm10k_intfc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@NON_Q_VECTORS = common dso_local global i32 0, align 4
@RING_F_RSS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_channels*)* @fm10k_get_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fm10k_get_channels(%struct.net_device* %0, %struct.ethtool_channels* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_channels*, align 8
  %5 = alloca %struct.fm10k_intfc*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_channels* %1, %struct.ethtool_channels** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.fm10k_intfc* @netdev_priv(%struct.net_device* %6)
  store %struct.fm10k_intfc* %7, %struct.fm10k_intfc** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call i32 @fm10k_max_channels(%struct.net_device* %8)
  %10 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %11 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %10, i32 0, i32 3
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @NON_Q_VECTORS, align 4
  %13 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %14 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %16 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %19 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  %20 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %5, align 8
  %21 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i64, i64* @RING_F_RSS, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %28 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  ret void
}

declare dso_local %struct.fm10k_intfc* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @fm10k_max_channels(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
