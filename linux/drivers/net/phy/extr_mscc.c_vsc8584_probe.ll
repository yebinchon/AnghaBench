; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_mscc.c_vsc8584_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_mscc.c_vsc8584_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32, %struct.TYPE_2__, %struct.vsc8531_private* }
%struct.TYPE_2__ = type { i32 }
%struct.vsc8531_private = type { i32, i32, i32, i32, i32 }

@VSC8531_LINK_1000_ACTIVITY = common dso_local global i32 0, align 4
@VSC8531_LINK_100_ACTIVITY = common dso_local global i32 0, align 4
@VSC8531_LINK_ACTIVITY = common dso_local global i32 0, align 4
@VSC8531_DUPLEX_COLLISION = common dso_local global i32 0, align 4
@MSCC_DEV_REV_MASK = common dso_local global i32 0, align 4
@VSC8584_REVB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Only VSC8584 revB is supported.\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VSC8584_SUPP_LED_MODES = common dso_local global i32 0, align 4
@vsc8584_hw_stats = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @vsc8584_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vsc8584_probe(%struct.phy_device* %0) #0 {
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
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @MSCC_DEV_REV_MASK, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* @VSC8584_REVB, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %1
  %22 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %23 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @dev_err(i32* %24, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @ENOTSUPP, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %76

28:                                               ; preds = %1
  %29 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %30 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.vsc8531_private* @devm_kzalloc(i32* %31, i32 20, i32 %32)
  store %struct.vsc8531_private* %33, %struct.vsc8531_private** %4, align 8
  %34 = load %struct.vsc8531_private*, %struct.vsc8531_private** %4, align 8
  %35 = icmp ne %struct.vsc8531_private* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %28
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %76

39:                                               ; preds = %28
  %40 = load %struct.vsc8531_private*, %struct.vsc8531_private** %4, align 8
  %41 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %42 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %41, i32 0, i32 2
  store %struct.vsc8531_private* %40, %struct.vsc8531_private** %42, align 8
  %43 = load %struct.vsc8531_private*, %struct.vsc8531_private** %4, align 8
  %44 = getelementptr inbounds %struct.vsc8531_private, %struct.vsc8531_private* %43, i32 0, i32 0
  store i32 4, i32* %44, align 4
  %45 = load i32, i32* @VSC8584_SUPP_LED_MODES, align 4
  %46 = load %struct.vsc8531_private*, %struct.vsc8531_private** %4, align 8
  %47 = getelementptr inbounds %struct.vsc8531_private, %struct.vsc8531_private* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @vsc8584_hw_stats, align 4
  %49 = load %struct.vsc8531_private*, %struct.vsc8531_private** %4, align 8
  %50 = getelementptr inbounds %struct.vsc8531_private, %struct.vsc8531_private* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @vsc8584_hw_stats, align 4
  %52 = call i32 @ARRAY_SIZE(i32 %51)
  %53 = load %struct.vsc8531_private*, %struct.vsc8531_private** %4, align 8
  %54 = getelementptr inbounds %struct.vsc8531_private, %struct.vsc8531_private* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %56 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load %struct.vsc8531_private*, %struct.vsc8531_private** %4, align 8
  %59 = getelementptr inbounds %struct.vsc8531_private, %struct.vsc8531_private* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @GFP_KERNEL, align 4
  %62 = call i32 @devm_kcalloc(i32* %57, i32 %60, i32 4, i32 %61)
  %63 = load %struct.vsc8531_private*, %struct.vsc8531_private** %4, align 8
  %64 = getelementptr inbounds %struct.vsc8531_private, %struct.vsc8531_private* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.vsc8531_private*, %struct.vsc8531_private** %4, align 8
  %66 = getelementptr inbounds %struct.vsc8531_private, %struct.vsc8531_private* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %39
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %76

72:                                               ; preds = %39
  %73 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %74 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %75 = call i32 @vsc85xx_dt_led_modes_get(%struct.phy_device* %73, i32* %74)
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %72, %69, %36, %21
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @dev_err(i32*, i8*) #1

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
