; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_dr_ste_build_eth_l3_ipv4_misc_tag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_dr_ste_build_eth_l3_ipv4_misc_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_match_param = type { %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec }
%struct.mlx5dr_match_spec = type { i32 }
%struct.mlx5dr_ste_build = type { i64 }
%struct.dr_hw_ste_format = type { i32* }

@eth_l3_ipv4_misc = common dso_local global i32 0, align 4
@time_to_live = common dso_local global i32 0, align 4
@ttl_hoplimit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5dr_match_param*, %struct.mlx5dr_ste_build*, i32*)* @dr_ste_build_eth_l3_ipv4_misc_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dr_ste_build_eth_l3_ipv4_misc_tag(%struct.mlx5dr_match_param* %0, %struct.mlx5dr_ste_build* %1, i32* %2) #0 {
  %4 = alloca %struct.mlx5dr_match_param*, align 8
  %5 = alloca %struct.mlx5dr_ste_build*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.dr_hw_ste_format*, align 8
  %8 = alloca %struct.mlx5dr_match_spec*, align 8
  %9 = alloca i32*, align 8
  store %struct.mlx5dr_match_param* %0, %struct.mlx5dr_match_param** %4, align 8
  store %struct.mlx5dr_ste_build* %1, %struct.mlx5dr_ste_build** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = bitcast i32* %10 to %struct.dr_hw_ste_format*
  store %struct.dr_hw_ste_format* %11, %struct.dr_hw_ste_format** %7, align 8
  %12 = load %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build** %5, align 8
  %13 = getelementptr inbounds %struct.mlx5dr_ste_build, %struct.mlx5dr_ste_build* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load %struct.mlx5dr_match_param*, %struct.mlx5dr_match_param** %4, align 8
  %18 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %17, i32 0, i32 1
  br label %22

19:                                               ; preds = %3
  %20 = load %struct.mlx5dr_match_param*, %struct.mlx5dr_match_param** %4, align 8
  %21 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %20, i32 0, i32 0
  br label %22

22:                                               ; preds = %19, %16
  %23 = phi %struct.mlx5dr_match_spec* [ %18, %16 ], [ %21, %19 ]
  store %struct.mlx5dr_match_spec* %23, %struct.mlx5dr_match_spec** %8, align 8
  %24 = load %struct.dr_hw_ste_format*, %struct.dr_hw_ste_format** %7, align 8
  %25 = getelementptr inbounds %struct.dr_hw_ste_format, %struct.dr_hw_ste_format* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %9, align 8
  %27 = load i32, i32* @eth_l3_ipv4_misc, align 4
  %28 = load i32*, i32** %9, align 8
  %29 = load i32, i32* @time_to_live, align 4
  %30 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %8, align 8
  %31 = load i32, i32* @ttl_hoplimit, align 4
  %32 = call i32 @DR_STE_SET_TAG(i32 %27, i32* %28, i32 %29, %struct.mlx5dr_match_spec* %30, i32 %31)
  ret i32 0
}

declare dso_local i32 @DR_STE_SET_TAG(i32, i32*, i32, %struct.mlx5dr_match_spec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
