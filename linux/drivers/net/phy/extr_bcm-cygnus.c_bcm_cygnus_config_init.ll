; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_bcm-cygnus.c_bcm_cygnus_config_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_bcm-cygnus.c_bcm_cygnus_config_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }

@MII_BCM54XX_ECR = common dso_local global i32 0, align 4
@MII_BCM54XX_ECR_IM = common dso_local global i32 0, align 4
@MII_BCM54XX_INT_DUPLEX = common dso_local global i32 0, align 4
@MII_BCM54XX_INT_SPEED = common dso_local global i32 0, align 4
@MII_BCM54XX_INT_LINK = common dso_local global i32 0, align 4
@MII_BCM54XX_IMR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @bcm_cygnus_config_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_cygnus_config_init(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %6 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %7 = load i32, i32* @MII_BCM54XX_ECR, align 4
  %8 = call i32 @phy_read(%struct.phy_device* %6, i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %2, align 4
  br label %57

13:                                               ; preds = %1
  %14 = load i32, i32* @MII_BCM54XX_ECR_IM, align 4
  %15 = load i32, i32* %4, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %4, align 4
  %17 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %18 = load i32, i32* @MII_BCM54XX_ECR, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @phy_write(%struct.phy_device* %17, i32 %18, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %13
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %57

25:                                               ; preds = %13
  %26 = load i32, i32* @MII_BCM54XX_INT_DUPLEX, align 4
  %27 = load i32, i32* @MII_BCM54XX_INT_SPEED, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @MII_BCM54XX_INT_LINK, align 4
  %30 = or i32 %28, %29
  %31 = xor i32 %30, -1
  store i32 %31, i32* %4, align 4
  %32 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %33 = load i32, i32* @MII_BCM54XX_IMR, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @phy_write(%struct.phy_device* %32, i32 %33, i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %25
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %2, align 4
  br label %57

40:                                               ; preds = %25
  %41 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %42 = call i32 @bcm_cygnus_afe_config(%struct.phy_device* %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* %5, align 4
  store i32 %46, i32* %2, align 4
  br label %57

47:                                               ; preds = %40
  %48 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %49 = call i32 @bcm_phy_set_eee(%struct.phy_device* %48, i32 1)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* %5, align 4
  store i32 %53, i32* %2, align 4
  br label %57

54:                                               ; preds = %47
  %55 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %56 = call i32 @bcm_phy_enable_apd(%struct.phy_device* %55, i32 0)
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %54, %52, %45, %38, %23, %11
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @phy_read(%struct.phy_device*, i32) #1

declare dso_local i32 @phy_write(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @bcm_cygnus_afe_config(%struct.phy_device*) #1

declare dso_local i32 @bcm_phy_set_eee(%struct.phy_device*, i32) #1

declare dso_local i32 @bcm_phy_enable_apd(%struct.phy_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
