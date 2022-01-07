; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_fs.c_mlx5e_create_inner_ttc_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_fs.c_mlx5e_create_inner_ttc_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ttc_params = type { i32 }
%struct.mlx5e_ttc_table = type { %struct.mlx5e_flow_table }
%struct.mlx5e_flow_table = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5e_create_inner_ttc_table(%struct.mlx5e_priv* %0, %struct.ttc_params* %1, %struct.mlx5e_ttc_table* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5e_priv*, align 8
  %6 = alloca %struct.ttc_params*, align 8
  %7 = alloca %struct.mlx5e_ttc_table*, align 8
  %8 = alloca %struct.mlx5e_flow_table*, align 8
  %9 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %5, align 8
  store %struct.ttc_params* %1, %struct.ttc_params** %6, align 8
  store %struct.mlx5e_ttc_table* %2, %struct.mlx5e_ttc_table** %7, align 8
  %10 = load %struct.mlx5e_ttc_table*, %struct.mlx5e_ttc_table** %7, align 8
  %11 = getelementptr inbounds %struct.mlx5e_ttc_table, %struct.mlx5e_ttc_table* %10, i32 0, i32 0
  store %struct.mlx5e_flow_table* %11, %struct.mlx5e_flow_table** %8, align 8
  %12 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %13 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @mlx5e_tunnel_inner_ft_supported(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %60

18:                                               ; preds = %3
  %19 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %20 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ttc_params*, %struct.ttc_params** %6, align 8
  %24 = getelementptr inbounds %struct.ttc_params, %struct.ttc_params* %23, i32 0, i32 0
  %25 = call i32* @mlx5_create_flow_table(i32 %22, i32* %24)
  %26 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %8, align 8
  %27 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %26, i32 0, i32 0
  store i32* %25, i32** %27, align 8
  %28 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %8, align 8
  %29 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = call i64 @IS_ERR(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %18
  %34 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %8, align 8
  %35 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @PTR_ERR(i32* %36)
  store i32 %37, i32* %9, align 4
  %38 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %8, align 8
  %39 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %38, i32 0, i32 0
  store i32* null, i32** %39, align 8
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %4, align 4
  br label %60

41:                                               ; preds = %18
  %42 = load %struct.mlx5e_ttc_table*, %struct.mlx5e_ttc_table** %7, align 8
  %43 = call i32 @mlx5e_create_inner_ttc_table_groups(%struct.mlx5e_ttc_table* %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %56

47:                                               ; preds = %41
  %48 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %49 = load %struct.ttc_params*, %struct.ttc_params** %6, align 8
  %50 = load %struct.mlx5e_ttc_table*, %struct.mlx5e_ttc_table** %7, align 8
  %51 = call i32 @mlx5e_generate_inner_ttc_table_rules(%struct.mlx5e_priv* %48, %struct.ttc_params* %49, %struct.mlx5e_ttc_table* %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %56

55:                                               ; preds = %47
  store i32 0, i32* %4, align 4
  br label %60

56:                                               ; preds = %54, %46
  %57 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %8, align 8
  %58 = call i32 @mlx5e_destroy_flow_table(%struct.mlx5e_flow_table* %57)
  %59 = load i32, i32* %9, align 4
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %56, %55, %33, %17
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @mlx5e_tunnel_inner_ft_supported(i32) #1

declare dso_local i32* @mlx5_create_flow_table(i32, i32*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @mlx5e_create_inner_ttc_table_groups(%struct.mlx5e_ttc_table*) #1

declare dso_local i32 @mlx5e_generate_inner_ttc_table_rules(%struct.mlx5e_priv*, %struct.ttc_params*, %struct.mlx5e_ttc_table*) #1

declare dso_local i32 @mlx5e_destroy_flow_table(%struct.mlx5e_flow_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
