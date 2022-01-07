; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_build_drop_rq_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_build_drop_rq_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i32, %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { i32 }
%struct.mlx5e_rq_param = type { %struct.TYPE_2__, i8* }
%struct.TYPE_2__ = type { i32 }

@wq_type = common dso_local global i32 0, align 4
@MLX5_WQ_TYPE_CYCLIC = common dso_local global i32 0, align 4
@log_wq_stride = common dso_local global i32 0, align 4
@counter_set_id = common dso_local global i32 0, align 4
@wq = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_priv*, %struct.mlx5e_rq_param*)* @mlx5e_build_drop_rq_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_build_drop_rq_param(%struct.mlx5e_priv* %0, %struct.mlx5e_rq_param* %1) #0 {
  %3 = alloca %struct.mlx5e_priv*, align 8
  %4 = alloca %struct.mlx5e_rq_param*, align 8
  %5 = alloca %struct.mlx5_core_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %3, align 8
  store %struct.mlx5e_rq_param* %1, %struct.mlx5e_rq_param** %4, align 8
  %8 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %9 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %8, i32 0, i32 1
  %10 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %9, align 8
  store %struct.mlx5_core_dev* %10, %struct.mlx5_core_dev** %5, align 8
  %11 = load %struct.mlx5e_rq_param*, %struct.mlx5e_rq_param** %4, align 8
  %12 = getelementptr inbounds %struct.mlx5e_rq_param, %struct.mlx5e_rq_param* %11, i32 0, i32 1
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %6, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = ptrtoint i8* %16 to i32
  %18 = call i8* @MLX5_ADDR_OF(i8* %14, i8* %15, i32 %17)
  store i8* %18, i8** %7, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = load i32, i32* @wq_type, align 4
  %22 = load i32, i32* @MLX5_WQ_TYPE_CYCLIC, align 4
  %23 = call i32 @MLX5_SET(i8* %19, i8* %20, i32 %21, i32 %22)
  %24 = load i8*, i8** %7, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load i32, i32* @log_wq_stride, align 4
  %27 = load i32, i32* @MLX5_WQ_TYPE_CYCLIC, align 4
  %28 = call i32 @mlx5e_get_rqwq_log_stride(i32 %27, i32 1)
  %29 = call i32 @MLX5_SET(i8* %24, i8* %25, i32 %26, i32 %28)
  %30 = load i8*, i8** %6, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = load i32, i32* @counter_set_id, align 4
  %33 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %34 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @MLX5_SET(i8* %30, i8* %31, i32 %32, i32 %35)
  %37 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %38 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @dev_to_node(i32 %39)
  %41 = load %struct.mlx5e_rq_param*, %struct.mlx5e_rq_param** %4, align 8
  %42 = getelementptr inbounds %struct.mlx5e_rq_param, %struct.mlx5e_rq_param* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 8
  ret void
}

declare dso_local i8* @MLX5_ADDR_OF(i8*, i8*, i32) #1

declare dso_local i32 @MLX5_SET(i8*, i8*, i32, i32) #1

declare dso_local i32 @mlx5e_get_rqwq_log_stride(i32, i32) #1

declare dso_local i32 @dev_to_node(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
