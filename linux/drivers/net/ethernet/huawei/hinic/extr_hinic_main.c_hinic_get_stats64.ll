; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_main.c_hinic_get_stats64.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_main.c_hinic_get_stats64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.rtnl_link_stats64 = type { i32, i32, i32, i32, i32, i32 }
%struct.hinic_dev = type { i32, i32, %struct.hinic_txq_stats, %struct.hinic_rxq_stats }
%struct.hinic_txq_stats = type { i32, i32, i32 }
%struct.hinic_rxq_stats = type { i32, i32, i32 }

@HINIC_INTF_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.rtnl_link_stats64*)* @hinic_get_stats64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hinic_get_stats64(%struct.net_device* %0, %struct.rtnl_link_stats64* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.rtnl_link_stats64*, align 8
  %5 = alloca %struct.hinic_dev*, align 8
  %6 = alloca %struct.hinic_rxq_stats*, align 8
  %7 = alloca %struct.hinic_txq_stats*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.rtnl_link_stats64* %1, %struct.rtnl_link_stats64** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.hinic_dev* @netdev_priv(%struct.net_device* %8)
  store %struct.hinic_dev* %9, %struct.hinic_dev** %5, align 8
  %10 = load %struct.hinic_dev*, %struct.hinic_dev** %5, align 8
  %11 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %10, i32 0, i32 3
  store %struct.hinic_rxq_stats* %11, %struct.hinic_rxq_stats** %6, align 8
  %12 = load %struct.hinic_dev*, %struct.hinic_dev** %5, align 8
  %13 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %12, i32 0, i32 2
  store %struct.hinic_txq_stats* %13, %struct.hinic_txq_stats** %7, align 8
  %14 = load %struct.hinic_dev*, %struct.hinic_dev** %5, align 8
  %15 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %14, i32 0, i32 1
  %16 = call i32 @down(i32* %15)
  %17 = load %struct.hinic_dev*, %struct.hinic_dev** %5, align 8
  %18 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @HINIC_INTF_UP, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load %struct.hinic_dev*, %struct.hinic_dev** %5, align 8
  %25 = call i32 @update_nic_stats(%struct.hinic_dev* %24)
  br label %26

26:                                               ; preds = %23, %2
  %27 = load %struct.hinic_dev*, %struct.hinic_dev** %5, align 8
  %28 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %27, i32 0, i32 1
  %29 = call i32 @up(i32* %28)
  %30 = load %struct.hinic_rxq_stats*, %struct.hinic_rxq_stats** %6, align 8
  %31 = getelementptr inbounds %struct.hinic_rxq_stats, %struct.hinic_rxq_stats* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %34 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 4
  %35 = load %struct.hinic_rxq_stats*, %struct.hinic_rxq_stats** %6, align 8
  %36 = getelementptr inbounds %struct.hinic_rxq_stats, %struct.hinic_rxq_stats* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %39 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 4
  %40 = load %struct.hinic_rxq_stats*, %struct.hinic_rxq_stats** %6, align 8
  %41 = getelementptr inbounds %struct.hinic_rxq_stats, %struct.hinic_rxq_stats* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %44 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = load %struct.hinic_txq_stats*, %struct.hinic_txq_stats** %7, align 8
  %46 = getelementptr inbounds %struct.hinic_txq_stats, %struct.hinic_txq_stats* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %49 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load %struct.hinic_txq_stats*, %struct.hinic_txq_stats** %7, align 8
  %51 = getelementptr inbounds %struct.hinic_txq_stats, %struct.hinic_txq_stats* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %54 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.hinic_txq_stats*, %struct.hinic_txq_stats** %7, align 8
  %56 = getelementptr inbounds %struct.hinic_txq_stats, %struct.hinic_txq_stats* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %59 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  ret void
}

declare dso_local %struct.hinic_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @update_nic_stats(%struct.hinic_dev*) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
