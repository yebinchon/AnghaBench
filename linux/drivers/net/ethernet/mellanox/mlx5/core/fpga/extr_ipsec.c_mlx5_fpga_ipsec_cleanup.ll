; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_ipsec.c_mlx5_fpga_ipsec_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_ipsec.c_mlx5_fpga_ipsec_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.mlx5_fpga_device* }
%struct.mlx5_fpga_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5_fpga_ipsec_cleanup(%struct.mlx5_core_dev* %0) #0 {
  %2 = alloca %struct.mlx5_core_dev*, align 8
  %3 = alloca %struct.mlx5_fpga_device*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %2, align 8
  %4 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %5 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %4, i32 0, i32 0
  %6 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  store %struct.mlx5_fpga_device* %6, %struct.mlx5_fpga_device** %3, align 8
  %7 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %8 = call i32 @mlx5_fpga_is_ipsec_device(%struct.mlx5_core_dev* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %34

11:                                               ; preds = %1
  %12 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %3, align 8
  %13 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  %16 = call i32 @destroy_rules_rb(i32* %15)
  %17 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %3, align 8
  %18 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = call i32 @rhashtable_destroy(i32* %20)
  %22 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %3, align 8
  %23 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @mlx5_fpga_sbu_conn_destroy(i32 %26)
  %28 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %3, align 8
  %29 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = call i32 @kfree(%struct.TYPE_2__* %30)
  %32 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %3, align 8
  %33 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %32, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %33, align 8
  br label %34

34:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @mlx5_fpga_is_ipsec_device(%struct.mlx5_core_dev*) #1

declare dso_local i32 @destroy_rules_rb(i32*) #1

declare dso_local i32 @rhashtable_destroy(i32*) #1

declare dso_local i32 @mlx5_fpga_sbu_conn_destroy(i32) #1

declare dso_local i32 @kfree(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
