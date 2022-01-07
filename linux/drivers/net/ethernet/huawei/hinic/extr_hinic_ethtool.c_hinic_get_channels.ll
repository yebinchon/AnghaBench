; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_ethtool.c_hinic_get_channels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_ethtool.c_hinic_get_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_channels = type { i64, i64, i8*, i8*, i64, i64, i32, i32 }
%struct.hinic_dev = type { %struct.hinic_hwdev* }
%struct.hinic_hwdev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_channels*)* @hinic_get_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hinic_get_channels(%struct.net_device* %0, %struct.ethtool_channels* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_channels*, align 8
  %5 = alloca %struct.hinic_dev*, align 8
  %6 = alloca %struct.hinic_hwdev*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_channels* %1, %struct.ethtool_channels** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.hinic_dev* @netdev_priv(%struct.net_device* %7)
  store %struct.hinic_dev* %8, %struct.hinic_dev** %5, align 8
  %9 = load %struct.hinic_dev*, %struct.hinic_dev** %5, align 8
  %10 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %9, i32 0, i32 0
  %11 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %10, align 8
  store %struct.hinic_hwdev* %11, %struct.hinic_hwdev** %6, align 8
  %12 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %6, align 8
  %13 = getelementptr inbounds %struct.hinic_hwdev, %struct.hinic_hwdev* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %17 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %16, i32 0, i32 7
  store i32 %15, i32* %17, align 4
  %18 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %6, align 8
  %19 = getelementptr inbounds %struct.hinic_hwdev, %struct.hinic_hwdev* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %23 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %22, i32 0, i32 6
  store i32 %21, i32* %23, align 8
  %24 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %25 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %24, i32 0, i32 5
  store i64 0, i64* %25, align 8
  %26 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %27 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %26, i32 0, i32 4
  store i64 0, i64* %27, align 8
  %28 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %6, align 8
  %29 = call i8* @hinic_hwdev_num_qps(%struct.hinic_hwdev* %28)
  %30 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %31 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %30, i32 0, i32 3
  store i8* %29, i8** %31, align 8
  %32 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %6, align 8
  %33 = call i8* @hinic_hwdev_num_qps(%struct.hinic_hwdev* %32)
  %34 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %35 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %34, i32 0, i32 2
  store i8* %33, i8** %35, align 8
  %36 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %37 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %39 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  ret void
}

declare dso_local %struct.hinic_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i8* @hinic_hwdev_num_qps(%struct.hinic_hwdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
