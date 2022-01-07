; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_create_sq_rdy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_create_sq_rdy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.mlx5e_sq_param = type { i32 }
%struct.mlx5e_create_sq_param = type { i32 }
%struct.mlx5e_modify_sq_param = type { i32, i32, i32 }

@MLX5_SQC_STATE_RST = common dso_local global i32 0, align 4
@MLX5_SQC_STATE_RDY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*, %struct.mlx5e_sq_param*, %struct.mlx5e_create_sq_param*, i32*)* @mlx5e_create_sq_rdy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_create_sq_rdy(%struct.mlx5_core_dev* %0, %struct.mlx5e_sq_param* %1, %struct.mlx5e_create_sq_param* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_core_dev*, align 8
  %7 = alloca %struct.mlx5e_sq_param*, align 8
  %8 = alloca %struct.mlx5e_create_sq_param*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.mlx5e_modify_sq_param, align 4
  %11 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %6, align 8
  store %struct.mlx5e_sq_param* %1, %struct.mlx5e_sq_param** %7, align 8
  store %struct.mlx5e_create_sq_param* %2, %struct.mlx5e_create_sq_param** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = bitcast %struct.mlx5e_modify_sq_param* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 12, i1 false)
  %13 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %14 = load %struct.mlx5e_sq_param*, %struct.mlx5e_sq_param** %7, align 8
  %15 = load %struct.mlx5e_create_sq_param*, %struct.mlx5e_create_sq_param** %8, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = call i32 @mlx5e_create_sq(%struct.mlx5_core_dev* %13, %struct.mlx5e_sq_param* %14, %struct.mlx5e_create_sq_param* %15, i32* %16)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* %11, align 4
  store i32 %21, i32* %5, align 4
  br label %40

22:                                               ; preds = %4
  %23 = load i32, i32* @MLX5_SQC_STATE_RST, align 4
  %24 = getelementptr inbounds %struct.mlx5e_modify_sq_param, %struct.mlx5e_modify_sq_param* %10, i32 0, i32 1
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* @MLX5_SQC_STATE_RDY, align 4
  %26 = getelementptr inbounds %struct.mlx5e_modify_sq_param, %struct.mlx5e_modify_sq_param* %10, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @mlx5e_modify_sq(%struct.mlx5_core_dev* %27, i32 %29, %struct.mlx5e_modify_sq_param* %10)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %22
  %34 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @mlx5e_destroy_sq(%struct.mlx5_core_dev* %34, i32 %36)
  br label %38

38:                                               ; preds = %33, %22
  %39 = load i32, i32* %11, align 4
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %38, %20
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mlx5e_create_sq(%struct.mlx5_core_dev*, %struct.mlx5e_sq_param*, %struct.mlx5e_create_sq_param*, i32*) #2

declare dso_local i32 @mlx5e_modify_sq(%struct.mlx5_core_dev*, i32, %struct.mlx5e_modify_sq_param*) #2

declare dso_local i32 @mlx5e_destroy_sq(%struct.mlx5_core_dev*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
