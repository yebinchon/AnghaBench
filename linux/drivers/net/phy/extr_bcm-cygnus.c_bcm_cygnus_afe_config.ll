; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_bcm-cygnus.c_bcm_cygnus_afe_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_bcm-cygnus.c_bcm_cygnus_afe_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }

@MII_BCM54XX_AUX_CTL = common dso_local global i32 0, align 4
@MII_BRCM_CORE_BASE1E = common dso_local global i32 0, align 4
@MII_BRCM_CORE_EXPB1 = common dso_local global i32 0, align 4
@MII_BRCM_CORE_EXPB0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @bcm_cygnus_afe_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_cygnus_afe_config(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %5 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %6 = load i32, i32* @MII_BCM54XX_AUX_CTL, align 4
  %7 = call i32 @phy_write(%struct.phy_device* %5, i32 %6, i32 3120)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %75

12:                                               ; preds = %1
  %13 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %14 = call i32 @bcm_phy_write_misc(%struct.phy_device* %13, i32 57, i32 1, i32 42952)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %75

19:                                               ; preds = %12
  %20 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %21 = call i32 @bcm_phy_write_misc(%struct.phy_device* %20, i32 58, i32 0, i32 2051)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %75

26:                                               ; preds = %19
  %27 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %28 = call i32 @bcm_phy_write_misc(%struct.phy_device* %27, i32 58, i32 1, i32 42816)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %75

33:                                               ; preds = %26
  %34 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %35 = call i32 @bcm_phy_write_misc(%struct.phy_device* %34, i32 58, i32 3, i32 33792)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %2, align 4
  br label %75

40:                                               ; preds = %33
  %41 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %42 = call i32 @bcm_phy_write_misc(%struct.phy_device* %41, i32 59, i32 0, i32 4)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %2, align 4
  br label %75

47:                                               ; preds = %40
  %48 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %49 = load i32, i32* @MII_BRCM_CORE_BASE1E, align 4
  %50 = call i32 @phy_write(%struct.phy_device* %48, i32 %49, i32 2)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* %4, align 4
  store i32 %54, i32* %2, align 4
  br label %75

55:                                               ; preds = %47
  %56 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %57 = load i32, i32* @MII_BRCM_CORE_EXPB1, align 4
  %58 = call i32 @bcm_phy_write_exp_sel(%struct.phy_device* %56, i32 %57, i32 16)
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i32, i32* %4, align 4
  store i32 %62, i32* %2, align 4
  br label %75

63:                                               ; preds = %55
  %64 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %65 = load i32, i32* @MII_BRCM_CORE_EXPB0, align 4
  %66 = call i32 @bcm_phy_write_exp_sel(%struct.phy_device* %64, i32 %65, i32 16)
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = load i32, i32* %4, align 4
  store i32 %70, i32* %2, align 4
  br label %75

71:                                               ; preds = %63
  %72 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %73 = load i32, i32* @MII_BRCM_CORE_EXPB0, align 4
  %74 = call i32 @bcm_phy_write_exp_sel(%struct.phy_device* %72, i32 %73, i32 0)
  store i32 %74, i32* %4, align 4
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %71, %69, %61, %53, %45, %38, %31, %24, %17, %10
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @phy_write(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @bcm_phy_write_misc(%struct.phy_device*, i32, i32, i32) #1

declare dso_local i32 @bcm_phy_write_exp_sel(%struct.phy_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
