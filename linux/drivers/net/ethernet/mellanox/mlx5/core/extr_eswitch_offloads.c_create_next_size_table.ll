; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch_offloads.c_create_next_size_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch_offloads.c_create_next_size_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_flow_table = type { i32 }
%struct.mlx5_eswitch = type { i32 }
%struct.mlx5_flow_namespace = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4
@ESW_OFFLOADS_NUM_GROUPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"Failed to create FDB Table err %d (table prio: %d, level: %d, size: %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx5_flow_table* (%struct.mlx5_eswitch*, %struct.mlx5_flow_namespace*, i32, i32, i32)* @create_next_size_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx5_flow_table* @create_next_size_table(%struct.mlx5_eswitch* %0, %struct.mlx5_flow_namespace* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.mlx5_flow_table*, align 8
  %7 = alloca %struct.mlx5_eswitch*, align 8
  %8 = alloca %struct.mlx5_flow_namespace*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mlx5_flow_table*, align 8
  %13 = alloca i32, align 4
  store %struct.mlx5_eswitch* %0, %struct.mlx5_eswitch** %7, align 8
  store %struct.mlx5_flow_namespace* %1, %struct.mlx5_flow_namespace** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %7, align 8
  %15 = call i32 @get_sz_from_pool(%struct.mlx5_eswitch* %14)
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* %13, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %5
  %19 = load i32, i32* @ENOSPC, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.mlx5_flow_table* @ERR_PTR(i32 %20)
  store %struct.mlx5_flow_table* %21, %struct.mlx5_flow_table** %6, align 8
  br label %49

22:                                               ; preds = %5
  %23 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %8, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %13, align 4
  %26 = load i32, i32* @ESW_OFFLOADS_NUM_GROUPS, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %11, align 4
  %29 = call %struct.mlx5_flow_table* @mlx5_create_auto_grouped_flow_table(%struct.mlx5_flow_namespace* %23, i32 %24, i32 %25, i32 %26, i32 %27, i32 %28)
  store %struct.mlx5_flow_table* %29, %struct.mlx5_flow_table** %12, align 8
  %30 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %12, align 8
  %31 = call i64 @IS_ERR(%struct.mlx5_flow_table* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %22
  %34 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %7, align 8
  %35 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %12, align 8
  %38 = call i64 @PTR_ERR(%struct.mlx5_flow_table* %37)
  %39 = trunc i64 %38 to i32
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %13, align 4
  %43 = call i32 @esw_warn(i32 %36, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %40, i32 %41, i32 %42)
  %44 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %7, align 8
  %45 = load i32, i32* %13, align 4
  %46 = call i32 @put_sz_to_pool(%struct.mlx5_eswitch* %44, i32 %45)
  br label %47

47:                                               ; preds = %33, %22
  %48 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %12, align 8
  store %struct.mlx5_flow_table* %48, %struct.mlx5_flow_table** %6, align 8
  br label %49

49:                                               ; preds = %47, %18
  %50 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %6, align 8
  ret %struct.mlx5_flow_table* %50
}

declare dso_local i32 @get_sz_from_pool(%struct.mlx5_eswitch*) #1

declare dso_local %struct.mlx5_flow_table* @ERR_PTR(i32) #1

declare dso_local %struct.mlx5_flow_table* @mlx5_create_auto_grouped_flow_table(%struct.mlx5_flow_namespace*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.mlx5_flow_table*) #1

declare dso_local i32 @esw_warn(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i64 @PTR_ERR(%struct.mlx5_flow_table*) #1

declare dso_local i32 @put_sz_to_pool(%struct.mlx5_eswitch*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
