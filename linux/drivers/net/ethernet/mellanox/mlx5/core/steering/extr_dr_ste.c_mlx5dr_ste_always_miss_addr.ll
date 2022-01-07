; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_mlx5dr_ste_always_miss_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_mlx5dr_ste_always_miss_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_ste = type { i32* }
%struct.dr_hw_ste_format = type { i32 }

@ste_rx_steering_mult = common dso_local global i32 0, align 4
@next_lu_type = common dso_local global i32 0, align 4
@MLX5DR_STE_LU_TYPE_DONT_CARE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5dr_ste_always_miss_addr(%struct.mlx5dr_ste* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx5dr_ste*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.mlx5dr_ste* %0, %struct.mlx5dr_ste** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %3, align 8
  %7 = getelementptr inbounds %struct.mlx5dr_ste, %struct.mlx5dr_ste* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  store i32* %8, i32** %5, align 8
  %9 = load i32, i32* @ste_rx_steering_mult, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = load i32, i32* @next_lu_type, align 4
  %12 = load i32, i32* @MLX5DR_STE_LU_TYPE_DONT_CARE, align 4
  %13 = call i32 @MLX5_SET(i32 %9, i32* %10, i32 %11, i32 %12)
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @mlx5dr_ste_set_miss_addr(i32* %14, i32 %15)
  %17 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %3, align 8
  %18 = getelementptr inbounds %struct.mlx5dr_ste, %struct.mlx5dr_ste* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = bitcast i32* %19 to %struct.dr_hw_ste_format*
  %21 = call i32 @dr_ste_set_always_miss(%struct.dr_hw_ste_format* %20)
  ret void
}

declare dso_local i32 @MLX5_SET(i32, i32*, i32, i32) #1

declare dso_local i32 @mlx5dr_ste_set_miss_addr(i32*, i32) #1

declare dso_local i32 @dr_ste_set_always_miss(%struct.dr_hw_ste_format*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
