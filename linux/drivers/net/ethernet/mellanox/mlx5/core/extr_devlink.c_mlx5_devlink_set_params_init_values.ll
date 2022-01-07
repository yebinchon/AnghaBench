; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_devlink.c_mlx5_devlink_set_params_init_values.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_devlink.c_mlx5_devlink_set_params_init_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink = type { i32 }
%struct.mlx5_core_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%union.devlink_param_value = type { i32 }

@MLX5_FLOW_STEERING_MODE_DMFS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"dmfs\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"smfs\00", align 1
@MLX5_DEVLINK_PARAM_FLOW_STEERING_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.devlink*)* @mlx5_devlink_set_params_init_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5_devlink_set_params_init_values(%struct.devlink* %0) #0 {
  %2 = alloca %struct.devlink*, align 8
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca %union.devlink_param_value, align 4
  store %struct.devlink* %0, %struct.devlink** %2, align 8
  %5 = load %struct.devlink*, %struct.devlink** %2, align 8
  %6 = call %struct.mlx5_core_dev* @devlink_priv(%struct.devlink* %5)
  store %struct.mlx5_core_dev* %6, %struct.mlx5_core_dev** %3, align 8
  %7 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %8 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MLX5_FLOW_STEERING_MODE_DMFS, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = bitcast %union.devlink_param_value* %4 to i32*
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @strcpy(i32 %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %23

19:                                               ; preds = %1
  %20 = bitcast %union.devlink_param_value* %4 to i32*
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @strcpy(i32 %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %23

23:                                               ; preds = %19, %15
  %24 = load %struct.devlink*, %struct.devlink** %2, align 8
  %25 = load i32, i32* @MLX5_DEVLINK_PARAM_FLOW_STEERING_MODE, align 4
  %26 = getelementptr inbounds %union.devlink_param_value, %union.devlink_param_value* %4, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @devlink_param_driverinit_value_set(%struct.devlink* %24, i32 %25, i32 %27)
  ret void
}

declare dso_local %struct.mlx5_core_dev* @devlink_priv(%struct.devlink*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @devlink_param_driverinit_value_set(%struct.devlink*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
