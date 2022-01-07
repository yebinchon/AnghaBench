; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5640.c_ov5640_set_mipi_pclk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5640.c_ov5640_set_mipi_pclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov5640_dev = type { %struct.ov5640_mode_info* }
%struct.ov5640_mode_info = type { i64, i64 }

@SCALING = common dso_local global i64 0, align 8
@OV5640_MODE_720P_1280_720 = common dso_local global i64 0, align 8
@OV5640_MIPI_DIV_SCLK = common dso_local global i32 0, align 4
@OV5640_MIPI_DIV_PCLK = common dso_local global i32 0, align 4
@OV5640_REG_SC_PLL_CTRL0 = common dso_local global i32 0, align 4
@OV5640_PLL_CTRL0_MIPI_MODE_8BIT = common dso_local global i32 0, align 4
@OV5640_REG_SC_PLL_CTRL1 = common dso_local global i32 0, align 4
@OV5640_REG_SC_PLL_CTRL2 = common dso_local global i32 0, align 4
@OV5640_REG_SC_PLL_CTRL3 = common dso_local global i32 0, align 4
@OV5640_PLL_CTRL3_PLL_ROOT_DIV_2 = common dso_local global i32 0, align 4
@OV5640_REG_SYS_ROOT_DIVIDER = common dso_local global i32 0, align 4
@OV5640_PLL_SYS_ROOT_DIVIDER_BYPASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ov5640_dev*, i64)* @ov5640_set_mipi_pclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov5640_set_mipi_pclk(%struct.ov5640_dev* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ov5640_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ov5640_mode_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ov5640_dev* %0, %struct.ov5640_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %13 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %12, i32 0, i32 0
  %14 = load %struct.ov5640_mode_info*, %struct.ov5640_mode_info** %13, align 8
  store %struct.ov5640_mode_info* %14, %struct.ov5640_mode_info** %6, align 8
  %15 = load %struct.ov5640_mode_info*, %struct.ov5640_mode_info** %6, align 8
  %16 = getelementptr inbounds %struct.ov5640_mode_info, %struct.ov5640_mode_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SCALING, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %26, label %20

20:                                               ; preds = %2
  %21 = load %struct.ov5640_mode_info*, %struct.ov5640_mode_info** %6, align 8
  %22 = getelementptr inbounds %struct.ov5640_mode_info, %struct.ov5640_mode_info* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @OV5640_MODE_720P_1280_720, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20, %2
  %27 = load i32, i32* @OV5640_MIPI_DIV_SCLK, align 4
  store i32 %27, i32* %10, align 4
  br label %30

28:                                               ; preds = %20
  %29 = load i32, i32* @OV5640_MIPI_DIV_PCLK, align 4
  store i32 %29, i32* %10, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @ov5640_calc_sys_clk(%struct.ov5640_dev* %31, i64 %32, i32* %7, i32* %8, i32* %9)
  %34 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %35 = load i32, i32* @OV5640_REG_SC_PLL_CTRL0, align 4
  %36 = load i32, i32* @OV5640_PLL_CTRL0_MIPI_MODE_8BIT, align 4
  %37 = call i32 @ov5640_mod_reg(%struct.ov5640_dev* %34, i32 %35, i32 15, i32 %36)
  store i32 %37, i32* %11, align 4
  %38 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %39 = load i32, i32* @OV5640_REG_SC_PLL_CTRL1, align 4
  %40 = load i32, i32* %9, align 4
  %41 = shl i32 %40, 4
  %42 = load i32, i32* %10, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @ov5640_mod_reg(%struct.ov5640_dev* %38, i32 %39, i32 255, i32 %43)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %30
  %48 = load i32, i32* %11, align 4
  store i32 %48, i32* %3, align 4
  br label %74

49:                                               ; preds = %30
  %50 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %51 = load i32, i32* @OV5640_REG_SC_PLL_CTRL2, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @ov5640_mod_reg(%struct.ov5640_dev* %50, i32 %51, i32 255, i32 %52)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i32, i32* %11, align 4
  store i32 %57, i32* %3, align 4
  br label %74

58:                                               ; preds = %49
  %59 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %60 = load i32, i32* @OV5640_REG_SC_PLL_CTRL3, align 4
  %61 = load i32, i32* @OV5640_PLL_CTRL3_PLL_ROOT_DIV_2, align 4
  %62 = load i32, i32* %7, align 4
  %63 = or i32 %61, %62
  %64 = call i32 @ov5640_mod_reg(%struct.ov5640_dev* %59, i32 %60, i32 31, i32 %63)
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %58
  %68 = load i32, i32* %11, align 4
  store i32 %68, i32* %3, align 4
  br label %74

69:                                               ; preds = %58
  %70 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %71 = load i32, i32* @OV5640_REG_SYS_ROOT_DIVIDER, align 4
  %72 = load i32, i32* @OV5640_PLL_SYS_ROOT_DIVIDER_BYPASS, align 4
  %73 = call i32 @ov5640_mod_reg(%struct.ov5640_dev* %70, i32 %71, i32 48, i32 %72)
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %69, %67, %56, %47
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @ov5640_calc_sys_clk(%struct.ov5640_dev*, i64, i32*, i32*, i32*) #1

declare dso_local i32 @ov5640_mod_reg(%struct.ov5640_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
