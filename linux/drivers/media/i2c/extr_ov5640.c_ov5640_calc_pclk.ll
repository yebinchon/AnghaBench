; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5640.c_ov5640_calc_pclk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5640.c_ov5640_calc_pclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov5640_dev = type { i32 }

@OV5640_PLL_ROOT_DIV = common dso_local global i64 0, align 8
@OV5640_BIT_DIV = common dso_local global i64 0, align 8
@OV5640_PCLK_ROOT_DIV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ov5640_dev*, i64, i64*, i64*, i64*, i64*, i64*, i64*)* @ov5640_calc_pclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ov5640_calc_pclk(%struct.ov5640_dev* %0, i64 %1, i64* %2, i64* %3, i64* %4, i64* %5, i64* %6, i64* %7) #0 {
  %9 = alloca %struct.ov5640_dev*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64, align 8
  store %struct.ov5640_dev* %0, %struct.ov5640_dev** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64* %2, i64** %11, align 8
  store i64* %3, i64** %12, align 8
  store i64* %4, i64** %13, align 8
  store i64* %5, i64** %14, align 8
  store i64* %6, i64** %15, align 8
  store i64* %7, i64** %16, align 8
  %18 = load i64, i64* %10, align 8
  %19 = load i64, i64* @OV5640_PLL_ROOT_DIV, align 8
  %20 = mul i64 %18, %19
  %21 = load i64, i64* @OV5640_BIT_DIV, align 8
  %22 = mul i64 %20, %21
  %23 = load i64, i64* @OV5640_PCLK_ROOT_DIV, align 8
  %24 = mul i64 %22, %23
  store i64 %24, i64* %17, align 8
  %25 = load %struct.ov5640_dev*, %struct.ov5640_dev** %9, align 8
  %26 = load i64, i64* %17, align 8
  %27 = load i64*, i64** %11, align 8
  %28 = load i64*, i64** %12, align 8
  %29 = load i64*, i64** %13, align 8
  %30 = call i64 @ov5640_calc_sys_clk(%struct.ov5640_dev* %25, i64 %26, i64* %27, i64* %28, i64* %29)
  store i64 %30, i64* %17, align 8
  %31 = load i64, i64* @OV5640_PLL_ROOT_DIV, align 8
  %32 = load i64*, i64** %14, align 8
  store i64 %31, i64* %32, align 8
  %33 = load i64, i64* @OV5640_BIT_DIV, align 8
  %34 = load i64*, i64** %15, align 8
  store i64 %33, i64* %34, align 8
  %35 = load i64, i64* @OV5640_PCLK_ROOT_DIV, align 8
  %36 = load i64*, i64** %16, align 8
  store i64 %35, i64* %36, align 8
  %37 = load i64, i64* %17, align 8
  %38 = load i64*, i64** %14, align 8
  %39 = load i64, i64* %38, align 8
  %40 = udiv i64 %37, %39
  %41 = load i64*, i64** %15, align 8
  %42 = load i64, i64* %41, align 8
  %43 = udiv i64 %40, %42
  %44 = load i64*, i64** %16, align 8
  %45 = load i64, i64* %44, align 8
  %46 = udiv i64 %43, %45
  ret i64 %46
}

declare dso_local i64 @ov5640_calc_sys_clk(%struct.ov5640_dev*, i64, i64*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
