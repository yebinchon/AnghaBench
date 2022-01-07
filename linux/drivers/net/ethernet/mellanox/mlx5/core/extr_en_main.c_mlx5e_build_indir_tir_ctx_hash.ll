; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_build_indir_tir_ctx_hash.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_build_indir_tir_ctx_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_rss_params = type { i64, i32 }
%struct.mlx5e_tirc_config = type { i32, i32, i32 }

@rx_hash_field_selector_inner = common dso_local global i32 0, align 4
@rx_hash_field_selector_outer = common dso_local global i32 0, align 4
@rx_hash_fn = common dso_local global i32 0, align 4
@ETH_RSS_HASH_TOP = common dso_local global i64 0, align 8
@rx_hash_toeplitz_key = common dso_local global i32 0, align 4
@rx_hash_symmetric = common dso_local global i32 0, align 4
@rx_hash_field_select = common dso_local global i8* null, align 8
@l3_prot_type = common dso_local global i32 0, align 4
@l4_prot_type = common dso_local global i32 0, align 4
@selected_fields = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5e_build_indir_tir_ctx_hash(%struct.mlx5e_rss_params* %0, %struct.mlx5e_tirc_config* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.mlx5e_rss_params*, align 8
  %6 = alloca %struct.mlx5e_tirc_config*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.mlx5e_rss_params* %0, %struct.mlx5e_rss_params** %5, align 8
  store %struct.mlx5e_tirc_config* %1, %struct.mlx5e_tirc_config** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %4
  %15 = load i8*, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = load i32, i32* @rx_hash_field_selector_inner, align 4
  %18 = call i8* @MLX5_ADDR_OF(i8* %15, i8* %16, i32 %17)
  br label %24

19:                                               ; preds = %4
  %20 = load i8*, i8** %7, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = load i32, i32* @rx_hash_field_selector_outer, align 4
  %23 = call i8* @MLX5_ADDR_OF(i8* %20, i8* %21, i32 %22)
  br label %24

24:                                               ; preds = %19, %14
  %25 = phi i8* [ %18, %14 ], [ %23, %19 ]
  store i8* %25, i8** %9, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load i32, i32* @rx_hash_fn, align 4
  %29 = load %struct.mlx5e_rss_params*, %struct.mlx5e_rss_params** %5, align 8
  %30 = getelementptr inbounds %struct.mlx5e_rss_params, %struct.mlx5e_rss_params* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @mlx5e_rx_hash_fn(i64 %31)
  %33 = call i32 @MLX5_SET(i8* %26, i8* %27, i32 %28, i32 %32)
  %34 = load %struct.mlx5e_rss_params*, %struct.mlx5e_rss_params** %5, align 8
  %35 = getelementptr inbounds %struct.mlx5e_rss_params, %struct.mlx5e_rss_params* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @ETH_RSS_HASH_TOP, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %57

39:                                               ; preds = %24
  %40 = load i8*, i8** %7, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = load i32, i32* @rx_hash_toeplitz_key, align 4
  %43 = call i8* @MLX5_ADDR_OF(i8* %40, i8* %41, i32 %42)
  store i8* %43, i8** %10, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = load i32, i32* @rx_hash_toeplitz_key, align 4
  %46 = call i64 @MLX5_FLD_SZ_BYTES(i8* %44, i32 %45)
  store i64 %46, i64* %11, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = load i32, i32* @rx_hash_symmetric, align 4
  %50 = call i32 @MLX5_SET(i8* %47, i8* %48, i32 %49, i32 1)
  %51 = load i8*, i8** %10, align 8
  %52 = load %struct.mlx5e_rss_params*, %struct.mlx5e_rss_params** %5, align 8
  %53 = getelementptr inbounds %struct.mlx5e_rss_params, %struct.mlx5e_rss_params* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i64, i64* %11, align 8
  %56 = call i32 @memcpy(i8* %51, i32 %54, i64 %55)
  br label %57

57:                                               ; preds = %39, %24
  %58 = load i8*, i8** @rx_hash_field_select, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = load i32, i32* @l3_prot_type, align 4
  %61 = load %struct.mlx5e_tirc_config*, %struct.mlx5e_tirc_config** %6, align 8
  %62 = getelementptr inbounds %struct.mlx5e_tirc_config, %struct.mlx5e_tirc_config* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @MLX5_SET(i8* %58, i8* %59, i32 %60, i32 %63)
  %65 = load i8*, i8** @rx_hash_field_select, align 8
  %66 = load i8*, i8** %9, align 8
  %67 = load i32, i32* @l4_prot_type, align 4
  %68 = load %struct.mlx5e_tirc_config*, %struct.mlx5e_tirc_config** %6, align 8
  %69 = getelementptr inbounds %struct.mlx5e_tirc_config, %struct.mlx5e_tirc_config* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @MLX5_SET(i8* %65, i8* %66, i32 %67, i32 %70)
  %72 = load i8*, i8** @rx_hash_field_select, align 8
  %73 = load i8*, i8** %9, align 8
  %74 = load i32, i32* @selected_fields, align 4
  %75 = load %struct.mlx5e_tirc_config*, %struct.mlx5e_tirc_config** %6, align 8
  %76 = getelementptr inbounds %struct.mlx5e_tirc_config, %struct.mlx5e_tirc_config* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @MLX5_SET(i8* %72, i8* %73, i32 %74, i32 %77)
  ret void
}

declare dso_local i8* @MLX5_ADDR_OF(i8*, i8*, i32) #1

declare dso_local i32 @MLX5_SET(i8*, i8*, i32, i32) #1

declare dso_local i32 @mlx5e_rx_hash_fn(i64) #1

declare dso_local i64 @MLX5_FLD_SZ_BYTES(i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
