; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_axp20x-rsb.c_axp20x_rsb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_axp20x-rsb.c_axp20x_rsb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sunxi_rsb_device = type { i32, i32 }
%struct.axp20x_dev = type { i32, i32, i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"regmap init failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sunxi_rsb_device*)* @axp20x_rsb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axp20x_rsb_probe(%struct.sunxi_rsb_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sunxi_rsb_device*, align 8
  %4 = alloca %struct.axp20x_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.sunxi_rsb_device* %0, %struct.sunxi_rsb_device** %3, align 8
  %6 = load %struct.sunxi_rsb_device*, %struct.sunxi_rsb_device** %3, align 8
  %7 = getelementptr inbounds %struct.sunxi_rsb_device, %struct.sunxi_rsb_device* %6, i32 0, i32 0
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.axp20x_dev* @devm_kzalloc(i32* %7, i32 24, i32 %8)
  store %struct.axp20x_dev* %9, %struct.axp20x_dev** %4, align 8
  %10 = load %struct.axp20x_dev*, %struct.axp20x_dev** %4, align 8
  %11 = icmp ne %struct.axp20x_dev* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %61

15:                                               ; preds = %1
  %16 = load %struct.sunxi_rsb_device*, %struct.sunxi_rsb_device** %3, align 8
  %17 = getelementptr inbounds %struct.sunxi_rsb_device, %struct.sunxi_rsb_device* %16, i32 0, i32 0
  %18 = load %struct.axp20x_dev*, %struct.axp20x_dev** %4, align 8
  %19 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %18, i32 0, i32 3
  store i32* %17, i32** %19, align 8
  %20 = load %struct.sunxi_rsb_device*, %struct.sunxi_rsb_device** %3, align 8
  %21 = getelementptr inbounds %struct.sunxi_rsb_device, %struct.sunxi_rsb_device* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.axp20x_dev*, %struct.axp20x_dev** %4, align 8
  %24 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 8
  %25 = load %struct.sunxi_rsb_device*, %struct.sunxi_rsb_device** %3, align 8
  %26 = getelementptr inbounds %struct.sunxi_rsb_device, %struct.sunxi_rsb_device* %25, i32 0, i32 0
  %27 = load %struct.axp20x_dev*, %struct.axp20x_dev** %4, align 8
  %28 = call i32 @dev_set_drvdata(i32* %26, %struct.axp20x_dev* %27)
  %29 = load %struct.axp20x_dev*, %struct.axp20x_dev** %4, align 8
  %30 = call i32 @axp20x_match_device(%struct.axp20x_dev* %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %15
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* %2, align 4
  br label %61

35:                                               ; preds = %15
  %36 = load %struct.sunxi_rsb_device*, %struct.sunxi_rsb_device** %3, align 8
  %37 = load %struct.axp20x_dev*, %struct.axp20x_dev** %4, align 8
  %38 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @devm_regmap_init_sunxi_rsb(%struct.sunxi_rsb_device* %36, i32 %39)
  %41 = load %struct.axp20x_dev*, %struct.axp20x_dev** %4, align 8
  %42 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.axp20x_dev*, %struct.axp20x_dev** %4, align 8
  %44 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @IS_ERR(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %35
  %49 = load %struct.axp20x_dev*, %struct.axp20x_dev** %4, align 8
  %50 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @PTR_ERR(i32 %51)
  store i32 %52, i32* %5, align 4
  %53 = load %struct.sunxi_rsb_device*, %struct.sunxi_rsb_device** %3, align 8
  %54 = getelementptr inbounds %struct.sunxi_rsb_device, %struct.sunxi_rsb_device* %53, i32 0, i32 0
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @dev_err(i32* %54, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* %5, align 4
  store i32 %57, i32* %2, align 4
  br label %61

58:                                               ; preds = %35
  %59 = load %struct.axp20x_dev*, %struct.axp20x_dev** %4, align 8
  %60 = call i32 @axp20x_device_probe(%struct.axp20x_dev* %59)
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %58, %48, %33, %12
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local %struct.axp20x_dev* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.axp20x_dev*) #1

declare dso_local i32 @axp20x_match_device(%struct.axp20x_dev*) #1

declare dso_local i32 @devm_regmap_init_sunxi_rsb(%struct.sunxi_rsb_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @axp20x_device_probe(%struct.axp20x_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
