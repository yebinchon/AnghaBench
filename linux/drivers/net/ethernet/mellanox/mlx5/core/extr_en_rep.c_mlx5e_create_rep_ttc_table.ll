; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rep.c_mlx5e_create_rep_ttc_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rep.c_mlx5e_create_rep_ttc_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i32, %struct.TYPE_6__, %struct.TYPE_5__*, %struct.TYPE_4__*, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ttc_params = type { i32*, i32 }

@MLX5_FLOW_NAMESPACE_KERNEL = common dso_local global i32 0, align 4
@MLX5E_NUM_INDIR_TIRS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Failed to create rep ttc table, err=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_priv*)* @mlx5e_create_rep_ttc_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_create_rep_ttc_table(%struct.mlx5e_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5e_priv*, align 8
  %4 = alloca %struct.ttc_params, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %3, align 8
  %7 = bitcast %struct.ttc_params* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 16, i1 false)
  %8 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %9 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @MLX5_FLOW_NAMESPACE_KERNEL, align 4
  %12 = call i32 @mlx5_get_flow_namespace(i32 %10, i32 %11)
  %13 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %14 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  store i32 %12, i32* %15, align 4
  %16 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %17 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %16, i32 0, i32 3
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.ttc_params, %struct.ttc_params* %4, i32 0, i32 1
  store i32 %21, i32* %22, align 8
  %23 = call i32 @mlx5e_set_ttc_ft_params(%struct.ttc_params* %4)
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %42, %1
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @MLX5E_NUM_INDIR_TIRS, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %45

28:                                               ; preds = %24
  %29 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %30 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %29, i32 0, i32 2
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.ttc_params, %struct.ttc_params* %4, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  store i32 %36, i32* %41, align 4
  br label %42

42:                                               ; preds = %28
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %5, align 4
  br label %24

45:                                               ; preds = %24
  %46 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %47 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %48 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = call i32 @mlx5e_create_ttc_table(%struct.mlx5e_priv* %46, %struct.ttc_params* %4, i32* %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %45
  %54 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %55 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @netdev_err(i32 %56, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %2, align 4
  br label %61

60:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %60, %53
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mlx5_get_flow_namespace(i32, i32) #2

declare dso_local i32 @mlx5e_set_ttc_ft_params(%struct.ttc_params*) #2

declare dso_local i32 @mlx5e_create_ttc_table(%struct.mlx5e_priv*, %struct.ttc_params*, i32*) #2

declare dso_local i32 @netdev_err(i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
