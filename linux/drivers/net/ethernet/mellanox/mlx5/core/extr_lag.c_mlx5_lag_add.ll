; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_lag.c_mlx5_lag_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_lag.c_mlx5_lag_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.mlx5_lag* }
%struct.mlx5_lag = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.net_device = type { i32 }

@vport_group_manager = common dso_local global i32 0, align 4
@lag_master = common dso_local global i32 0, align 4
@num_lag_ports = common dso_local global i32 0, align 4
@MLX5_MAX_PORTS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"Failed to alloc lag dev\0A\00", align 1
@mlx5_lag_netdev_event = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"Failed to register LAG netdev notifier\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Failed to init multipath lag err=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5_lag_add(%struct.mlx5_core_dev* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.mlx5_lag*, align 8
  %6 = alloca %struct.mlx5_core_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  store %struct.mlx5_lag* null, %struct.mlx5_lag** %5, align 8
  %8 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %9 = load i32, i32* @vport_group_manager, align 4
  %10 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %8, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %2
  %13 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %14 = load i32, i32* @lag_master, align 4
  %15 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %19 = load i32, i32* @num_lag_ports, align 4
  %20 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %18, i32 %19)
  %21 = load i64, i64* @MLX5_MAX_PORTS, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17, %12, %2
  br label %80

24:                                               ; preds = %17
  %25 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %26 = call %struct.mlx5_core_dev* @mlx5_get_next_phys_dev(%struct.mlx5_core_dev* %25)
  store %struct.mlx5_core_dev* %26, %struct.mlx5_core_dev** %6, align 8
  %27 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %28 = icmp ne %struct.mlx5_core_dev* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %31 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load %struct.mlx5_lag*, %struct.mlx5_lag** %32, align 8
  store %struct.mlx5_lag* %33, %struct.mlx5_lag** %5, align 8
  br label %34

34:                                               ; preds = %29, %24
  %35 = load %struct.mlx5_lag*, %struct.mlx5_lag** %5, align 8
  %36 = icmp ne %struct.mlx5_lag* %35, null
  br i1 %36, label %45, label %37

37:                                               ; preds = %34
  %38 = call %struct.mlx5_lag* (...) @mlx5_lag_dev_alloc()
  store %struct.mlx5_lag* %38, %struct.mlx5_lag** %5, align 8
  %39 = load %struct.mlx5_lag*, %struct.mlx5_lag** %5, align 8
  %40 = icmp ne %struct.mlx5_lag* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %43 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_err(%struct.mlx5_core_dev* %42, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %80

44:                                               ; preds = %37
  br label %45

45:                                               ; preds = %44, %34
  %46 = load %struct.mlx5_lag*, %struct.mlx5_lag** %5, align 8
  %47 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %48 = load %struct.net_device*, %struct.net_device** %4, align 8
  %49 = call i32 @mlx5_lag_dev_add_pf(%struct.mlx5_lag* %46, %struct.mlx5_core_dev* %47, %struct.net_device* %48)
  %50 = load %struct.mlx5_lag*, %struct.mlx5_lag** %5, align 8
  %51 = getelementptr inbounds %struct.mlx5_lag, %struct.mlx5_lag* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %71, label %55

55:                                               ; preds = %45
  %56 = load i32*, i32** @mlx5_lag_netdev_event, align 8
  %57 = load %struct.mlx5_lag*, %struct.mlx5_lag** %5, align 8
  %58 = getelementptr inbounds %struct.mlx5_lag, %struct.mlx5_lag* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store i32* %56, i32** %59, align 8
  %60 = load %struct.mlx5_lag*, %struct.mlx5_lag** %5, align 8
  %61 = getelementptr inbounds %struct.mlx5_lag, %struct.mlx5_lag* %60, i32 0, i32 0
  %62 = call i64 @register_netdevice_notifier(%struct.TYPE_4__* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %55
  %65 = load %struct.mlx5_lag*, %struct.mlx5_lag** %5, align 8
  %66 = getelementptr inbounds %struct.mlx5_lag, %struct.mlx5_lag* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  store i32* null, i32** %67, align 8
  %68 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %69 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_err(%struct.mlx5_core_dev* %68, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %70

70:                                               ; preds = %64, %55
  br label %71

71:                                               ; preds = %70, %45
  %72 = load %struct.mlx5_lag*, %struct.mlx5_lag** %5, align 8
  %73 = call i32 @mlx5_lag_mp_init(%struct.mlx5_lag* %72)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %78 = load i32, i32* %7, align 4
  %79 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_err(%struct.mlx5_core_dev* %77, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %23, %41, %76, %71
  ret void
}

declare dso_local i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev*, i32) #1

declare dso_local %struct.mlx5_core_dev* @mlx5_get_next_phys_dev(%struct.mlx5_core_dev*) #1

declare dso_local %struct.mlx5_lag* @mlx5_lag_dev_alloc(...) #1

declare dso_local i32 @mlx5_core_err(%struct.mlx5_core_dev*, i8*, ...) #1

declare dso_local i32 @mlx5_lag_dev_add_pf(%struct.mlx5_lag*, %struct.mlx5_core_dev*, %struct.net_device*) #1

declare dso_local i64 @register_netdevice_notifier(%struct.TYPE_4__*) #1

declare dso_local i32 @mlx5_lag_mp_init(%struct.mlx5_lag*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
