; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_nxp-tja11xx.c_tja11xx_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_nxp-tja11xx.c_tja11xx_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.tja11xx_priv = type { i8*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tja11xx_hwmon_chip_info = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @tja11xx_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tja11xx_probe(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.tja11xx_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %7 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %8 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.tja11xx_priv* @devm_kzalloc(%struct.device* %10, i32 16, i32 %11)
  store %struct.tja11xx_priv* %12, %struct.tja11xx_priv** %5, align 8
  %13 = load %struct.tja11xx_priv*, %struct.tja11xx_priv** %5, align 8
  %14 = icmp ne %struct.tja11xx_priv* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %77

18:                                               ; preds = %1
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = call i32 @dev_name(%struct.device* %20)
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i8* @devm_kstrdup(%struct.device* %19, i32 %21, i32 %22)
  %24 = load %struct.tja11xx_priv*, %struct.tja11xx_priv** %5, align 8
  %25 = getelementptr inbounds %struct.tja11xx_priv, %struct.tja11xx_priv* %24, i32 0, i32 0
  store i8* %23, i8** %25, align 8
  %26 = load %struct.tja11xx_priv*, %struct.tja11xx_priv** %5, align 8
  %27 = getelementptr inbounds %struct.tja11xx_priv, %struct.tja11xx_priv* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %18
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %77

33:                                               ; preds = %18
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %61, %33
  %35 = load %struct.tja11xx_priv*, %struct.tja11xx_priv** %5, align 8
  %36 = getelementptr inbounds %struct.tja11xx_priv, %struct.tja11xx_priv* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = icmp ne i8 %41, 0
  br i1 %42, label %43, label %64

43:                                               ; preds = %34
  %44 = load %struct.tja11xx_priv*, %struct.tja11xx_priv** %5, align 8
  %45 = getelementptr inbounds %struct.tja11xx_priv, %struct.tja11xx_priv* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = call i64 @hwmon_is_bad_char(i8 signext %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %43
  %54 = load %struct.tja11xx_priv*, %struct.tja11xx_priv** %5, align 8
  %55 = getelementptr inbounds %struct.tja11xx_priv, %struct.tja11xx_priv* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  store i8 95, i8* %59, align 1
  br label %60

60:                                               ; preds = %53, %43
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %34

64:                                               ; preds = %34
  %65 = load %struct.device*, %struct.device** %4, align 8
  %66 = load %struct.tja11xx_priv*, %struct.tja11xx_priv** %5, align 8
  %67 = getelementptr inbounds %struct.tja11xx_priv, %struct.tja11xx_priv* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %70 = call i32 @devm_hwmon_device_register_with_info(%struct.device* %65, i8* %68, %struct.phy_device* %69, i32* @tja11xx_hwmon_chip_info, i32* null)
  %71 = load %struct.tja11xx_priv*, %struct.tja11xx_priv** %5, align 8
  %72 = getelementptr inbounds %struct.tja11xx_priv, %struct.tja11xx_priv* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 8
  %73 = load %struct.tja11xx_priv*, %struct.tja11xx_priv** %5, align 8
  %74 = getelementptr inbounds %struct.tja11xx_priv, %struct.tja11xx_priv* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @PTR_ERR_OR_ZERO(i32 %75)
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %64, %30, %15
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local %struct.tja11xx_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i8* @devm_kstrdup(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i64 @hwmon_is_bad_char(i8 signext) #1

declare dso_local i32 @devm_hwmon_device_register_with_info(%struct.device*, i8*, %struct.phy_device*, i32*, i32*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
