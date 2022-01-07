; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa/extr_dpaa_ethtool.c_dpaa_set_pauseparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa/extr_dpaa_ethtool.c_dpaa_set_pauseparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.phy_device* }
%struct.phy_device = type { i32 }
%struct.ethtool_pauseparam = type { i32, i32, i32 }
%struct.mac_device = type { i32, i32, i32 }
%struct.dpaa_priv = type { %struct.mac_device* }

@.str = private unnamed_addr constant [28 x i8] c"phy device not initialized\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"set_mac_active_pause() = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_pauseparam*)* @dpaa_set_pauseparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpaa_set_pauseparam(%struct.net_device* %0, %struct.ethtool_pauseparam* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_pauseparam*, align 8
  %6 = alloca %struct.mac_device*, align 8
  %7 = alloca %struct.phy_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dpaa_priv*, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_pauseparam* %1, %struct.ethtool_pauseparam** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.dpaa_priv* @netdev_priv(%struct.net_device* %12)
  store %struct.dpaa_priv* %13, %struct.dpaa_priv** %10, align 8
  %14 = load %struct.dpaa_priv*, %struct.dpaa_priv** %10, align 8
  %15 = getelementptr inbounds %struct.dpaa_priv, %struct.dpaa_priv* %14, i32 0, i32 0
  %16 = load %struct.mac_device*, %struct.mac_device** %15, align 8
  store %struct.mac_device* %16, %struct.mac_device** %6, align 8
  %17 = load %struct.net_device*, %struct.net_device** %4, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  %19 = load %struct.phy_device*, %struct.phy_device** %18, align 8
  store %struct.phy_device* %19, %struct.phy_device** %7, align 8
  %20 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %21 = icmp ne %struct.phy_device* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %2
  %23 = load %struct.net_device*, %struct.net_device** %4, align 8
  %24 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %23, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %85

27:                                               ; preds = %2
  %28 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %29 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %30 = call i32 @phy_validate_pause(%struct.phy_device* %28, %struct.ethtool_pauseparam* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %85

35:                                               ; preds = %27
  %36 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %37 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = load %struct.mac_device*, %struct.mac_device** %6, align 8
  %44 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %46 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = load %struct.mac_device*, %struct.mac_device** %6, align 8
  %53 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %55 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  %61 = load %struct.mac_device*, %struct.mac_device** %6, align 8
  %62 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 4
  %63 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %64 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %65 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %68 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @phy_set_asym_pause(%struct.phy_device* %63, i32 %66, i32 %69)
  %71 = load %struct.mac_device*, %struct.mac_device** %6, align 8
  %72 = call i32 @fman_get_pause_cfg(%struct.mac_device* %71, i32* %8, i32* %9)
  %73 = load %struct.mac_device*, %struct.mac_device** %6, align 8
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @fman_set_mac_active_pause(%struct.mac_device* %73, i32 %74, i32 %75)
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %11, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %35
  %80 = load %struct.net_device*, %struct.net_device** %4, align 8
  %81 = load i32, i32* %11, align 4
  %82 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %80, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %79, %35
  %84 = load i32, i32* %11, align 4
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %83, %32, %22
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local %struct.dpaa_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @phy_validate_pause(%struct.phy_device*, %struct.ethtool_pauseparam*) #1

declare dso_local i32 @phy_set_asym_pause(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @fman_get_pause_cfg(%struct.mac_device*, i32*, i32*) #1

declare dso_local i32 @fman_set_mac_active_pause(%struct.mac_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
