; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_del_sw_hw_rule.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_del_sw_hw_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_node = type { i32 }
%struct.mlx5_flow_rule = type { i64, i32, i64, %struct.TYPE_8__, %struct.TYPE_7__, i32, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.fs_node* }
%struct.fs_fte = type { i64, i32, i64, %struct.TYPE_8__, %struct.TYPE_7__, i32, %struct.TYPE_5__ }

@MLX5_FLOW_CONTEXT_ACTION_FWD_NEXT_PRIO = common dso_local global i64 0, align 8
@MLX5_FLOW_DESTINATION_TYPE_COUNTER = common dso_local global i64 0, align 8
@MLX5_SET_FTE_MODIFY_ENABLE_MASK_ACTION = common dso_local global i32 0, align 4
@MLX5_SET_FTE_MODIFY_ENABLE_MASK_FLOW_COUNTERS = common dso_local global i32 0, align 4
@MLX5_FLOW_CONTEXT_ACTION_COUNT = common dso_local global i32 0, align 4
@MLX5_FLOW_CONTEXT_ACTION_FWD_DEST = common dso_local global i32 0, align 4
@MLX5_SET_FTE_MODIFY_ENABLE_MASK_DESTINATION_LIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fs_node*)* @del_sw_hw_rule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @del_sw_hw_rule(%struct.fs_node* %0) #0 {
  %2 = alloca %struct.fs_node*, align 8
  %3 = alloca %struct.mlx5_flow_rule*, align 8
  %4 = alloca %struct.fs_fte*, align 8
  store %struct.fs_node* %0, %struct.fs_node** %2, align 8
  %5 = load %struct.mlx5_flow_rule*, %struct.mlx5_flow_rule** %3, align 8
  %6 = load %struct.fs_node*, %struct.fs_node** %2, align 8
  %7 = call i32 @fs_get_obj(%struct.mlx5_flow_rule* %5, %struct.fs_node* %6)
  %8 = load %struct.fs_fte*, %struct.fs_fte** %4, align 8
  %9 = bitcast %struct.fs_fte* %8 to %struct.mlx5_flow_rule*
  %10 = load %struct.mlx5_flow_rule*, %struct.mlx5_flow_rule** %3, align 8
  %11 = getelementptr inbounds %struct.mlx5_flow_rule, %struct.mlx5_flow_rule* %10, i32 0, i32 6
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.fs_node*, %struct.fs_node** %12, align 8
  %14 = call i32 @fs_get_obj(%struct.mlx5_flow_rule* %9, %struct.fs_node* %13)
  %15 = load %struct.mlx5_flow_rule*, %struct.mlx5_flow_rule** %3, align 8
  %16 = call i32 @trace_mlx5_fs_del_rule(%struct.mlx5_flow_rule* %15)
  %17 = load %struct.mlx5_flow_rule*, %struct.mlx5_flow_rule** %3, align 8
  %18 = getelementptr inbounds %struct.mlx5_flow_rule, %struct.mlx5_flow_rule* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @MLX5_FLOW_CONTEXT_ACTION_FWD_NEXT_PRIO, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %38

22:                                               ; preds = %1
  %23 = load %struct.mlx5_flow_rule*, %struct.mlx5_flow_rule** %3, align 8
  %24 = getelementptr inbounds %struct.mlx5_flow_rule, %struct.mlx5_flow_rule* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.mlx5_flow_rule*, %struct.mlx5_flow_rule** %3, align 8
  %30 = getelementptr inbounds %struct.mlx5_flow_rule, %struct.mlx5_flow_rule* %29, i32 0, i32 5
  %31 = call i32 @list_del(i32* %30)
  %32 = load %struct.mlx5_flow_rule*, %struct.mlx5_flow_rule** %3, align 8
  %33 = getelementptr inbounds %struct.mlx5_flow_rule, %struct.mlx5_flow_rule* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = call i32 @mutex_unlock(i32* %36)
  br label %38

38:                                               ; preds = %22, %1
  %39 = load %struct.mlx5_flow_rule*, %struct.mlx5_flow_rule** %3, align 8
  %40 = getelementptr inbounds %struct.mlx5_flow_rule, %struct.mlx5_flow_rule* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @MLX5_FLOW_DESTINATION_TYPE_COUNTER, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %68

45:                                               ; preds = %38
  %46 = load %struct.fs_fte*, %struct.fs_fte** %4, align 8
  %47 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, -1
  store i64 %49, i64* %47, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %68

51:                                               ; preds = %45
  %52 = load i32, i32* @MLX5_SET_FTE_MODIFY_ENABLE_MASK_ACTION, align 4
  %53 = call i32 @BIT(i32 %52)
  %54 = load i32, i32* @MLX5_SET_FTE_MODIFY_ENABLE_MASK_FLOW_COUNTERS, align 4
  %55 = call i32 @BIT(i32 %54)
  %56 = or i32 %53, %55
  %57 = load %struct.fs_fte*, %struct.fs_fte** %4, align 8
  %58 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 8
  %61 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_COUNT, align 4
  %62 = xor i32 %61, -1
  %63 = load %struct.fs_fte*, %struct.fs_fte** %4, align 8
  %64 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = and i32 %66, %62
  store i32 %67, i32* %65, align 8
  br label %90

68:                                               ; preds = %45, %38
  %69 = load %struct.fs_fte*, %struct.fs_fte** %4, align 8
  %70 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_FWD_DEST, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %89

76:                                               ; preds = %68
  %77 = load %struct.fs_fte*, %struct.fs_fte** %4, align 8
  %78 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %79, -1
  store i64 %80, i64* %78, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %76
  %83 = load i32, i32* @MLX5_SET_FTE_MODIFY_ENABLE_MASK_DESTINATION_LIST, align 4
  %84 = call i32 @BIT(i32 %83)
  %85 = load %struct.fs_fte*, %struct.fs_fte** %4, align 8
  %86 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 8
  br label %89

89:                                               ; preds = %82, %76, %68
  br label %90

90:                                               ; preds = %89, %51
  %91 = load %struct.mlx5_flow_rule*, %struct.mlx5_flow_rule** %3, align 8
  %92 = call i32 @kfree(%struct.mlx5_flow_rule* %91)
  ret void
}

declare dso_local i32 @fs_get_obj(%struct.mlx5_flow_rule*, %struct.fs_node*) #1

declare dso_local i32 @trace_mlx5_fs_del_rule(%struct.mlx5_flow_rule*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @kfree(%struct.mlx5_flow_rule*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
