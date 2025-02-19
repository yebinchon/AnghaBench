; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_mlx5dr_ste_build_register_0.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_mlx5dr_ste_build_register_0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_ste_build = type { i32, i32, i32*, i32, i32, i32 }
%struct.mlx5dr_match_param = type { i32 }

@MLX5DR_STE_LU_TYPE_STEERING_REGISTERS_0 = common dso_local global i32 0, align 4
@dr_ste_build_register_0_tag = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5dr_ste_build_register_0(%struct.mlx5dr_ste_build* %0, %struct.mlx5dr_match_param* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mlx5dr_ste_build*, align 8
  %6 = alloca %struct.mlx5dr_match_param*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mlx5dr_ste_build* %0, %struct.mlx5dr_ste_build** %5, align 8
  store %struct.mlx5dr_match_param* %1, %struct.mlx5dr_match_param** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.mlx5dr_match_param*, %struct.mlx5dr_match_param** %6, align 8
  %10 = load %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build** %5, align 8
  %11 = getelementptr inbounds %struct.mlx5dr_ste_build, %struct.mlx5dr_ste_build* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @dr_ste_build_register_0_bit_mask(%struct.mlx5dr_match_param* %9, i32 %12)
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build** %5, align 8
  %16 = getelementptr inbounds %struct.mlx5dr_ste_build, %struct.mlx5dr_ste_build* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build** %5, align 8
  %19 = getelementptr inbounds %struct.mlx5dr_ste_build, %struct.mlx5dr_ste_build* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @MLX5DR_STE_LU_TYPE_STEERING_REGISTERS_0, align 4
  %21 = load %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build** %5, align 8
  %22 = getelementptr inbounds %struct.mlx5dr_ste_build, %struct.mlx5dr_ste_build* %21, i32 0, i32 5
  store i32 %20, i32* %22, align 8
  %23 = load %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build** %5, align 8
  %24 = getelementptr inbounds %struct.mlx5dr_ste_build, %struct.mlx5dr_ste_build* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @dr_ste_conv_bit_to_byte_mask(i32 %25)
  %27 = load %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build** %5, align 8
  %28 = getelementptr inbounds %struct.mlx5dr_ste_build, %struct.mlx5dr_ste_build* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 4
  %29 = load %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build** %5, align 8
  %30 = getelementptr inbounds %struct.mlx5dr_ste_build, %struct.mlx5dr_ste_build* %29, i32 0, i32 2
  store i32* @dr_ste_build_register_0_tag, i32** %30, align 8
  ret void
}

declare dso_local i32 @dr_ste_build_register_0_bit_mask(%struct.mlx5dr_match_param*, i32) #1

declare dso_local i32 @dr_ste_conv_bit_to_byte_mask(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
