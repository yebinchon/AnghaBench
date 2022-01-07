; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_mlx5dr_ste_build_eth_l3_ipv6_src.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_mlx5dr_ste_build_eth_l3_ipv6_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_ste_build = type { i32, i32, i32*, i32, i32, i32 }
%struct.mlx5dr_match_param = type { i32 }

@ETHL3_IPV6_SRC = common dso_local global i32 0, align 4
@dr_ste_build_eth_l3_ipv6_src_tag = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5dr_ste_build_eth_l3_ipv6_src(%struct.mlx5dr_ste_build* %0, %struct.mlx5dr_match_param* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mlx5dr_ste_build*, align 8
  %6 = alloca %struct.mlx5dr_match_param*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mlx5dr_ste_build* %0, %struct.mlx5dr_ste_build** %5, align 8
  store %struct.mlx5dr_match_param* %1, %struct.mlx5dr_match_param** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.mlx5dr_match_param*, %struct.mlx5dr_match_param** %6, align 8
  %10 = load i32, i32* %7, align 4
  %11 = load %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build** %5, align 8
  %12 = getelementptr inbounds %struct.mlx5dr_ste_build, %struct.mlx5dr_ste_build* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @dr_ste_build_eth_l3_ipv6_src_bit_mask(%struct.mlx5dr_match_param* %9, i32 %10, i32 %13)
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build** %5, align 8
  %17 = getelementptr inbounds %struct.mlx5dr_ste_build, %struct.mlx5dr_ste_build* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build** %5, align 8
  %20 = getelementptr inbounds %struct.mlx5dr_ste_build, %struct.mlx5dr_ste_build* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @ETHL3_IPV6_SRC, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @DR_STE_CALC_LU_TYPE(i32 %21, i32 %22, i32 %23)
  %25 = load %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build** %5, align 8
  %26 = getelementptr inbounds %struct.mlx5dr_ste_build, %struct.mlx5dr_ste_build* %25, i32 0, i32 5
  store i32 %24, i32* %26, align 8
  %27 = load %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build** %5, align 8
  %28 = getelementptr inbounds %struct.mlx5dr_ste_build, %struct.mlx5dr_ste_build* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @dr_ste_conv_bit_to_byte_mask(i32 %29)
  %31 = load %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build** %5, align 8
  %32 = getelementptr inbounds %struct.mlx5dr_ste_build, %struct.mlx5dr_ste_build* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 4
  %33 = load %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build** %5, align 8
  %34 = getelementptr inbounds %struct.mlx5dr_ste_build, %struct.mlx5dr_ste_build* %33, i32 0, i32 2
  store i32* @dr_ste_build_eth_l3_ipv6_src_tag, i32** %34, align 8
  ret void
}

declare dso_local i32 @dr_ste_build_eth_l3_ipv6_src_bit_mask(%struct.mlx5dr_match_param*, i32, i32) #1

declare dso_local i32 @DR_STE_CALC_LU_TYPE(i32, i32, i32) #1

declare dso_local i32 @dr_ste_conv_bit_to_byte_mask(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
