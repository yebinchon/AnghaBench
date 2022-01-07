; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_mlx5dr_ste_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_mlx5dr_ste_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ste_general = common dso_local global i32 0, align 4
@entry_sub_type = common dso_local global i32 0, align 4
@next_lu_type = common dso_local global i32 0, align 4
@MLX5DR_STE_LU_TYPE_DONT_CARE = common dso_local global i32 0, align 4
@ste_rx_steering_mult = common dso_local global i32 0, align 4
@next_table_base_63_48 = common dso_local global i32 0, align 4
@miss_address_63_48 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5dr_ste_init(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* @ste_general, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @MLX5_SET(i32 %9, i32* %10, i32 %11, i32 %12)
  %14 = load i32, i32* @ste_general, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* @entry_sub_type, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @MLX5_SET(i32 %14, i32* %15, i32 %16, i32 %17)
  %19 = load i32, i32* @ste_general, align 4
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* @next_lu_type, align 4
  %22 = load i32, i32* @MLX5DR_STE_LU_TYPE_DONT_CARE, align 4
  %23 = call i32 @MLX5_SET(i32 %19, i32* %20, i32 %21, i32 %22)
  %24 = load i32, i32* @ste_rx_steering_mult, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @MLX5_SET(i32 %24, i32* %25, i32 %26, i32 %27)
  %29 = load i32, i32* @ste_rx_steering_mult, align 4
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* @next_table_base_63_48, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @MLX5_SET(i32 %29, i32* %30, i32 %31, i32 %32)
  %34 = load i32, i32* @ste_rx_steering_mult, align 4
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* @miss_address_63_48, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @MLX5_SET(i32 %34, i32* %35, i32 %36, i32 %37)
  ret void
}

declare dso_local i32 @MLX5_SET(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
