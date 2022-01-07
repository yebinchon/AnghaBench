; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_arfs.c_arfs_create_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_arfs.c_arfs_create_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.mlx5e_arfs_tables }
%struct.mlx5e_arfs_tables = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.mlx5e_flow_table }
%struct.mlx5e_flow_table = type { i32*, i64 }
%struct.mlx5_flow_table_attr = type { i32, i32, i32 }

@MLX5E_ARFS_TABLE_SIZE = common dso_local global i32 0, align 4
@MLX5E_ARFS_FT_LEVEL = common dso_local global i32 0, align 4
@MLX5E_NIC_PRIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_priv*, i32)* @arfs_create_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arfs_create_table(%struct.mlx5e_priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5e_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5e_arfs_tables*, align 8
  %7 = alloca %struct.mlx5e_flow_table*, align 8
  %8 = alloca %struct.mlx5_flow_table_attr, align 4
  %9 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %11 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  store %struct.mlx5e_arfs_tables* %12, %struct.mlx5e_arfs_tables** %6, align 8
  %13 = load %struct.mlx5e_arfs_tables*, %struct.mlx5e_arfs_tables** %6, align 8
  %14 = getelementptr inbounds %struct.mlx5e_arfs_tables, %struct.mlx5e_arfs_tables* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store %struct.mlx5e_flow_table* %19, %struct.mlx5e_flow_table** %7, align 8
  %20 = bitcast %struct.mlx5_flow_table_attr* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %20, i8 0, i64 12, i1 false)
  %21 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %7, align 8
  %22 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %21, i32 0, i32 1
  store i64 0, i64* %22, align 8
  %23 = load i32, i32* @MLX5E_ARFS_TABLE_SIZE, align 4
  %24 = getelementptr inbounds %struct.mlx5_flow_table_attr, %struct.mlx5_flow_table_attr* %8, i32 0, i32 2
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* @MLX5E_ARFS_FT_LEVEL, align 4
  %26 = getelementptr inbounds %struct.mlx5_flow_table_attr, %struct.mlx5_flow_table_attr* %8, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* @MLX5E_NIC_PRIO, align 4
  %28 = getelementptr inbounds %struct.mlx5_flow_table_attr, %struct.mlx5_flow_table_attr* %8, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %30 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32* @mlx5_create_flow_table(i32 %32, %struct.mlx5_flow_table_attr* %8)
  %34 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %7, align 8
  %35 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %34, i32 0, i32 0
  store i32* %33, i32** %35, align 8
  %36 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %7, align 8
  %37 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = call i64 @IS_ERR(i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %2
  %42 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %7, align 8
  %43 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @PTR_ERR(i32* %44)
  store i32 %45, i32* %9, align 4
  %46 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %7, align 8
  %47 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %46, i32 0, i32 0
  store i32* null, i32** %47, align 8
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %3, align 4
  br label %68

49:                                               ; preds = %2
  %50 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %7, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @arfs_create_groups(%struct.mlx5e_flow_table* %50, i32 %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %64

56:                                               ; preds = %49
  %57 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @arfs_add_default_rule(%struct.mlx5e_priv* %57, i32 %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %64

63:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %68

64:                                               ; preds = %62, %55
  %65 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %7, align 8
  %66 = call i32 @mlx5e_destroy_flow_table(%struct.mlx5e_flow_table* %65)
  %67 = load i32, i32* %9, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %64, %63, %41
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @mlx5_create_flow_table(i32, %struct.mlx5_flow_table_attr*) #2

declare dso_local i64 @IS_ERR(i32*) #2

declare dso_local i32 @PTR_ERR(i32*) #2

declare dso_local i32 @arfs_create_groups(%struct.mlx5e_flow_table*, i32) #2

declare dso_local i32 @arfs_add_default_rule(%struct.mlx5e_priv*, i32) #2

declare dso_local i32 @mlx5e_destroy_flow_table(%struct.mlx5e_flow_table*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
