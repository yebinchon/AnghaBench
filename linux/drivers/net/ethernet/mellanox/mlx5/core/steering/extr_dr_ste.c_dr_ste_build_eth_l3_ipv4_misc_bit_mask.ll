; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_dr_ste_build_eth_l3_ipv4_misc_bit_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_dr_ste_build_eth_l3_ipv4_misc_bit_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_match_param = type { %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec }
%struct.mlx5dr_match_spec = type { i32 }

@eth_l3_ipv4_misc = common dso_local global i32 0, align 4
@time_to_live = common dso_local global i32 0, align 4
@ttl_hoplimit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5dr_match_param*, i32, i32*)* @dr_ste_build_eth_l3_ipv4_misc_bit_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dr_ste_build_eth_l3_ipv4_misc_bit_mask(%struct.mlx5dr_match_param* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.mlx5dr_match_param*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.mlx5dr_match_spec*, align 8
  store %struct.mlx5dr_match_param* %0, %struct.mlx5dr_match_param** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load %struct.mlx5dr_match_param*, %struct.mlx5dr_match_param** %4, align 8
  %12 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %11, i32 0, i32 1
  br label %16

13:                                               ; preds = %3
  %14 = load %struct.mlx5dr_match_param*, %struct.mlx5dr_match_param** %4, align 8
  %15 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %14, i32 0, i32 0
  br label %16

16:                                               ; preds = %13, %10
  %17 = phi %struct.mlx5dr_match_spec* [ %12, %10 ], [ %15, %13 ]
  store %struct.mlx5dr_match_spec* %17, %struct.mlx5dr_match_spec** %7, align 8
  %18 = load i32, i32* @eth_l3_ipv4_misc, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* @time_to_live, align 4
  %21 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %7, align 8
  %22 = load i32, i32* @ttl_hoplimit, align 4
  %23 = call i32 @DR_STE_SET_MASK_V(i32 %18, i32* %19, i32 %20, %struct.mlx5dr_match_spec* %21, i32 %22)
  ret void
}

declare dso_local i32 @DR_STE_SET_MASK_V(i32, i32*, i32, %struct.mlx5dr_match_spec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
