; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_mlx5_del_flow_rules.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_mlx5_del_flow_rules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_flow_handle = type { i32, %struct.TYPE_7__** }
%struct.TYPE_7__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.fs_fte = type { %struct.TYPE_8__, i64, i64 }
%struct.TYPE_8__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5_del_flow_rules(%struct.mlx5_flow_handle* %0) #0 {
  %2 = alloca %struct.mlx5_flow_handle*, align 8
  %3 = alloca %struct.fs_fte*, align 8
  %4 = alloca i32, align 4
  store %struct.mlx5_flow_handle* %0, %struct.mlx5_flow_handle** %2, align 8
  %5 = load %struct.fs_fte*, %struct.fs_fte** %3, align 8
  %6 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %2, align 8
  %7 = getelementptr inbounds %struct.mlx5_flow_handle, %struct.mlx5_flow_handle* %6, i32 0, i32 1
  %8 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %8, i64 0
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @fs_get_obj(%struct.fs_fte* %5, i32 %13)
  %15 = load %struct.fs_fte*, %struct.fs_fte** %3, align 8
  %16 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %15, i32 0, i32 0
  %17 = call i32 @down_write_ref_node(%struct.TYPE_8__* %16, i32 0)
  %18 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %2, align 8
  %19 = getelementptr inbounds %struct.mlx5_flow_handle, %struct.mlx5_flow_handle* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sub nsw i32 %20, 1
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %35, %1
  %23 = load i32, i32* %4, align 4
  %24 = icmp sge i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %22
  %26 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %2, align 8
  %27 = getelementptr inbounds %struct.mlx5_flow_handle, %struct.mlx5_flow_handle* %26, i32 0, i32 1
  %28 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %28, i64 %30
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = call i32 @tree_remove_node(%struct.TYPE_9__* %33, i32 1)
  br label %35

35:                                               ; preds = %25
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %4, align 4
  br label %22

38:                                               ; preds = %22
  %39 = load %struct.fs_fte*, %struct.fs_fte** %3, align 8
  %40 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %38
  %44 = load %struct.fs_fte*, %struct.fs_fte** %3, align 8
  %45 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load %struct.fs_fte*, %struct.fs_fte** %3, align 8
  %50 = call i32 @modify_fte(%struct.fs_fte* %49)
  %51 = load %struct.fs_fte*, %struct.fs_fte** %3, align 8
  %52 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %51, i32 0, i32 0
  %53 = call i32 @up_write_ref_node(%struct.TYPE_8__* %52, i32 0)
  br label %65

54:                                               ; preds = %43, %38
  %55 = load %struct.fs_fte*, %struct.fs_fte** %3, align 8
  %56 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %55, i32 0, i32 0
  %57 = call i32 @del_hw_fte(%struct.TYPE_8__* %56)
  %58 = load %struct.fs_fte*, %struct.fs_fte** %3, align 8
  %59 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = call i32 @up_write(i32* %60)
  %62 = load %struct.fs_fte*, %struct.fs_fte** %3, align 8
  %63 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %62, i32 0, i32 0
  %64 = call i32 @tree_put_node(%struct.TYPE_8__* %63, i32 0)
  br label %65

65:                                               ; preds = %54, %48
  %66 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %2, align 8
  %67 = call i32 @kfree(%struct.mlx5_flow_handle* %66)
  ret void
}

declare dso_local i32 @fs_get_obj(%struct.fs_fte*, i32) #1

declare dso_local i32 @down_write_ref_node(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @tree_remove_node(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @modify_fte(%struct.fs_fte*) #1

declare dso_local i32 @up_write_ref_node(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @del_hw_fte(%struct.TYPE_8__*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @tree_put_node(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @kfree(%struct.mlx5_flow_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
