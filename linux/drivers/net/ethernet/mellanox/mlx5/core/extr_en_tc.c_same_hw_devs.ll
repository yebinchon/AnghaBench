; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_same_hw_devs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_same_hw_devs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_priv*, %struct.mlx5e_priv*)* @same_hw_devs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @same_hw_devs(%struct.mlx5e_priv* %0, %struct.mlx5e_priv* %1) #0 {
  %3 = alloca %struct.mlx5e_priv*, align 8
  %4 = alloca %struct.mlx5e_priv*, align 8
  %5 = alloca %struct.mlx5_core_dev*, align 8
  %6 = alloca %struct.mlx5_core_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %3, align 8
  store %struct.mlx5e_priv* %1, %struct.mlx5e_priv** %4, align 8
  %9 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %10 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %9, i32 0, i32 0
  %11 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %10, align 8
  store %struct.mlx5_core_dev* %11, %struct.mlx5_core_dev** %5, align 8
  %12 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %13 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %12, i32 0, i32 0
  %14 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %13, align 8
  store %struct.mlx5_core_dev* %14, %struct.mlx5_core_dev** %6, align 8
  %15 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %16 = call i64 @mlx5_query_nic_system_image_guid(%struct.mlx5_core_dev* %15)
  store i64 %16, i64* %7, align 8
  %17 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %18 = call i64 @mlx5_query_nic_system_image_guid(%struct.mlx5_core_dev* %17)
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* %8, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  ret i32 %22
}

declare dso_local i64 @mlx5_query_nic_system_image_guid(%struct.mlx5_core_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
