; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_hw.c_xgene_enet_phy_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_hw.c_xgene_enet_phy_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.xgene_enet_pdata = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i64 }
%struct.device_node = type { i32 }
%struct.phy_device = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"phy-handle\00", align 1
@xgene_enet_adjust_link = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Could not connect to PHY\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@SPEED_UNKNOWN = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_10baseT_Half_BIT = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_100baseT_Half_BIT = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_1000baseT_Half_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xgene_enet_phy_connect(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.xgene_enet_pdata*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.phy_device*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.xgene_enet_pdata* @netdev_priv(%struct.net_device* %9)
  store %struct.xgene_enet_pdata* %10, %struct.xgene_enet_pdata** %4, align 8
  %11 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %4, align 8
  %12 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %7, align 8
  %15 = load %struct.device*, %struct.device** %7, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %53

19:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %41, %19
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 2
  br i1 %22, label %23, label %44

23:                                               ; preds = %20
  %24 = load %struct.device*, %struct.device** %7, align 8
  %25 = getelementptr inbounds %struct.device, %struct.device* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call %struct.device_node* @of_parse_phandle(i64 %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %27)
  store %struct.device_node* %28, %struct.device_node** %5, align 8
  %29 = load %struct.net_device*, %struct.net_device** %3, align 8
  %30 = load %struct.device_node*, %struct.device_node** %5, align 8
  %31 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %4, align 8
  %32 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.phy_device* @of_phy_connect(%struct.net_device* %29, %struct.device_node* %30, i32* @xgene_enet_adjust_link, i32 0, i32 %33)
  store %struct.phy_device* %34, %struct.phy_device** %6, align 8
  %35 = load %struct.device_node*, %struct.device_node** %5, align 8
  %36 = call i32 @of_node_put(%struct.device_node* %35)
  %37 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %38 = icmp ne %struct.phy_device* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %23
  br label %44

40:                                               ; preds = %23
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %8, align 4
  br label %20

44:                                               ; preds = %39, %20
  %45 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %46 = icmp ne %struct.phy_device* %45, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %44
  %48 = load %struct.net_device*, %struct.net_device** %3, align 8
  %49 = call i32 @netdev_err(%struct.net_device* %48, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* @ENODEV, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %71

52:                                               ; preds = %44
  br label %56

53:                                               ; preds = %1
  %54 = load i32, i32* @ENODEV, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %71

56:                                               ; preds = %52
  %57 = load i32, i32* @SPEED_UNKNOWN, align 4
  %58 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %4, align 8
  %59 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %61 = load i32, i32* @ETHTOOL_LINK_MODE_10baseT_Half_BIT, align 4
  %62 = call i32 @phy_remove_link_mode(%struct.phy_device* %60, i32 %61)
  %63 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %64 = load i32, i32* @ETHTOOL_LINK_MODE_100baseT_Half_BIT, align 4
  %65 = call i32 @phy_remove_link_mode(%struct.phy_device* %63, i32 %64)
  %66 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %67 = load i32, i32* @ETHTOOL_LINK_MODE_1000baseT_Half_BIT, align 4
  %68 = call i32 @phy_remove_link_mode(%struct.phy_device* %66, i32 %67)
  %69 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %70 = call i32 @phy_support_asym_pause(%struct.phy_device* %69)
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %56, %53, %47
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local %struct.xgene_enet_pdata* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.device_node* @of_parse_phandle(i64, i8*, i32) #1

declare dso_local %struct.phy_device* @of_phy_connect(%struct.net_device*, %struct.device_node*, i32*, i32, i32) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @phy_remove_link_mode(%struct.phy_device*, i32) #1

declare dso_local i32 @phy_support_asym_pause(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
