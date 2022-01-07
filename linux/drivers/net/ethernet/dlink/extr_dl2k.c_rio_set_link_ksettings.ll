; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dlink/extr_dl2k.c_rio_set_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dlink/extr_dl2k.c_rio_set_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i32 }
%struct.netdev_private = type { i32, i32, i32 }

@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@DUPLEX_FULL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [94 x i8] c"Warning!! Can't disable Auto negotiation in 1000Mbps, change to Manual 100Mbps, Full duplex.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)* @rio_set_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rio_set_link_ksettings(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_link_ksettings*, align 8
  %6 = alloca %struct.netdev_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.netdev_private* @netdev_priv(%struct.net_device* %9)
  store %struct.netdev_private* %10, %struct.netdev_private** %6, align 8
  %11 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %12 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %7, align 4
  %15 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %16 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %8, align 4
  %19 = load %struct.net_device*, %struct.net_device** %4, align 8
  %20 = call i32 @netif_carrier_off(%struct.net_device* %19)
  %21 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %22 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @AUTONEG_ENABLE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %2
  %28 = load %struct.netdev_private*, %struct.netdev_private** %6, align 8
  %29 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %76

33:                                               ; preds = %27
  %34 = load %struct.netdev_private*, %struct.netdev_private** %6, align 8
  %35 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %34, i32 0, i32 0
  store i32 1, i32* %35, align 4
  %36 = load %struct.net_device*, %struct.net_device** %4, align 8
  %37 = call i32 @mii_set_media(%struct.net_device* %36)
  store i32 0, i32* %3, align 4
  br label %76

38:                                               ; preds = %2
  %39 = load %struct.netdev_private*, %struct.netdev_private** %6, align 8
  %40 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %39, i32 0, i32 0
  store i32 0, i32* %40, align 4
  %41 = load %struct.netdev_private*, %struct.netdev_private** %6, align 8
  %42 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 1000
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  store i32 129, i32* %7, align 4
  %46 = load i32, i32* @DUPLEX_FULL, align 4
  store i32 %46, i32* %8, align 4
  %47 = call i32 @printk(i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str, i64 0, i64 0))
  br label %48

48:                                               ; preds = %45, %38
  %49 = load i32, i32* %7, align 4
  switch i32 %49, label %69 [
    i32 130, label %50
    i32 129, label %59
    i32 128, label %68
  ]

50:                                               ; preds = %48
  %51 = load %struct.netdev_private*, %struct.netdev_private** %6, align 8
  %52 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %51, i32 0, i32 1
  store i32 10, i32* %52, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @DUPLEX_FULL, align 4
  %55 = icmp eq i32 %53, %54
  %56 = zext i1 %55 to i32
  %57 = load %struct.netdev_private*, %struct.netdev_private** %6, align 8
  %58 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  br label %72

59:                                               ; preds = %48
  %60 = load %struct.netdev_private*, %struct.netdev_private** %6, align 8
  %61 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %60, i32 0, i32 1
  store i32 100, i32* %61, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @DUPLEX_FULL, align 4
  %64 = icmp eq i32 %62, %63
  %65 = zext i1 %64 to i32
  %66 = load %struct.netdev_private*, %struct.netdev_private** %6, align 8
  %67 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 4
  br label %72

68:                                               ; preds = %48
  br label %69

69:                                               ; preds = %48, %68
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %76

72:                                               ; preds = %59, %50
  %73 = load %struct.net_device*, %struct.net_device** %4, align 8
  %74 = call i32 @mii_set_media(%struct.net_device* %73)
  br label %75

75:                                               ; preds = %72
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %75, %69, %33, %32
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local %struct.netdev_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @mii_set_media(%struct.net_device*) #1

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
