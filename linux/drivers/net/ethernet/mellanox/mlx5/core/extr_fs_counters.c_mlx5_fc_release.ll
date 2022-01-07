; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_counters.c_mlx5_fc_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_counters.c_mlx5_fc_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mlx5_fc_stats }
%struct.mlx5_fc_stats = type { i32 }
%struct.mlx5_fc = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_core_dev*, %struct.mlx5_fc*)* @mlx5_fc_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5_fc_release(%struct.mlx5_core_dev* %0, %struct.mlx5_fc* %1) #0 {
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
  %10 = getelementptr inbounds %struct.mlx5_fc, %struct.mlx5_fc* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.mlx5_fc_stats*, %struct.mlx5_fc_stats** %5, align 8
  %15 = getelementptr inbounds %struct.mlx5_fc_stats, %struct.mlx5_fc_stats* %14, i32 0, i32 0
  %16 = load %struct.mlx5_fc*, %struct.mlx5_fc** %4, align 8
  %17 = call i32 @mlx5_fc_pool_release_counter(i32* %15, %struct.mlx5_fc* %16)
  br label %22

18:                                               ; preds = %2
  %19 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %20 = load %struct.mlx5_fc*, %struct.mlx5_fc** %4, align 8
  %21 = call i32 @mlx5_fc_free(%struct.mlx5_core_dev* %19, %struct.mlx5_fc* %20)
  br label %22

22:                                               ; preds = %18, %13
  ret void
}

declare dso_local i32 @mlx5_fc_pool_release_counter(i32*, %struct.mlx5_fc*) #1

declare dso_local i32 @mlx5_fc_free(%struct.mlx5_core_dev*, %struct.mlx5_fc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
