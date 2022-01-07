; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_mlx5_get_flow_vport_acl_namespace.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_mlx5_get_flow_vport_acl_namespace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_flow_namespace = type { i32 }
%struct.mlx5_core_dev = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.mlx5_flow_steering* }
%struct.mlx5_flow_steering = type { %struct.TYPE_4__**, %struct.TYPE_6__** }
%struct.TYPE_4__ = type { %struct.mlx5_flow_namespace }
%struct.TYPE_6__ = type { %struct.mlx5_flow_namespace }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mlx5_flow_namespace* @mlx5_get_flow_vport_acl_namespace(%struct.mlx5_core_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mlx5_flow_namespace*, align 8
  %5 = alloca %struct.mlx5_core_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx5_flow_steering*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %10 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.mlx5_flow_steering*, %struct.mlx5_flow_steering** %11, align 8
  store %struct.mlx5_flow_steering* %12, %struct.mlx5_flow_steering** %8, align 8
  %13 = load %struct.mlx5_flow_steering*, %struct.mlx5_flow_steering** %8, align 8
  %14 = icmp ne %struct.mlx5_flow_steering* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %18 = call i32 @mlx5_eswitch_get_total_vports(%struct.mlx5_core_dev* %17)
  %19 = icmp sge i32 %16, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %15, %3
  store %struct.mlx5_flow_namespace* null, %struct.mlx5_flow_namespace** %4, align 8
  br label %72

21:                                               ; preds = %15
  %22 = load i32, i32* %6, align 4
  switch i32 %22, label %71 [
    i32 129, label %23
    i32 128, label %47
  ]

23:                                               ; preds = %21
  %24 = load %struct.mlx5_flow_steering*, %struct.mlx5_flow_steering** %8, align 8
  %25 = getelementptr inbounds %struct.mlx5_flow_steering, %struct.mlx5_flow_steering* %24, i32 0, i32 1
  %26 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %25, align 8
  %27 = icmp ne %struct.TYPE_6__** %26, null
  br i1 %27, label %28, label %46

28:                                               ; preds = %23
  %29 = load %struct.mlx5_flow_steering*, %struct.mlx5_flow_steering** %8, align 8
  %30 = getelementptr inbounds %struct.mlx5_flow_steering, %struct.mlx5_flow_steering* %29, i32 0, i32 1
  %31 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %31, i64 %33
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = icmp ne %struct.TYPE_6__* %35, null
  br i1 %36, label %37, label %46

37:                                               ; preds = %28
  %38 = load %struct.mlx5_flow_steering*, %struct.mlx5_flow_steering** %8, align 8
  %39 = getelementptr inbounds %struct.mlx5_flow_steering, %struct.mlx5_flow_steering* %38, i32 0, i32 1
  %40 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %40, i64 %42
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  store %struct.mlx5_flow_namespace* %45, %struct.mlx5_flow_namespace** %4, align 8
  br label %72

46:                                               ; preds = %28, %23
  store %struct.mlx5_flow_namespace* null, %struct.mlx5_flow_namespace** %4, align 8
  br label %72

47:                                               ; preds = %21
  %48 = load %struct.mlx5_flow_steering*, %struct.mlx5_flow_steering** %8, align 8
  %49 = getelementptr inbounds %struct.mlx5_flow_steering, %struct.mlx5_flow_steering* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %49, align 8
  %51 = icmp ne %struct.TYPE_4__** %50, null
  br i1 %51, label %52, label %70

52:                                               ; preds = %47
  %53 = load %struct.mlx5_flow_steering*, %struct.mlx5_flow_steering** %8, align 8
  %54 = getelementptr inbounds %struct.mlx5_flow_steering, %struct.mlx5_flow_steering* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %55, i64 %57
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = icmp ne %struct.TYPE_4__* %59, null
  br i1 %60, label %61, label %70

61:                                               ; preds = %52
  %62 = load %struct.mlx5_flow_steering*, %struct.mlx5_flow_steering** %8, align 8
  %63 = getelementptr inbounds %struct.mlx5_flow_steering, %struct.mlx5_flow_steering* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %64, i64 %66
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  store %struct.mlx5_flow_namespace* %69, %struct.mlx5_flow_namespace** %4, align 8
  br label %72

70:                                               ; preds = %52, %47
  store %struct.mlx5_flow_namespace* null, %struct.mlx5_flow_namespace** %4, align 8
  br label %72

71:                                               ; preds = %21
  store %struct.mlx5_flow_namespace* null, %struct.mlx5_flow_namespace** %4, align 8
  br label %72

72:                                               ; preds = %71, %70, %61, %46, %37, %20
  %73 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %4, align 8
  ret %struct.mlx5_flow_namespace* %73
}

declare dso_local i32 @mlx5_eswitch_get_total_vports(%struct.mlx5_core_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
