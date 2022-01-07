; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_counters.c_mlx5_fc_stats_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_counters.c_mlx5_fc_stats_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mlx5_fc_stats }
%struct.mlx5_fc_stats = type { i32, i32 }
%struct.mlx5_fc = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_core_dev*, %struct.mlx5_fc*)* @mlx5_fc_stats_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5_fc_stats_remove(%struct.mlx5_core_dev* %0, %struct.mlx5_fc* %1) #0 {
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca %struct.mlx5_fc*, align 8
  %5 = alloca %struct.mlx5_fc_stats*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %3, align 8
  store %struct.mlx5_fc* %1, %struct.mlx5_fc** %4, align 8
  %6 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %7 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.mlx5_fc_stats* %8, %struct.mlx5_fc_stats** %5, align 8
  %9 = load %struct.mlx5_fc*, %struct.mlx5_fc** %4, align 8
  %10 = getelementptr inbounds %struct.mlx5_fc, %struct.mlx5_fc* %9, i32 0, i32 1
  %11 = call i32 @list_del(i32* %10)
  %12 = load %struct.mlx5_fc_stats*, %struct.mlx5_fc_stats** %5, align 8
  %13 = getelementptr inbounds %struct.mlx5_fc_stats, %struct.mlx5_fc_stats* %12, i32 0, i32 0
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load %struct.mlx5_fc_stats*, %struct.mlx5_fc_stats** %5, align 8
  %16 = getelementptr inbounds %struct.mlx5_fc_stats, %struct.mlx5_fc_stats* %15, i32 0, i32 1
  %17 = load %struct.mlx5_fc*, %struct.mlx5_fc** %4, align 8
  %18 = getelementptr inbounds %struct.mlx5_fc, %struct.mlx5_fc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @idr_remove(i32* %16, i32 %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @WARN_ON(i32 %23)
  %25 = load %struct.mlx5_fc_stats*, %struct.mlx5_fc_stats** %5, align 8
  %26 = getelementptr inbounds %struct.mlx5_fc_stats, %struct.mlx5_fc_stats* %25, i32 0, i32 0
  %27 = call i32 @spin_unlock(i32* %26)
  ret void
}

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
