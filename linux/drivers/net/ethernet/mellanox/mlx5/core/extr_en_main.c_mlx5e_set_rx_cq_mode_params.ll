; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_set_rx_cq_mode_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_set_rx_cq_mode_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_params = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i64 }

@MLX5E_PFLAG_RX_CQE_BASED_MODER = common dso_local global i32 0, align 4
@MLX5_CQ_PERIOD_MODE_START_FROM_CQE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5e_set_rx_cq_mode_params(%struct.mlx5e_params* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx5e_params*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__, align 8
  %7 = alloca %struct.TYPE_3__, align 8
  store %struct.mlx5e_params* %0, %struct.mlx5e_params** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.mlx5e_params*, %struct.mlx5e_params** %3, align 8
  %9 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @mlx5_to_net_dim_cq_period_mode(i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.mlx5e_params*, %struct.mlx5e_params** %3, align 8
  %16 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %15, i32 0, i32 0
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @net_dim_get_def_rx_moderation(i32 %17)
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store i64 %18, i64* %19, align 8
  %20 = bitcast %struct.TYPE_3__* %16 to i8*
  %21 = bitcast %struct.TYPE_3__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 8, i1 false)
  br label %30

22:                                               ; preds = %2
  %23 = load %struct.mlx5e_params*, %struct.mlx5e_params** %3, align 8
  %24 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %23, i32 0, i32 0
  %25 = load i32, i32* %4, align 4
  %26 = call i64 @mlx5e_get_def_rx_moderation(i32 %25)
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store i64 %26, i64* %27, align 8
  %28 = bitcast %struct.TYPE_3__* %24 to i8*
  %29 = bitcast %struct.TYPE_3__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 %29, i64 8, i1 false)
  br label %30

30:                                               ; preds = %22, %12
  %31 = load %struct.mlx5e_params*, %struct.mlx5e_params** %3, align 8
  %32 = load i32, i32* @MLX5E_PFLAG_RX_CQE_BASED_MODER, align 4
  %33 = load %struct.mlx5e_params*, %struct.mlx5e_params** %3, align 8
  %34 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @MLX5_CQ_PERIOD_MODE_START_FROM_CQE, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @MLX5E_SET_PFLAG(%struct.mlx5e_params* %31, i32 %32, i32 %39)
  ret void
}

declare dso_local i32 @mlx5_to_net_dim_cq_period_mode(i32) #1

declare dso_local i64 @net_dim_get_def_rx_moderation(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @mlx5e_get_def_rx_moderation(i32) #1

declare dso_local i32 @MLX5E_SET_PFLAG(%struct.mlx5e_params*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
