; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_bcm-cygnus.c_bcm_omega_config_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_bcm-cygnus.c_bcm_omega_config_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"%s: %s PHY revision: 0x%02x\0A\00", align 1
@MII_BMSR = common dso_local global i32 0, align 4
@DOWNSHIFT_DEV_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @bcm_omega_config_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_omega_config_init(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %8 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %11 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = xor i32 %14, -1
  %16 = and i32 %9, %15
  store i32 %16, i32* %5, align 4
  %17 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %18 = call i32 @phydev_name(%struct.phy_device* %17)
  %19 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %20 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @pr_info_once(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %23, i32 %24)
  %26 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %27 = load i32, i32* @MII_BMSR, align 4
  %28 = call i32 @phy_read(%struct.phy_device* %26, i32 %27)
  %29 = load i32, i32* %5, align 4
  switch i32 %29, label %33 [
    i32 0, label %30
  ]

30:                                               ; preds = %1
  %31 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %32 = call i32 @bcm_phy_28nm_a0b0_afe_config_init(%struct.phy_device* %31)
  store i32 %32, i32* %6, align 4
  br label %34

33:                                               ; preds = %1
  br label %34

34:                                               ; preds = %33, %30
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %2, align 4
  br label %60

39:                                               ; preds = %34
  %40 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %41 = call i32 @bcm_phy_downshift_get(%struct.phy_device* %40, i32* %4)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %2, align 4
  br label %60

46:                                               ; preds = %39
  %47 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @DOWNSHIFT_DEV_DISABLE, align 4
  %50 = icmp eq i32 %48, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 @bcm_phy_set_eee(%struct.phy_device* %47, i32 %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %46
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %2, align 4
  br label %60

57:                                               ; preds = %46
  %58 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %59 = call i32 @bcm_phy_enable_apd(%struct.phy_device* %58, i32 1)
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %57, %55, %44, %37
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @pr_info_once(i8*, i32, i32, i32) #1

declare dso_local i32 @phydev_name(%struct.phy_device*) #1

declare dso_local i32 @phy_read(%struct.phy_device*, i32) #1

declare dso_local i32 @bcm_phy_28nm_a0b0_afe_config_init(%struct.phy_device*) #1

declare dso_local i32 @bcm_phy_downshift_get(%struct.phy_device*, i32*) #1

declare dso_local i32 @bcm_phy_set_eee(%struct.phy_device*, i32) #1

declare dso_local i32 @bcm_phy_enable_apd(%struct.phy_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
