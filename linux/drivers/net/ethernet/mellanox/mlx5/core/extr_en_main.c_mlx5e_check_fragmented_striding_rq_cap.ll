; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_check_fragmented_striding_rq_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_check_fragmented_striding_rq_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }

@striding_rq = common dso_local global i32 0, align 4
@umr_ptr_rlky = common dso_local global i32 0, align 4
@reg_umr_sq = common dso_local global i32 0, align 4
@max_wqe_sz_sq = common dso_local global i32 0, align 4
@MLX5E_UMR_WQE_INLINE_SZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [79 x i8] c"Cannot support Striding RQ: UMR WQE size (%d) exceeds maximum supported (%d).\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5e_check_fragmented_striding_rq_cap(%struct.mlx5_core_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %3, align 8
  %7 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %8 = load i32, i32* @striding_rq, align 4
  %9 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %7, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %13 = load i32, i32* @umr_ptr_rlky, align 4
  %14 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %18 = load i32, i32* @reg_umr_sq, align 4
  %19 = call i64 @MLX5_CAP_ETH(%struct.mlx5_core_dev* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br label %21

21:                                               ; preds = %16, %11, %1
  %22 = phi i1 [ false, %11 ], [ false, %1 ], [ %20, %16 ]
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %4, align 4
  %24 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %25 = load i32, i32* @max_wqe_sz_sq, align 4
  %26 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %24, i32 %25)
  store i64 %26, i64* %5, align 8
  %27 = load i64, i64* @MLX5E_UMR_WQE_INLINE_SZ, align 8
  %28 = load i64, i64* %5, align 8
  %29 = icmp sle i64 %27, %28
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %44

34:                                               ; preds = %21
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %34
  %38 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %39 = load i64, i64* @MLX5E_UMR_WQE_INLINE_SZ, align 8
  %40 = trunc i64 %39 to i32
  %41 = load i64, i64* %5, align 8
  %42 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %38, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i32 %40, i64 %41)
  store i32 0, i32* %2, align 4
  br label %44

43:                                               ; preds = %34
  store i32 1, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %37, %33
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev*, i32) #1

declare dso_local i64 @MLX5_CAP_ETH(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
