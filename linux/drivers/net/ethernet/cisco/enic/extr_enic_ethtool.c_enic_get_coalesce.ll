; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_ethtool.c_enic_get_coalesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_ethtool.c_enic_get_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32 }
%struct.enic = type { i32, i32, i32, %struct.enic_rx_coal }
%struct.enic_rx_coal = type { i32, i32, i64 }

@VNIC_DEV_INTR_MODE_MSIX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_coalesce*)* @enic_get_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enic_get_coalesce(%struct.net_device* %0, %struct.ethtool_coalesce* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_coalesce*, align 8
  %5 = alloca %struct.enic*, align 8
  %6 = alloca %struct.enic_rx_coal*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_coalesce* %1, %struct.ethtool_coalesce** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.enic* @netdev_priv(%struct.net_device* %7)
  store %struct.enic* %8, %struct.enic** %5, align 8
  %9 = load %struct.enic*, %struct.enic** %5, align 8
  %10 = getelementptr inbounds %struct.enic, %struct.enic* %9, i32 0, i32 3
  store %struct.enic_rx_coal* %10, %struct.enic_rx_coal** %6, align 8
  %11 = load %struct.enic*, %struct.enic** %5, align 8
  %12 = getelementptr inbounds %struct.enic, %struct.enic* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @vnic_dev_get_intr_mode(i32 %13)
  %15 = load i64, i64* @VNIC_DEV_INTR_MODE_MSIX, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.enic*, %struct.enic** %5, align 8
  %19 = getelementptr inbounds %struct.enic, %struct.enic* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %22 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %21, i32 0, i32 4
  store i32 %20, i32* %22, align 4
  br label %23

23:                                               ; preds = %17, %2
  %24 = load %struct.enic*, %struct.enic** %5, align 8
  %25 = getelementptr inbounds %struct.enic, %struct.enic* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %28 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  %29 = load %struct.enic_rx_coal*, %struct.enic_rx_coal** %6, align 8
  %30 = getelementptr inbounds %struct.enic_rx_coal, %struct.enic_rx_coal* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %23
  %34 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %35 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %34, i32 0, i32 0
  store i32 1, i32* %35, align 4
  br label %36

36:                                               ; preds = %33, %23
  %37 = load %struct.enic_rx_coal*, %struct.enic_rx_coal** %6, align 8
  %38 = getelementptr inbounds %struct.enic_rx_coal, %struct.enic_rx_coal* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %41 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load %struct.enic_rx_coal*, %struct.enic_rx_coal** %6, align 8
  %43 = getelementptr inbounds %struct.enic_rx_coal, %struct.enic_rx_coal* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %46 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  ret i32 0
}

declare dso_local %struct.enic* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @vnic_dev_get_intr_mode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
