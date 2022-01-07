; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/samsung/sxgbe/extr_sxgbe_ethtool.c_sxgbe_get_channels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/samsung/sxgbe/extr_sxgbe_ethtool.c_sxgbe_get_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_channels = type { i32, i32, i32, i32 }

@SXGBE_MAX_RX_CHANNELS = common dso_local global i32 0, align 4
@SXGBE_MAX_TX_CHANNELS = common dso_local global i32 0, align 4
@SXGBE_RX_QUEUES = common dso_local global i32 0, align 4
@SXGBE_TX_QUEUES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_channels*)* @sxgbe_get_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sxgbe_get_channels(%struct.net_device* %0, %struct.ethtool_channels* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_channels*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_channels* %1, %struct.ethtool_channels** %4, align 8
  %5 = load i32, i32* @SXGBE_MAX_RX_CHANNELS, align 4
  %6 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %7 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %6, i32 0, i32 3
  store i32 %5, i32* %7, align 4
  %8 = load i32, i32* @SXGBE_MAX_TX_CHANNELS, align 4
  %9 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %10 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %9, i32 0, i32 2
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* @SXGBE_RX_QUEUES, align 4
  %12 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %13 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @SXGBE_TX_QUEUES, align 4
  %15 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %16 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
