; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_build_indir_tir_ctx_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_build_indir_tir_ctx_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { %struct.TYPE_9__, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@transport_domain = common dso_local global i32 0, align 4
@disp_type = common dso_local global i32 0, align 4
@MLX5_TIRC_DISP_TYPE_INDIRECT = common dso_local global i32 0, align 4
@indirect_table = common dso_local global i32 0, align 4
@tunneled_offload_en = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_priv*, i32, i32*)* @mlx5e_build_indir_tir_ctx_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_build_indir_tir_ctx_common(%struct.mlx5e_priv* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.mlx5e_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %7 = load i32*, i32** %6, align 8
  %8 = load i32*, i32** %6, align 8
  %9 = load i32, i32* @transport_domain, align 4
  %10 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %11 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %10, i32 0, i32 1
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @MLX5_SET(i32* %7, i32* %8, i32 %9, i32 %16)
  %18 = load i32*, i32** %6, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* @disp_type, align 4
  %21 = load i32, i32* @MLX5_TIRC_DISP_TYPE_INDIRECT, align 4
  %22 = call i32 @MLX5_SET(i32* %18, i32* %19, i32 %20, i32 %21)
  %23 = load i32*, i32** %6, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* @indirect_table, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @MLX5_SET(i32* %23, i32* %24, i32 %25, i32 %26)
  %28 = load i32*, i32** %6, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* @tunneled_offload_en, align 4
  %31 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %32 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @MLX5_SET(i32* %28, i32* %29, i32 %30, i32 %35)
  %37 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %38 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @mlx5e_build_tir_ctx_lro(%struct.TYPE_10__* %39, i32* %40)
  ret void
}

declare dso_local i32 @MLX5_SET(i32*, i32*, i32, i32) #1

declare dso_local i32 @mlx5e_build_tir_ctx_lro(%struct.TYPE_10__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
