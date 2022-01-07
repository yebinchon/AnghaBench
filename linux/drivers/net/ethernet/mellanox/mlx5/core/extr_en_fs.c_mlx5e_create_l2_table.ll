; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_fs.c_mlx5e_create_l2_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_fs.c_mlx5e_create_l2_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.mlx5e_l2_table }
%struct.mlx5e_l2_table = type { %struct.mlx5e_flow_table }
%struct.mlx5e_flow_table = type { i32*, i64 }
%struct.mlx5_flow_table_attr = type { i32, i32, i32 }

@MLX5E_L2_TABLE_SIZE = common dso_local global i32 0, align 4
@MLX5E_L2_FT_LEVEL = common dso_local global i32 0, align 4
@MLX5E_NIC_PRIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_priv*)* @mlx5e_create_l2_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_create_l2_table(%struct.mlx5e_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5e_priv*, align 8
  %4 = alloca %struct.mlx5e_l2_table*, align 8
  %5 = alloca %struct.mlx5e_flow_table*, align 8
  %6 = alloca %struct.mlx5_flow_table_attr, align 4
  %7 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %3, align 8
  %8 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %9 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  store %struct.mlx5e_l2_table* %10, %struct.mlx5e_l2_table** %4, align 8
  %11 = load %struct.mlx5e_l2_table*, %struct.mlx5e_l2_table** %4, align 8
  %12 = getelementptr inbounds %struct.mlx5e_l2_table, %struct.mlx5e_l2_table* %11, i32 0, i32 0
  store %struct.mlx5e_flow_table* %12, %struct.mlx5e_flow_table** %5, align 8
  %13 = bitcast %struct.mlx5_flow_table_attr* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 12, i1 false)
  %14 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %15 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %14, i32 0, i32 1
  store i64 0, i64* %15, align 8
  %16 = load i32, i32* @MLX5E_L2_TABLE_SIZE, align 4
  %17 = getelementptr inbounds %struct.mlx5_flow_table_attr, %struct.mlx5_flow_table_attr* %6, i32 0, i32 2
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @MLX5E_L2_FT_LEVEL, align 4
  %19 = getelementptr inbounds %struct.mlx5_flow_table_attr, %struct.mlx5_flow_table_attr* %6, i32 0, i32 1
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* @MLX5E_NIC_PRIO, align 4
  %21 = getelementptr inbounds %struct.mlx5_flow_table_attr, %struct.mlx5_flow_table_attr* %6, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %23 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32* @mlx5_create_flow_table(i32 %25, %struct.mlx5_flow_table_attr* %6)
  %27 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %28 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %27, i32 0, i32 0
  store i32* %26, i32** %28, align 8
  %29 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %30 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = call i64 @IS_ERR(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %1
  %35 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %36 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @PTR_ERR(i32* %37)
  store i32 %38, i32* %7, align 4
  %39 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %40 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %39, i32 0, i32 0
  store i32* null, i32** %40, align 8
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %2, align 4
  br label %57

42:                                               ; preds = %1
  %43 = load %struct.mlx5e_l2_table*, %struct.mlx5e_l2_table** %4, align 8
  %44 = call i32 @mlx5e_create_l2_table_groups(%struct.mlx5e_l2_table* %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %49

48:                                               ; preds = %42
  store i32 0, i32* %2, align 4
  br label %57

49:                                               ; preds = %47
  %50 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %51 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @mlx5_destroy_flow_table(i32* %52)
  %54 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %55 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %54, i32 0, i32 0
  store i32* null, i32** %55, align 8
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %49, %48, %34
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @mlx5_create_flow_table(i32, %struct.mlx5_flow_table_attr*) #2

declare dso_local i64 @IS_ERR(i32*) #2

declare dso_local i32 @PTR_ERR(i32*) #2

declare dso_local i32 @mlx5e_create_l2_table_groups(%struct.mlx5e_l2_table*) #2

declare dso_local i32 @mlx5_destroy_flow_table(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
