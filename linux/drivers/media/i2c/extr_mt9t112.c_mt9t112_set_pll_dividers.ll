; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9t112.c_mt9t112_set_pll_dividers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9t112.c_mt9t112_set_pll_dividers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* @mt9t112_set_pll_dividers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9t112_set_pll_dividers(%struct.i2c_client* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca %struct.i2c_client*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  %23 = load i32, i32* %13, align 4
  %24 = shl i32 %23, 8
  %25 = load i32, i32* %12, align 4
  %26 = shl i32 %25, 0
  %27 = or i32 %24, %26
  store i32 %27, i32* %22, align 4
  %28 = load i32, i32* %21, align 4
  %29 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %30 = load i32, i32* %22, align 4
  %31 = call i32 @mt9t112_reg_mask_set(i32 %28, %struct.i2c_client* %29, i32 16, i32 16383, i32 %30)
  %32 = load i32, i32* %16, align 4
  %33 = and i32 %32, 15
  %34 = shl i32 %33, 8
  %35 = load i32, i32* %15, align 4
  %36 = and i32 %35, 15
  %37 = shl i32 %36, 4
  %38 = or i32 %34, %37
  %39 = load i32, i32* %14, align 4
  %40 = and i32 %39, 15
  %41 = shl i32 %40, 0
  %42 = or i32 %38, %41
  store i32 %42, i32* %22, align 4
  %43 = load i32, i32* %21, align 4
  %44 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %45 = load i32, i32* %22, align 4
  %46 = call i32 @mt9t112_reg_mask_set(i32 %43, %struct.i2c_client* %44, i32 18, i32 4095, i32 %45)
  %47 = load i32, i32* %19, align 4
  %48 = and i32 %47, 15
  %49 = shl i32 %48, 8
  %50 = or i32 28672, %49
  %51 = load i32, i32* %18, align 4
  %52 = and i32 %51, 15
  %53 = shl i32 %52, 4
  %54 = or i32 %50, %53
  %55 = load i32, i32* %17, align 4
  %56 = and i32 %55, 15
  %57 = shl i32 %56, 0
  %58 = or i32 %54, %57
  store i32 %58, i32* %22, align 4
  %59 = load i32, i32* %21, align 4
  %60 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %61 = load i32, i32* %22, align 4
  %62 = call i32 @mt9t112_reg_mask_set(i32 %59, %struct.i2c_client* %60, i32 42, i32 32767, i32 %61)
  %63 = load i32, i32* %20, align 4
  %64 = and i32 %63, 15
  %65 = shl i32 %64, 0
  %66 = or i32 4096, %65
  store i32 %66, i32* %22, align 4
  %67 = load i32, i32* %21, align 4
  %68 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %69 = load i32, i32* %22, align 4
  %70 = call i32 @mt9t112_reg_mask_set(i32 %67, %struct.i2c_client* %68, i32 44, i32 4111, i32 %69)
  %71 = load i32, i32* %21, align 4
  ret i32 %71
}

declare dso_local i32 @mt9t112_reg_mask_set(i32, %struct.i2c_client*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
