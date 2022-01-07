; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_add_rule_fg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_add_rule_fg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_flow_handle = type { i32, %struct.TYPE_6__** }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.mlx5_flow_group = type { i32 }
%struct.mlx5_flow_spec = type { i32 }
%struct.mlx5_flow_act = type { i32 }
%struct.mlx5_flow_destination = type { i32 }
%struct.fs_fte = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx5_flow_handle* (%struct.mlx5_flow_group*, %struct.mlx5_flow_spec*, %struct.mlx5_flow_act*, %struct.mlx5_flow_destination*, i32, %struct.fs_fte*)* @add_rule_fg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx5_flow_handle* @add_rule_fg(%struct.mlx5_flow_group* %0, %struct.mlx5_flow_spec* %1, %struct.mlx5_flow_act* %2, %struct.mlx5_flow_destination* %3, i32 %4, %struct.fs_fte* %5) #0 {
  %7 = alloca %struct.mlx5_flow_handle*, align 8
  %8 = alloca %struct.mlx5_flow_group*, align 8
  %9 = alloca %struct.mlx5_flow_spec*, align 8
  %10 = alloca %struct.mlx5_flow_act*, align 8
  %11 = alloca %struct.mlx5_flow_destination*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.fs_fte*, align 8
  %14 = alloca %struct.mlx5_flow_handle*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.mlx5_flow_group* %0, %struct.mlx5_flow_group** %8, align 8
  store %struct.mlx5_flow_spec* %1, %struct.mlx5_flow_spec** %9, align 8
  store %struct.mlx5_flow_act* %2, %struct.mlx5_flow_act** %10, align 8
  store %struct.mlx5_flow_destination* %3, %struct.mlx5_flow_destination** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.fs_fte* %5, %struct.fs_fte** %13, align 8
  %18 = load %struct.fs_fte*, %struct.fs_fte** %13, align 8
  %19 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %9, align 8
  %20 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %19, i32 0, i32 0
  %21 = load %struct.mlx5_flow_act*, %struct.mlx5_flow_act** %10, align 8
  %22 = call i32 @check_conflicting_ftes(%struct.fs_fte* %18, i32* %20, %struct.mlx5_flow_act* %21)
  store i32 %22, i32* %17, align 4
  %23 = load i32, i32* %17, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %6
  %26 = load i32, i32* %17, align 4
  %27 = call %struct.mlx5_flow_handle* @ERR_PTR(i32 %26)
  store %struct.mlx5_flow_handle* %27, %struct.mlx5_flow_handle** %7, align 8
  br label %108

28:                                               ; preds = %6
  %29 = load %struct.fs_fte*, %struct.fs_fte** %13, align 8
  %30 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %15, align 4
  %33 = load %struct.mlx5_flow_act*, %struct.mlx5_flow_act** %10, align 8
  %34 = getelementptr inbounds %struct.mlx5_flow_act, %struct.mlx5_flow_act* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.fs_fte*, %struct.fs_fte** %13, align 8
  %37 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %35
  store i32 %40, i32* %38, align 4
  %41 = load %struct.fs_fte*, %struct.fs_fte** %13, align 8
  %42 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %8, align 8
  %43 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %11, align 8
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %15, align 4
  %46 = load %struct.mlx5_flow_act*, %struct.mlx5_flow_act** %10, align 8
  %47 = getelementptr inbounds %struct.mlx5_flow_act, %struct.mlx5_flow_act* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %45, %48
  %50 = zext i1 %49 to i32
  %51 = call %struct.mlx5_flow_handle* @add_rule_fte(%struct.fs_fte* %41, %struct.mlx5_flow_group* %42, %struct.mlx5_flow_destination* %43, i32 %44, i32 %50)
  store %struct.mlx5_flow_handle* %51, %struct.mlx5_flow_handle** %14, align 8
  %52 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %14, align 8
  %53 = call i64 @IS_ERR(%struct.mlx5_flow_handle* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %28
  %56 = load i32, i32* %15, align 4
  %57 = load %struct.fs_fte*, %struct.fs_fte** %13, align 8
  %58 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 4
  %60 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %14, align 8
  store %struct.mlx5_flow_handle* %60, %struct.mlx5_flow_handle** %7, align 8
  br label %108

61:                                               ; preds = %28
  %62 = load %struct.fs_fte*, %struct.fs_fte** %13, align 8
  %63 = call i32 @trace_mlx5_fs_set_fte(%struct.fs_fte* %62, i32 0)
  store i32 0, i32* %16, align 4
  br label %64

64:                                               ; preds = %103, %61
  %65 = load i32, i32* %16, align 4
  %66 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %14, align 8
  %67 = getelementptr inbounds %struct.mlx5_flow_handle, %struct.mlx5_flow_handle* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %106

70:                                               ; preds = %64
  %71 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %14, align 8
  %72 = getelementptr inbounds %struct.mlx5_flow_handle, %struct.mlx5_flow_handle* %71, i32 0, i32 1
  %73 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %72, align 8
  %74 = load i32, i32* %16, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %73, i64 %75
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = call i32 @refcount_read(i32* %79)
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %82, label %102

82:                                               ; preds = %70
  %83 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %14, align 8
  %84 = getelementptr inbounds %struct.mlx5_flow_handle, %struct.mlx5_flow_handle* %83, i32 0, i32 1
  %85 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %84, align 8
  %86 = load i32, i32* %16, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %85, i64 %87
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load %struct.fs_fte*, %struct.fs_fte** %13, align 8
  %92 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %91, i32 0, i32 0
  %93 = call i32 @tree_add_node(%struct.TYPE_5__* %90, i32* %92)
  %94 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %14, align 8
  %95 = getelementptr inbounds %struct.mlx5_flow_handle, %struct.mlx5_flow_handle* %94, i32 0, i32 1
  %96 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %95, align 8
  %97 = load i32, i32* %16, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %96, i64 %98
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = call i32 @trace_mlx5_fs_add_rule(%struct.TYPE_6__* %100)
  br label %102

102:                                              ; preds = %82, %70
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %16, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %16, align 4
  br label %64

106:                                              ; preds = %64
  %107 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %14, align 8
  store %struct.mlx5_flow_handle* %107, %struct.mlx5_flow_handle** %7, align 8
  br label %108

108:                                              ; preds = %106, %55, %25
  %109 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %7, align 8
  ret %struct.mlx5_flow_handle* %109
}

declare dso_local i32 @check_conflicting_ftes(%struct.fs_fte*, i32*, %struct.mlx5_flow_act*) #1

declare dso_local %struct.mlx5_flow_handle* @ERR_PTR(i32) #1

declare dso_local %struct.mlx5_flow_handle* @add_rule_fte(%struct.fs_fte*, %struct.mlx5_flow_group*, %struct.mlx5_flow_destination*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.mlx5_flow_handle*) #1

declare dso_local i32 @trace_mlx5_fs_set_fte(%struct.fs_fte*, i32) #1

declare dso_local i32 @refcount_read(i32*) #1

declare dso_local i32 @tree_add_node(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @trace_mlx5_fs_add_rule(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
