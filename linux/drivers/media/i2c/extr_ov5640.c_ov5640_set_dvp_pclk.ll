; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5640.c_ov5640_set_dvp_pclk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5640.c_ov5640_set_dvp_pclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov5640_dev = type { i32 }

@OV5640_REG_SC_PLL_CTRL0 = common dso_local global i32 0, align 4
@OV5640_REG_SC_PLL_CTRL1 = common dso_local global i32 0, align 4
@OV5640_REG_SC_PLL_CTRL2 = common dso_local global i32 0, align 4
@OV5640_REG_SC_PLL_CTRL3 = common dso_local global i32 0, align 4
@OV5640_REG_SYS_ROOT_DIVIDER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ov5640_dev*, i64)* @ov5640_set_dvp_pclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov5640_set_dvp_pclk(%struct.ov5640_dev* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ov5640_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ov5640_dev* %0, %struct.ov5640_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @ov5640_calc_pclk(%struct.ov5640_dev* %13, i64 %14, i32* %6, i32* %7, i32* %8, i32* %9, i32* %10, i32* %11)
  %16 = load i32, i32* %10, align 4
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 8, i32* %10, align 4
  br label %19

19:                                               ; preds = %18, %2
  %20 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %21 = load i32, i32* @OV5640_REG_SC_PLL_CTRL0, align 4
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @ov5640_mod_reg(%struct.ov5640_dev* %20, i32 %21, i32 15, i32 %22)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i32, i32* %12, align 4
  store i32 %27, i32* %3, align 4
  br label %67

28:                                               ; preds = %19
  %29 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %30 = load i32, i32* @OV5640_REG_SC_PLL_CTRL1, align 4
  %31 = load i32, i32* %8, align 4
  %32 = shl i32 %31, 4
  %33 = call i32 @ov5640_mod_reg(%struct.ov5640_dev* %29, i32 %30, i32 255, i32 %32)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i32, i32* %12, align 4
  store i32 %37, i32* %3, align 4
  br label %67

38:                                               ; preds = %28
  %39 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %40 = load i32, i32* @OV5640_REG_SC_PLL_CTRL2, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @ov5640_mod_reg(%struct.ov5640_dev* %39, i32 %40, i32 255, i32 %41)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* %12, align 4
  store i32 %46, i32* %3, align 4
  br label %67

47:                                               ; preds = %38
  %48 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %49 = load i32, i32* @OV5640_REG_SC_PLL_CTRL3, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %9, align 4
  %52 = sub nsw i32 %51, 1
  %53 = shl i32 %52, 4
  %54 = or i32 %50, %53
  %55 = call i32 @ov5640_mod_reg(%struct.ov5640_dev* %48, i32 %49, i32 31, i32 %54)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %47
  %59 = load i32, i32* %12, align 4
  store i32 %59, i32* %3, align 4
  br label %67

60:                                               ; preds = %47
  %61 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %62 = load i32, i32* @OV5640_REG_SYS_ROOT_DIVIDER, align 4
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @ilog2(i32 %63)
  %65 = shl i32 %64, 4
  %66 = call i32 @ov5640_mod_reg(%struct.ov5640_dev* %61, i32 %62, i32 48, i32 %65)
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %60, %58, %45, %36, %26
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @ov5640_calc_pclk(%struct.ov5640_dev*, i64, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @ov5640_mod_reg(%struct.ov5640_dev*, i32, i32, i32) #1

declare dso_local i32 @ilog2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
