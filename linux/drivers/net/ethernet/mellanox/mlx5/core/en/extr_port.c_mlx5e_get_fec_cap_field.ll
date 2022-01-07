; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_port.c_mlx5e_get_fec_cap_field.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_port.c_mlx5e_get_fec_cap_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pplm_reg = common dso_local global i32 0, align 4
@fec_override_cap_10g_40g = common dso_local global i32 0, align 4
@fec_override_cap_25g = common dso_local global i32 0, align 4
@fec_override_cap_50g = common dso_local global i32 0, align 4
@fec_override_cap_56g = common dso_local global i32 0, align 4
@fec_override_cap_100g = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @mlx5e_get_fec_cap_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_get_fec_cap_field(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %39 [
    i32 10000, label %9
    i32 40000, label %9
    i32 25000, label %15
    i32 50000, label %21
    i32 56000, label %27
    i32 100000, label %33
  ]

9:                                                ; preds = %3, %3
  %10 = load i32, i32* @pplm_reg, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* @fec_override_cap_10g_40g, align 4
  %13 = call i32 @MLX5_GET(i32 %10, i32* %11, i32 %12)
  %14 = load i32*, i32** %6, align 8
  store i32 %13, i32* %14, align 4
  br label %42

15:                                               ; preds = %3
  %16 = load i32, i32* @pplm_reg, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* @fec_override_cap_25g, align 4
  %19 = call i32 @MLX5_GET(i32 %16, i32* %17, i32 %18)
  %20 = load i32*, i32** %6, align 8
  store i32 %19, i32* %20, align 4
  br label %42

21:                                               ; preds = %3
  %22 = load i32, i32* @pplm_reg, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* @fec_override_cap_50g, align 4
  %25 = call i32 @MLX5_GET(i32 %22, i32* %23, i32 %24)
  %26 = load i32*, i32** %6, align 8
  store i32 %25, i32* %26, align 4
  br label %42

27:                                               ; preds = %3
  %28 = load i32, i32* @pplm_reg, align 4
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* @fec_override_cap_56g, align 4
  %31 = call i32 @MLX5_GET(i32 %28, i32* %29, i32 %30)
  %32 = load i32*, i32** %6, align 8
  store i32 %31, i32* %32, align 4
  br label %42

33:                                               ; preds = %3
  %34 = load i32, i32* @pplm_reg, align 4
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* @fec_override_cap_100g, align 4
  %37 = call i32 @MLX5_GET(i32 %34, i32* %35, i32 %36)
  %38 = load i32*, i32** %6, align 8
  store i32 %37, i32* %38, align 4
  br label %42

39:                                               ; preds = %3
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %43

42:                                               ; preds = %33, %27, %21, %15, %9
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %42, %39
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @MLX5_GET(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
