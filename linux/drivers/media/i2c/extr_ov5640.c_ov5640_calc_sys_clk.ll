; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5640.c_ov5640_calc_sys_clk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5640.c_ov5640_calc_sys_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov5640_dev = type { i32 }

@OV5640_SYSDIV_MIN = common dso_local global i64 0, align 8
@OV5640_SYSDIV_MAX = common dso_local global i64 0, align 8
@OV5640_PLL_MULT_MIN = common dso_local global i64 0, align 8
@OV5640_PLL_MULT_MAX = common dso_local global i64 0, align 8
@OV5640_PLL_PREDIV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ov5640_dev*, i64, i64*, i64*, i64*)* @ov5640_calc_sys_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ov5640_calc_sys_clk(%struct.ov5640_dev* %0, i64 %1, i64* %2, i64* %3, i64* %4) #0 {
  %6 = alloca %struct.ov5640_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.ov5640_dev* %0, %struct.ov5640_dev** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  store i64* %4, i64** %10, align 8
  store i64 -1, i64* %11, align 8
  store i64 1, i64* %12, align 8
  store i64 1, i64* %13, align 8
  %17 = load i64, i64* @OV5640_SYSDIV_MIN, align 8
  store i64 %17, i64* %14, align 8
  br label %18

18:                                               ; preds = %74, %5
  %19 = load i64, i64* %14, align 8
  %20 = load i64, i64* @OV5640_SYSDIV_MAX, align 8
  %21 = icmp sle i64 %19, %20
  br i1 %21, label %22, label %77

22:                                               ; preds = %18
  %23 = load i64, i64* @OV5640_PLL_MULT_MIN, align 8
  store i64 %23, i64* %15, align 8
  br label %24

24:                                               ; preds = %70, %22
  %25 = load i64, i64* %15, align 8
  %26 = load i64, i64* @OV5640_PLL_MULT_MAX, align 8
  %27 = icmp sle i64 %25, %26
  br i1 %27, label %28, label %73

28:                                               ; preds = %24
  %29 = load i64, i64* %15, align 8
  %30 = icmp sgt i64 %29, 127
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load i64, i64* %15, align 8
  %33 = srem i64 %32, 2
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %70

36:                                               ; preds = %31, %28
  %37 = load %struct.ov5640_dev*, %struct.ov5640_dev** %6, align 8
  %38 = load i64, i64* @OV5640_PLL_PREDIV, align 8
  %39 = load i64, i64* %15, align 8
  %40 = load i64, i64* %14, align 8
  %41 = call i64 @ov5640_compute_sys_clk(%struct.ov5640_dev* %37, i64 %38, i64 %39, i64 %40)
  store i64 %41, i64* %16, align 8
  %42 = load i64, i64* %7, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %36
  br label %73

45:                                               ; preds = %36
  %46 = load i64, i64* %16, align 8
  %47 = load i64, i64* %7, align 8
  %48 = icmp ult i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  br label %70

50:                                               ; preds = %45
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* %16, align 8
  %53 = sub i64 %51, %52
  %54 = call i64 @abs(i64 %53)
  %55 = load i64, i64* %7, align 8
  %56 = load i64, i64* %11, align 8
  %57 = sub i64 %55, %56
  %58 = call i64 @abs(i64 %57)
  %59 = icmp slt i64 %54, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %50
  %61 = load i64, i64* %16, align 8
  store i64 %61, i64* %11, align 8
  %62 = load i64, i64* %14, align 8
  store i64 %62, i64* %12, align 8
  %63 = load i64, i64* %15, align 8
  store i64 %63, i64* %13, align 8
  br label %64

64:                                               ; preds = %60, %50
  %65 = load i64, i64* %16, align 8
  %66 = load i64, i64* %7, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  br label %78

69:                                               ; preds = %64
  br label %70

70:                                               ; preds = %69, %49, %35
  %71 = load i64, i64* %15, align 8
  %72 = add nsw i64 %71, 1
  store i64 %72, i64* %15, align 8
  br label %24

73:                                               ; preds = %44, %24
  br label %74

74:                                               ; preds = %73
  %75 = load i64, i64* %14, align 8
  %76 = add nsw i64 %75, 1
  store i64 %76, i64* %14, align 8
  br label %18

77:                                               ; preds = %18
  br label %78

78:                                               ; preds = %77, %68
  %79 = load i64, i64* %12, align 8
  %80 = load i64*, i64** %10, align 8
  store i64 %79, i64* %80, align 8
  %81 = load i64, i64* @OV5640_PLL_PREDIV, align 8
  %82 = load i64*, i64** %8, align 8
  store i64 %81, i64* %82, align 8
  %83 = load i64, i64* %13, align 8
  %84 = load i64*, i64** %9, align 8
  store i64 %83, i64* %84, align 8
  %85 = load i64, i64* %11, align 8
  ret i64 %85
}

declare dso_local i64 @ov5640_compute_sys_clk(%struct.ov5640_dev*, i64, i64, i64) #1

declare dso_local i64 @abs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
