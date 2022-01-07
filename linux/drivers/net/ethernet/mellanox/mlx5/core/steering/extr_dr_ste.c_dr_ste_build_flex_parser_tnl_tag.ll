; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_dr_ste_build_flex_parser_tnl_tag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_dr_ste_build_flex_parser_tnl_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_match_param = type { %struct.mlx5dr_match_misc3 }
%struct.mlx5dr_match_misc3 = type { i32, i32, i32 }
%struct.mlx5dr_ste_build = type { i32 }
%struct.dr_hw_ste_format = type { i32* }

@ste_flex_parser_tnl = common dso_local global i32 0, align 4
@flex_parser_tunneling_header_63_32 = common dso_local global i32 0, align 4
@flex_parser_tunneling_header_31_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5dr_match_param*, %struct.mlx5dr_ste_build*, i32*)* @dr_ste_build_flex_parser_tnl_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dr_ste_build_flex_parser_tnl_tag(%struct.mlx5dr_match_param* %0, %struct.mlx5dr_ste_build* %1, i32* %2) #0 {
  %4 = alloca %struct.mlx5dr_match_param*, align 8
  %5 = alloca %struct.mlx5dr_ste_build*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.dr_hw_ste_format*, align 8
  %8 = alloca %struct.mlx5dr_match_misc3*, align 8
  %9 = alloca i32*, align 8
  store %struct.mlx5dr_match_param* %0, %struct.mlx5dr_match_param** %4, align 8
  store %struct.mlx5dr_ste_build* %1, %struct.mlx5dr_ste_build** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = bitcast i32* %10 to %struct.dr_hw_ste_format*
  store %struct.dr_hw_ste_format* %11, %struct.dr_hw_ste_format** %7, align 8
  %12 = load %struct.mlx5dr_match_param*, %struct.mlx5dr_match_param** %4, align 8
  %13 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %12, i32 0, i32 0
  store %struct.mlx5dr_match_misc3* %13, %struct.mlx5dr_match_misc3** %8, align 8
  %14 = load %struct.dr_hw_ste_format*, %struct.dr_hw_ste_format** %7, align 8
  %15 = getelementptr inbounds %struct.dr_hw_ste_format, %struct.dr_hw_ste_format* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %9, align 8
  %17 = load %struct.mlx5dr_match_misc3*, %struct.mlx5dr_match_misc3** %8, align 8
  %18 = getelementptr inbounds %struct.mlx5dr_match_misc3, %struct.mlx5dr_match_misc3* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %3
  %22 = load %struct.mlx5dr_match_misc3*, %struct.mlx5dr_match_misc3** %8, align 8
  %23 = getelementptr inbounds %struct.mlx5dr_match_misc3, %struct.mlx5dr_match_misc3* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %21, %3
  %27 = load i32, i32* @ste_flex_parser_tnl, align 4
  %28 = load i32*, i32** %9, align 8
  %29 = load i32, i32* @flex_parser_tunneling_header_63_32, align 4
  %30 = load %struct.mlx5dr_match_misc3*, %struct.mlx5dr_match_misc3** %8, align 8
  %31 = getelementptr inbounds %struct.mlx5dr_match_misc3, %struct.mlx5dr_match_misc3* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 %32, 24
  %34 = load %struct.mlx5dr_match_misc3*, %struct.mlx5dr_match_misc3** %8, align 8
  %35 = getelementptr inbounds %struct.mlx5dr_match_misc3, %struct.mlx5dr_match_misc3* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %33, %36
  %38 = call i32 @MLX5_SET(i32 %27, i32* %28, i32 %29, i32 %37)
  %39 = load %struct.mlx5dr_match_misc3*, %struct.mlx5dr_match_misc3** %8, align 8
  %40 = getelementptr inbounds %struct.mlx5dr_match_misc3, %struct.mlx5dr_match_misc3* %39, i32 0, i32 0
  store i32 0, i32* %40, align 4
  %41 = load %struct.mlx5dr_match_misc3*, %struct.mlx5dr_match_misc3** %8, align 8
  %42 = getelementptr inbounds %struct.mlx5dr_match_misc3, %struct.mlx5dr_match_misc3* %41, i32 0, i32 1
  store i32 0, i32* %42, align 4
  br label %43

43:                                               ; preds = %26, %21
  %44 = load %struct.mlx5dr_match_misc3*, %struct.mlx5dr_match_misc3** %8, align 8
  %45 = getelementptr inbounds %struct.mlx5dr_match_misc3, %struct.mlx5dr_match_misc3* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %43
  %49 = load i32, i32* @ste_flex_parser_tnl, align 4
  %50 = load i32*, i32** %9, align 8
  %51 = load i32, i32* @flex_parser_tunneling_header_31_0, align 4
  %52 = load %struct.mlx5dr_match_misc3*, %struct.mlx5dr_match_misc3** %8, align 8
  %53 = getelementptr inbounds %struct.mlx5dr_match_misc3, %struct.mlx5dr_match_misc3* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = shl i32 %54, 8
  %56 = call i32 @MLX5_SET(i32 %49, i32* %50, i32 %51, i32 %55)
  %57 = load %struct.mlx5dr_match_misc3*, %struct.mlx5dr_match_misc3** %8, align 8
  %58 = getelementptr inbounds %struct.mlx5dr_match_misc3, %struct.mlx5dr_match_misc3* %57, i32 0, i32 2
  store i32 0, i32* %58, align 4
  br label %59

59:                                               ; preds = %48, %43
  ret i32 0
}

declare dso_local i32 @MLX5_SET(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
