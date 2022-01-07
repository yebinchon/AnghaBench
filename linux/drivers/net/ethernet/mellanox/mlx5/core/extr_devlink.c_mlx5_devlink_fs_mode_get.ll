; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_devlink.c_mlx5_devlink_fs_mode_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_devlink.c_mlx5_devlink_fs_mode_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink = type { i32 }
%struct.devlink_param_gset_ctx = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.mlx5_core_dev = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@MLX5_FLOW_STEERING_MODE_SMFS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"smfs\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"dmfs\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devlink*, i32, %struct.devlink_param_gset_ctx*)* @mlx5_devlink_fs_mode_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_devlink_fs_mode_get(%struct.devlink* %0, i32 %1, %struct.devlink_param_gset_ctx* %2) #0 {
  %4 = alloca %struct.devlink*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.devlink_param_gset_ctx*, align 8
  %7 = alloca %struct.mlx5_core_dev*, align 8
  store %struct.devlink* %0, %struct.devlink** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.devlink_param_gset_ctx* %2, %struct.devlink_param_gset_ctx** %6, align 8
  %8 = load %struct.devlink*, %struct.devlink** %4, align 8
  %9 = call %struct.mlx5_core_dev* @devlink_priv(%struct.devlink* %8)
  store %struct.mlx5_core_dev* %9, %struct.mlx5_core_dev** %7, align 8
  %10 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %11 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @MLX5_FLOW_STEERING_MODE_SMFS, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load %struct.devlink_param_gset_ctx*, %struct.devlink_param_gset_ctx** %6, align 8
  %20 = getelementptr inbounds %struct.devlink_param_gset_ctx, %struct.devlink_param_gset_ctx* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @strcpy(i32 %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %30

24:                                               ; preds = %3
  %25 = load %struct.devlink_param_gset_ctx*, %struct.devlink_param_gset_ctx** %6, align 8
  %26 = getelementptr inbounds %struct.devlink_param_gset_ctx, %struct.devlink_param_gset_ctx* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @strcpy(i32 %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %24, %18
  ret i32 0
}

declare dso_local %struct.mlx5_core_dev* @devlink_priv(%struct.devlink*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
