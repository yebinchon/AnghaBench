; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_qp.c_mlx5_init_qp_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_qp.c_mlx5_init_qp_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.mlx5_qp_table }
%struct.mlx5_qp_table = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@rsc_event_notifier = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5_init_qp_table(%struct.mlx5_core_dev* %0) #0 {
  %2 = alloca %struct.mlx5_core_dev*, align 8
  %3 = alloca %struct.mlx5_qp_table*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %2, align 8
  %4 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %5 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store %struct.mlx5_qp_table* %6, %struct.mlx5_qp_table** %3, align 8
  %7 = load %struct.mlx5_qp_table*, %struct.mlx5_qp_table** %3, align 8
  %8 = call i32 @memset(%struct.mlx5_qp_table* %7, i32 0, i32 12)
  %9 = load %struct.mlx5_qp_table*, %struct.mlx5_qp_table** %3, align 8
  %10 = getelementptr inbounds %struct.mlx5_qp_table, %struct.mlx5_qp_table* %9, i32 0, i32 2
  %11 = call i32 @spin_lock_init(i32* %10)
  %12 = load %struct.mlx5_qp_table*, %struct.mlx5_qp_table** %3, align 8
  %13 = getelementptr inbounds %struct.mlx5_qp_table, %struct.mlx5_qp_table* %12, i32 0, i32 1
  %14 = load i32, i32* @GFP_ATOMIC, align 4
  %15 = call i32 @INIT_RADIX_TREE(i32* %13, i32 %14)
  %16 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %17 = call i32 @mlx5_qp_debugfs_init(%struct.mlx5_core_dev* %16)
  %18 = load i32, i32* @rsc_event_notifier, align 4
  %19 = load %struct.mlx5_qp_table*, %struct.mlx5_qp_table** %3, align 8
  %20 = getelementptr inbounds %struct.mlx5_qp_table, %struct.mlx5_qp_table* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 4
  %22 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %23 = load %struct.mlx5_qp_table*, %struct.mlx5_qp_table** %3, align 8
  %24 = getelementptr inbounds %struct.mlx5_qp_table, %struct.mlx5_qp_table* %23, i32 0, i32 0
  %25 = call i32 @mlx5_notifier_register(%struct.mlx5_core_dev* %22, %struct.TYPE_4__* %24)
  ret void
}

declare dso_local i32 @memset(%struct.mlx5_qp_table*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_RADIX_TREE(i32*, i32) #1

declare dso_local i32 @mlx5_qp_debugfs_init(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_notifier_register(%struct.mlx5_core_dev*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
