; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_marvell10g.c_mv3310_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_marvell10g.c_mv3310_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { %struct.TYPE_3__, %struct.TYPE_4__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.mv3310_priv = type { i32 }

@MDIO_DEVS_PMAPMD = common dso_local global i32 0, align 4
@MDIO_DEVS_AN = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@MDIO_MMD_PMAPMD = common dso_local global i32 0, align 4
@MV_PMA_BOOT = common dso_local global i32 0, align 4
@MV_PMA_BOOT_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"PHY failed to boot firmware, status=%04x\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @mv3310_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv3310_probe(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca %struct.mv3310_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %7 = load i32, i32* @MDIO_DEVS_PMAPMD, align 4
  %8 = load i32, i32* @MDIO_DEVS_AN, align 4
  %9 = or i32 %7, %8
  store i32 %9, i32* %5, align 4
  %10 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %11 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %1
  %15 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %16 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %14, %1
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %72

26:                                               ; preds = %14
  %27 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %28 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %29 = load i32, i32* @MV_PMA_BOOT, align 4
  %30 = call i32 @phy_read_mmd(%struct.phy_device* %27, i32 %28, i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %2, align 4
  br label %72

35:                                               ; preds = %26
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @MV_PMA_BOOT_FATAL, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %35
  %41 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %42 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @dev_warn(i32* %43, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @ENODEV, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %72

48:                                               ; preds = %35
  %49 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %50 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call %struct.mv3310_priv* @devm_kzalloc(i32* %51, i32 4, i32 %52)
  store %struct.mv3310_priv* %53, %struct.mv3310_priv** %4, align 8
  %54 = load %struct.mv3310_priv*, %struct.mv3310_priv** %4, align 8
  %55 = icmp ne %struct.mv3310_priv* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %48
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %72

59:                                               ; preds = %48
  %60 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %61 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load %struct.mv3310_priv*, %struct.mv3310_priv** %4, align 8
  %64 = call i32 @dev_set_drvdata(i32* %62, %struct.mv3310_priv* %63)
  %65 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %66 = call i32 @mv3310_hwmon_probe(%struct.phy_device* %65)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %59
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %2, align 4
  br label %72

71:                                               ; preds = %59
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %71, %69, %56, %40, %33, %23
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @phy_read_mmd(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local %struct.mv3310_priv* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.mv3310_priv*) #1

declare dso_local i32 @mv3310_hwmon_probe(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
