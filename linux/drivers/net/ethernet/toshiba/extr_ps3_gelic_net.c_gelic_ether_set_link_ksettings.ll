; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/toshiba/extr_ps3_gelic_net.c_gelic_ether_set_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/toshiba/extr_ps3_gelic_net.c_gelic_ether_set_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i64 }
%struct.gelic_card = type { i32 }

@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@GELIC_LV1_ETHER_AUTO_NEG = common dso_local global i32 0, align 4
@GELIC_LV1_ETHER_SPEED_10 = common dso_local global i32 0, align 4
@GELIC_LV1_ETHER_SPEED_100 = common dso_local global i32 0, align 4
@GELIC_LV1_ETHER_SPEED_1000 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i64 0, align 8
@GELIC_LV1_ETHER_FULL_DUPLEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"1000 half duplex is not supported.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)* @gelic_ether_set_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gelic_ether_set_link_ksettings(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_link_ksettings*, align 8
  %6 = alloca %struct.gelic_card*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.gelic_card* @netdev_card(%struct.net_device* %9)
  store %struct.gelic_card* %10, %struct.gelic_card** %6, align 8
  %11 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %12 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @AUTONEG_ENABLE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @GELIC_LV1_ETHER_AUTO_NEG, align 4
  store i32 %18, i32* %7, align 4
  br label %56

19:                                               ; preds = %2
  %20 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %21 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %30 [
    i32 130, label %24
    i32 129, label %26
    i32 128, label %28
  ]

24:                                               ; preds = %19
  %25 = load i32, i32* @GELIC_LV1_ETHER_SPEED_10, align 4
  store i32 %25, i32* %7, align 4
  br label %33

26:                                               ; preds = %19
  %27 = load i32, i32* @GELIC_LV1_ETHER_SPEED_100, align 4
  store i32 %27, i32* %7, align 4
  br label %33

28:                                               ; preds = %19
  %29 = load i32, i32* @GELIC_LV1_ETHER_SPEED_1000, align 4
  store i32 %29, i32* %7, align 4
  br label %33

30:                                               ; preds = %19
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %65

33:                                               ; preds = %28, %26, %24
  %34 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %35 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @DUPLEX_FULL, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = load i32, i32* @GELIC_LV1_ETHER_FULL_DUPLEX, align 4
  %42 = load i32, i32* %7, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %7, align 4
  br label %55

44:                                               ; preds = %33
  %45 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %46 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %48, 128
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = call i32 @pr_info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %65

54:                                               ; preds = %44
  br label %55

55:                                               ; preds = %54, %40
  br label %56

56:                                               ; preds = %55, %17
  %57 = load %struct.gelic_card*, %struct.gelic_card** %6, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @gelic_card_set_link_mode(%struct.gelic_card* %57, i32 %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %3, align 4
  br label %65

64:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %64, %62, %50, %30
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local %struct.gelic_card* @netdev_card(%struct.net_device*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @gelic_card_set_link_mode(%struct.gelic_card*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
