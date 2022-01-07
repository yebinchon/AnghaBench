; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type opaque
%struct.net_device = type { i32 }

@mlx5e_nic_profile = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"mlx5e_create_netdev failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"mlx5e_attach failed, %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"register_netdev failed, %d\0A\00", align 1
@MLX5_ESWITCH_OFFLOADS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.mlx5_core_dev*)* @mlx5e_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @mlx5e_add(%struct.mlx5_core_dev* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %3, align 8
  %8 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %9 = bitcast %struct.mlx5_core_dev* %8 to i8*
  %10 = call i32 @mlx5e_check_required_hca_cap(i8* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %62

14:                                               ; preds = %1
  %15 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %16 = bitcast %struct.mlx5_core_dev* %15 to i8*
  %17 = call i32 @mlx5e_get_max_num_channels(i8* %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %19 = bitcast %struct.mlx5_core_dev* %18 to i8*
  %20 = load i32, i32* %7, align 4
  %21 = call %struct.net_device* @mlx5e_create_netdev(i8* %19, i32* @mlx5e_nic_profile, i32 %20, i32* null)
  store %struct.net_device* %21, %struct.net_device** %4, align 8
  %22 = load %struct.net_device*, %struct.net_device** %4, align 8
  %23 = icmp ne %struct.net_device* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %14
  %25 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %26 = bitcast %struct.mlx5_core_dev* %25 to i8*
  %27 = call i32 (i8*, i8*, ...) @mlx5_core_err(i8* %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %2, align 8
  br label %62

28:                                               ; preds = %14
  %29 = load %struct.net_device*, %struct.net_device** %4, align 8
  %30 = call i8* @netdev_priv(%struct.net_device* %29)
  store i8* %30, i8** %5, align 8
  %31 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %32 = bitcast %struct.mlx5_core_dev* %31 to i8*
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @mlx5e_attach(i8* %32, i8* %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %28
  %38 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %39 = bitcast %struct.mlx5_core_dev* %38 to i8*
  %40 = load i32, i32* %6, align 4
  %41 = call i32 (i8*, i8*, ...) @mlx5_core_err(i8* %39, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  br label %59

42:                                               ; preds = %28
  %43 = load %struct.net_device*, %struct.net_device** %4, align 8
  %44 = call i32 @register_netdev(%struct.net_device* %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %49 = bitcast %struct.mlx5_core_dev* %48 to i8*
  %50 = load i32, i32* %6, align 4
  %51 = call i32 (i8*, i8*, ...) @mlx5_core_err(i8* %49, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  br label %54

52:                                               ; preds = %42
  %53 = load i8*, i8** %5, align 8
  store i8* %53, i8** %2, align 8
  br label %62

54:                                               ; preds = %47
  %55 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %56 = bitcast %struct.mlx5_core_dev* %55 to i8*
  %57 = load i8*, i8** %5, align 8
  %58 = call i32 @mlx5e_detach(i8* %56, i8* %57)
  br label %59

59:                                               ; preds = %54, %37
  %60 = load i8*, i8** %5, align 8
  %61 = call i32 @mlx5e_destroy_netdev(i8* %60)
  store i8* null, i8** %2, align 8
  br label %62

62:                                               ; preds = %59, %52, %24, %13
  %63 = load i8*, i8** %2, align 8
  ret i8* %63
}

declare dso_local i32 @mlx5e_check_required_hca_cap(i8*) #1

declare dso_local i32 @mlx5e_get_max_num_channels(i8*) #1

declare dso_local %struct.net_device* @mlx5e_create_netdev(i8*, i32*, i32, i32*) #1

declare dso_local i32 @mlx5_core_err(i8*, i8*, ...) #1

declare dso_local i8* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mlx5e_attach(i8*, i8*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @mlx5e_detach(i8*, i8*) #1

declare dso_local i32 @mlx5e_destroy_netdev(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
