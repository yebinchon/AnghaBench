; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_health.c_mlx5_fw_reporters_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_health.c_mlx5_fw_reporters_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mlx5_core_health }
%struct.mlx5_core_health = type { i8*, i8* }
%struct.devlink = type { i32 }

@mlx5_fw_reporter_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Failed to create fw reporter, err = %ld\0A\00", align 1
@mlx5_fw_fatal_reporter_ops = common dso_local global i32 0, align 4
@MLX5_REPORTER_FW_GRACEFUL_PERIOD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Failed to create fw fatal reporter, err = %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_core_dev*)* @mlx5_fw_reporters_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5_fw_reporters_create(%struct.mlx5_core_dev* %0) #0 {
  %2 = alloca %struct.mlx5_core_dev*, align 8
  %3 = alloca %struct.mlx5_core_health*, align 8
  %4 = alloca %struct.devlink*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %2, align 8
  %5 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %6 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store %struct.mlx5_core_health* %7, %struct.mlx5_core_health** %3, align 8
  %8 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %9 = call %struct.devlink* @priv_to_devlink(%struct.mlx5_core_dev* %8)
  store %struct.devlink* %9, %struct.devlink** %4, align 8
  %10 = load %struct.devlink*, %struct.devlink** %4, align 8
  %11 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %12 = call i8* @devlink_health_reporter_create(%struct.devlink* %10, i32* @mlx5_fw_reporter_ops, i32 0, i32 0, %struct.mlx5_core_dev* %11)
  %13 = load %struct.mlx5_core_health*, %struct.mlx5_core_health** %3, align 8
  %14 = getelementptr inbounds %struct.mlx5_core_health, %struct.mlx5_core_health* %13, i32 0, i32 1
  store i8* %12, i8** %14, align 8
  %15 = load %struct.mlx5_core_health*, %struct.mlx5_core_health** %3, align 8
  %16 = getelementptr inbounds %struct.mlx5_core_health, %struct.mlx5_core_health* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  %18 = call i64 @IS_ERR(i8* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %1
  %21 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %22 = load %struct.mlx5_core_health*, %struct.mlx5_core_health** %3, align 8
  %23 = getelementptr inbounds %struct.mlx5_core_health, %struct.mlx5_core_health* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @PTR_ERR(i8* %24)
  %26 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %21, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %20, %1
  %28 = load %struct.devlink*, %struct.devlink** %4, align 8
  %29 = load i32, i32* @MLX5_REPORTER_FW_GRACEFUL_PERIOD, align 4
  %30 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %31 = call i8* @devlink_health_reporter_create(%struct.devlink* %28, i32* @mlx5_fw_fatal_reporter_ops, i32 %29, i32 1, %struct.mlx5_core_dev* %30)
  %32 = load %struct.mlx5_core_health*, %struct.mlx5_core_health** %3, align 8
  %33 = getelementptr inbounds %struct.mlx5_core_health, %struct.mlx5_core_health* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  %34 = load %struct.mlx5_core_health*, %struct.mlx5_core_health** %3, align 8
  %35 = getelementptr inbounds %struct.mlx5_core_health, %struct.mlx5_core_health* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i64 @IS_ERR(i8* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %27
  %40 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %41 = load %struct.mlx5_core_health*, %struct.mlx5_core_health** %3, align 8
  %42 = getelementptr inbounds %struct.mlx5_core_health, %struct.mlx5_core_health* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @PTR_ERR(i8* %43)
  %45 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %40, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %39, %27
  ret void
}

declare dso_local %struct.devlink* @priv_to_devlink(%struct.mlx5_core_dev*) #1

declare dso_local i8* @devlink_health_reporter_create(%struct.devlink*, i32*, i32, i32, %struct.mlx5_core_dev*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*, i32) #1

declare dso_local i32 @PTR_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
