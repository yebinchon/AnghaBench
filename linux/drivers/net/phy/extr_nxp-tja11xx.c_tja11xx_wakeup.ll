; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_nxp-tja11xx.c_tja11xx_wakeup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_nxp-tja11xx.c_tja11xx_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }

@MII_ECTRL = common dso_local global i32 0, align 4
@MII_ECTRL_POWER_MODE_MASK = common dso_local global i32 0, align 4
@MII_ECTRL_WAKE_REQUEST = common dso_local global i32 0, align 4
@MII_GENSTAT = common dso_local global i32 0, align 4
@MII_GENSTAT_PLL_LOCKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @tja11xx_wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tja11xx_wakeup(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %5 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %6 = load i32, i32* @MII_ECTRL, align 4
  %7 = call i32 @phy_read(%struct.phy_device* %5, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %69

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @MII_ECTRL_POWER_MODE_MASK, align 4
  %15 = and i32 %13, %14
  switch i32 %15, label %67 [
    i32 129, label %16
    i32 130, label %17
    i32 128, label %36
  ]

16:                                               ; preds = %12
  br label %68

17:                                               ; preds = %12
  %18 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %19 = load i32, i32* @MII_ECTRL, align 4
  %20 = load i32, i32* @MII_ECTRL_WAKE_REQUEST, align 4
  %21 = call i32 @phy_set_bits(%struct.phy_device* %18, i32 %19, i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %69

26:                                               ; preds = %17
  %27 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %28 = load i32, i32* @MII_ECTRL, align 4
  %29 = load i32, i32* @MII_ECTRL_WAKE_REQUEST, align 4
  %30 = call i32 @phy_clear_bits(%struct.phy_device* %27, i32 %28, i32 %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %69

35:                                               ; preds = %26
  br label %68

36:                                               ; preds = %12
  %37 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %38 = load i32, i32* @MII_ECTRL, align 4
  %39 = load i32, i32* @MII_ECTRL_POWER_MODE_MASK, align 4
  %40 = call i32 @phy_modify_check(%struct.phy_device* %37, i32 %38, i32 %39, i32 128)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %69

45:                                               ; preds = %36
  %46 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %47 = load i32, i32* @MII_ECTRL, align 4
  %48 = load i32, i32* @MII_ECTRL_POWER_MODE_MASK, align 4
  %49 = call i32 @phy_modify(%struct.phy_device* %46, i32 %47, i32 %48, i32 130)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32, i32* %4, align 4
  store i32 %53, i32* %2, align 4
  br label %69

54:                                               ; preds = %45
  %55 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %56 = load i32, i32* @MII_GENSTAT, align 4
  %57 = load i32, i32* @MII_GENSTAT_PLL_LOCKED, align 4
  %58 = load i32, i32* @MII_GENSTAT_PLL_LOCKED, align 4
  %59 = call i32 @phy_modify_check(%struct.phy_device* %55, i32 %56, i32 %57, i32 %58)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %54
  %63 = load i32, i32* %4, align 4
  store i32 %63, i32* %2, align 4
  br label %69

64:                                               ; preds = %54
  %65 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %66 = call i32 @tja11xx_enable_link_control(%struct.phy_device* %65)
  store i32 %66, i32* %2, align 4
  br label %69

67:                                               ; preds = %12
  br label %68

68:                                               ; preds = %67, %35, %16
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %68, %64, %62, %52, %43, %33, %24, %10
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @phy_read(%struct.phy_device*, i32) #1

declare dso_local i32 @phy_set_bits(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @phy_clear_bits(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @phy_modify_check(%struct.phy_device*, i32, i32, i32) #1

declare dso_local i32 @phy_modify(%struct.phy_device*, i32, i32, i32) #1

declare dso_local i32 @tja11xx_enable_link_control(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
