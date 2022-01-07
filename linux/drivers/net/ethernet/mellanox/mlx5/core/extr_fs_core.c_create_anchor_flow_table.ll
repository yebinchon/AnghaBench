; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_create_anchor_flow_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_create_anchor_flow_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_flow_steering = type { i32 }
%struct.mlx5_flow_namespace = type { i32 }
%struct.mlx5_flow_table_attr = type { i32, i32, i32 }
%struct.mlx5_flow_table = type { i32 }

@MLX5_FLOW_NAMESPACE_ANCHOR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ANCHOR_SIZE = common dso_local global i32 0, align 4
@ANCHOR_LEVEL = common dso_local global i32 0, align 4
@ANCHOR_PRIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Failed to create last anchor flow table\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_flow_steering*)* @create_anchor_flow_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_anchor_flow_table(%struct.mlx5_flow_steering* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5_flow_steering*, align 8
  %4 = alloca %struct.mlx5_flow_namespace*, align 8
  %5 = alloca %struct.mlx5_flow_table_attr, align 4
  %6 = alloca %struct.mlx5_flow_table*, align 8
  store %struct.mlx5_flow_steering* %0, %struct.mlx5_flow_steering** %3, align 8
  store %struct.mlx5_flow_namespace* null, %struct.mlx5_flow_namespace** %4, align 8
  %7 = bitcast %struct.mlx5_flow_table_attr* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %7, i8 0, i64 12, i1 false)
  %8 = load %struct.mlx5_flow_steering*, %struct.mlx5_flow_steering** %3, align 8
  %9 = getelementptr inbounds %struct.mlx5_flow_steering, %struct.mlx5_flow_steering* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @MLX5_FLOW_NAMESPACE_ANCHOR, align 4
  %12 = call %struct.mlx5_flow_namespace* @mlx5_get_flow_namespace(i32 %10, i32 %11)
  store %struct.mlx5_flow_namespace* %12, %struct.mlx5_flow_namespace** %4, align 8
  %13 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %4, align 8
  %14 = icmp ne %struct.mlx5_flow_namespace* %13, null
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i64 @WARN_ON(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %42

22:                                               ; preds = %1
  %23 = load i32, i32* @ANCHOR_SIZE, align 4
  %24 = getelementptr inbounds %struct.mlx5_flow_table_attr, %struct.mlx5_flow_table_attr* %5, i32 0, i32 2
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* @ANCHOR_LEVEL, align 4
  %26 = getelementptr inbounds %struct.mlx5_flow_table_attr, %struct.mlx5_flow_table_attr* %5, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* @ANCHOR_PRIO, align 4
  %28 = getelementptr inbounds %struct.mlx5_flow_table_attr, %struct.mlx5_flow_table_attr* %5, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %4, align 8
  %30 = call %struct.mlx5_flow_table* @mlx5_create_flow_table(%struct.mlx5_flow_namespace* %29, %struct.mlx5_flow_table_attr* %5)
  store %struct.mlx5_flow_table* %30, %struct.mlx5_flow_table** %6, align 8
  %31 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %6, align 8
  %32 = call i64 @IS_ERR(%struct.mlx5_flow_table* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %22
  %35 = load %struct.mlx5_flow_steering*, %struct.mlx5_flow_steering** %3, align 8
  %36 = getelementptr inbounds %struct.mlx5_flow_steering, %struct.mlx5_flow_steering* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @mlx5_core_err(i32 %37, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %39 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %6, align 8
  %40 = call i32 @PTR_ERR(%struct.mlx5_flow_table* %39)
  store i32 %40, i32* %2, align 4
  br label %42

41:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %34, %19
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.mlx5_flow_namespace* @mlx5_get_flow_namespace(i32, i32) #2

declare dso_local i64 @WARN_ON(i32) #2

declare dso_local %struct.mlx5_flow_table* @mlx5_create_flow_table(%struct.mlx5_flow_namespace*, %struct.mlx5_flow_table_attr*) #2

declare dso_local i64 @IS_ERR(%struct.mlx5_flow_table*) #2

declare dso_local i32 @mlx5_core_err(i32, i8*) #2

declare dso_local i32 @PTR_ERR(%struct.mlx5_flow_table*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
