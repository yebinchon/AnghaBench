; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/lib/extr_vxlan.c_mlx5_vxlan_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/lib/extr_vxlan.c_mlx5_vxlan_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_vxlan = type { i32, i32, i32, %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { i32 }

@tunnel_stateless_vxlan = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IANA_VXLAN_UDP_PORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mlx5_vxlan* @mlx5_vxlan_create(%struct.mlx5_core_dev* %0) #0 {
  %2 = alloca %struct.mlx5_vxlan*, align 8
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca %struct.mlx5_vxlan*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %3, align 8
  %5 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %6 = load i32, i32* @tunnel_stateless_vxlan, align 4
  %7 = call i32 @MLX5_CAP_ETH(%struct.mlx5_core_dev* %5, i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %11 = call i32 @mlx5_core_is_pf(%struct.mlx5_core_dev* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %9, %1
  %14 = load i32, i32* @ENOTSUPP, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.mlx5_vxlan* @ERR_PTR(i32 %15)
  store %struct.mlx5_vxlan* %16, %struct.mlx5_vxlan** %2, align 8
  br label %44

17:                                               ; preds = %9
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.mlx5_vxlan* @kzalloc(i32 24, i32 %18)
  store %struct.mlx5_vxlan* %19, %struct.mlx5_vxlan** %4, align 8
  %20 = load %struct.mlx5_vxlan*, %struct.mlx5_vxlan** %4, align 8
  %21 = icmp ne %struct.mlx5_vxlan* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.mlx5_vxlan* @ERR_PTR(i32 %24)
  store %struct.mlx5_vxlan* %25, %struct.mlx5_vxlan** %2, align 8
  br label %44

26:                                               ; preds = %17
  %27 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %28 = load %struct.mlx5_vxlan*, %struct.mlx5_vxlan** %4, align 8
  %29 = getelementptr inbounds %struct.mlx5_vxlan, %struct.mlx5_vxlan* %28, i32 0, i32 3
  store %struct.mlx5_core_dev* %27, %struct.mlx5_core_dev** %29, align 8
  %30 = load %struct.mlx5_vxlan*, %struct.mlx5_vxlan** %4, align 8
  %31 = getelementptr inbounds %struct.mlx5_vxlan, %struct.mlx5_vxlan* %30, i32 0, i32 2
  %32 = call i32 @mutex_init(i32* %31)
  %33 = load %struct.mlx5_vxlan*, %struct.mlx5_vxlan** %4, align 8
  %34 = getelementptr inbounds %struct.mlx5_vxlan, %struct.mlx5_vxlan* %33, i32 0, i32 1
  %35 = call i32 @spin_lock_init(i32* %34)
  %36 = load %struct.mlx5_vxlan*, %struct.mlx5_vxlan** %4, align 8
  %37 = getelementptr inbounds %struct.mlx5_vxlan, %struct.mlx5_vxlan* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @hash_init(i32 %38)
  %40 = load %struct.mlx5_vxlan*, %struct.mlx5_vxlan** %4, align 8
  %41 = load i32, i32* @IANA_VXLAN_UDP_PORT, align 4
  %42 = call i32 @mlx5_vxlan_add_port(%struct.mlx5_vxlan* %40, i32 %41)
  %43 = load %struct.mlx5_vxlan*, %struct.mlx5_vxlan** %4, align 8
  store %struct.mlx5_vxlan* %43, %struct.mlx5_vxlan** %2, align 8
  br label %44

44:                                               ; preds = %26, %22, %13
  %45 = load %struct.mlx5_vxlan*, %struct.mlx5_vxlan** %2, align 8
  ret %struct.mlx5_vxlan* %45
}

declare dso_local i32 @MLX5_CAP_ETH(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @mlx5_core_is_pf(%struct.mlx5_core_dev*) #1

declare dso_local %struct.mlx5_vxlan* @ERR_PTR(i32) #1

declare dso_local %struct.mlx5_vxlan* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @hash_init(i32) #1

declare dso_local i32 @mlx5_vxlan_add_port(%struct.mlx5_vxlan*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
