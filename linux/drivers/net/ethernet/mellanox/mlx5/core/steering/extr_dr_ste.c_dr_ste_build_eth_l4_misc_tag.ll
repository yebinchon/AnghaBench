; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_dr_ste_build_eth_l4_misc_tag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_dr_ste_build_eth_l4_misc_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_match_param = type { %struct.mlx5dr_match_misc3 }
%struct.mlx5dr_match_misc3 = type { i32 }
%struct.mlx5dr_ste_build = type { i64 }
%struct.dr_hw_ste_format = type { i32* }

@eth_l4_misc = common dso_local global i32 0, align 4
@seq_num = common dso_local global i32 0, align 4
@inner_tcp_seq_num = common dso_local global i32 0, align 4
@ack_num = common dso_local global i32 0, align 4
@inner_tcp_ack_num = common dso_local global i32 0, align 4
@outer_tcp_seq_num = common dso_local global i32 0, align 4
@outer_tcp_ack_num = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5dr_match_param*, %struct.mlx5dr_ste_build*, i32*)* @dr_ste_build_eth_l4_misc_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dr_ste_build_eth_l4_misc_tag(%struct.mlx5dr_match_param* %0, %struct.mlx5dr_ste_build* %1, i32* %2) #0 {
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
  %17 = load %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build** %5, align 8
  %18 = getelementptr inbounds %struct.mlx5dr_ste_build, %struct.mlx5dr_ste_build* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %3
  %22 = load i32, i32* @eth_l4_misc, align 4
  %23 = load i32*, i32** %9, align 8
  %24 = load i32, i32* @seq_num, align 4
  %25 = load %struct.mlx5dr_match_misc3*, %struct.mlx5dr_match_misc3** %8, align 8
  %26 = load i32, i32* @inner_tcp_seq_num, align 4
  %27 = call i32 @DR_STE_SET_TAG(i32 %22, i32* %23, i32 %24, %struct.mlx5dr_match_misc3* %25, i32 %26)
  %28 = load i32, i32* @eth_l4_misc, align 4
  %29 = load i32*, i32** %9, align 8
  %30 = load i32, i32* @ack_num, align 4
  %31 = load %struct.mlx5dr_match_misc3*, %struct.mlx5dr_match_misc3** %8, align 8
  %32 = load i32, i32* @inner_tcp_ack_num, align 4
  %33 = call i32 @DR_STE_SET_TAG(i32 %28, i32* %29, i32 %30, %struct.mlx5dr_match_misc3* %31, i32 %32)
  br label %47

34:                                               ; preds = %3
  %35 = load i32, i32* @eth_l4_misc, align 4
  %36 = load i32*, i32** %9, align 8
  %37 = load i32, i32* @seq_num, align 4
  %38 = load %struct.mlx5dr_match_misc3*, %struct.mlx5dr_match_misc3** %8, align 8
  %39 = load i32, i32* @outer_tcp_seq_num, align 4
  %40 = call i32 @DR_STE_SET_TAG(i32 %35, i32* %36, i32 %37, %struct.mlx5dr_match_misc3* %38, i32 %39)
  %41 = load i32, i32* @eth_l4_misc, align 4
  %42 = load i32*, i32** %9, align 8
  %43 = load i32, i32* @ack_num, align 4
  %44 = load %struct.mlx5dr_match_misc3*, %struct.mlx5dr_match_misc3** %8, align 8
  %45 = load i32, i32* @outer_tcp_ack_num, align 4
  %46 = call i32 @DR_STE_SET_TAG(i32 %41, i32* %42, i32 %43, %struct.mlx5dr_match_misc3* %44, i32 %45)
  br label %47

47:                                               ; preds = %34, %21
  ret i32 0
}

declare dso_local i32 @DR_STE_SET_TAG(i32, i32*, i32, %struct.mlx5dr_match_misc3*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
