; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_bcm7xxx.c_bcm7xxx_28nm_config_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_bcm7xxx.c_bcm7xxx_28nm_config_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"%s: %s PHY revision: 0x%02x, patch: %d\0A\00", align 1
@MII_BMSR = common dso_local global i32 0, align 4
@DOWNSHIFT_DEV_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @bcm7xxx_28nm_config_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm7xxx_28nm_config_init(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %8 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %9 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @PHY_BRCM_7XXX_REV(i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %13 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @PHY_BRCM_7XXX_PATCH(i32 %14)
  store i32 %15, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %1
  %19 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %20 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %23 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = xor i32 %26, -1
  %28 = and i32 %21, %27
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %18, %1
  %30 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %31 = call i32 @phydev_name(%struct.phy_device* %30)
  %32 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %33 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @pr_info_once(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %36, i32 %37, i32 %38)
  %40 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %41 = load i32, i32* @MII_BMSR, align 4
  %42 = call i32 @phy_read(%struct.phy_device* %40, i32 %41)
  %43 = load i32, i32* %4, align 4
  switch i32 %43, label %56 [
    i32 160, label %44
    i32 176, label %44
    i32 208, label %47
    i32 224, label %50
    i32 240, label %50
    i32 16, label %50
    i32 1, label %53
  ]

44:                                               ; preds = %29, %29
  %45 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %46 = call i32 @bcm_phy_28nm_a0b0_afe_config_init(%struct.phy_device* %45)
  store i32 %46, i32* %7, align 4
  br label %57

47:                                               ; preds = %29
  %48 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %49 = call i32 @bcm7xxx_28nm_d0_afe_config_init(%struct.phy_device* %48)
  store i32 %49, i32* %7, align 4
  br label %57

50:                                               ; preds = %29, %29, %29
  %51 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %52 = call i32 @bcm7xxx_28nm_e0_plus_afe_config_init(%struct.phy_device* %51)
  store i32 %52, i32* %7, align 4
  br label %57

53:                                               ; preds = %29
  %54 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %55 = call i32 @bcm7xxx_28nm_a0_patch_afe_config_init(%struct.phy_device* %54)
  store i32 %55, i32* %7, align 4
  br label %57

56:                                               ; preds = %29
  br label %57

57:                                               ; preds = %56, %53, %50, %47, %44
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %2, align 4
  br label %83

62:                                               ; preds = %57
  %63 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %64 = call i32 @bcm_phy_downshift_get(%struct.phy_device* %63, i32* %6)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %2, align 4
  br label %83

69:                                               ; preds = %62
  %70 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @DOWNSHIFT_DEV_DISABLE, align 4
  %73 = icmp eq i32 %71, %72
  %74 = zext i1 %73 to i32
  %75 = call i32 @bcm_phy_set_eee(%struct.phy_device* %70, i32 %74)
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %69
  %79 = load i32, i32* %7, align 4
  store i32 %79, i32* %2, align 4
  br label %83

80:                                               ; preds = %69
  %81 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %82 = call i32 @bcm_phy_enable_apd(%struct.phy_device* %81, i32 1)
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %80, %78, %67, %60
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @PHY_BRCM_7XXX_REV(i32) #1

declare dso_local i32 @PHY_BRCM_7XXX_PATCH(i32) #1

declare dso_local i32 @pr_info_once(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @phydev_name(%struct.phy_device*) #1

declare dso_local i32 @phy_read(%struct.phy_device*, i32) #1

declare dso_local i32 @bcm_phy_28nm_a0b0_afe_config_init(%struct.phy_device*) #1

declare dso_local i32 @bcm7xxx_28nm_d0_afe_config_init(%struct.phy_device*) #1

declare dso_local i32 @bcm7xxx_28nm_e0_plus_afe_config_init(%struct.phy_device*) #1

declare dso_local i32 @bcm7xxx_28nm_a0_patch_afe_config_init(%struct.phy_device*) #1

declare dso_local i32 @bcm_phy_downshift_get(%struct.phy_device*, i32*) #1

declare dso_local i32 @bcm_phy_set_eee(%struct.phy_device*, i32) #1

declare dso_local i32 @bcm_phy_enable_apd(%struct.phy_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
