; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_create_netdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_create_netdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlx5_core_dev = type { i32 }
%struct.mlx5e_profile = type { i32, i32, i32 (%struct.mlx5_core_dev.0*, %struct.net_device*, %struct.mlx5e_profile*, i8*)* }
%struct.mlx5_core_dev.0 = type opaque

@.str = private unnamed_addr constant [29 x i8] c"alloc_etherdev_mqs() failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to init mlx5e profile %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.net_device* @mlx5e_create_netdev(%struct.mlx5_core_dev* %0, %struct.mlx5e_profile* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.mlx5_core_dev*, align 8
  %7 = alloca %struct.mlx5e_profile*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %6, align 8
  store %struct.mlx5e_profile* %1, %struct.mlx5e_profile** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %12 = load i32, i32* %8, align 4
  %13 = load %struct.mlx5e_profile*, %struct.mlx5e_profile** %7, align 8
  %14 = getelementptr inbounds %struct.mlx5e_profile, %struct.mlx5e_profile* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = mul nsw i32 %12, %15
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.mlx5e_profile*, %struct.mlx5e_profile** %7, align 8
  %19 = getelementptr inbounds %struct.mlx5e_profile, %struct.mlx5e_profile* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %17, %20
  %22 = call %struct.net_device* @alloc_etherdev_mqs(i32 4, i32 %16, i32 %21)
  store %struct.net_device* %22, %struct.net_device** %10, align 8
  %23 = load %struct.net_device*, %struct.net_device** %10, align 8
  %24 = icmp ne %struct.net_device* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %4
  %26 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %27 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_err(%struct.mlx5_core_dev* %26, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store %struct.net_device* null, %struct.net_device** %5, align 8
  br label %49

28:                                               ; preds = %4
  %29 = load %struct.mlx5e_profile*, %struct.mlx5e_profile** %7, align 8
  %30 = getelementptr inbounds %struct.mlx5e_profile, %struct.mlx5e_profile* %29, i32 0, i32 2
  %31 = load i32 (%struct.mlx5_core_dev.0*, %struct.net_device*, %struct.mlx5e_profile*, i8*)*, i32 (%struct.mlx5_core_dev.0*, %struct.net_device*, %struct.mlx5e_profile*, i8*)** %30, align 8
  %32 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %33 = bitcast %struct.mlx5_core_dev* %32 to %struct.mlx5_core_dev.0*
  %34 = load %struct.net_device*, %struct.net_device** %10, align 8
  %35 = load %struct.mlx5e_profile*, %struct.mlx5e_profile** %7, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = call i32 %31(%struct.mlx5_core_dev.0* %33, %struct.net_device* %34, %struct.mlx5e_profile* %35, i8* %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %28
  %41 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %42 = load i32, i32* %11, align 4
  %43 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_err(%struct.mlx5_core_dev* %41, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  br label %46

44:                                               ; preds = %28
  %45 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %45, %struct.net_device** %5, align 8
  br label %49

46:                                               ; preds = %40
  %47 = load %struct.net_device*, %struct.net_device** %10, align 8
  %48 = call i32 @free_netdev(%struct.net_device* %47)
  store %struct.net_device* null, %struct.net_device** %5, align 8
  br label %49

49:                                               ; preds = %46, %44, %25
  %50 = load %struct.net_device*, %struct.net_device** %5, align 8
  ret %struct.net_device* %50
}

declare dso_local %struct.net_device* @alloc_etherdev_mqs(i32, i32, i32) #1

declare dso_local i32 @mlx5_core_err(%struct.mlx5_core_dev*, i8*, ...) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
