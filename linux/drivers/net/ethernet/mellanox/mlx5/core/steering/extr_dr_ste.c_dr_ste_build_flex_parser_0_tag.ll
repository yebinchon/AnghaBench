; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_dr_ste_build_flex_parser_0_tag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_dr_ste_build_flex_parser_0_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_match_param = type { %struct.mlx5dr_match_misc2 }
%struct.mlx5dr_match_misc2 = type { i32 }
%struct.mlx5dr_ste_build = type { i32 }
%struct.dr_hw_ste_format = type { i32* }

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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5dr_match_param*, %struct.mlx5dr_ste_build*, i32*)* @dr_ste_build_flex_parser_0_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dr_ste_build_flex_parser_0_tag(%struct.mlx5dr_match_param* %0, %struct.mlx5dr_ste_build* %1, i32* %2) #0 {
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
  %17 = load %struct.mlx5dr_match_misc2*, %struct.mlx5dr_match_misc2** %8, align 8
  %18 = call i64 @DR_STE_IS_OUTER_MPLS_OVER_GRE_SET(%struct.mlx5dr_match_misc2* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %45

20:                                               ; preds = %3
  %21 = load i32, i32* @flex_parser_0, align 4
  %22 = load i32*, i32** %9, align 8
  %23 = load i32, i32* @parser_3_label, align 4
  %24 = load %struct.mlx5dr_match_misc2*, %struct.mlx5dr_match_misc2** %8, align 8
  %25 = load i32, i32* @outer_first_mpls_over_gre_label, align 4
  %26 = call i32 @DR_STE_SET_TAG(i32 %21, i32* %22, i32 %23, %struct.mlx5dr_match_misc2* %24, i32 %25)
  %27 = load i32, i32* @flex_parser_0, align 4
  %28 = load i32*, i32** %9, align 8
  %29 = load i32, i32* @parser_3_exp, align 4
  %30 = load %struct.mlx5dr_match_misc2*, %struct.mlx5dr_match_misc2** %8, align 8
  %31 = load i32, i32* @outer_first_mpls_over_gre_exp, align 4
  %32 = call i32 @DR_STE_SET_TAG(i32 %27, i32* %28, i32 %29, %struct.mlx5dr_match_misc2* %30, i32 %31)
  %33 = load i32, i32* @flex_parser_0, align 4
  %34 = load i32*, i32** %9, align 8
  %35 = load i32, i32* @parser_3_s_bos, align 4
  %36 = load %struct.mlx5dr_match_misc2*, %struct.mlx5dr_match_misc2** %8, align 8
  %37 = load i32, i32* @outer_first_mpls_over_gre_s_bos, align 4
  %38 = call i32 @DR_STE_SET_TAG(i32 %33, i32* %34, i32 %35, %struct.mlx5dr_match_misc2* %36, i32 %37)
  %39 = load i32, i32* @flex_parser_0, align 4
  %40 = load i32*, i32** %9, align 8
  %41 = load i32, i32* @parser_3_ttl, align 4
  %42 = load %struct.mlx5dr_match_misc2*, %struct.mlx5dr_match_misc2** %8, align 8
  %43 = load i32, i32* @outer_first_mpls_over_gre_ttl, align 4
  %44 = call i32 @DR_STE_SET_TAG(i32 %39, i32* %40, i32 %41, %struct.mlx5dr_match_misc2* %42, i32 %43)
  br label %70

45:                                               ; preds = %3
  %46 = load i32, i32* @flex_parser_0, align 4
  %47 = load i32*, i32** %9, align 8
  %48 = load i32, i32* @parser_3_label, align 4
  %49 = load %struct.mlx5dr_match_misc2*, %struct.mlx5dr_match_misc2** %8, align 8
  %50 = load i32, i32* @outer_first_mpls_over_udp_label, align 4
  %51 = call i32 @DR_STE_SET_TAG(i32 %46, i32* %47, i32 %48, %struct.mlx5dr_match_misc2* %49, i32 %50)
  %52 = load i32, i32* @flex_parser_0, align 4
  %53 = load i32*, i32** %9, align 8
  %54 = load i32, i32* @parser_3_exp, align 4
  %55 = load %struct.mlx5dr_match_misc2*, %struct.mlx5dr_match_misc2** %8, align 8
  %56 = load i32, i32* @outer_first_mpls_over_udp_exp, align 4
  %57 = call i32 @DR_STE_SET_TAG(i32 %52, i32* %53, i32 %54, %struct.mlx5dr_match_misc2* %55, i32 %56)
  %58 = load i32, i32* @flex_parser_0, align 4
  %59 = load i32*, i32** %9, align 8
  %60 = load i32, i32* @parser_3_s_bos, align 4
  %61 = load %struct.mlx5dr_match_misc2*, %struct.mlx5dr_match_misc2** %8, align 8
  %62 = load i32, i32* @outer_first_mpls_over_udp_s_bos, align 4
  %63 = call i32 @DR_STE_SET_TAG(i32 %58, i32* %59, i32 %60, %struct.mlx5dr_match_misc2* %61, i32 %62)
  %64 = load i32, i32* @flex_parser_0, align 4
  %65 = load i32*, i32** %9, align 8
  %66 = load i32, i32* @parser_3_ttl, align 4
  %67 = load %struct.mlx5dr_match_misc2*, %struct.mlx5dr_match_misc2** %8, align 8
  %68 = load i32, i32* @outer_first_mpls_over_udp_ttl, align 4
  %69 = call i32 @DR_STE_SET_TAG(i32 %64, i32* %65, i32 %66, %struct.mlx5dr_match_misc2* %67, i32 %68)
  br label %70

70:                                               ; preds = %45, %20
  ret i32 0
}

declare dso_local i64 @DR_STE_IS_OUTER_MPLS_OVER_GRE_SET(%struct.mlx5dr_match_misc2*) #1

declare dso_local i32 @DR_STE_SET_TAG(i32, i32*, i32, %struct.mlx5dr_match_misc2*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
