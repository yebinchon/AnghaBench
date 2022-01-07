; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_create_root_ns.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_create_root_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_flow_root_namespace = type { i32, i32, %struct.mlx5_flow_namespace, i32, %struct.mlx5_flow_cmds*, i32 }
%struct.mlx5_flow_namespace = type { i32 }
%struct.mlx5_flow_cmds = type { i32 }
%struct.mlx5_flow_steering = type { i32 }

@MLX5_ACCEL_IPSEC_CAP_DEVICE = common dso_local global i32 0, align 4
@FS_FT_NIC_RX = common dso_local global i32 0, align 4
@FS_FT_NIC_TX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx5_flow_root_namespace* (%struct.mlx5_flow_steering*, i32)* @create_root_ns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx5_flow_root_namespace* @create_root_ns(%struct.mlx5_flow_steering* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx5_flow_root_namespace*, align 8
  %4 = alloca %struct.mlx5_flow_steering*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_flow_cmds*, align 8
  %7 = alloca %struct.mlx5_flow_root_namespace*, align 8
  %8 = alloca %struct.mlx5_flow_namespace*, align 8
  store %struct.mlx5_flow_steering* %0, %struct.mlx5_flow_steering** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.mlx5_flow_cmds* @mlx5_fs_cmd_get_default(i32 %9)
  store %struct.mlx5_flow_cmds* %10, %struct.mlx5_flow_cmds** %6, align 8
  %11 = load %struct.mlx5_flow_steering*, %struct.mlx5_flow_steering** %4, align 8
  %12 = getelementptr inbounds %struct.mlx5_flow_steering, %struct.mlx5_flow_steering* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @mlx5_accel_ipsec_device_caps(i32 %13)
  %15 = load i32, i32* @MLX5_ACCEL_IPSEC_CAP_DEVICE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @FS_FT_NIC_RX, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @FS_FT_NIC_TX, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22, %18
  %27 = load i32, i32* %5, align 4
  %28 = call %struct.mlx5_flow_cmds* @mlx5_fs_cmd_get_default_ipsec_fpga_cmds(i32 %27)
  store %struct.mlx5_flow_cmds* %28, %struct.mlx5_flow_cmds** %6, align 8
  br label %29

29:                                               ; preds = %26, %22, %2
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.mlx5_flow_root_namespace* @kzalloc(i32 32, i32 %30)
  store %struct.mlx5_flow_root_namespace* %31, %struct.mlx5_flow_root_namespace** %7, align 8
  %32 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %7, align 8
  %33 = icmp ne %struct.mlx5_flow_root_namespace* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  store %struct.mlx5_flow_root_namespace* null, %struct.mlx5_flow_root_namespace** %3, align 8
  br label %64

35:                                               ; preds = %29
  %36 = load %struct.mlx5_flow_steering*, %struct.mlx5_flow_steering** %4, align 8
  %37 = getelementptr inbounds %struct.mlx5_flow_steering, %struct.mlx5_flow_steering* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %7, align 8
  %40 = getelementptr inbounds %struct.mlx5_flow_root_namespace, %struct.mlx5_flow_root_namespace* %39, i32 0, i32 5
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %7, align 8
  %43 = getelementptr inbounds %struct.mlx5_flow_root_namespace, %struct.mlx5_flow_root_namespace* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.mlx5_flow_cmds*, %struct.mlx5_flow_cmds** %6, align 8
  %45 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %7, align 8
  %46 = getelementptr inbounds %struct.mlx5_flow_root_namespace, %struct.mlx5_flow_root_namespace* %45, i32 0, i32 4
  store %struct.mlx5_flow_cmds* %44, %struct.mlx5_flow_cmds** %46, align 8
  %47 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %7, align 8
  %48 = getelementptr inbounds %struct.mlx5_flow_root_namespace, %struct.mlx5_flow_root_namespace* %47, i32 0, i32 3
  %49 = call i32 @INIT_LIST_HEAD(i32* %48)
  %50 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %7, align 8
  %51 = getelementptr inbounds %struct.mlx5_flow_root_namespace, %struct.mlx5_flow_root_namespace* %50, i32 0, i32 2
  store %struct.mlx5_flow_namespace* %51, %struct.mlx5_flow_namespace** %8, align 8
  %52 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %8, align 8
  %53 = call i32 @fs_init_namespace(%struct.mlx5_flow_namespace* %52)
  %54 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %7, align 8
  %55 = getelementptr inbounds %struct.mlx5_flow_root_namespace, %struct.mlx5_flow_root_namespace* %54, i32 0, i32 1
  %56 = call i32 @mutex_init(i32* %55)
  %57 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %8, align 8
  %58 = getelementptr inbounds %struct.mlx5_flow_namespace, %struct.mlx5_flow_namespace* %57, i32 0, i32 0
  %59 = call i32 @tree_init_node(i32* %58, i32* null, i32* null)
  %60 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %8, align 8
  %61 = getelementptr inbounds %struct.mlx5_flow_namespace, %struct.mlx5_flow_namespace* %60, i32 0, i32 0
  %62 = call i32 @tree_add_node(i32* %61, i32* null)
  %63 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %7, align 8
  store %struct.mlx5_flow_root_namespace* %63, %struct.mlx5_flow_root_namespace** %3, align 8
  br label %64

64:                                               ; preds = %35, %34
  %65 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %3, align 8
  ret %struct.mlx5_flow_root_namespace* %65
}

declare dso_local %struct.mlx5_flow_cmds* @mlx5_fs_cmd_get_default(i32) #1

declare dso_local i32 @mlx5_accel_ipsec_device_caps(i32) #1

declare dso_local %struct.mlx5_flow_cmds* @mlx5_fs_cmd_get_default_ipsec_fpga_cmds(i32) #1

declare dso_local %struct.mlx5_flow_root_namespace* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @fs_init_namespace(%struct.mlx5_flow_namespace*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @tree_init_node(i32*, i32*, i32*) #1

declare dso_local i32 @tree_add_node(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
