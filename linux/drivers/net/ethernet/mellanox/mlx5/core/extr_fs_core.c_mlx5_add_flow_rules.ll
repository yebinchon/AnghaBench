; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_mlx5_add_flow_rules.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_mlx5_add_flow_rules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_flow_handle = type { %struct.TYPE_3__** }
%struct.TYPE_3__ = type { i64, i32 }
%struct.mlx5_flow_table = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.mlx5_flow_spec = type { i32 }
%struct.mlx5_flow_act = type { i64 }
%struct.mlx5_flow_destination = type { %struct.mlx5_flow_table*, i32 }
%struct.mlx5_flow_root_namespace = type { i32 }
%struct.fs_prio = type { i32 }

@MLX5_FLOW_CONTEXT_ACTION_FWD_NEXT_PRIO = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MLX5_FLOW_DESTINATION_TYPE_FLOW_TABLE = common dso_local global i32 0, align 4
@MLX5_FLOW_CONTEXT_ACTION_FWD_DEST = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mlx5_flow_handle* @mlx5_add_flow_rules(%struct.mlx5_flow_table* %0, %struct.mlx5_flow_spec* %1, %struct.mlx5_flow_act* %2, %struct.mlx5_flow_destination* %3, i32 %4) #0 {
  %6 = alloca %struct.mlx5_flow_handle*, align 8
  %7 = alloca %struct.mlx5_flow_table*, align 8
  %8 = alloca %struct.mlx5_flow_spec*, align 8
  %9 = alloca %struct.mlx5_flow_act*, align 8
  %10 = alloca %struct.mlx5_flow_destination*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.mlx5_flow_root_namespace*, align 8
  %13 = alloca %struct.mlx5_flow_destination, align 8
  %14 = alloca %struct.mlx5_flow_table*, align 8
  %15 = alloca %struct.mlx5_flow_handle*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.fs_prio*, align 8
  store %struct.mlx5_flow_table* %0, %struct.mlx5_flow_table** %7, align 8
  store %struct.mlx5_flow_spec* %1, %struct.mlx5_flow_spec** %8, align 8
  store %struct.mlx5_flow_act* %2, %struct.mlx5_flow_act** %9, align 8
  store %struct.mlx5_flow_destination* %3, %struct.mlx5_flow_destination** %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %7, align 8
  %19 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %18, i32 0, i32 2
  %20 = call %struct.mlx5_flow_root_namespace* @find_root(%struct.TYPE_4__* %19)
  store %struct.mlx5_flow_root_namespace* %20, %struct.mlx5_flow_root_namespace** %12, align 8
  %21 = bitcast %struct.mlx5_flow_destination* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %21, i8 0, i64 16, i1 false)
  store %struct.mlx5_flow_table* null, %struct.mlx5_flow_table** %14, align 8
  store %struct.mlx5_flow_handle* null, %struct.mlx5_flow_handle** %15, align 8
  %22 = load %struct.mlx5_flow_act*, %struct.mlx5_flow_act** %9, align 8
  %23 = getelementptr inbounds %struct.mlx5_flow_act, %struct.mlx5_flow_act* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %16, align 8
  %25 = load %struct.fs_prio*, %struct.fs_prio** %17, align 8
  %26 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %7, align 8
  %27 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @fs_get_obj(%struct.fs_prio* %25, i32 %29)
  %31 = load %struct.mlx5_flow_act*, %struct.mlx5_flow_act** %9, align 8
  %32 = getelementptr inbounds %struct.mlx5_flow_act, %struct.mlx5_flow_act* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @MLX5_FLOW_CONTEXT_ACTION_FWD_NEXT_PRIO, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %75

36:                                               ; preds = %5
  %37 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %7, align 8
  %38 = call i32 @fwd_next_prio_supported(%struct.mlx5_flow_table* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* @EOPNOTSUPP, align 4
  %42 = sub nsw i32 0, %41
  %43 = call %struct.mlx5_flow_handle* @ERR_PTR(i32 %42)
  store %struct.mlx5_flow_handle* %43, %struct.mlx5_flow_handle** %6, align 8
  br label %127

44:                                               ; preds = %36
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  %50 = call %struct.mlx5_flow_handle* @ERR_PTR(i32 %49)
  store %struct.mlx5_flow_handle* %50, %struct.mlx5_flow_handle** %6, align 8
  br label %127

51:                                               ; preds = %44
  %52 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %12, align 8
  %53 = getelementptr inbounds %struct.mlx5_flow_root_namespace, %struct.mlx5_flow_root_namespace* %52, i32 0, i32 0
  %54 = call i32 @mutex_lock(i32* %53)
  %55 = load %struct.fs_prio*, %struct.fs_prio** %17, align 8
  %56 = call %struct.mlx5_flow_table* @find_next_chained_ft(%struct.fs_prio* %55)
  store %struct.mlx5_flow_table* %56, %struct.mlx5_flow_table** %14, align 8
  %57 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %14, align 8
  %58 = icmp ne %struct.mlx5_flow_table* %57, null
  br i1 %58, label %59, label %67

59:                                               ; preds = %51
  %60 = load i32, i32* @MLX5_FLOW_DESTINATION_TYPE_FLOW_TABLE, align 4
  %61 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %13, i32 0, i32 1
  store i32 %60, i32* %61, align 8
  %62 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %14, align 8
  %63 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %13, i32 0, i32 0
  store %struct.mlx5_flow_table* %62, %struct.mlx5_flow_table** %63, align 8
  store %struct.mlx5_flow_destination* %13, %struct.mlx5_flow_destination** %10, align 8
  store i32 1, i32* %11, align 4
  %64 = load i64, i64* @MLX5_FLOW_CONTEXT_ACTION_FWD_DEST, align 8
  %65 = load %struct.mlx5_flow_act*, %struct.mlx5_flow_act** %9, align 8
  %66 = getelementptr inbounds %struct.mlx5_flow_act, %struct.mlx5_flow_act* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  br label %74

67:                                               ; preds = %51
  %68 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %12, align 8
  %69 = getelementptr inbounds %struct.mlx5_flow_root_namespace, %struct.mlx5_flow_root_namespace* %68, i32 0, i32 0
  %70 = call i32 @mutex_unlock(i32* %69)
  %71 = load i32, i32* @EOPNOTSUPP, align 4
  %72 = sub nsw i32 0, %71
  %73 = call %struct.mlx5_flow_handle* @ERR_PTR(i32 %72)
  store %struct.mlx5_flow_handle* %73, %struct.mlx5_flow_handle** %6, align 8
  br label %127

74:                                               ; preds = %59
  br label %75

75:                                               ; preds = %74, %5
  %76 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %7, align 8
  %77 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %8, align 8
  %78 = load %struct.mlx5_flow_act*, %struct.mlx5_flow_act** %9, align 8
  %79 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %10, align 8
  %80 = load i32, i32* %11, align 4
  %81 = call %struct.mlx5_flow_handle* @_mlx5_add_flow_rules(%struct.mlx5_flow_table* %76, %struct.mlx5_flow_spec* %77, %struct.mlx5_flow_act* %78, %struct.mlx5_flow_destination* %79, i32 %80)
  store %struct.mlx5_flow_handle* %81, %struct.mlx5_flow_handle** %15, align 8
  %82 = load i64, i64* %16, align 8
  %83 = load i64, i64* @MLX5_FLOW_CONTEXT_ACTION_FWD_NEXT_PRIO, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %125

85:                                               ; preds = %75
  %86 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %15, align 8
  %87 = call i32 @IS_ERR_OR_NULL(%struct.mlx5_flow_handle* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %121, label %89

89:                                               ; preds = %85
  %90 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %15, align 8
  %91 = getelementptr inbounds %struct.mlx5_flow_handle, %struct.mlx5_flow_handle* %90, i32 0, i32 0
  %92 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %92, i64 0
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  %96 = call i64 @list_empty(i32* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %121

98:                                               ; preds = %89
  %99 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %14, align 8
  %100 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %99, i32 0, i32 0
  %101 = call i32 @mutex_lock(i32* %100)
  %102 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %15, align 8
  %103 = getelementptr inbounds %struct.mlx5_flow_handle, %struct.mlx5_flow_handle* %102, i32 0, i32 0
  %104 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %104, i64 0
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 1
  %108 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %14, align 8
  %109 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %108, i32 0, i32 1
  %110 = call i32 @list_add(i32* %107, i32* %109)
  %111 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %14, align 8
  %112 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %111, i32 0, i32 0
  %113 = call i32 @mutex_unlock(i32* %112)
  %114 = load i64, i64* @MLX5_FLOW_CONTEXT_ACTION_FWD_NEXT_PRIO, align 8
  %115 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %15, align 8
  %116 = getelementptr inbounds %struct.mlx5_flow_handle, %struct.mlx5_flow_handle* %115, i32 0, i32 0
  %117 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %117, i64 0
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  store i64 %114, i64* %120, align 8
  br label %121

121:                                              ; preds = %98, %89, %85
  %122 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %12, align 8
  %123 = getelementptr inbounds %struct.mlx5_flow_root_namespace, %struct.mlx5_flow_root_namespace* %122, i32 0, i32 0
  %124 = call i32 @mutex_unlock(i32* %123)
  br label %125

125:                                              ; preds = %121, %75
  %126 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %15, align 8
  store %struct.mlx5_flow_handle* %126, %struct.mlx5_flow_handle** %6, align 8
  br label %127

127:                                              ; preds = %125, %67, %47, %40
  %128 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %6, align 8
  ret %struct.mlx5_flow_handle* %128
}

declare dso_local %struct.mlx5_flow_root_namespace* @find_root(%struct.TYPE_4__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @fs_get_obj(%struct.fs_prio*, i32) #1

declare dso_local i32 @fwd_next_prio_supported(%struct.mlx5_flow_table*) #1

declare dso_local %struct.mlx5_flow_handle* @ERR_PTR(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.mlx5_flow_table* @find_next_chained_ft(%struct.fs_prio*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.mlx5_flow_handle* @_mlx5_add_flow_rules(%struct.mlx5_flow_table*, %struct.mlx5_flow_spec*, %struct.mlx5_flow_act*, %struct.mlx5_flow_destination*, i32) #1

declare dso_local i32 @IS_ERR_OR_NULL(%struct.mlx5_flow_handle*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
