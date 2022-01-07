; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_build_rx_cq_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_build_rx_cq_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { i32 }
%struct.mlx5e_params = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mlx5e_xsk_param = type { i32 }
%struct.mlx5e_cq_param = type { i32, i8* }

@MLX5E_PFLAG_RX_CQE_COMPRESS = common dso_local global i32 0, align 4
@mini_cqe_res_format = common dso_local global i32 0, align 4
@MLX5_CQE_FORMAT_CSUM = common dso_local global i32 0, align 4
@cqe_comp_en = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5e_build_rx_cq_param(%struct.mlx5e_priv* %0, %struct.mlx5e_params* %1, %struct.mlx5e_xsk_param* %2, %struct.mlx5e_cq_param* %3) #0 {
  %5 = alloca %struct.mlx5e_priv*, align 8
  %6 = alloca %struct.mlx5e_params*, align 8
  %7 = alloca %struct.mlx5e_xsk_param*, align 8
  %8 = alloca %struct.mlx5e_cq_param*, align 8
  %9 = alloca %struct.mlx5_core_dev*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %5, align 8
  store %struct.mlx5e_params* %1, %struct.mlx5e_params** %6, align 8
  store %struct.mlx5e_xsk_param* %2, %struct.mlx5e_xsk_param** %7, align 8
  store %struct.mlx5e_cq_param* %3, %struct.mlx5e_cq_param** %8, align 8
  %12 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %13 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %12, i32 0, i32 0
  %14 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %13, align 8
  store %struct.mlx5_core_dev* %14, %struct.mlx5_core_dev** %9, align 8
  %15 = load %struct.mlx5e_cq_param*, %struct.mlx5e_cq_param** %8, align 8
  %16 = getelementptr inbounds %struct.mlx5e_cq_param, %struct.mlx5e_cq_param* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %10, align 8
  %18 = load %struct.mlx5e_params*, %struct.mlx5e_params** %6, align 8
  %19 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %30 [
    i32 128, label %21
  ]

21:                                               ; preds = %4
  %22 = load %struct.mlx5e_params*, %struct.mlx5e_params** %6, align 8
  %23 = load %struct.mlx5e_xsk_param*, %struct.mlx5e_xsk_param** %7, align 8
  %24 = call i32 @mlx5e_mpwqe_get_log_rq_size(%struct.mlx5e_params* %22, %struct.mlx5e_xsk_param* %23)
  %25 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %9, align 8
  %26 = load %struct.mlx5e_params*, %struct.mlx5e_params** %6, align 8
  %27 = load %struct.mlx5e_xsk_param*, %struct.mlx5e_xsk_param** %7, align 8
  %28 = call i32 @mlx5e_mpwqe_get_log_num_strides(%struct.mlx5_core_dev* %25, %struct.mlx5e_params* %26, %struct.mlx5e_xsk_param* %27)
  %29 = add nsw i32 %24, %28
  store i32 %29, i32* %11, align 4
  br label %34

30:                                               ; preds = %4
  %31 = load %struct.mlx5e_params*, %struct.mlx5e_params** %6, align 8
  %32 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %11, align 4
  br label %34

34:                                               ; preds = %30, %21
  %35 = load i8*, i8** %10, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @MLX5_SET(i8* %35, i8* %36, i32 %37, i32 %38)
  %40 = load %struct.mlx5e_params*, %struct.mlx5e_params** %6, align 8
  %41 = load i32, i32* @MLX5E_PFLAG_RX_CQE_COMPRESS, align 4
  %42 = call i64 @MLX5E_GET_PFLAG(%struct.mlx5e_params* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %34
  %45 = load i8*, i8** %10, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = load i32, i32* @mini_cqe_res_format, align 4
  %48 = load i32, i32* @MLX5_CQE_FORMAT_CSUM, align 4
  %49 = call i32 @MLX5_SET(i8* %45, i8* %46, i32 %47, i32 %48)
  %50 = load i8*, i8** %10, align 8
  %51 = load i8*, i8** %10, align 8
  %52 = load i32, i32* @cqe_comp_en, align 4
  %53 = call i32 @MLX5_SET(i8* %50, i8* %51, i32 %52, i32 1)
  br label %54

54:                                               ; preds = %44, %34
  %55 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %56 = load %struct.mlx5e_cq_param*, %struct.mlx5e_cq_param** %8, align 8
  %57 = call i32 @mlx5e_build_common_cq_param(%struct.mlx5e_priv* %55, %struct.mlx5e_cq_param* %56)
  %58 = load %struct.mlx5e_params*, %struct.mlx5e_params** %6, align 8
  %59 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.mlx5e_cq_param*, %struct.mlx5e_cq_param** %8, align 8
  %63 = getelementptr inbounds %struct.mlx5e_cq_param, %struct.mlx5e_cq_param* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  ret void
}

declare dso_local i32 @mlx5e_mpwqe_get_log_rq_size(%struct.mlx5e_params*, %struct.mlx5e_xsk_param*) #1

declare dso_local i32 @mlx5e_mpwqe_get_log_num_strides(%struct.mlx5_core_dev*, %struct.mlx5e_params*, %struct.mlx5e_xsk_param*) #1

declare dso_local i32 @MLX5_SET(i8*, i8*, i32, i32) #1

declare dso_local i64 @MLX5E_GET_PFLAG(%struct.mlx5e_params*, i32) #1

declare dso_local i32 @mlx5e_build_common_cq_param(%struct.mlx5e_priv*, %struct.mlx5e_cq_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
