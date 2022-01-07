; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_mlx5_modify_rule_destination.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_mlx5_modify_rule_destination.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_flow_handle = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }
%struct.mlx5_flow_destination = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_modify_rule_destination(%struct.mlx5_flow_handle* %0, %struct.mlx5_flow_destination* %1, %struct.mlx5_flow_destination* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_flow_handle*, align 8
  %6 = alloca %struct.mlx5_flow_destination*, align 8
  %7 = alloca %struct.mlx5_flow_destination*, align 8
  %8 = alloca i32, align 4
  store %struct.mlx5_flow_handle* %0, %struct.mlx5_flow_handle** %5, align 8
  store %struct.mlx5_flow_destination* %1, %struct.mlx5_flow_destination** %6, align 8
  store %struct.mlx5_flow_destination* %2, %struct.mlx5_flow_destination** %7, align 8
  %9 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %7, align 8
  %10 = icmp ne %struct.mlx5_flow_destination* %9, null
  br i1 %10, label %27, label %11

11:                                               ; preds = %3
  %12 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %5, align 8
  %13 = getelementptr inbounds %struct.mlx5_flow_handle, %struct.mlx5_flow_handle* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 1
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %63

19:                                               ; preds = %11
  %20 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %5, align 8
  %21 = getelementptr inbounds %struct.mlx5_flow_handle, %struct.mlx5_flow_handle* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %22, i64 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %6, align 8
  %26 = call i32 @_mlx5_modify_rule_destination(%struct.TYPE_2__* %24, %struct.mlx5_flow_destination* %25)
  store i32 %26, i32* %4, align 4
  br label %63

27:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %28

28:                                               ; preds = %57, %27
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %5, align 8
  %31 = getelementptr inbounds %struct.mlx5_flow_handle, %struct.mlx5_flow_handle* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %60

34:                                               ; preds = %28
  %35 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %6, align 8
  %36 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %5, align 8
  %37 = getelementptr inbounds %struct.mlx5_flow_handle, %struct.mlx5_flow_handle* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %38, i64 %40
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = call i64 @mlx5_flow_dests_cmp(%struct.mlx5_flow_destination* %35, i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %34
  %47 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %5, align 8
  %48 = getelementptr inbounds %struct.mlx5_flow_handle, %struct.mlx5_flow_handle* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %49, i64 %51
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %6, align 8
  %55 = call i32 @_mlx5_modify_rule_destination(%struct.TYPE_2__* %53, %struct.mlx5_flow_destination* %54)
  store i32 %55, i32* %4, align 4
  br label %63

56:                                               ; preds = %34
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %8, align 4
  br label %28

60:                                               ; preds = %28
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %60, %46, %19, %16
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @_mlx5_modify_rule_destination(%struct.TYPE_2__*, %struct.mlx5_flow_destination*) #1

declare dso_local i64 @mlx5_flow_dests_cmp(%struct.mlx5_flow_destination*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
