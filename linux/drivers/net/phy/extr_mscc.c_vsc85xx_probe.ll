; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_mscc.c_vsc85xx_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_mscc.c_vsc85xx_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { %struct.TYPE_2__, %struct.vsc8531_private* }
%struct.TYPE_2__ = type { i32 }
%struct.vsc8531_private = type { i32, i32, i32, i32, i32, i32 }

@VSC8531_LINK_1000_ACTIVITY = common dso_local global i32 0, align 4
@VSC8531_LINK_100_ACTIVITY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VSC85XX_SUPP_LED_MODES = common dso_local global i32 0, align 4
@vsc85xx_hw_stats = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @vsc85xx_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vsc85xx_probe(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca %struct.vsc8531_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [2 x i32], align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %7 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %8 = load i32, i32* @VSC8531_LINK_1000_ACTIVITY, align 4
  store i32 %8, i32* %7, align 4
  %9 = getelementptr inbounds i32, i32* %7, i64 1
  %10 = load i32, i32* @VSC8531_LINK_100_ACTIVITY, align 4
  store i32 %10, i32* %9, align 4
  %11 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %12 = call i32 @vsc85xx_edge_rate_magic_get(%struct.phy_device* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %2, align 4
  br label %68

17:                                               ; preds = %1
  %18 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %19 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.vsc8531_private* @devm_kzalloc(i32* %20, i32 24, i32 %21)
  store %struct.vsc8531_private* %22, %struct.vsc8531_private** %4, align 8
  %23 = load %struct.vsc8531_private*, %struct.vsc8531_private** %4, align 8
  %24 = icmp ne %struct.vsc8531_private* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %17
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %68

28:                                               ; preds = %17
  %29 = load %struct.vsc8531_private*, %struct.vsc8531_private** %4, align 8
  %30 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %31 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %30, i32 0, i32 1
  store %struct.vsc8531_private* %29, %struct.vsc8531_private** %31, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.vsc8531_private*, %struct.vsc8531_private** %4, align 8
  %34 = getelementptr inbounds %struct.vsc8531_private, %struct.vsc8531_private* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.vsc8531_private*, %struct.vsc8531_private** %4, align 8
  %36 = getelementptr inbounds %struct.vsc8531_private, %struct.vsc8531_private* %35, i32 0, i32 1
  store i32 2, i32* %36, align 4
  %37 = load i32, i32* @VSC85XX_SUPP_LED_MODES, align 4
  %38 = load %struct.vsc8531_private*, %struct.vsc8531_private** %4, align 8
  %39 = getelementptr inbounds %struct.vsc8531_private, %struct.vsc8531_private* %38, i32 0, i32 5
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @vsc85xx_hw_stats, align 4
  %41 = load %struct.vsc8531_private*, %struct.vsc8531_private** %4, align 8
  %42 = getelementptr inbounds %struct.vsc8531_private, %struct.vsc8531_private* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @vsc85xx_hw_stats, align 4
  %44 = call i32 @ARRAY_SIZE(i32 %43)
  %45 = load %struct.vsc8531_private*, %struct.vsc8531_private** %4, align 8
  %46 = getelementptr inbounds %struct.vsc8531_private, %struct.vsc8531_private* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  %47 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %48 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load %struct.vsc8531_private*, %struct.vsc8531_private** %4, align 8
  %51 = getelementptr inbounds %struct.vsc8531_private, %struct.vsc8531_private* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call i32 @devm_kcalloc(i32* %49, i32 %52, i32 4, i32 %53)
  %55 = load %struct.vsc8531_private*, %struct.vsc8531_private** %4, align 8
  %56 = getelementptr inbounds %struct.vsc8531_private, %struct.vsc8531_private* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  %57 = load %struct.vsc8531_private*, %struct.vsc8531_private** %4, align 8
  %58 = getelementptr inbounds %struct.vsc8531_private, %struct.vsc8531_private* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %28
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %68

64:                                               ; preds = %28
  %65 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %66 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %67 = call i32 @vsc85xx_dt_led_modes_get(%struct.phy_device* %65, i32* %66)
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %64, %61, %25, %15
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @vsc85xx_edge_rate_magic_get(%struct.phy_device*) #1

declare dso_local %struct.vsc8531_private* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @devm_kcalloc(i32*, i32, i32, i32) #1

declare dso_local i32 @vsc85xx_dt_led_modes_get(%struct.phy_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
