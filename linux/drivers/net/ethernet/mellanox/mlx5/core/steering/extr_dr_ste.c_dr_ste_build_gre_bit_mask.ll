; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_dr_ste_build_gre_bit_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_dr_ste_build_gre_bit_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_match_param = type { %struct.mlx5dr_match_misc }
%struct.mlx5dr_match_misc = type { i32 }

@gre = common dso_local global i32 0, align 4
@gre_protocol = common dso_local global i32 0, align 4
@gre_k_present = common dso_local global i32 0, align 4
@gre_key_h = common dso_local global i32 0, align 4
@gre_key_l = common dso_local global i32 0, align 4
@gre_c_present = common dso_local global i32 0, align 4
@gre_s_present = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5dr_match_param*, i32, i32*)* @dr_ste_build_gre_bit_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dr_ste_build_gre_bit_mask(%struct.mlx5dr_match_param* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.mlx5dr_match_param*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.mlx5dr_match_misc*, align 8
  store %struct.mlx5dr_match_param* %0, %struct.mlx5dr_match_param** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %8 = load %struct.mlx5dr_match_param*, %struct.mlx5dr_match_param** %4, align 8
  %9 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %8, i32 0, i32 0
  store %struct.mlx5dr_match_misc* %9, %struct.mlx5dr_match_misc** %7, align 8
  %10 = load i32, i32* @gre, align 4
  %11 = load i32*, i32** %6, align 8
  %12 = load i32, i32* @gre_protocol, align 4
  %13 = load %struct.mlx5dr_match_misc*, %struct.mlx5dr_match_misc** %7, align 8
  %14 = load i32, i32* @gre_protocol, align 4
  %15 = call i32 @DR_STE_SET_MASK_V(i32 %10, i32* %11, i32 %12, %struct.mlx5dr_match_misc* %13, i32 %14)
  %16 = load i32, i32* @gre, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* @gre_k_present, align 4
  %19 = load %struct.mlx5dr_match_misc*, %struct.mlx5dr_match_misc** %7, align 8
  %20 = load i32, i32* @gre_k_present, align 4
  %21 = call i32 @DR_STE_SET_MASK_V(i32 %16, i32* %17, i32 %18, %struct.mlx5dr_match_misc* %19, i32 %20)
  %22 = load i32, i32* @gre, align 4
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* @gre_key_h, align 4
  %25 = load %struct.mlx5dr_match_misc*, %struct.mlx5dr_match_misc** %7, align 8
  %26 = load i32, i32* @gre_key_h, align 4
  %27 = call i32 @DR_STE_SET_MASK_V(i32 %22, i32* %23, i32 %24, %struct.mlx5dr_match_misc* %25, i32 %26)
  %28 = load i32, i32* @gre, align 4
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* @gre_key_l, align 4
  %31 = load %struct.mlx5dr_match_misc*, %struct.mlx5dr_match_misc** %7, align 8
  %32 = load i32, i32* @gre_key_l, align 4
  %33 = call i32 @DR_STE_SET_MASK_V(i32 %28, i32* %29, i32 %30, %struct.mlx5dr_match_misc* %31, i32 %32)
  %34 = load i32, i32* @gre, align 4
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* @gre_c_present, align 4
  %37 = load %struct.mlx5dr_match_misc*, %struct.mlx5dr_match_misc** %7, align 8
  %38 = load i32, i32* @gre_c_present, align 4
  %39 = call i32 @DR_STE_SET_MASK_V(i32 %34, i32* %35, i32 %36, %struct.mlx5dr_match_misc* %37, i32 %38)
  %40 = load i32, i32* @gre, align 4
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* @gre_s_present, align 4
  %43 = load %struct.mlx5dr_match_misc*, %struct.mlx5dr_match_misc** %7, align 8
  %44 = load i32, i32* @gre_s_present, align 4
  %45 = call i32 @DR_STE_SET_MASK_V(i32 %40, i32* %41, i32 %42, %struct.mlx5dr_match_misc* %43, i32 %44)
  ret void
}

declare dso_local i32 @DR_STE_SET_MASK_V(i32, i32*, i32, %struct.mlx5dr_match_misc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
