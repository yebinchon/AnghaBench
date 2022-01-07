; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_ac100.c_ac100_rsb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_ac100.c_ac100_rsb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sunxi_rsb_device = type { i32 }
%struct.ac100_dev = type { i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ac100_regmap_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"regmap init failed: %d\0A\00", align 1
@PLATFORM_DEVID_NONE = common dso_local global i32 0, align 4
@ac100_cells = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to add MFD devices: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sunxi_rsb_device*)* @ac100_rsb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ac100_rsb_probe(%struct.sunxi_rsb_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sunxi_rsb_device*, align 8
  %4 = alloca %struct.ac100_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.sunxi_rsb_device* %0, %struct.sunxi_rsb_device** %3, align 8
  %6 = load %struct.sunxi_rsb_device*, %struct.sunxi_rsb_device** %3, align 8
  %7 = getelementptr inbounds %struct.sunxi_rsb_device, %struct.sunxi_rsb_device* %6, i32 0, i32 0
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.ac100_dev* @devm_kzalloc(i32* %7, i32 16, i32 %8)
  store %struct.ac100_dev* %9, %struct.ac100_dev** %4, align 8
  %10 = load %struct.ac100_dev*, %struct.ac100_dev** %4, align 8
  %11 = icmp ne %struct.ac100_dev* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %62

15:                                               ; preds = %1
  %16 = load %struct.sunxi_rsb_device*, %struct.sunxi_rsb_device** %3, align 8
  %17 = getelementptr inbounds %struct.sunxi_rsb_device, %struct.sunxi_rsb_device* %16, i32 0, i32 0
  %18 = load %struct.ac100_dev*, %struct.ac100_dev** %4, align 8
  %19 = getelementptr inbounds %struct.ac100_dev, %struct.ac100_dev* %18, i32 0, i32 0
  store i32* %17, i32** %19, align 8
  %20 = load %struct.sunxi_rsb_device*, %struct.sunxi_rsb_device** %3, align 8
  %21 = load %struct.ac100_dev*, %struct.ac100_dev** %4, align 8
  %22 = call i32 @sunxi_rsb_device_set_drvdata(%struct.sunxi_rsb_device* %20, %struct.ac100_dev* %21)
  %23 = load %struct.sunxi_rsb_device*, %struct.sunxi_rsb_device** %3, align 8
  %24 = call i32 @devm_regmap_init_sunxi_rsb(%struct.sunxi_rsb_device* %23, i32* @ac100_regmap_config)
  %25 = load %struct.ac100_dev*, %struct.ac100_dev** %4, align 8
  %26 = getelementptr inbounds %struct.ac100_dev, %struct.ac100_dev* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  %27 = load %struct.ac100_dev*, %struct.ac100_dev** %4, align 8
  %28 = getelementptr inbounds %struct.ac100_dev, %struct.ac100_dev* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @IS_ERR(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %15
  %33 = load %struct.ac100_dev*, %struct.ac100_dev** %4, align 8
  %34 = getelementptr inbounds %struct.ac100_dev, %struct.ac100_dev* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @PTR_ERR(i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load %struct.ac100_dev*, %struct.ac100_dev** %4, align 8
  %38 = getelementptr inbounds %struct.ac100_dev, %struct.ac100_dev* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @dev_err(i32* %39, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %2, align 4
  br label %62

43:                                               ; preds = %15
  %44 = load %struct.ac100_dev*, %struct.ac100_dev** %4, align 8
  %45 = getelementptr inbounds %struct.ac100_dev, %struct.ac100_dev* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* @PLATFORM_DEVID_NONE, align 4
  %48 = load i32, i32* @ac100_cells, align 4
  %49 = load i32, i32* @ac100_cells, align 4
  %50 = call i32 @ARRAY_SIZE(i32 %49)
  %51 = call i32 @devm_mfd_add_devices(i32* %46, i32 %47, i32 %48, i32 %50, i32* null, i32 0, i32* null)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %43
  %55 = load %struct.ac100_dev*, %struct.ac100_dev** %4, align 8
  %56 = getelementptr inbounds %struct.ac100_dev, %struct.ac100_dev* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @dev_err(i32* %57, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %5, align 4
  store i32 %60, i32* %2, align 4
  br label %62

61:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %54, %32, %12
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local %struct.ac100_dev* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @sunxi_rsb_device_set_drvdata(%struct.sunxi_rsb_device*, %struct.ac100_dev*) #1

declare dso_local i32 @devm_regmap_init_sunxi_rsb(%struct.sunxi_rsb_device*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @devm_mfd_add_devices(i32*, i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
