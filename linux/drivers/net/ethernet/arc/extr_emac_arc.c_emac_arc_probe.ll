; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/arc/extr_emac_arc.c_emac_arc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/arc/extr_emac_arc.c_emac_arc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.net_device = type { i32 }
%struct.arc_emac_priv = type { i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DRV_NAME = common dso_local global i32 0, align 4
@DRV_VERSION = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_MII = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"hclk\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"failed to retrieve host clock from device tree\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @emac_arc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emac_arc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.arc_emac_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %75

18:                                               ; preds = %1
  %19 = call %struct.net_device* @alloc_etherdev(i32 12)
  store %struct.net_device* %19, %struct.net_device** %5, align 8
  %20 = load %struct.net_device*, %struct.net_device** %5, align 8
  %21 = icmp ne %struct.net_device* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %75

25:                                               ; preds = %18
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = load %struct.net_device*, %struct.net_device** %5, align 8
  %28 = call i32 @platform_set_drvdata(%struct.platform_device* %26, %struct.net_device* %27)
  %29 = load %struct.net_device*, %struct.net_device** %5, align 8
  %30 = load %struct.device*, %struct.device** %4, align 8
  %31 = call i32 @SET_NETDEV_DEV(%struct.net_device* %29, %struct.device* %30)
  %32 = load %struct.net_device*, %struct.net_device** %5, align 8
  %33 = call %struct.arc_emac_priv* @netdev_priv(%struct.net_device* %32)
  store %struct.arc_emac_priv* %33, %struct.arc_emac_priv** %6, align 8
  %34 = load i32, i32* @DRV_NAME, align 4
  %35 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %6, align 8
  %36 = getelementptr inbounds %struct.arc_emac_priv, %struct.arc_emac_priv* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @DRV_VERSION, align 4
  %38 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %6, align 8
  %39 = getelementptr inbounds %struct.arc_emac_priv, %struct.arc_emac_priv* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.device*, %struct.device** %4, align 8
  %41 = getelementptr inbounds %struct.device, %struct.device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @of_get_phy_mode(i32 %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %25
  %47 = load i32, i32* @PHY_INTERFACE_MODE_MII, align 4
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %46, %25
  %49 = load %struct.device*, %struct.device** %4, align 8
  %50 = call i32 @devm_clk_get(%struct.device* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %51 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %6, align 8
  %52 = getelementptr inbounds %struct.arc_emac_priv, %struct.arc_emac_priv* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %6, align 8
  %54 = getelementptr inbounds %struct.arc_emac_priv, %struct.arc_emac_priv* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @IS_ERR(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %48
  %59 = load %struct.device*, %struct.device** %4, align 8
  %60 = call i32 @dev_err(%struct.device* %59, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %8, align 4
  br label %67

63:                                               ; preds = %48
  %64 = load %struct.net_device*, %struct.net_device** %5, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @arc_emac_probe(%struct.net_device* %64, i32 %65)
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %63, %58
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load %struct.net_device*, %struct.net_device** %5, align 8
  %72 = call i32 @free_netdev(%struct.net_device* %71)
  br label %73

73:                                               ; preds = %70, %67
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %73, %22, %15
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.net_device*) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, %struct.device*) #1

declare dso_local %struct.arc_emac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @of_get_phy_mode(i32) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @arc_emac_probe(%struct.net_device*, i32) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
