; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_fs.c_mlx5e_create_ttc_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_fs.c_mlx5e_create_ttc_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.mlx5e_priv = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ttc_params = type { i32 }
%struct.mlx5e_ttc_table = type { %struct.mlx5e_flow_table }
%struct.mlx5e_flow_table = type { i32* }

@ft_field_support = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5e_create_ttc_table(%struct.mlx5e_priv* %0, %struct.ttc_params* %1, %struct.mlx5e_ttc_table* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5e_priv*, align 8
  %6 = alloca %struct.ttc_params*, align 8
  %7 = alloca %struct.mlx5e_ttc_table*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx5e_flow_table*, align 8
  %10 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %5, align 8
  store %struct.ttc_params* %1, %struct.ttc_params** %6, align 8
  store %struct.mlx5e_ttc_table* %2, %struct.mlx5e_ttc_table** %7, align 8
  %11 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %12 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ft_field_support, i32 0, i32 0), align 4
  %15 = call i32 @MLX5_CAP_FLOWTABLE_NIC_RX(i32 %13, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load %struct.mlx5e_ttc_table*, %struct.mlx5e_ttc_table** %7, align 8
  %17 = getelementptr inbounds %struct.mlx5e_ttc_table, %struct.mlx5e_ttc_table* %16, i32 0, i32 0
  store %struct.mlx5e_flow_table* %17, %struct.mlx5e_flow_table** %9, align 8
  %18 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %19 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ttc_params*, %struct.ttc_params** %6, align 8
  %23 = getelementptr inbounds %struct.ttc_params, %struct.ttc_params* %22, i32 0, i32 0
  %24 = call i32* @mlx5_create_flow_table(i32 %21, i32* %23)
  %25 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %9, align 8
  %26 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %25, i32 0, i32 0
  store i32* %24, i32** %26, align 8
  %27 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %9, align 8
  %28 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = call i64 @IS_ERR(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %3
  %33 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %9, align 8
  %34 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @PTR_ERR(i32* %35)
  store i32 %36, i32* %10, align 4
  %37 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %9, align 8
  %38 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %37, i32 0, i32 0
  store i32* null, i32** %38, align 8
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %4, align 4
  br label %60

40:                                               ; preds = %3
  %41 = load %struct.mlx5e_ttc_table*, %struct.mlx5e_ttc_table** %7, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @mlx5e_create_ttc_table_groups(%struct.mlx5e_ttc_table* %41, i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %56

47:                                               ; preds = %40
  %48 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %49 = load %struct.ttc_params*, %struct.ttc_params** %6, align 8
  %50 = load %struct.mlx5e_ttc_table*, %struct.mlx5e_ttc_table** %7, align 8
  %51 = call i32 @mlx5e_generate_ttc_table_rules(%struct.mlx5e_priv* %48, %struct.ttc_params* %49, %struct.mlx5e_ttc_table* %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %56

55:                                               ; preds = %47
  store i32 0, i32* %4, align 4
  br label %60

56:                                               ; preds = %54, %46
  %57 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %9, align 8
  %58 = call i32 @mlx5e_destroy_flow_table(%struct.mlx5e_flow_table* %57)
  %59 = load i32, i32* %10, align 4
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %56, %55, %32
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @MLX5_CAP_FLOWTABLE_NIC_RX(i32, i32) #1

declare dso_local i32* @mlx5_create_flow_table(i32, i32*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @mlx5e_create_ttc_table_groups(%struct.mlx5e_ttc_table*, i32) #1

declare dso_local i32 @mlx5e_generate_ttc_table_rules(%struct.mlx5e_priv*, %struct.ttc_params*, %struct.mlx5e_ttc_table*) #1

declare dso_local i32 @mlx5e_destroy_flow_table(%struct.mlx5e_flow_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
