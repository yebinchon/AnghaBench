; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_mscc.c_vsc8514_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_mscc.c_vsc8514_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { %struct.TYPE_2__, %struct.vsc8531_private* }
%struct.TYPE_2__ = type { i32 }
%struct.vsc8531_private = type { i32, i32, i32, i32, i32 }

@VSC8531_LINK_1000_ACTIVITY = common dso_local global i32 0, align 4
@VSC8531_LINK_100_ACTIVITY = common dso_local global i32 0, align 4
@VSC8531_LINK_ACTIVITY = common dso_local global i32 0, align 4
@VSC8531_DUPLEX_COLLISION = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VSC85XX_SUPP_LED_MODES = common dso_local global i32 0, align 4
@vsc85xx_hw_stats = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @vsc8514_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vsc8514_probe(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca %struct.vsc8531_private*, align 8
  %5 = alloca [4 x i32], align 16
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %6 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %7 = load i32, i32* @VSC8531_LINK_1000_ACTIVITY, align 4
  store i32 %7, i32* %6, align 4
  %8 = getelementptr inbounds i32, i32* %6, i64 1
  %9 = load i32, i32* @VSC8531_LINK_100_ACTIVITY, align 4
  store i32 %9, i32* %8, align 4
  %10 = getelementptr inbounds i32, i32* %8, i64 1
  %11 = load i32, i32* @VSC8531_LINK_ACTIVITY, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds i32, i32* %10, i64 1
  %13 = load i32, i32* @VSC8531_DUPLEX_COLLISION, align 4
  store i32 %13, i32* %12, align 4
  %14 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %15 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.vsc8531_private* @devm_kzalloc(i32* %16, i32 20, i32 %17)
  store %struct.vsc8531_private* %18, %struct.vsc8531_private** %4, align 8
  %19 = load %struct.vsc8531_private*, %struct.vsc8531_private** %4, align 8
  %20 = icmp ne %struct.vsc8531_private* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %61

24:                                               ; preds = %1
  %25 = load %struct.vsc8531_private*, %struct.vsc8531_private** %4, align 8
  %26 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %27 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %26, i32 0, i32 1
  store %struct.vsc8531_private* %25, %struct.vsc8531_private** %27, align 8
  %28 = load %struct.vsc8531_private*, %struct.vsc8531_private** %4, align 8
  %29 = getelementptr inbounds %struct.vsc8531_private, %struct.vsc8531_private* %28, i32 0, i32 0
  store i32 4, i32* %29, align 4
  %30 = load i32, i32* @VSC85XX_SUPP_LED_MODES, align 4
  %31 = load %struct.vsc8531_private*, %struct.vsc8531_private** %4, align 8
  %32 = getelementptr inbounds %struct.vsc8531_private, %struct.vsc8531_private* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @vsc85xx_hw_stats, align 4
  %34 = load %struct.vsc8531_private*, %struct.vsc8531_private** %4, align 8
  %35 = getelementptr inbounds %struct.vsc8531_private, %struct.vsc8531_private* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @vsc85xx_hw_stats, align 4
  %37 = call i32 @ARRAY_SIZE(i32 %36)
  %38 = load %struct.vsc8531_private*, %struct.vsc8531_private** %4, align 8
  %39 = getelementptr inbounds %struct.vsc8531_private, %struct.vsc8531_private* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %41 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load %struct.vsc8531_private*, %struct.vsc8531_private** %4, align 8
  %44 = getelementptr inbounds %struct.vsc8531_private, %struct.vsc8531_private* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call i32 @devm_kcalloc(i32* %42, i32 %45, i32 4, i32 %46)
  %48 = load %struct.vsc8531_private*, %struct.vsc8531_private** %4, align 8
  %49 = getelementptr inbounds %struct.vsc8531_private, %struct.vsc8531_private* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.vsc8531_private*, %struct.vsc8531_private** %4, align 8
  %51 = getelementptr inbounds %struct.vsc8531_private, %struct.vsc8531_private* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %24
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %61

57:                                               ; preds = %24
  %58 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %59 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %60 = call i32 @vsc85xx_dt_led_modes_get(%struct.phy_device* %58, i32* %59)
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %57, %54, %21
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

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
