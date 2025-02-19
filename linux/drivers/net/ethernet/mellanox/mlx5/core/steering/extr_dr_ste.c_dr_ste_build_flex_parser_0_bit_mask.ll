; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_dr_ste_build_flex_parser_0_bit_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_dr_ste_build_flex_parser_0_bit_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_match_param = type { %struct.mlx5dr_match_misc2 }
%struct.mlx5dr_match_misc2 = type { i32 }

@flex_parser_0 = common dso_local global i32 0, align 4
@parser_3_label = common dso_local global i32 0, align 4
@outer_first_mpls_over_gre_label = common dso_local global i32 0, align 4
@parser_3_exp = common dso_local global i32 0, align 4
@outer_first_mpls_over_gre_exp = common dso_local global i32 0, align 4
@parser_3_s_bos = common dso_local global i32 0, align 4
@outer_first_mpls_over_gre_s_bos = common dso_local global i32 0, align 4
@parser_3_ttl = common dso_local global i32 0, align 4
@outer_first_mpls_over_gre_ttl = common dso_local global i32 0, align 4
@outer_first_mpls_over_udp_label = common dso_local global i32 0, align 4
@outer_first_mpls_over_udp_exp = common dso_local global i32 0, align 4
@outer_first_mpls_over_udp_s_bos = common dso_local global i32 0, align 4
@outer_first_mpls_over_udp_ttl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5dr_match_param*, i32, i32*)* @dr_ste_build_flex_parser_0_bit_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dr_ste_build_flex_parser_0_bit_mask(%struct.mlx5dr_match_param* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.mlx5dr_match_param*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.mlx5dr_match_misc2*, align 8
  store %struct.mlx5dr_match_param* %0, %struct.mlx5dr_match_param** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %8 = load %struct.mlx5dr_match_param*, %struct.mlx5dr_match_param** %4, align 8
  %9 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %8, i32 0, i32 0
  store %struct.mlx5dr_match_misc2* %9, %struct.mlx5dr_match_misc2** %7, align 8
  %10 = load %struct.mlx5dr_match_misc2*, %struct.mlx5dr_match_misc2** %7, align 8
  %11 = call i64 @DR_STE_IS_OUTER_MPLS_OVER_GRE_SET(%struct.mlx5dr_match_misc2* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %38

13:                                               ; preds = %3
  %14 = load i32, i32* @flex_parser_0, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* @parser_3_label, align 4
  %17 = load %struct.mlx5dr_match_misc2*, %struct.mlx5dr_match_misc2** %7, align 8
  %18 = load i32, i32* @outer_first_mpls_over_gre_label, align 4
  %19 = call i32 @DR_STE_SET_MASK_V(i32 %14, i32* %15, i32 %16, %struct.mlx5dr_match_misc2* %17, i32 %18)
  %20 = load i32, i32* @flex_parser_0, align 4
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* @parser_3_exp, align 4
  %23 = load %struct.mlx5dr_match_misc2*, %struct.mlx5dr_match_misc2** %7, align 8
  %24 = load i32, i32* @outer_first_mpls_over_gre_exp, align 4
  %25 = call i32 @DR_STE_SET_MASK_V(i32 %20, i32* %21, i32 %22, %struct.mlx5dr_match_misc2* %23, i32 %24)
  %26 = load i32, i32* @flex_parser_0, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* @parser_3_s_bos, align 4
  %29 = load %struct.mlx5dr_match_misc2*, %struct.mlx5dr_match_misc2** %7, align 8
  %30 = load i32, i32* @outer_first_mpls_over_gre_s_bos, align 4
  %31 = call i32 @DR_STE_SET_MASK_V(i32 %26, i32* %27, i32 %28, %struct.mlx5dr_match_misc2* %29, i32 %30)
  %32 = load i32, i32* @flex_parser_0, align 4
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* @parser_3_ttl, align 4
  %35 = load %struct.mlx5dr_match_misc2*, %struct.mlx5dr_match_misc2** %7, align 8
  %36 = load i32, i32* @outer_first_mpls_over_gre_ttl, align 4
  %37 = call i32 @DR_STE_SET_MASK_V(i32 %32, i32* %33, i32 %34, %struct.mlx5dr_match_misc2* %35, i32 %36)
  br label %63

38:                                               ; preds = %3
  %39 = load i32, i32* @flex_parser_0, align 4
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* @parser_3_label, align 4
  %42 = load %struct.mlx5dr_match_misc2*, %struct.mlx5dr_match_misc2** %7, align 8
  %43 = load i32, i32* @outer_first_mpls_over_udp_label, align 4
  %44 = call i32 @DR_STE_SET_MASK_V(i32 %39, i32* %40, i32 %41, %struct.mlx5dr_match_misc2* %42, i32 %43)
  %45 = load i32, i32* @flex_parser_0, align 4
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* @parser_3_exp, align 4
  %48 = load %struct.mlx5dr_match_misc2*, %struct.mlx5dr_match_misc2** %7, align 8
  %49 = load i32, i32* @outer_first_mpls_over_udp_exp, align 4
  %50 = call i32 @DR_STE_SET_MASK_V(i32 %45, i32* %46, i32 %47, %struct.mlx5dr_match_misc2* %48, i32 %49)
  %51 = load i32, i32* @flex_parser_0, align 4
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* @parser_3_s_bos, align 4
  %54 = load %struct.mlx5dr_match_misc2*, %struct.mlx5dr_match_misc2** %7, align 8
  %55 = load i32, i32* @outer_first_mpls_over_udp_s_bos, align 4
  %56 = call i32 @DR_STE_SET_MASK_V(i32 %51, i32* %52, i32 %53, %struct.mlx5dr_match_misc2* %54, i32 %55)
  %57 = load i32, i32* @flex_parser_0, align 4
  %58 = load i32*, i32** %6, align 8
  %59 = load i32, i32* @parser_3_ttl, align 4
  %60 = load %struct.mlx5dr_match_misc2*, %struct.mlx5dr_match_misc2** %7, align 8
  %61 = load i32, i32* @outer_first_mpls_over_udp_ttl, align 4
  %62 = call i32 @DR_STE_SET_MASK_V(i32 %57, i32* %58, i32 %59, %struct.mlx5dr_match_misc2* %60, i32 %61)
  br label %63

63:                                               ; preds = %38, %13
  ret void
}

declare dso_local i64 @DR_STE_IS_OUTER_MPLS_OVER_GRE_SET(%struct.mlx5dr_match_misc2*) #1

declare dso_local i32 @DR_STE_SET_MASK_V(i32, i32*, i32, %struct.mlx5dr_match_misc2*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
