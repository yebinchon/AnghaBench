; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_ethtool.c_ena_get_channels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_ethtool.c_ena_get_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_channels = type { i64, i64, i32, i32, i64, i64, i32, i32 }
%struct.ena_adapter = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_channels*)* @ena_get_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ena_get_channels(%struct.net_device* %0, %struct.ethtool_channels* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_channels*, align 8
  %5 = alloca %struct.ena_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_channels* %1, %struct.ethtool_channels** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.ena_adapter* @netdev_priv(%struct.net_device* %6)
  store %struct.ena_adapter* %7, %struct.ena_adapter** %5, align 8
  %8 = load %struct.ena_adapter*, %struct.ena_adapter** %5, align 8
  %9 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %12 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %11, i32 0, i32 7
  store i32 %10, i32* %12, align 4
  %13 = load %struct.ena_adapter*, %struct.ena_adapter** %5, align 8
  %14 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %17 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %16, i32 0, i32 6
  store i32 %15, i32* %17, align 8
  %18 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %19 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %18, i32 0, i32 5
  store i64 0, i64* %19, align 8
  %20 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %21 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %20, i32 0, i32 4
  store i64 0, i64* %21, align 8
  %22 = load %struct.ena_adapter*, %struct.ena_adapter** %5, align 8
  %23 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %26 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  %27 = load %struct.ena_adapter*, %struct.ena_adapter** %5, align 8
  %28 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %31 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %33 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %32, i32 0, i32 1
  store i64 0, i64* %33, align 8
  %34 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %35 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  ret void
}

declare dso_local %struct.ena_adapter* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
