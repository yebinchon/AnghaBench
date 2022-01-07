; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch_offloads.c_esw_create_offloads_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch_offloads.c_esw_create_offloads_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_eswitch = type { %struct.TYPE_2__, %struct.mlx5_core_dev* }
%struct.TYPE_2__ = type { %struct.mlx5_flow_table* }
%struct.mlx5_flow_table = type { i32 }
%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_flow_table_attr = type { i64 }
%struct.mlx5_flow_namespace = type { i32 }

@MLX5_FLOW_NAMESPACE_OFFLOADS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Failed to get offloads flow namespace\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@MLX5_ESW_MISS_FLOWS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"Failed to create offloads table, err %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_eswitch*, i32)* @esw_create_offloads_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esw_create_offloads_table(%struct.mlx5_eswitch* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_eswitch*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_flow_table_attr, align 8
  %7 = alloca %struct.mlx5_core_dev*, align 8
  %8 = alloca %struct.mlx5_flow_table*, align 8
  %9 = alloca %struct.mlx5_flow_namespace*, align 8
  %10 = alloca i32, align 4
  store %struct.mlx5_eswitch* %0, %struct.mlx5_eswitch** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = bitcast %struct.mlx5_flow_table_attr* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 8, i1 false)
  %12 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %13 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %12, i32 0, i32 1
  %14 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %13, align 8
  store %struct.mlx5_core_dev* %14, %struct.mlx5_core_dev** %7, align 8
  store i32 0, i32* %10, align 4
  %15 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %16 = load i32, i32* @MLX5_FLOW_NAMESPACE_OFFLOADS, align 4
  %17 = call %struct.mlx5_flow_namespace* @mlx5_get_flow_namespace(%struct.mlx5_core_dev* %15, i32 %16)
  store %struct.mlx5_flow_namespace* %17, %struct.mlx5_flow_namespace** %9, align 8
  %18 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %9, align 8
  %19 = icmp ne %struct.mlx5_flow_namespace* %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %2
  %21 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %22 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %21, i32 0, i32 1
  %23 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %22, align 8
  %24 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @esw_warn(%struct.mlx5_core_dev* %23, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EOPNOTSUPP, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %52

27:                                               ; preds = %2
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* @MLX5_ESW_MISS_FLOWS, align 8
  %31 = add nsw i64 %29, %30
  %32 = getelementptr inbounds %struct.mlx5_flow_table_attr, %struct.mlx5_flow_table_attr* %6, i32 0, i32 0
  store i64 %31, i64* %32, align 8
  %33 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %9, align 8
  %34 = call %struct.mlx5_flow_table* @mlx5_create_flow_table(%struct.mlx5_flow_namespace* %33, %struct.mlx5_flow_table_attr* %6)
  store %struct.mlx5_flow_table* %34, %struct.mlx5_flow_table** %8, align 8
  %35 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %8, align 8
  %36 = call i64 @IS_ERR(%struct.mlx5_flow_table* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %27
  %39 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %8, align 8
  %40 = call i32 @PTR_ERR(%struct.mlx5_flow_table* %39)
  store i32 %40, i32* %10, align 4
  %41 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %42 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %41, i32 0, i32 1
  %43 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %42, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @esw_warn(%struct.mlx5_core_dev* %43, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* %3, align 4
  br label %52

47:                                               ; preds = %27
  %48 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %8, align 8
  %49 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %50 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store %struct.mlx5_flow_table* %48, %struct.mlx5_flow_table** %51, align 8
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %47, %38, %20
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.mlx5_flow_namespace* @mlx5_get_flow_namespace(%struct.mlx5_core_dev*, i32) #2

declare dso_local i32 @esw_warn(%struct.mlx5_core_dev*, i8*, ...) #2

declare dso_local %struct.mlx5_flow_table* @mlx5_create_flow_table(%struct.mlx5_flow_namespace*, %struct.mlx5_flow_table_attr*) #2

declare dso_local i64 @IS_ERR(%struct.mlx5_flow_table*) #2

declare dso_local i32 @PTR_ERR(%struct.mlx5_flow_table*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
