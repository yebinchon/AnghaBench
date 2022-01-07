; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_add_rule_fte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_add_rule_fte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_flow_handle = type { i32 }
%struct.fs_fte = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.mlx5_flow_group = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.mlx5_flow_destination = type { i32 }
%struct.mlx5_flow_root_namespace = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*, %struct.mlx5_flow_group*, %struct.fs_fte*)*, i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*, %struct.mlx5_flow_group*, i32, %struct.fs_fte*)* }
%struct.mlx5_flow_table = type { i32 }

@MLX5_SET_FTE_MODIFY_ENABLE_MASK_ACTION = common dso_local global i32 0, align 4
@FS_FTE_STATUS_EXISTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx5_flow_handle* (%struct.fs_fte*, %struct.mlx5_flow_group*, %struct.mlx5_flow_destination*, i32, i32)* @add_rule_fte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx5_flow_handle* @add_rule_fte(%struct.fs_fte* %0, %struct.mlx5_flow_group* %1, %struct.mlx5_flow_destination* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.mlx5_flow_handle*, align 8
  %7 = alloca %struct.fs_fte*, align 8
  %8 = alloca %struct.mlx5_flow_group*, align 8
  %9 = alloca %struct.mlx5_flow_destination*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mlx5_flow_root_namespace*, align 8
  %13 = alloca %struct.mlx5_flow_handle*, align 8
  %14 = alloca %struct.mlx5_flow_table*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.fs_fte* %0, %struct.fs_fte** %7, align 8
  store %struct.mlx5_flow_group* %1, %struct.mlx5_flow_group** %8, align 8
  store %struct.mlx5_flow_destination* %2, %struct.mlx5_flow_destination** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %17, align 4
  %18 = load %struct.fs_fte*, %struct.fs_fte** %7, align 8
  %19 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %9, align 8
  %20 = load i32, i32* %10, align 4
  %21 = call %struct.mlx5_flow_handle* @create_flow_handle(%struct.fs_fte* %18, %struct.mlx5_flow_destination* %19, i32 %20, i32* %15, i32* %17)
  store %struct.mlx5_flow_handle* %21, %struct.mlx5_flow_handle** %13, align 8
  %22 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %13, align 8
  %23 = call i64 @IS_ERR(%struct.mlx5_flow_handle* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %5
  %26 = load i32, i32* %17, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %25, %5
  br label %93

29:                                               ; preds = %25
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load i32, i32* @MLX5_SET_FTE_MODIFY_ENABLE_MASK_ACTION, align 4
  %34 = call i32 @BIT(i32 %33)
  %35 = load i32, i32* %15, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %15, align 4
  br label %37

37:                                               ; preds = %32, %29
  %38 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %14, align 8
  %39 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %8, align 8
  %40 = getelementptr inbounds %struct.mlx5_flow_group, %struct.mlx5_flow_group* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @fs_get_obj(%struct.mlx5_flow_table* %38, i32 %42)
  %44 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %8, align 8
  %45 = getelementptr inbounds %struct.mlx5_flow_group, %struct.mlx5_flow_group* %44, i32 0, i32 0
  %46 = call %struct.mlx5_flow_root_namespace* @find_root(%struct.TYPE_6__* %45)
  store %struct.mlx5_flow_root_namespace* %46, %struct.mlx5_flow_root_namespace** %12, align 8
  %47 = load %struct.fs_fte*, %struct.fs_fte** %7, align 8
  %48 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @FS_FTE_STATUS_EXISTING, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %64, label %53

53:                                               ; preds = %37
  %54 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %12, align 8
  %55 = getelementptr inbounds %struct.mlx5_flow_root_namespace, %struct.mlx5_flow_root_namespace* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*, %struct.mlx5_flow_group*, %struct.fs_fte*)*, i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*, %struct.mlx5_flow_group*, %struct.fs_fte*)** %57, align 8
  %59 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %12, align 8
  %60 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %14, align 8
  %61 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %8, align 8
  %62 = load %struct.fs_fte*, %struct.fs_fte** %7, align 8
  %63 = call i32 %58(%struct.mlx5_flow_root_namespace* %59, %struct.mlx5_flow_table* %60, %struct.mlx5_flow_group* %61, %struct.fs_fte* %62)
  store i32 %63, i32* %16, align 4
  br label %76

64:                                               ; preds = %37
  %65 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %12, align 8
  %66 = getelementptr inbounds %struct.mlx5_flow_root_namespace, %struct.mlx5_flow_root_namespace* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*, %struct.mlx5_flow_group*, i32, %struct.fs_fte*)*, i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*, %struct.mlx5_flow_group*, i32, %struct.fs_fte*)** %68, align 8
  %70 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %12, align 8
  %71 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %14, align 8
  %72 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %8, align 8
  %73 = load i32, i32* %15, align 4
  %74 = load %struct.fs_fte*, %struct.fs_fte** %7, align 8
  %75 = call i32 %69(%struct.mlx5_flow_root_namespace* %70, %struct.mlx5_flow_table* %71, %struct.mlx5_flow_group* %72, i32 %73, %struct.fs_fte* %74)
  store i32 %75, i32* %16, align 4
  br label %76

76:                                               ; preds = %64, %53
  %77 = load i32, i32* %16, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  br label %95

80:                                               ; preds = %76
  %81 = load %struct.fs_fte*, %struct.fs_fte** %7, align 8
  %82 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  store i32 1, i32* %83, align 4
  %84 = load i32, i32* @FS_FTE_STATUS_EXISTING, align 4
  %85 = load %struct.fs_fte*, %struct.fs_fte** %7, align 8
  %86 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 4
  %89 = load %struct.fs_fte*, %struct.fs_fte** %7, align 8
  %90 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  %92 = call i32 @atomic_inc(i32* %91)
  br label %93

93:                                               ; preds = %80, %28
  %94 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %13, align 8
  store %struct.mlx5_flow_handle* %94, %struct.mlx5_flow_handle** %6, align 8
  br label %105

95:                                               ; preds = %79
  %96 = load %struct.fs_fte*, %struct.fs_fte** %7, align 8
  %97 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %13, align 8
  %98 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %9, align 8
  %99 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %13, align 8
  %100 = getelementptr inbounds %struct.mlx5_flow_handle, %struct.mlx5_flow_handle* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @destroy_flow_handle(%struct.fs_fte* %96, %struct.mlx5_flow_handle* %97, %struct.mlx5_flow_destination* %98, i32 %101)
  %103 = load i32, i32* %16, align 4
  %104 = call %struct.mlx5_flow_handle* @ERR_PTR(i32 %103)
  store %struct.mlx5_flow_handle* %104, %struct.mlx5_flow_handle** %6, align 8
  br label %105

105:                                              ; preds = %95, %93
  %106 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %6, align 8
  ret %struct.mlx5_flow_handle* %106
}

declare dso_local %struct.mlx5_flow_handle* @create_flow_handle(%struct.fs_fte*, %struct.mlx5_flow_destination*, i32, i32*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.mlx5_flow_handle*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @fs_get_obj(%struct.mlx5_flow_table*, i32) #1

declare dso_local %struct.mlx5_flow_root_namespace* @find_root(%struct.TYPE_6__*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @destroy_flow_handle(%struct.fs_fte*, %struct.mlx5_flow_handle*, %struct.mlx5_flow_destination*, i32) #1

declare dso_local %struct.mlx5_flow_handle* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
