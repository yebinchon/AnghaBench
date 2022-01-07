; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_build_rq_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_build_rq_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i32, %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.mlx5e_params = type { i32, i32, i32, i32 }
%struct.mlx5e_xsk_param = type { i32 }
%struct.mlx5e_rq_param = type { %struct.TYPE_5__, %struct.TYPE_6__, i8* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@log_wqe_num_of_strides = common dso_local global i32 0, align 4
@MLX5_MPWQE_LOG_NUM_STRIDES_BASE = common dso_local global i32 0, align 4
@log_wqe_stride_size = common dso_local global i32 0, align 4
@MLX5_MPWQE_LOG_STRIDE_SZ_BASE = common dso_local global i32 0, align 4
@log_wq_sz = common dso_local global i32 0, align 4
@wq_type = common dso_local global i32 0, align 4
@end_padding_mode = common dso_local global i32 0, align 4
@MLX5_WQ_END_PAD_MODE_ALIGN = common dso_local global i32 0, align 4
@log_wq_stride = common dso_local global i32 0, align 4
@pd = common dso_local global i32 0, align 4
@counter_set_id = common dso_local global i32 0, align 4
@vsd = common dso_local global i32 0, align 4
@scatter_fcs = common dso_local global i32 0, align 4
@wq = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5e_build_rq_param(%struct.mlx5e_priv* %0, %struct.mlx5e_params* %1, %struct.mlx5e_xsk_param* %2, %struct.mlx5e_rq_param* %3) #0 {
  %5 = alloca %struct.mlx5e_priv*, align 8
  %6 = alloca %struct.mlx5e_params*, align 8
  %7 = alloca %struct.mlx5e_xsk_param*, align 8
  %8 = alloca %struct.mlx5e_rq_param*, align 8
  %9 = alloca %struct.mlx5_core_dev*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %5, align 8
  store %struct.mlx5e_params* %1, %struct.mlx5e_params** %6, align 8
  store %struct.mlx5e_xsk_param* %2, %struct.mlx5e_xsk_param** %7, align 8
  store %struct.mlx5e_rq_param* %3, %struct.mlx5e_rq_param** %8, align 8
  %13 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %14 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %13, i32 0, i32 1
  %15 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %14, align 8
  store %struct.mlx5_core_dev* %15, %struct.mlx5_core_dev** %9, align 8
  %16 = load %struct.mlx5e_rq_param*, %struct.mlx5e_rq_param** %8, align 8
  %17 = getelementptr inbounds %struct.mlx5e_rq_param, %struct.mlx5e_rq_param* %16, i32 0, i32 2
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %10, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = load i8*, i8** %11, align 8
  %22 = ptrtoint i8* %21 to i32
  %23 = call i8* @MLX5_ADDR_OF(i8* %19, i8* %20, i32 %22)
  store i8* %23, i8** %11, align 8
  store i32 1, i32* %12, align 4
  %24 = load %struct.mlx5e_params*, %struct.mlx5e_params** %6, align 8
  %25 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %55 [
    i32 128, label %27
  ]

27:                                               ; preds = %4
  %28 = load i8*, i8** %11, align 8
  %29 = load i8*, i8** %11, align 8
  %30 = load i32, i32* @log_wqe_num_of_strides, align 4
  %31 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %9, align 8
  %32 = load %struct.mlx5e_params*, %struct.mlx5e_params** %6, align 8
  %33 = load %struct.mlx5e_xsk_param*, %struct.mlx5e_xsk_param** %7, align 8
  %34 = call i32 @mlx5e_mpwqe_get_log_num_strides(%struct.mlx5_core_dev* %31, %struct.mlx5e_params* %32, %struct.mlx5e_xsk_param* %33)
  %35 = load i32, i32* @MLX5_MPWQE_LOG_NUM_STRIDES_BASE, align 4
  %36 = sub nsw i32 %34, %35
  %37 = call i32 @MLX5_SET(i8* %28, i8* %29, i32 %30, i32 %36)
  %38 = load i8*, i8** %11, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = load i32, i32* @log_wqe_stride_size, align 4
  %41 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %9, align 8
  %42 = load %struct.mlx5e_params*, %struct.mlx5e_params** %6, align 8
  %43 = load %struct.mlx5e_xsk_param*, %struct.mlx5e_xsk_param** %7, align 8
  %44 = call i32 @mlx5e_mpwqe_get_log_stride_size(%struct.mlx5_core_dev* %41, %struct.mlx5e_params* %42, %struct.mlx5e_xsk_param* %43)
  %45 = load i32, i32* @MLX5_MPWQE_LOG_STRIDE_SZ_BASE, align 4
  %46 = sub nsw i32 %44, %45
  %47 = call i32 @MLX5_SET(i8* %38, i8* %39, i32 %40, i32 %46)
  %48 = load i8*, i8** %11, align 8
  %49 = load i8*, i8** %11, align 8
  %50 = load i32, i32* @log_wq_sz, align 4
  %51 = load %struct.mlx5e_params*, %struct.mlx5e_params** %6, align 8
  %52 = load %struct.mlx5e_xsk_param*, %struct.mlx5e_xsk_param** %7, align 8
  %53 = call i32 @mlx5e_mpwqe_get_log_rq_size(%struct.mlx5e_params* %51, %struct.mlx5e_xsk_param* %52)
  %54 = call i32 @MLX5_SET(i8* %48, i8* %49, i32 %50, i32 %53)
  br label %73

55:                                               ; preds = %4
  %56 = load i8*, i8** %11, align 8
  %57 = load i8*, i8** %11, align 8
  %58 = load i32, i32* @log_wq_sz, align 4
  %59 = load %struct.mlx5e_params*, %struct.mlx5e_params** %6, align 8
  %60 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @MLX5_SET(i8* %56, i8* %57, i32 %58, i32 %61)
  %63 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %9, align 8
  %64 = load %struct.mlx5e_params*, %struct.mlx5e_params** %6, align 8
  %65 = load %struct.mlx5e_xsk_param*, %struct.mlx5e_xsk_param** %7, align 8
  %66 = load %struct.mlx5e_rq_param*, %struct.mlx5e_rq_param** %8, align 8
  %67 = getelementptr inbounds %struct.mlx5e_rq_param, %struct.mlx5e_rq_param* %66, i32 0, i32 1
  %68 = call i32 @mlx5e_build_rq_frags_info(%struct.mlx5_core_dev* %63, %struct.mlx5e_params* %64, %struct.mlx5e_xsk_param* %65, %struct.TYPE_6__* %67)
  %69 = load %struct.mlx5e_rq_param*, %struct.mlx5e_rq_param** %8, align 8
  %70 = getelementptr inbounds %struct.mlx5e_rq_param, %struct.mlx5e_rq_param* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %12, align 4
  br label %73

73:                                               ; preds = %55, %27
  %74 = load i8*, i8** %11, align 8
  %75 = load i8*, i8** %11, align 8
  %76 = load i32, i32* @wq_type, align 4
  %77 = load %struct.mlx5e_params*, %struct.mlx5e_params** %6, align 8
  %78 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @MLX5_SET(i8* %74, i8* %75, i32 %76, i32 %79)
  %81 = load i8*, i8** %11, align 8
  %82 = load i8*, i8** %11, align 8
  %83 = load i32, i32* @end_padding_mode, align 4
  %84 = load i32, i32* @MLX5_WQ_END_PAD_MODE_ALIGN, align 4
  %85 = call i32 @MLX5_SET(i8* %81, i8* %82, i32 %83, i32 %84)
  %86 = load i8*, i8** %11, align 8
  %87 = load i8*, i8** %11, align 8
  %88 = load i32, i32* @log_wq_stride, align 4
  %89 = load %struct.mlx5e_params*, %struct.mlx5e_params** %6, align 8
  %90 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %12, align 4
  %93 = call i32 @mlx5e_get_rqwq_log_stride(i32 %91, i32 %92)
  %94 = call i32 @MLX5_SET(i8* %86, i8* %87, i32 %88, i32 %93)
  %95 = load i8*, i8** %11, align 8
  %96 = load i8*, i8** %11, align 8
  %97 = load i32, i32* @pd, align 4
  %98 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %9, align 8
  %99 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @MLX5_SET(i8* %95, i8* %96, i32 %97, i32 %101)
  %103 = load i8*, i8** %10, align 8
  %104 = load i8*, i8** %10, align 8
  %105 = load i32, i32* @counter_set_id, align 4
  %106 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %107 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @MLX5_SET(i8* %103, i8* %104, i32 %105, i32 %108)
  %110 = load i8*, i8** %10, align 8
  %111 = load i8*, i8** %10, align 8
  %112 = load i32, i32* @vsd, align 4
  %113 = load %struct.mlx5e_params*, %struct.mlx5e_params** %6, align 8
  %114 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @MLX5_SET(i8* %110, i8* %111, i32 %112, i32 %115)
  %117 = load i8*, i8** %10, align 8
  %118 = load i8*, i8** %10, align 8
  %119 = load i32, i32* @scatter_fcs, align 4
  %120 = load %struct.mlx5e_params*, %struct.mlx5e_params** %6, align 8
  %121 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @MLX5_SET(i8* %117, i8* %118, i32 %119, i32 %122)
  %124 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %9, align 8
  %125 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @dev_to_node(i32 %126)
  %128 = load %struct.mlx5e_rq_param*, %struct.mlx5e_rq_param** %8, align 8
  %129 = getelementptr inbounds %struct.mlx5e_rq_param, %struct.mlx5e_rq_param* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  store i32 %127, i32* %130, align 8
  ret void
}

declare dso_local i8* @MLX5_ADDR_OF(i8*, i8*, i32) #1

declare dso_local i32 @MLX5_SET(i8*, i8*, i32, i32) #1

declare dso_local i32 @mlx5e_mpwqe_get_log_num_strides(%struct.mlx5_core_dev*, %struct.mlx5e_params*, %struct.mlx5e_xsk_param*) #1

declare dso_local i32 @mlx5e_mpwqe_get_log_stride_size(%struct.mlx5_core_dev*, %struct.mlx5e_params*, %struct.mlx5e_xsk_param*) #1

declare dso_local i32 @mlx5e_mpwqe_get_log_rq_size(%struct.mlx5e_params*, %struct.mlx5e_xsk_param*) #1

declare dso_local i32 @mlx5e_build_rq_frags_info(%struct.mlx5_core_dev*, %struct.mlx5e_params*, %struct.mlx5e_xsk_param*, %struct.TYPE_6__*) #1

declare dso_local i32 @mlx5e_get_rqwq_log_stride(i32, i32) #1

declare dso_local i32 @dev_to_node(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
