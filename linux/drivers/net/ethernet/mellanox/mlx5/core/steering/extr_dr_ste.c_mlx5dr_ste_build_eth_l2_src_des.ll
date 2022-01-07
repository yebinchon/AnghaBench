; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_mlx5dr_ste_build_eth_l2_src_des.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_mlx5dr_ste_build_eth_l2_src_des.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_ste_build = type { i32, i32, i32*, i32, i32, i32 }
%struct.mlx5dr_match_param = type { i32 }

@ETHL2_SRC_DST = common dso_local global i32 0, align 4
@dr_ste_build_eth_l2_src_des_tag = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5dr_ste_build_eth_l2_src_des(%struct.mlx5dr_ste_build* %0, %struct.mlx5dr_match_param* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5dr_ste_build*, align 8
  %7 = alloca %struct.mlx5dr_match_param*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mlx5dr_ste_build* %0, %struct.mlx5dr_ste_build** %6, align 8
  store %struct.mlx5dr_match_param* %1, %struct.mlx5dr_match_param** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.mlx5dr_match_param*, %struct.mlx5dr_match_param** %7, align 8
  %12 = load i32, i32* %8, align 4
  %13 = load %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build** %6, align 8
  %14 = getelementptr inbounds %struct.mlx5dr_ste_build, %struct.mlx5dr_ste_build* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @dr_ste_build_eth_l2_src_des_bit_mask(%struct.mlx5dr_match_param* %11, i32 %12, i32 %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %5, align 4
  br label %42

21:                                               ; preds = %4
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build** %6, align 8
  %24 = getelementptr inbounds %struct.mlx5dr_ste_build, %struct.mlx5dr_ste_build* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build** %6, align 8
  %27 = getelementptr inbounds %struct.mlx5dr_ste_build, %struct.mlx5dr_ste_build* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @ETHL2_SRC_DST, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @DR_STE_CALC_LU_TYPE(i32 %28, i32 %29, i32 %30)
  %32 = load %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build** %6, align 8
  %33 = getelementptr inbounds %struct.mlx5dr_ste_build, %struct.mlx5dr_ste_build* %32, i32 0, i32 5
  store i32 %31, i32* %33, align 8
  %34 = load %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build** %6, align 8
  %35 = getelementptr inbounds %struct.mlx5dr_ste_build, %struct.mlx5dr_ste_build* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @dr_ste_conv_bit_to_byte_mask(i32 %36)
  %38 = load %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build** %6, align 8
  %39 = getelementptr inbounds %struct.mlx5dr_ste_build, %struct.mlx5dr_ste_build* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 4
  %40 = load %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build** %6, align 8
  %41 = getelementptr inbounds %struct.mlx5dr_ste_build, %struct.mlx5dr_ste_build* %40, i32 0, i32 2
  store i32* @dr_ste_build_eth_l2_src_des_tag, i32** %41, align 8
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %21, %19
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i32 @dr_ste_build_eth_l2_src_des_bit_mask(%struct.mlx5dr_match_param*, i32, i32) #1

declare dso_local i32 @DR_STE_CALC_LU_TYPE(i32, i32, i32) #1

declare dso_local i32 @dr_ste_conv_bit_to_byte_mask(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
