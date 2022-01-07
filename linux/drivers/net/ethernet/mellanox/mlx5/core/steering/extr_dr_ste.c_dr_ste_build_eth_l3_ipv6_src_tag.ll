; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_dr_ste_build_eth_l3_ipv6_src_tag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_dr_ste_build_eth_l3_ipv6_src_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_match_param = type { %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec }
%struct.mlx5dr_match_spec = type { i32 }
%struct.mlx5dr_ste_build = type { i64 }
%struct.dr_hw_ste_format = type { i32* }

@eth_l3_ipv6_src = common dso_local global i32 0, align 4
@src_ip_127_96 = common dso_local global i32 0, align 4
@src_ip_95_64 = common dso_local global i32 0, align 4
@src_ip_63_32 = common dso_local global i32 0, align 4
@src_ip_31_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5dr_match_param*, %struct.mlx5dr_ste_build*, i32*)* @dr_ste_build_eth_l3_ipv6_src_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dr_ste_build_eth_l3_ipv6_src_tag(%struct.mlx5dr_match_param* %0, %struct.mlx5dr_ste_build* %1, i32* %2) #0 {
  %4 = alloca %struct.mlx5dr_match_param*, align 8
  %5 = alloca %struct.mlx5dr_ste_build*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.mlx5dr_match_spec*, align 8
  %8 = alloca %struct.dr_hw_ste_format*, align 8
  %9 = alloca i32*, align 8
  store %struct.mlx5dr_match_param* %0, %struct.mlx5dr_match_param** %4, align 8
  store %struct.mlx5dr_ste_build* %1, %struct.mlx5dr_ste_build** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build** %5, align 8
  %11 = getelementptr inbounds %struct.mlx5dr_ste_build, %struct.mlx5dr_ste_build* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load %struct.mlx5dr_match_param*, %struct.mlx5dr_match_param** %4, align 8
  %16 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %15, i32 0, i32 1
  br label %20

17:                                               ; preds = %3
  %18 = load %struct.mlx5dr_match_param*, %struct.mlx5dr_match_param** %4, align 8
  %19 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %18, i32 0, i32 0
  br label %20

20:                                               ; preds = %17, %14
  %21 = phi %struct.mlx5dr_match_spec* [ %16, %14 ], [ %19, %17 ]
  store %struct.mlx5dr_match_spec* %21, %struct.mlx5dr_match_spec** %7, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = bitcast i32* %22 to %struct.dr_hw_ste_format*
  store %struct.dr_hw_ste_format* %23, %struct.dr_hw_ste_format** %8, align 8
  %24 = load %struct.dr_hw_ste_format*, %struct.dr_hw_ste_format** %8, align 8
  %25 = getelementptr inbounds %struct.dr_hw_ste_format, %struct.dr_hw_ste_format* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %9, align 8
  %27 = load i32, i32* @eth_l3_ipv6_src, align 4
  %28 = load i32*, i32** %9, align 8
  %29 = load i32, i32* @src_ip_127_96, align 4
  %30 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %7, align 8
  %31 = load i32, i32* @src_ip_127_96, align 4
  %32 = call i32 @DR_STE_SET_TAG(i32 %27, i32* %28, i32 %29, %struct.mlx5dr_match_spec* %30, i32 %31)
  %33 = load i32, i32* @eth_l3_ipv6_src, align 4
  %34 = load i32*, i32** %9, align 8
  %35 = load i32, i32* @src_ip_95_64, align 4
  %36 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %7, align 8
  %37 = load i32, i32* @src_ip_95_64, align 4
  %38 = call i32 @DR_STE_SET_TAG(i32 %33, i32* %34, i32 %35, %struct.mlx5dr_match_spec* %36, i32 %37)
  %39 = load i32, i32* @eth_l3_ipv6_src, align 4
  %40 = load i32*, i32** %9, align 8
  %41 = load i32, i32* @src_ip_63_32, align 4
  %42 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %7, align 8
  %43 = load i32, i32* @src_ip_63_32, align 4
  %44 = call i32 @DR_STE_SET_TAG(i32 %39, i32* %40, i32 %41, %struct.mlx5dr_match_spec* %42, i32 %43)
  %45 = load i32, i32* @eth_l3_ipv6_src, align 4
  %46 = load i32*, i32** %9, align 8
  %47 = load i32, i32* @src_ip_31_0, align 4
  %48 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %7, align 8
  %49 = load i32, i32* @src_ip_31_0, align 4
  %50 = call i32 @DR_STE_SET_TAG(i32 %45, i32* %46, i32 %47, %struct.mlx5dr_match_spec* %48, i32 %49)
  ret i32 0
}

declare dso_local i32 @DR_STE_SET_TAG(i32, i32*, i32, %struct.mlx5dr_match_spec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
