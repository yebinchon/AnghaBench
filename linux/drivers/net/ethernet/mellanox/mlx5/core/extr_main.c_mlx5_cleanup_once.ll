; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_main.c_mlx5_cleanup_once.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_main.c_mlx5_cleanup_once.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_core_dev*)* @mlx5_cleanup_once to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5_cleanup_once(%struct.mlx5_core_dev* %0) #0 {
  %2 = alloca %struct.mlx5_core_dev*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %2, align 8
  %3 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %4 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %3, i32 0, i32 4
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @mlx5_hv_vhca_destroy(i32 %5)
  %7 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %8 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @mlx5_fw_tracer_destroy(i32 %9)
  %11 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %12 = call i32 @mlx5_dm_cleanup(%struct.mlx5_core_dev* %11)
  %13 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %14 = call i32 @mlx5_fpga_cleanup(%struct.mlx5_core_dev* %13)
  %15 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %16 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @mlx5_eswitch_cleanup(i32 %18)
  %20 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %21 = call i32 @mlx5_sriov_cleanup(%struct.mlx5_core_dev* %20)
  %22 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %23 = call i32 @mlx5_mpfs_cleanup(%struct.mlx5_core_dev* %22)
  %24 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %25 = call i32 @mlx5_cleanup_rl_table(%struct.mlx5_core_dev* %24)
  %26 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %27 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @mlx5_geneve_destroy(i32 %28)
  %30 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %31 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @mlx5_vxlan_destroy(i32 %32)
  %34 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %35 = call i32 @mlx5_cleanup_clock(%struct.mlx5_core_dev* %34)
  %36 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %37 = call i32 @mlx5_cleanup_reserved_gids(%struct.mlx5_core_dev* %36)
  %38 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %39 = call i32 @mlx5_cleanup_mkey_table(%struct.mlx5_core_dev* %38)
  %40 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %41 = call i32 @mlx5_cleanup_qp_table(%struct.mlx5_core_dev* %40)
  %42 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %43 = call i32 @mlx5_cq_debugfs_cleanup(%struct.mlx5_core_dev* %42)
  %44 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %45 = call i32 @mlx5_events_cleanup(%struct.mlx5_core_dev* %44)
  %46 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %47 = call i32 @mlx5_eq_table_cleanup(%struct.mlx5_core_dev* %46)
  %48 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %49 = call i32 @mlx5_irq_table_cleanup(%struct.mlx5_core_dev* %48)
  %50 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %51 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @mlx5_devcom_unregister_device(i32 %53)
  ret void
}

declare dso_local i32 @mlx5_hv_vhca_destroy(i32) #1

declare dso_local i32 @mlx5_fw_tracer_destroy(i32) #1

declare dso_local i32 @mlx5_dm_cleanup(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_fpga_cleanup(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_eswitch_cleanup(i32) #1

declare dso_local i32 @mlx5_sriov_cleanup(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_mpfs_cleanup(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_cleanup_rl_table(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_geneve_destroy(i32) #1

declare dso_local i32 @mlx5_vxlan_destroy(i32) #1

declare dso_local i32 @mlx5_cleanup_clock(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_cleanup_reserved_gids(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_cleanup_mkey_table(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_cleanup_qp_table(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_cq_debugfs_cleanup(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_events_cleanup(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_eq_table_cleanup(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_irq_table_cleanup(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_devcom_unregister_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
