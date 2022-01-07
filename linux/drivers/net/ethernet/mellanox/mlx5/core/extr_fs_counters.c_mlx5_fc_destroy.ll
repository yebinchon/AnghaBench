; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_counters.c_mlx5_fc_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_counters.c_mlx5_fc_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mlx5_fc_stats }
%struct.mlx5_fc_stats = type { i32, i32, i32 }
%struct.mlx5_fc = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5_fc_destroy(%struct.mlx5_core_dev* %0, %struct.mlx5_fc* %1) #0 {
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
  %10 = icmp ne %struct.mlx5_fc* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %33

12:                                               ; preds = %2
  %13 = load %struct.mlx5_fc*, %struct.mlx5_fc** %4, align 8
  %14 = getelementptr inbounds %struct.mlx5_fc, %struct.mlx5_fc* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %12
  %18 = load %struct.mlx5_fc*, %struct.mlx5_fc** %4, align 8
  %19 = getelementptr inbounds %struct.mlx5_fc, %struct.mlx5_fc* %18, i32 0, i32 0
  %20 = load %struct.mlx5_fc_stats*, %struct.mlx5_fc_stats** %5, align 8
  %21 = getelementptr inbounds %struct.mlx5_fc_stats, %struct.mlx5_fc_stats* %20, i32 0, i32 2
  %22 = call i32 @llist_add(i32* %19, i32* %21)
  %23 = load %struct.mlx5_fc_stats*, %struct.mlx5_fc_stats** %5, align 8
  %24 = getelementptr inbounds %struct.mlx5_fc_stats, %struct.mlx5_fc_stats* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.mlx5_fc_stats*, %struct.mlx5_fc_stats** %5, align 8
  %27 = getelementptr inbounds %struct.mlx5_fc_stats, %struct.mlx5_fc_stats* %26, i32 0, i32 0
  %28 = call i32 @mod_delayed_work(i32 %25, i32* %27, i32 0)
  br label %33

29:                                               ; preds = %12
  %30 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %31 = load %struct.mlx5_fc*, %struct.mlx5_fc** %4, align 8
  %32 = call i32 @mlx5_fc_release(%struct.mlx5_core_dev* %30, %struct.mlx5_fc* %31)
  br label %33

33:                                               ; preds = %29, %17, %11
  ret void
}

declare dso_local i32 @llist_add(i32*, i32*) #1

declare dso_local i32 @mod_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @mlx5_fc_release(%struct.mlx5_core_dev*, %struct.mlx5_fc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
