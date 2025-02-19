; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_dr_ste_build_register_1_bit_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_dr_ste_build_register_1_bit_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_match_param = type { %struct.mlx5dr_match_misc2 }
%struct.mlx5dr_match_misc2 = type { i32 }

@register_1 = common dso_local global i32 0, align 4
@register_2_h = common dso_local global i32 0, align 4
@metadata_reg_c_4 = common dso_local global i32 0, align 4
@register_2_l = common dso_local global i32 0, align 4
@metadata_reg_c_5 = common dso_local global i32 0, align 4
@register_3_h = common dso_local global i32 0, align 4
@metadata_reg_c_6 = common dso_local global i32 0, align 4
@register_3_l = common dso_local global i32 0, align 4
@metadata_reg_c_7 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5dr_match_param*, i32*)* @dr_ste_build_register_1_bit_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dr_ste_build_register_1_bit_mask(%struct.mlx5dr_match_param* %0, i32* %1) #0 {
  %3 = alloca %struct.mlx5dr_match_param*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.mlx5dr_match_misc2*, align 8
  store %struct.mlx5dr_match_param* %0, %struct.mlx5dr_match_param** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.mlx5dr_match_param*, %struct.mlx5dr_match_param** %3, align 8
  %7 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %6, i32 0, i32 0
  store %struct.mlx5dr_match_misc2* %7, %struct.mlx5dr_match_misc2** %5, align 8
  %8 = load i32, i32* @register_1, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = load i32, i32* @register_2_h, align 4
  %11 = load %struct.mlx5dr_match_misc2*, %struct.mlx5dr_match_misc2** %5, align 8
  %12 = load i32, i32* @metadata_reg_c_4, align 4
  %13 = call i32 @DR_STE_SET_MASK_V(i32 %8, i32* %9, i32 %10, %struct.mlx5dr_match_misc2* %11, i32 %12)
  %14 = load i32, i32* @register_1, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* @register_2_l, align 4
  %17 = load %struct.mlx5dr_match_misc2*, %struct.mlx5dr_match_misc2** %5, align 8
  %18 = load i32, i32* @metadata_reg_c_5, align 4
  %19 = call i32 @DR_STE_SET_MASK_V(i32 %14, i32* %15, i32 %16, %struct.mlx5dr_match_misc2* %17, i32 %18)
  %20 = load i32, i32* @register_1, align 4
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* @register_3_h, align 4
  %23 = load %struct.mlx5dr_match_misc2*, %struct.mlx5dr_match_misc2** %5, align 8
  %24 = load i32, i32* @metadata_reg_c_6, align 4
  %25 = call i32 @DR_STE_SET_MASK_V(i32 %20, i32* %21, i32 %22, %struct.mlx5dr_match_misc2* %23, i32 %24)
  %26 = load i32, i32* @register_1, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* @register_3_l, align 4
  %29 = load %struct.mlx5dr_match_misc2*, %struct.mlx5dr_match_misc2** %5, align 8
  %30 = load i32, i32* @metadata_reg_c_7, align 4
  %31 = call i32 @DR_STE_SET_MASK_V(i32 %26, i32* %27, i32 %28, %struct.mlx5dr_match_misc2* %29, i32 %30)
  ret void
}

declare dso_local i32 @DR_STE_SET_MASK_V(i32, i32*, i32, %struct.mlx5dr_match_misc2*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
