; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_health.c_mlx5e_health_sq_to_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_health.c_mlx5e_health_sq_to_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_channel = type { %struct.net_device*, %struct.mlx5_core_dev* }
%struct.net_device = type { i32 }
%struct.mlx5_core_dev = type { i32 }
%struct.mlx5e_modify_sq_param = type { i8*, i8* }

@MLX5_SQC_STATE_ERR = common dso_local global i8* null, align 8
@MLX5_SQC_STATE_RST = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [33 x i8] c"Failed to move sq 0x%x to reset\0A\00", align 1
@MLX5_SQC_STATE_RDY = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to move sq 0x%x to ready\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5e_health_sq_to_ready(%struct.mlx5e_channel* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5e_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_core_dev*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.mlx5e_modify_sq_param, align 8
  %9 = alloca i32, align 4
  store %struct.mlx5e_channel* %0, %struct.mlx5e_channel** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %4, align 8
  %11 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %10, i32 0, i32 1
  %12 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %11, align 8
  store %struct.mlx5_core_dev* %12, %struct.mlx5_core_dev** %6, align 8
  %13 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %4, align 8
  %14 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %13, i32 0, i32 0
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  store %struct.net_device* %15, %struct.net_device** %7, align 8
  %16 = bitcast %struct.mlx5e_modify_sq_param* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 16, i1 false)
  %17 = load i8*, i8** @MLX5_SQC_STATE_ERR, align 8
  %18 = getelementptr inbounds %struct.mlx5e_modify_sq_param, %struct.mlx5e_modify_sq_param* %8, i32 0, i32 1
  store i8* %17, i8** %18, align 8
  %19 = load i8*, i8** @MLX5_SQC_STATE_RST, align 8
  %20 = getelementptr inbounds %struct.mlx5e_modify_sq_param, %struct.mlx5e_modify_sq_param* %8, i32 0, i32 0
  store i8* %19, i8** %20, align 8
  %21 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @mlx5e_modify_sq(%struct.mlx5_core_dev* %21, i32 %22, %struct.mlx5e_modify_sq_param* %8)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %2
  %27 = load %struct.net_device*, %struct.net_device** %7, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @netdev_err(%struct.net_device* %27, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %3, align 4
  br label %48

31:                                               ; preds = %2
  %32 = call i32 @memset(%struct.mlx5e_modify_sq_param* %8, i32 0, i32 16)
  %33 = load i8*, i8** @MLX5_SQC_STATE_RST, align 8
  %34 = getelementptr inbounds %struct.mlx5e_modify_sq_param, %struct.mlx5e_modify_sq_param* %8, i32 0, i32 1
  store i8* %33, i8** %34, align 8
  %35 = load i8*, i8** @MLX5_SQC_STATE_RDY, align 8
  %36 = getelementptr inbounds %struct.mlx5e_modify_sq_param, %struct.mlx5e_modify_sq_param* %8, i32 0, i32 0
  store i8* %35, i8** %36, align 8
  %37 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @mlx5e_modify_sq(%struct.mlx5_core_dev* %37, i32 %38, %struct.mlx5e_modify_sq_param* %8)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %31
  %43 = load %struct.net_device*, %struct.net_device** %7, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @netdev_err(%struct.net_device* %43, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %3, align 4
  br label %48

47:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %42, %26
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mlx5e_modify_sq(%struct.mlx5_core_dev*, i32, %struct.mlx5e_modify_sq_param*) #2

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32) #2

declare dso_local i32 @memset(%struct.mlx5e_modify_sq_param*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
