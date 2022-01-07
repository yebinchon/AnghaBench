; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_counters.c_mlx5_fc_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_counters.c_mlx5_fc_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_fc = type { i32, i32, %struct.TYPE_4__, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.mlx5_core_dev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.mlx5_fc_stats }
%struct.mlx5_fc_stats = type { i32, i32, i32, i32, i32 }

@jiffies = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_NOWAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mlx5_fc* @mlx5_fc_create(%struct.mlx5_core_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx5_fc*, align 8
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_fc*, align 8
  %7 = alloca %struct.mlx5_fc_stats*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.mlx5_fc* @mlx5_fc_acquire(%struct.mlx5_core_dev* %10, i32 %11)
  store %struct.mlx5_fc* %12, %struct.mlx5_fc** %6, align 8
  %13 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %14 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store %struct.mlx5_fc_stats* %15, %struct.mlx5_fc_stats** %7, align 8
  %16 = load %struct.mlx5_fc*, %struct.mlx5_fc** %6, align 8
  %17 = call i64 @IS_ERR(%struct.mlx5_fc* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load %struct.mlx5_fc*, %struct.mlx5_fc** %6, align 8
  store %struct.mlx5_fc* %20, %struct.mlx5_fc** %3, align 8
  br label %88

21:                                               ; preds = %2
  %22 = load %struct.mlx5_fc*, %struct.mlx5_fc** %6, align 8
  %23 = getelementptr inbounds %struct.mlx5_fc, %struct.mlx5_fc* %22, i32 0, i32 6
  %24 = call i32 @INIT_LIST_HEAD(i32* %23)
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.mlx5_fc*, %struct.mlx5_fc** %6, align 8
  %27 = getelementptr inbounds %struct.mlx5_fc, %struct.mlx5_fc* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %80

30:                                               ; preds = %21
  %31 = load %struct.mlx5_fc*, %struct.mlx5_fc** %6, align 8
  %32 = getelementptr inbounds %struct.mlx5_fc, %struct.mlx5_fc* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* @jiffies, align 4
  %35 = load %struct.mlx5_fc*, %struct.mlx5_fc** %6, align 8
  %36 = getelementptr inbounds %struct.mlx5_fc, %struct.mlx5_fc* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  store i32 %34, i32* %37, align 4
  %38 = load %struct.mlx5_fc*, %struct.mlx5_fc** %6, align 8
  %39 = getelementptr inbounds %struct.mlx5_fc, %struct.mlx5_fc* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.mlx5_fc*, %struct.mlx5_fc** %6, align 8
  %43 = getelementptr inbounds %struct.mlx5_fc, %struct.mlx5_fc* %42, i32 0, i32 4
  store i32 %41, i32* %43, align 4
  %44 = load %struct.mlx5_fc*, %struct.mlx5_fc** %6, align 8
  %45 = getelementptr inbounds %struct.mlx5_fc, %struct.mlx5_fc* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.mlx5_fc*, %struct.mlx5_fc** %6, align 8
  %49 = getelementptr inbounds %struct.mlx5_fc, %struct.mlx5_fc* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call i32 @idr_preload(i32 %50)
  %52 = load %struct.mlx5_fc_stats*, %struct.mlx5_fc_stats** %7, align 8
  %53 = getelementptr inbounds %struct.mlx5_fc_stats, %struct.mlx5_fc_stats* %52, i32 0, i32 3
  %54 = call i32 @spin_lock(i32* %53)
  %55 = load %struct.mlx5_fc_stats*, %struct.mlx5_fc_stats** %7, align 8
  %56 = getelementptr inbounds %struct.mlx5_fc_stats, %struct.mlx5_fc_stats* %55, i32 0, i32 4
  %57 = load %struct.mlx5_fc*, %struct.mlx5_fc** %6, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @GFP_NOWAIT, align 4
  %60 = call i32 @idr_alloc_u32(i32* %56, %struct.mlx5_fc* %57, i32* %9, i32 %58, i32 %59)
  store i32 %60, i32* %8, align 4
  %61 = load %struct.mlx5_fc_stats*, %struct.mlx5_fc_stats** %7, align 8
  %62 = getelementptr inbounds %struct.mlx5_fc_stats, %struct.mlx5_fc_stats* %61, i32 0, i32 3
  %63 = call i32 @spin_unlock(i32* %62)
  %64 = call i32 (...) @idr_preload_end()
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %30
  br label %82

68:                                               ; preds = %30
  %69 = load %struct.mlx5_fc*, %struct.mlx5_fc** %6, align 8
  %70 = getelementptr inbounds %struct.mlx5_fc, %struct.mlx5_fc* %69, i32 0, i32 1
  %71 = load %struct.mlx5_fc_stats*, %struct.mlx5_fc_stats** %7, align 8
  %72 = getelementptr inbounds %struct.mlx5_fc_stats, %struct.mlx5_fc_stats* %71, i32 0, i32 2
  %73 = call i32 @llist_add(i32* %70, i32* %72)
  %74 = load %struct.mlx5_fc_stats*, %struct.mlx5_fc_stats** %7, align 8
  %75 = getelementptr inbounds %struct.mlx5_fc_stats, %struct.mlx5_fc_stats* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.mlx5_fc_stats*, %struct.mlx5_fc_stats** %7, align 8
  %78 = getelementptr inbounds %struct.mlx5_fc_stats, %struct.mlx5_fc_stats* %77, i32 0, i32 0
  %79 = call i32 @mod_delayed_work(i32 %76, i32* %78, i32 0)
  br label %80

80:                                               ; preds = %68, %21
  %81 = load %struct.mlx5_fc*, %struct.mlx5_fc** %6, align 8
  store %struct.mlx5_fc* %81, %struct.mlx5_fc** %3, align 8
  br label %88

82:                                               ; preds = %67
  %83 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %84 = load %struct.mlx5_fc*, %struct.mlx5_fc** %6, align 8
  %85 = call i32 @mlx5_fc_release(%struct.mlx5_core_dev* %83, %struct.mlx5_fc* %84)
  %86 = load i32, i32* %8, align 4
  %87 = call %struct.mlx5_fc* @ERR_PTR(i32 %86)
  store %struct.mlx5_fc* %87, %struct.mlx5_fc** %3, align 8
  br label %88

88:                                               ; preds = %82, %80, %19
  %89 = load %struct.mlx5_fc*, %struct.mlx5_fc** %3, align 8
  ret %struct.mlx5_fc* %89
}

declare dso_local %struct.mlx5_fc* @mlx5_fc_acquire(%struct.mlx5_core_dev*, i32) #1

declare dso_local i64 @IS_ERR(%struct.mlx5_fc*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @idr_preload(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @idr_alloc_u32(i32*, %struct.mlx5_fc*, i32*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @idr_preload_end(...) #1

declare dso_local i32 @llist_add(i32*, i32*) #1

declare dso_local i32 @mod_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @mlx5_fc_release(%struct.mlx5_core_dev*, %struct.mlx5_fc*) #1

declare dso_local %struct.mlx5_fc* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
