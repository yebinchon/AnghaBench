; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_port.c_mlx5e_fec_admin_field.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_port.c_mlx5e_fec_admin_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pplm_reg = common dso_local global i32 0, align 4
@fec_override_admin_10g_40g = common dso_local global i32 0, align 4
@fec_override_admin_25g = common dso_local global i32 0, align 4
@fec_override_admin_50g = common dso_local global i32 0, align 4
@fec_override_admin_56g = common dso_local global i32 0, align 4
@fec_override_admin_100g = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32)* @mlx5e_fec_admin_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_fec_admin_field(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %96 [
    i32 10000, label %11
    i32 40000, label %11
    i32 25000, label %28
    i32 50000, label %45
    i32 56000, label %62
    i32 100000, label %79
  ]

11:                                               ; preds = %4, %4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %11
  %15 = load i32, i32* @pplm_reg, align 4
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* @fec_override_admin_10g_40g, align 4
  %18 = call i32 @MLX5_GET(i32 %15, i32* %16, i32 %17)
  %19 = load i32*, i32** %7, align 8
  store i32 %18, i32* %19, align 4
  br label %27

20:                                               ; preds = %11
  %21 = load i32, i32* @pplm_reg, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* @fec_override_admin_10g_40g, align 4
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @MLX5_SET(i32 %21, i32* %22, i32 %23, i32 %25)
  br label %27

27:                                               ; preds = %20, %14
  br label %99

28:                                               ; preds = %4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* @pplm_reg, align 4
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* @fec_override_admin_25g, align 4
  %35 = call i32 @MLX5_GET(i32 %32, i32* %33, i32 %34)
  %36 = load i32*, i32** %7, align 8
  store i32 %35, i32* %36, align 4
  br label %44

37:                                               ; preds = %28
  %38 = load i32, i32* @pplm_reg, align 4
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* @fec_override_admin_25g, align 4
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @MLX5_SET(i32 %38, i32* %39, i32 %40, i32 %42)
  br label %44

44:                                               ; preds = %37, %31
  br label %99

45:                                               ; preds = %4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* @pplm_reg, align 4
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* @fec_override_admin_50g, align 4
  %52 = call i32 @MLX5_GET(i32 %49, i32* %50, i32 %51)
  %53 = load i32*, i32** %7, align 8
  store i32 %52, i32* %53, align 4
  br label %61

54:                                               ; preds = %45
  %55 = load i32, i32* @pplm_reg, align 4
  %56 = load i32*, i32** %6, align 8
  %57 = load i32, i32* @fec_override_admin_50g, align 4
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @MLX5_SET(i32 %55, i32* %56, i32 %57, i32 %59)
  br label %61

61:                                               ; preds = %54, %48
  br label %99

62:                                               ; preds = %4
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* @pplm_reg, align 4
  %67 = load i32*, i32** %6, align 8
  %68 = load i32, i32* @fec_override_admin_56g, align 4
  %69 = call i32 @MLX5_GET(i32 %66, i32* %67, i32 %68)
  %70 = load i32*, i32** %7, align 8
  store i32 %69, i32* %70, align 4
  br label %78

71:                                               ; preds = %62
  %72 = load i32, i32* @pplm_reg, align 4
  %73 = load i32*, i32** %6, align 8
  %74 = load i32, i32* @fec_override_admin_56g, align 4
  %75 = load i32*, i32** %7, align 8
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @MLX5_SET(i32 %72, i32* %73, i32 %74, i32 %76)
  br label %78

78:                                               ; preds = %71, %65
  br label %99

79:                                               ; preds = %4
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %79
  %83 = load i32, i32* @pplm_reg, align 4
  %84 = load i32*, i32** %6, align 8
  %85 = load i32, i32* @fec_override_admin_100g, align 4
  %86 = call i32 @MLX5_GET(i32 %83, i32* %84, i32 %85)
  %87 = load i32*, i32** %7, align 8
  store i32 %86, i32* %87, align 4
  br label %95

88:                                               ; preds = %79
  %89 = load i32, i32* @pplm_reg, align 4
  %90 = load i32*, i32** %6, align 8
  %91 = load i32, i32* @fec_override_admin_100g, align 4
  %92 = load i32*, i32** %7, align 8
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @MLX5_SET(i32 %89, i32* %90, i32 %91, i32 %93)
  br label %95

95:                                               ; preds = %88, %82
  br label %99

96:                                               ; preds = %4
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %5, align 4
  br label %100

99:                                               ; preds = %95, %78, %61, %44, %27
  store i32 0, i32* %5, align 4
  br label %100

100:                                              ; preds = %99, %96
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local i32 @MLX5_GET(i32, i32*, i32) #1

declare dso_local i32 @MLX5_SET(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
