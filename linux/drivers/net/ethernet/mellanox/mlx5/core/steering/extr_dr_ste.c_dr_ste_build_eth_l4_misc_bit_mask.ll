; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_dr_ste_build_eth_l4_misc_bit_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_dr_ste_build_eth_l4_misc_bit_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_match_param = type { %struct.mlx5dr_match_misc3 }
%struct.mlx5dr_match_misc3 = type { i32 }

@eth_l4_misc = common dso_local global i32 0, align 4
@seq_num = common dso_local global i32 0, align 4
@inner_tcp_seq_num = common dso_local global i32 0, align 4
@ack_num = common dso_local global i32 0, align 4
@inner_tcp_ack_num = common dso_local global i32 0, align 4
@outer_tcp_seq_num = common dso_local global i32 0, align 4
@outer_tcp_ack_num = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5dr_match_param*, i32, i32*)* @dr_ste_build_eth_l4_misc_bit_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dr_ste_build_eth_l4_misc_bit_mask(%struct.mlx5dr_match_param* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.mlx5dr_match_param*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.mlx5dr_match_misc3*, align 8
  store %struct.mlx5dr_match_param* %0, %struct.mlx5dr_match_param** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %8 = load %struct.mlx5dr_match_param*, %struct.mlx5dr_match_param** %4, align 8
  %9 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %8, i32 0, i32 0
  store %struct.mlx5dr_match_misc3* %9, %struct.mlx5dr_match_misc3** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %3
  %13 = load i32, i32* @eth_l4_misc, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* @seq_num, align 4
  %16 = load %struct.mlx5dr_match_misc3*, %struct.mlx5dr_match_misc3** %7, align 8
  %17 = load i32, i32* @inner_tcp_seq_num, align 4
  %18 = call i32 @DR_STE_SET_MASK_V(i32 %13, i32* %14, i32 %15, %struct.mlx5dr_match_misc3* %16, i32 %17)
  %19 = load i32, i32* @eth_l4_misc, align 4
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* @ack_num, align 4
  %22 = load %struct.mlx5dr_match_misc3*, %struct.mlx5dr_match_misc3** %7, align 8
  %23 = load i32, i32* @inner_tcp_ack_num, align 4
  %24 = call i32 @DR_STE_SET_MASK_V(i32 %19, i32* %20, i32 %21, %struct.mlx5dr_match_misc3* %22, i32 %23)
  br label %38

25:                                               ; preds = %3
  %26 = load i32, i32* @eth_l4_misc, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* @seq_num, align 4
  %29 = load %struct.mlx5dr_match_misc3*, %struct.mlx5dr_match_misc3** %7, align 8
  %30 = load i32, i32* @outer_tcp_seq_num, align 4
  %31 = call i32 @DR_STE_SET_MASK_V(i32 %26, i32* %27, i32 %28, %struct.mlx5dr_match_misc3* %29, i32 %30)
  %32 = load i32, i32* @eth_l4_misc, align 4
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* @ack_num, align 4
  %35 = load %struct.mlx5dr_match_misc3*, %struct.mlx5dr_match_misc3** %7, align 8
  %36 = load i32, i32* @outer_tcp_ack_num, align 4
  %37 = call i32 @DR_STE_SET_MASK_V(i32 %32, i32* %33, i32 %34, %struct.mlx5dr_match_misc3* %35, i32 %36)
  br label %38

38:                                               ; preds = %25, %12
  ret void
}

declare dso_local i32 @DR_STE_SET_MASK_V(i32, i32*, i32, %struct.mlx5dr_match_misc3*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
