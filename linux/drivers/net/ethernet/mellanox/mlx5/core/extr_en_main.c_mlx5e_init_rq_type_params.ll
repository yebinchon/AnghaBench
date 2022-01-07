; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_init_rq_type_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_init_rq_type_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.mlx5e_params = type { i64, i32 }

@MLX5E_PARAMS_MINIMUM_LOG_RQ_SIZE = common dso_local global i32 0, align 4
@MLX5E_PARAMS_DEFAULT_LOG_RQ_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"MLX5E: StrdRq(%d) RqSz(%ld) StrdSz(%ld) RxCqeCmprss(%d)\0A\00", align 1
@MLX5_WQ_TYPE_LINKED_LIST_STRIDING_RQ = common dso_local global i64 0, align 8
@MLX5E_PFLAG_RX_CQE_COMPRESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5e_init_rq_type_params(%struct.mlx5_core_dev* %0, %struct.mlx5e_params* %1) #0 {
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca %struct.mlx5e_params*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %3, align 8
  store %struct.mlx5e_params* %1, %struct.mlx5e_params** %4, align 8
  %5 = call i64 (...) @is_kdump_kernel()
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = load i32, i32* @MLX5E_PARAMS_MINIMUM_LOG_RQ_SIZE, align 4
  br label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @MLX5E_PARAMS_DEFAULT_LOG_RQ_SIZE, align 4
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi i32 [ %8, %7 ], [ %10, %9 ]
  %13 = load %struct.mlx5e_params*, %struct.mlx5e_params** %4, align 8
  %14 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 8
  %15 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %16 = load %struct.mlx5e_params*, %struct.mlx5e_params** %4, align 8
  %17 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @MLX5_WQ_TYPE_LINKED_LIST_STRIDING_RQ, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = load %struct.mlx5e_params*, %struct.mlx5e_params** %4, align 8
  %23 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @MLX5_WQ_TYPE_LINKED_LIST_STRIDING_RQ, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %11
  %28 = load %struct.mlx5e_params*, %struct.mlx5e_params** %4, align 8
  %29 = call i32 @mlx5e_mpwqe_get_log_rq_size(%struct.mlx5e_params* %28, i32* null)
  %30 = call i32 @BIT(i32 %29)
  br label %36

31:                                               ; preds = %11
  %32 = load %struct.mlx5e_params*, %struct.mlx5e_params** %4, align 8
  %33 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @BIT(i32 %34)
  br label %36

36:                                               ; preds = %31, %27
  %37 = phi i32 [ %30, %27 ], [ %35, %31 ]
  %38 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %39 = load %struct.mlx5e_params*, %struct.mlx5e_params** %4, align 8
  %40 = call i32 @mlx5e_mpwqe_get_log_stride_size(%struct.mlx5_core_dev* %38, %struct.mlx5e_params* %39, i32* null)
  %41 = call i32 @BIT(i32 %40)
  %42 = load %struct.mlx5e_params*, %struct.mlx5e_params** %4, align 8
  %43 = load i32, i32* @MLX5E_PFLAG_RX_CQE_COMPRESS, align 4
  %44 = call i32 @MLX5E_GET_PFLAG(%struct.mlx5e_params* %42, i32 %43)
  %45 = call i32 @mlx5_core_info(%struct.mlx5_core_dev* %15, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %37, i32 %41, i32 %44)
  ret void
}

declare dso_local i64 @is_kdump_kernel(...) #1

declare dso_local i32 @mlx5_core_info(%struct.mlx5_core_dev*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @mlx5e_mpwqe_get_log_rq_size(%struct.mlx5e_params*, i32*) #1

declare dso_local i32 @mlx5e_mpwqe_get_log_stride_size(%struct.mlx5_core_dev*, %struct.mlx5e_params*, i32*) #1

declare dso_local i32 @MLX5E_GET_PFLAG(%struct.mlx5e_params*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
