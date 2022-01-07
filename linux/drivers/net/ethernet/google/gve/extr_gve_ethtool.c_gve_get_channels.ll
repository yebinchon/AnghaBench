; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_ethtool.c_gve_get_channels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_ethtool.c_gve_get_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_channels = type { i64, i64, i32, i32, i64, i64, i32, i32 }
%struct.gve_priv = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_channels*)* @gve_get_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gve_get_channels(%struct.net_device* %0, %struct.ethtool_channels* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_channels*, align 8
  %5 = alloca %struct.gve_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_channels* %1, %struct.ethtool_channels** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.gve_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.gve_priv* %7, %struct.gve_priv** %5, align 8
  %8 = load %struct.gve_priv*, %struct.gve_priv** %5, align 8
  %9 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %13 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %12, i32 0, i32 7
  store i32 %11, i32* %13, align 4
  %14 = load %struct.gve_priv*, %struct.gve_priv** %5, align 8
  %15 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %19 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %18, i32 0, i32 6
  store i32 %17, i32* %19, align 8
  %20 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %21 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %20, i32 0, i32 5
  store i64 0, i64* %21, align 8
  %22 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %23 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %22, i32 0, i32 4
  store i64 0, i64* %23, align 8
  %24 = load %struct.gve_priv*, %struct.gve_priv** %5, align 8
  %25 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %29 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = load %struct.gve_priv*, %struct.gve_priv** %5, align 8
  %31 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %35 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %37 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %39 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  ret void
}

declare dso_local %struct.gve_priv* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
