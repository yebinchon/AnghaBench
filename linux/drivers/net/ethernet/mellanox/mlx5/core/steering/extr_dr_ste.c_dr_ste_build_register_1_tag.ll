; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_dr_ste_build_register_1_tag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_dr_ste_build_register_1_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_match_param = type { %struct.mlx5dr_match_misc2 }
%struct.mlx5dr_match_misc2 = type { i32 }
%struct.mlx5dr_ste_build = type { i32 }
%struct.dr_hw_ste_format = type { i32* }

@register_1 = common dso_local global i32 0, align 4
@register_2_h = common dso_local global i32 0, align 4
@metadata_reg_c_4 = common dso_local global i32 0, align 4
@register_2_l = common dso_local global i32 0, align 4
@metadata_reg_c_5 = common dso_local global i32 0, align 4
@register_3_h = common dso_local global i32 0, align 4
@metadata_reg_c_6 = common dso_local global i32 0, align 4
@register_3_l = common dso_local global i32 0, align 4
@metadata_reg_c_7 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5dr_match_param*, %struct.mlx5dr_ste_build*, i32*)* @dr_ste_build_register_1_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dr_ste_build_register_1_tag(%struct.mlx5dr_match_param* %0, %struct.mlx5dr_ste_build* %1, i32* %2) #0 {
  %4 = alloca %struct.mlx5dr_match_param*, align 8
  %5 = alloca %struct.mlx5dr_ste_build*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.dr_hw_ste_format*, align 8
  %8 = alloca %struct.mlx5dr_match_misc2*, align 8
  %9 = alloca i32*, align 8
  store %struct.mlx5dr_match_param* %0, %struct.mlx5dr_match_param** %4, align 8
  store %struct.mlx5dr_ste_build* %1, %struct.mlx5dr_ste_build** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = bitcast i32* %10 to %struct.dr_hw_ste_format*
  store %struct.dr_hw_ste_format* %11, %struct.dr_hw_ste_format** %7, align 8
  %12 = load %struct.mlx5dr_match_param*, %struct.mlx5dr_match_param** %4, align 8
  %13 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %12, i32 0, i32 0
  store %struct.mlx5dr_match_misc2* %13, %struct.mlx5dr_match_misc2** %8, align 8
  %14 = load %struct.dr_hw_ste_format*, %struct.dr_hw_ste_format** %7, align 8
  %15 = getelementptr inbounds %struct.dr_hw_ste_format, %struct.dr_hw_ste_format* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %9, align 8
  %17 = load i32, i32* @register_1, align 4
  %18 = load i32*, i32** %9, align 8
  %19 = load i32, i32* @register_2_h, align 4
  %20 = load %struct.mlx5dr_match_misc2*, %struct.mlx5dr_match_misc2** %8, align 8
  %21 = load i32, i32* @metadata_reg_c_4, align 4
  %22 = call i32 @DR_STE_SET_TAG(i32 %17, i32* %18, i32 %19, %struct.mlx5dr_match_misc2* %20, i32 %21)
  %23 = load i32, i32* @register_1, align 4
  %24 = load i32*, i32** %9, align 8
  %25 = load i32, i32* @register_2_l, align 4
  %26 = load %struct.mlx5dr_match_misc2*, %struct.mlx5dr_match_misc2** %8, align 8
  %27 = load i32, i32* @metadata_reg_c_5, align 4
  %28 = call i32 @DR_STE_SET_TAG(i32 %23, i32* %24, i32 %25, %struct.mlx5dr_match_misc2* %26, i32 %27)
  %29 = load i32, i32* @register_1, align 4
  %30 = load i32*, i32** %9, align 8
  %31 = load i32, i32* @register_3_h, align 4
  %32 = load %struct.mlx5dr_match_misc2*, %struct.mlx5dr_match_misc2** %8, align 8
  %33 = load i32, i32* @metadata_reg_c_6, align 4
  %34 = call i32 @DR_STE_SET_TAG(i32 %29, i32* %30, i32 %31, %struct.mlx5dr_match_misc2* %32, i32 %33)
  %35 = load i32, i32* @register_1, align 4
  %36 = load i32*, i32** %9, align 8
  %37 = load i32, i32* @register_3_l, align 4
  %38 = load %struct.mlx5dr_match_misc2*, %struct.mlx5dr_match_misc2** %8, align 8
  %39 = load i32, i32* @metadata_reg_c_7, align 4
  %40 = call i32 @DR_STE_SET_TAG(i32 %35, i32* %36, i32 %37, %struct.mlx5dr_match_misc2* %38, i32 %39)
  ret i32 0
}

declare dso_local i32 @DR_STE_SET_TAG(i32, i32*, i32, %struct.mlx5dr_match_misc2*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
