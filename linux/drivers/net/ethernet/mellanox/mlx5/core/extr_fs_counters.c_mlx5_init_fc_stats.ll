; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_counters.c_mlx5_init_fc_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_counters.c_mlx5_init_fc_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mlx5_fc_stats }
%struct.mlx5_fc_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"mlx5_fc\00", align 1
@MLX5_FC_STATS_PERIOD = common dso_local global i32 0, align 4
@mlx5_fc_stats_work = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_init_fc_stats(%struct.mlx5_core_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca %struct.mlx5_fc_stats*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %3, align 8
  %7 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %8 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.mlx5_fc_stats* %9, %struct.mlx5_fc_stats** %4, align 8
  %10 = load %struct.mlx5_fc_stats*, %struct.mlx5_fc_stats** %4, align 8
  %11 = getelementptr inbounds %struct.mlx5_fc_stats, %struct.mlx5_fc_stats* %10, i32 0, i32 9
  %12 = call i32 @spin_lock_init(i32* %11)
  %13 = load %struct.mlx5_fc_stats*, %struct.mlx5_fc_stats** %4, align 8
  %14 = getelementptr inbounds %struct.mlx5_fc_stats, %struct.mlx5_fc_stats* %13, i32 0, i32 8
  %15 = call i32 @idr_init(i32* %14)
  %16 = load %struct.mlx5_fc_stats*, %struct.mlx5_fc_stats** %4, align 8
  %17 = getelementptr inbounds %struct.mlx5_fc_stats, %struct.mlx5_fc_stats* %16, i32 0, i32 7
  %18 = call i32 @INIT_LIST_HEAD(i32* %17)
  %19 = load %struct.mlx5_fc_stats*, %struct.mlx5_fc_stats** %4, align 8
  %20 = getelementptr inbounds %struct.mlx5_fc_stats, %struct.mlx5_fc_stats* %19, i32 0, i32 6
  %21 = call i32 @init_llist_head(i32* %20)
  %22 = load %struct.mlx5_fc_stats*, %struct.mlx5_fc_stats** %4, align 8
  %23 = getelementptr inbounds %struct.mlx5_fc_stats, %struct.mlx5_fc_stats* %22, i32 0, i32 5
  %24 = call i32 @init_llist_head(i32* %23)
  %25 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %26 = call i32 @get_max_bulk_query_len(%struct.mlx5_core_dev* %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @mlx5_cmd_fc_get_bulk_query_out_len(i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i32 @kzalloc(i32 %29, i32 %30)
  %32 = load %struct.mlx5_fc_stats*, %struct.mlx5_fc_stats** %4, align 8
  %33 = getelementptr inbounds %struct.mlx5_fc_stats, %struct.mlx5_fc_stats* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.mlx5_fc_stats*, %struct.mlx5_fc_stats** %4, align 8
  %35 = getelementptr inbounds %struct.mlx5_fc_stats, %struct.mlx5_fc_stats* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %1
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %69

41:                                               ; preds = %1
  %42 = call i32 @create_singlethread_workqueue(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.mlx5_fc_stats*, %struct.mlx5_fc_stats** %4, align 8
  %44 = getelementptr inbounds %struct.mlx5_fc_stats, %struct.mlx5_fc_stats* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 4
  %45 = load %struct.mlx5_fc_stats*, %struct.mlx5_fc_stats** %4, align 8
  %46 = getelementptr inbounds %struct.mlx5_fc_stats, %struct.mlx5_fc_stats* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %41
  br label %62

50:                                               ; preds = %41
  %51 = load i32, i32* @MLX5_FC_STATS_PERIOD, align 4
  %52 = load %struct.mlx5_fc_stats*, %struct.mlx5_fc_stats** %4, align 8
  %53 = getelementptr inbounds %struct.mlx5_fc_stats, %struct.mlx5_fc_stats* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 4
  %54 = load %struct.mlx5_fc_stats*, %struct.mlx5_fc_stats** %4, align 8
  %55 = getelementptr inbounds %struct.mlx5_fc_stats, %struct.mlx5_fc_stats* %54, i32 0, i32 2
  %56 = load i32, i32* @mlx5_fc_stats_work, align 4
  %57 = call i32 @INIT_DELAYED_WORK(i32* %55, i32 %56)
  %58 = load %struct.mlx5_fc_stats*, %struct.mlx5_fc_stats** %4, align 8
  %59 = getelementptr inbounds %struct.mlx5_fc_stats, %struct.mlx5_fc_stats* %58, i32 0, i32 1
  %60 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %61 = call i32 @mlx5_fc_pool_init(i32* %59, %struct.mlx5_core_dev* %60)
  store i32 0, i32* %2, align 4
  br label %69

62:                                               ; preds = %49
  %63 = load %struct.mlx5_fc_stats*, %struct.mlx5_fc_stats** %4, align 8
  %64 = getelementptr inbounds %struct.mlx5_fc_stats, %struct.mlx5_fc_stats* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @kfree(i32 %65)
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %62, %50, %38
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @idr_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_llist_head(i32*) #1

declare dso_local i32 @get_max_bulk_query_len(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_cmd_fc_get_bulk_query_out_len(i32) #1

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i32 @create_singlethread_workqueue(i8*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @mlx5_fc_pool_init(i32*, %struct.mlx5_core_dev*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
