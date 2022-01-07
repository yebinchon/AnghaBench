; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c__mlx5_modify_rule_destination.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c__mlx5_modify_rule_destination.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_flow_rule = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.mlx5_flow_destination = type { i32 }
%struct.mlx5_flow_root_namespace = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*, %struct.mlx5_flow_table*, i32, %struct.mlx5_flow_table*)* }
%struct.mlx5_flow_table = type { %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.mlx5_flow_group = type { %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.fs_fte = type { %struct.TYPE_10__, %struct.TYPE_8__ }

@MLX5_SET_FTE_MODIFY_ENABLE_MASK_DESTINATION_LIST = common dso_local global i32 0, align 4
@MLX5_FLOW_CONTEXT_ACTION_FWD_DEST = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_flow_rule*, %struct.mlx5_flow_destination*)* @_mlx5_modify_rule_destination to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_mlx5_modify_rule_destination(%struct.mlx5_flow_rule* %0, %struct.mlx5_flow_destination* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_flow_rule*, align 8
  %5 = alloca %struct.mlx5_flow_destination*, align 8
  %6 = alloca %struct.mlx5_flow_root_namespace*, align 8
  %7 = alloca %struct.mlx5_flow_table*, align 8
  %8 = alloca %struct.mlx5_flow_group*, align 8
  %9 = alloca %struct.fs_fte*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mlx5_flow_rule* %0, %struct.mlx5_flow_rule** %4, align 8
  store %struct.mlx5_flow_destination* %1, %struct.mlx5_flow_destination** %5, align 8
  %12 = load i32, i32* @MLX5_SET_FTE_MODIFY_ENABLE_MASK_DESTINATION_LIST, align 4
  %13 = call i32 @BIT(i32 %12)
  store i32 %13, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %14 = load %struct.fs_fte*, %struct.fs_fte** %9, align 8
  %15 = bitcast %struct.fs_fte* %14 to %struct.mlx5_flow_table*
  %16 = load %struct.mlx5_flow_rule*, %struct.mlx5_flow_rule** %4, align 8
  %17 = getelementptr inbounds %struct.mlx5_flow_rule, %struct.mlx5_flow_rule* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @fs_get_obj(%struct.mlx5_flow_table* %15, i32 %19)
  %21 = load %struct.fs_fte*, %struct.fs_fte** %9, align 8
  %22 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_FWD_DEST, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %72

31:                                               ; preds = %2
  %32 = load %struct.fs_fte*, %struct.fs_fte** %9, align 8
  %33 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %32, i32 0, i32 0
  %34 = call i32 @down_write_ref_node(%struct.TYPE_10__* %33, i32 0)
  %35 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %8, align 8
  %36 = bitcast %struct.mlx5_flow_group* %35 to %struct.mlx5_flow_table*
  %37 = load %struct.fs_fte*, %struct.fs_fte** %9, align 8
  %38 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @fs_get_obj(%struct.mlx5_flow_table* %36, i32 %40)
  %42 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %7, align 8
  %43 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %8, align 8
  %44 = getelementptr inbounds %struct.mlx5_flow_group, %struct.mlx5_flow_group* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @fs_get_obj(%struct.mlx5_flow_table* %42, i32 %46)
  %48 = load %struct.mlx5_flow_rule*, %struct.mlx5_flow_rule** %4, align 8
  %49 = getelementptr inbounds %struct.mlx5_flow_rule, %struct.mlx5_flow_rule* %48, i32 0, i32 0
  %50 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %5, align 8
  %51 = call i32 @memcpy(i32* %49, %struct.mlx5_flow_destination* %50, i32 4)
  %52 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %7, align 8
  %53 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %52, i32 0, i32 0
  %54 = call %struct.mlx5_flow_root_namespace* @find_root(%struct.TYPE_10__* %53)
  store %struct.mlx5_flow_root_namespace* %54, %struct.mlx5_flow_root_namespace** %6, align 8
  %55 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %6, align 8
  %56 = getelementptr inbounds %struct.mlx5_flow_root_namespace, %struct.mlx5_flow_root_namespace* %55, i32 0, i32 0
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*, %struct.mlx5_flow_table*, i32, %struct.mlx5_flow_table*)*, i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*, %struct.mlx5_flow_table*, i32, %struct.mlx5_flow_table*)** %58, align 8
  %60 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %6, align 8
  %61 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %7, align 8
  %62 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %8, align 8
  %63 = bitcast %struct.mlx5_flow_group* %62 to %struct.mlx5_flow_table*
  %64 = load i32, i32* %10, align 4
  %65 = load %struct.fs_fte*, %struct.fs_fte** %9, align 8
  %66 = bitcast %struct.fs_fte* %65 to %struct.mlx5_flow_table*
  %67 = call i32 %59(%struct.mlx5_flow_root_namespace* %60, %struct.mlx5_flow_table* %61, %struct.mlx5_flow_table* %63, i32 %64, %struct.mlx5_flow_table* %66)
  store i32 %67, i32* %11, align 4
  %68 = load %struct.fs_fte*, %struct.fs_fte** %9, align 8
  %69 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %68, i32 0, i32 0
  %70 = call i32 @up_write_ref_node(%struct.TYPE_10__* %69, i32 0)
  %71 = load i32, i32* %11, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %31, %28
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @fs_get_obj(%struct.mlx5_flow_table*, i32) #1

declare dso_local i32 @down_write_ref_node(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.mlx5_flow_destination*, i32) #1

declare dso_local %struct.mlx5_flow_root_namespace* @find_root(%struct.TYPE_10__*) #1

declare dso_local i32 @up_write_ref_node(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
