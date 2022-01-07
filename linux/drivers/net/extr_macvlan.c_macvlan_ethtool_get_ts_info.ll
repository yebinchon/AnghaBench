; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_macvlan.c_macvlan_ethtool_get_ts_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_macvlan.c_macvlan_ethtool_get_ts_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.phy_device*, %struct.ethtool_ops* }
%struct.phy_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.phy_device*, %struct.ethtool_ts_info*)* }
%struct.ethtool_ops = type { {}* }
%struct.ethtool_ts_info = type { i32, i32 }

@SOF_TIMESTAMPING_RX_SOFTWARE = common dso_local global i32 0, align 4
@SOF_TIMESTAMPING_SOFTWARE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_ts_info*)* @macvlan_ethtool_get_ts_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macvlan_ethtool_get_ts_info(%struct.net_device* %0, %struct.ethtool_ts_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_ts_info*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.ethtool_ops*, align 8
  %8 = alloca %struct.phy_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_ts_info* %1, %struct.ethtool_ts_info** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.net_device* @macvlan_dev_real_dev(%struct.net_device* %9)
  store %struct.net_device* %10, %struct.net_device** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %6, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 1
  %13 = load %struct.ethtool_ops*, %struct.ethtool_ops** %12, align 8
  store %struct.ethtool_ops* %13, %struct.ethtool_ops** %7, align 8
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = load %struct.phy_device*, %struct.phy_device** %15, align 8
  store %struct.phy_device* %16, %struct.phy_device** %8, align 8
  %17 = load %struct.phy_device*, %struct.phy_device** %8, align 8
  %18 = icmp ne %struct.phy_device* %17, null
  br i1 %18, label %19, label %40

19:                                               ; preds = %2
  %20 = load %struct.phy_device*, %struct.phy_device** %8, align 8
  %21 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = icmp ne %struct.TYPE_2__* %22, null
  br i1 %23, label %24, label %40

24:                                               ; preds = %19
  %25 = load %struct.phy_device*, %struct.phy_device** %8, align 8
  %26 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32 (%struct.phy_device*, %struct.ethtool_ts_info*)*, i32 (%struct.phy_device*, %struct.ethtool_ts_info*)** %28, align 8
  %30 = icmp ne i32 (%struct.phy_device*, %struct.ethtool_ts_info*)* %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %24
  %32 = load %struct.phy_device*, %struct.phy_device** %8, align 8
  %33 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32 (%struct.phy_device*, %struct.ethtool_ts_info*)*, i32 (%struct.phy_device*, %struct.ethtool_ts_info*)** %35, align 8
  %37 = load %struct.phy_device*, %struct.phy_device** %8, align 8
  %38 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %5, align 8
  %39 = call i32 %36(%struct.phy_device* %37, %struct.ethtool_ts_info* %38)
  store i32 %39, i32* %3, align 4
  br label %64

40:                                               ; preds = %24, %19, %2
  %41 = load %struct.ethtool_ops*, %struct.ethtool_ops** %7, align 8
  %42 = getelementptr inbounds %struct.ethtool_ops, %struct.ethtool_ops* %41, i32 0, i32 0
  %43 = bitcast {}** %42 to i32 (%struct.net_device*, %struct.ethtool_ts_info*)**
  %44 = load i32 (%struct.net_device*, %struct.ethtool_ts_info*)*, i32 (%struct.net_device*, %struct.ethtool_ts_info*)** %43, align 8
  %45 = icmp ne i32 (%struct.net_device*, %struct.ethtool_ts_info*)* %44, null
  br i1 %45, label %46, label %54

46:                                               ; preds = %40
  %47 = load %struct.ethtool_ops*, %struct.ethtool_ops** %7, align 8
  %48 = getelementptr inbounds %struct.ethtool_ops, %struct.ethtool_ops* %47, i32 0, i32 0
  %49 = bitcast {}** %48 to i32 (%struct.net_device*, %struct.ethtool_ts_info*)**
  %50 = load i32 (%struct.net_device*, %struct.ethtool_ts_info*)*, i32 (%struct.net_device*, %struct.ethtool_ts_info*)** %49, align 8
  %51 = load %struct.net_device*, %struct.net_device** %6, align 8
  %52 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %5, align 8
  %53 = call i32 %50(%struct.net_device* %51, %struct.ethtool_ts_info* %52)
  store i32 %53, i32* %3, align 4
  br label %64

54:                                               ; preds = %40
  %55 = load i32, i32* @SOF_TIMESTAMPING_RX_SOFTWARE, align 4
  %56 = load i32, i32* @SOF_TIMESTAMPING_SOFTWARE, align 4
  %57 = or i32 %55, %56
  %58 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %5, align 8
  %59 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %5, align 8
  %61 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %60, i32 0, i32 1
  store i32 -1, i32* %61, align 4
  br label %62

62:                                               ; preds = %54
  br label %63

63:                                               ; preds = %62
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %46, %31
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local %struct.net_device* @macvlan_dev_real_dev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
