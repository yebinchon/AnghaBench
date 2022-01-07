; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rep.c_mlx5e_rep_neigh_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rep.c_mlx5e_rep_neigh_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_rep_priv = type { %struct.mlx5e_neigh_update_table }
%struct.mlx5e_neigh_update_table = type { i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@mlx5e_neigh_ht_params = common dso_local global i32 0, align 4
@mlx5e_rep_neigh_stats_work = common dso_local global i32 0, align 4
@mlx5e_rep_netevent_event = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_rep_priv*)* @mlx5e_rep_neigh_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_rep_neigh_init(%struct.mlx5e_rep_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5e_rep_priv*, align 8
  %4 = alloca %struct.mlx5e_neigh_update_table*, align 8
  %5 = alloca i32, align 4
  store %struct.mlx5e_rep_priv* %0, %struct.mlx5e_rep_priv** %3, align 8
  %6 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %3, align 8
  %7 = getelementptr inbounds %struct.mlx5e_rep_priv, %struct.mlx5e_rep_priv* %6, i32 0, i32 0
  store %struct.mlx5e_neigh_update_table* %7, %struct.mlx5e_neigh_update_table** %4, align 8
  %8 = load %struct.mlx5e_neigh_update_table*, %struct.mlx5e_neigh_update_table** %4, align 8
  %9 = getelementptr inbounds %struct.mlx5e_neigh_update_table, %struct.mlx5e_neigh_update_table* %8, i32 0, i32 0
  %10 = call i32 @rhashtable_init(i32* %9, i32* @mlx5e_neigh_ht_params)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %2, align 4
  br label %46

15:                                               ; preds = %1
  %16 = load %struct.mlx5e_neigh_update_table*, %struct.mlx5e_neigh_update_table** %4, align 8
  %17 = getelementptr inbounds %struct.mlx5e_neigh_update_table, %struct.mlx5e_neigh_update_table* %16, i32 0, i32 4
  %18 = call i32 @INIT_LIST_HEAD(i32* %17)
  %19 = load %struct.mlx5e_neigh_update_table*, %struct.mlx5e_neigh_update_table** %4, align 8
  %20 = getelementptr inbounds %struct.mlx5e_neigh_update_table, %struct.mlx5e_neigh_update_table* %19, i32 0, i32 3
  %21 = call i32 @mutex_init(i32* %20)
  %22 = load %struct.mlx5e_neigh_update_table*, %struct.mlx5e_neigh_update_table** %4, align 8
  %23 = getelementptr inbounds %struct.mlx5e_neigh_update_table, %struct.mlx5e_neigh_update_table* %22, i32 0, i32 2
  %24 = load i32, i32* @mlx5e_rep_neigh_stats_work, align 4
  %25 = call i32 @INIT_DELAYED_WORK(i32* %23, i32 %24)
  %26 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %3, align 8
  %27 = call i32 @mlx5e_rep_neigh_update_init_interval(%struct.mlx5e_rep_priv* %26)
  %28 = load i32, i32* @mlx5e_rep_netevent_event, align 4
  %29 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %3, align 8
  %30 = getelementptr inbounds %struct.mlx5e_rep_priv, %struct.mlx5e_rep_priv* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.mlx5e_neigh_update_table, %struct.mlx5e_neigh_update_table* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 %28, i32* %32, align 4
  %33 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %3, align 8
  %34 = getelementptr inbounds %struct.mlx5e_rep_priv, %struct.mlx5e_rep_priv* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.mlx5e_neigh_update_table, %struct.mlx5e_neigh_update_table* %34, i32 0, i32 1
  %36 = call i32 @register_netevent_notifier(%struct.TYPE_2__* %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %15
  br label %41

40:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %46

41:                                               ; preds = %39
  %42 = load %struct.mlx5e_neigh_update_table*, %struct.mlx5e_neigh_update_table** %4, align 8
  %43 = getelementptr inbounds %struct.mlx5e_neigh_update_table, %struct.mlx5e_neigh_update_table* %42, i32 0, i32 0
  %44 = call i32 @rhashtable_destroy(i32* %43)
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %41, %40, %13
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @rhashtable_init(i32*, i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @mlx5e_rep_neigh_update_init_interval(%struct.mlx5e_rep_priv*) #1

declare dso_local i32 @register_netevent_notifier(%struct.TYPE_2__*) #1

declare dso_local i32 @rhashtable_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
