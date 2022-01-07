; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_intel_quark_i2c_gpio.c_intel_quark_register_i2c_clk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_intel_quark_i2c_gpio.c_intel_quark_register_i2c_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.intel_quark_mfd = type { %struct.clk*, i32 }
%struct.clk = type { i32 }

@INTEL_QUARK_I2C_CONTROLLER_CLK = common dso_local global i32 0, align 4
@INTEL_QUARK_I2C_CLK_HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Fixed clk register failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @intel_quark_register_i2c_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_quark_register_i2c_clk(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.intel_quark_mfd*, align 8
  %5 = alloca %struct.clk*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.intel_quark_mfd* @dev_get_drvdata(%struct.device* %6)
  store %struct.intel_quark_mfd* %7, %struct.intel_quark_mfd** %4, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = load i32, i32* @INTEL_QUARK_I2C_CONTROLLER_CLK, align 4
  %10 = load i32, i32* @INTEL_QUARK_I2C_CLK_HZ, align 4
  %11 = call %struct.clk* @clk_register_fixed_rate(%struct.device* %8, i32 %9, i32* null, i32 0, i32 %10)
  store %struct.clk* %11, %struct.clk** %5, align 8
  %12 = load %struct.clk*, %struct.clk** %5, align 8
  %13 = call i64 @IS_ERR(%struct.clk* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.clk*, %struct.clk** %5, align 8
  %17 = call i32 @PTR_ERR(%struct.clk* %16)
  store i32 %17, i32* %2, align 4
  br label %41

18:                                               ; preds = %1
  %19 = load %struct.clk*, %struct.clk** %5, align 8
  %20 = load %struct.intel_quark_mfd*, %struct.intel_quark_mfd** %4, align 8
  %21 = getelementptr inbounds %struct.intel_quark_mfd, %struct.intel_quark_mfd* %20, i32 0, i32 0
  store %struct.clk* %19, %struct.clk** %21, align 8
  %22 = load %struct.clk*, %struct.clk** %5, align 8
  %23 = load i32, i32* @INTEL_QUARK_I2C_CONTROLLER_CLK, align 4
  %24 = call i32 @clkdev_create(%struct.clk* %22, i32* null, i32 %23)
  %25 = load %struct.intel_quark_mfd*, %struct.intel_quark_mfd** %4, align 8
  %26 = getelementptr inbounds %struct.intel_quark_mfd, %struct.intel_quark_mfd* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  %27 = load %struct.intel_quark_mfd*, %struct.intel_quark_mfd** %4, align 8
  %28 = getelementptr inbounds %struct.intel_quark_mfd, %struct.intel_quark_mfd* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %18
  %32 = load %struct.intel_quark_mfd*, %struct.intel_quark_mfd** %4, align 8
  %33 = getelementptr inbounds %struct.intel_quark_mfd, %struct.intel_quark_mfd* %32, i32 0, i32 0
  %34 = load %struct.clk*, %struct.clk** %33, align 8
  %35 = call i32 @clk_unregister(%struct.clk* %34)
  %36 = load %struct.device*, %struct.device** %3, align 8
  %37 = call i32 @dev_err(%struct.device* %36, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %41

40:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %40, %31, %15
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local %struct.intel_quark_mfd* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.clk* @clk_register_fixed_rate(%struct.device*, i32, i32*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local i32 @clkdev_create(%struct.clk*, i32*, i32) #1

declare dso_local i32 @clk_unregister(%struct.clk*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
