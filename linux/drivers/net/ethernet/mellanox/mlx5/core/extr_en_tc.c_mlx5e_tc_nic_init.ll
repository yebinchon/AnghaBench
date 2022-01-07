; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_mlx5e_tc_nic_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_mlx5e_tc_nic_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.mlx5e_tc_table }
%struct.mlx5e_tc_table = type { %struct.TYPE_6__, i32, i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_4__ = type { i32, i32 }

@tc_ht_params = common dso_local global i32 0, align 4
@mlx5e_tc_netdev_event = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [36 x i8] c"Failed to register netdev notifier\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5e_tc_nic_init(%struct.mlx5e_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5e_priv*, align 8
  %4 = alloca %struct.mlx5e_tc_table*, align 8
  %5 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %3, align 8
  %6 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %7 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  store %struct.mlx5e_tc_table* %8, %struct.mlx5e_tc_table** %4, align 8
  %9 = load %struct.mlx5e_tc_table*, %struct.mlx5e_tc_table** %4, align 8
  %10 = getelementptr inbounds %struct.mlx5e_tc_table, %struct.mlx5e_tc_table* %9, i32 0, i32 5
  %11 = call i32 @mutex_init(i32* %10)
  %12 = load %struct.mlx5e_tc_table*, %struct.mlx5e_tc_table** %4, align 8
  %13 = getelementptr inbounds %struct.mlx5e_tc_table, %struct.mlx5e_tc_table* %12, i32 0, i32 4
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = call i32 @mutex_init(i32* %14)
  %16 = load %struct.mlx5e_tc_table*, %struct.mlx5e_tc_table** %4, align 8
  %17 = getelementptr inbounds %struct.mlx5e_tc_table, %struct.mlx5e_tc_table* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @hash_init(i32 %19)
  %21 = load %struct.mlx5e_tc_table*, %struct.mlx5e_tc_table** %4, align 8
  %22 = getelementptr inbounds %struct.mlx5e_tc_table, %struct.mlx5e_tc_table* %21, i32 0, i32 3
  %23 = call i32 @mutex_init(i32* %22)
  %24 = load %struct.mlx5e_tc_table*, %struct.mlx5e_tc_table** %4, align 8
  %25 = getelementptr inbounds %struct.mlx5e_tc_table, %struct.mlx5e_tc_table* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @hash_init(i32 %26)
  %28 = load %struct.mlx5e_tc_table*, %struct.mlx5e_tc_table** %4, align 8
  %29 = getelementptr inbounds %struct.mlx5e_tc_table, %struct.mlx5e_tc_table* %28, i32 0, i32 1
  %30 = call i32 @rhashtable_init(i32* %29, i32* @tc_ht_params)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %1
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* %2, align 4
  br label %54

35:                                               ; preds = %1
  %36 = load i32*, i32** @mlx5e_tc_netdev_event, align 8
  %37 = load %struct.mlx5e_tc_table*, %struct.mlx5e_tc_table** %4, align 8
  %38 = getelementptr inbounds %struct.mlx5e_tc_table, %struct.mlx5e_tc_table* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  store i32* %36, i32** %39, align 8
  %40 = load %struct.mlx5e_tc_table*, %struct.mlx5e_tc_table** %4, align 8
  %41 = getelementptr inbounds %struct.mlx5e_tc_table, %struct.mlx5e_tc_table* %40, i32 0, i32 0
  %42 = call i64 @register_netdevice_notifier(%struct.TYPE_6__* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %35
  %45 = load %struct.mlx5e_tc_table*, %struct.mlx5e_tc_table** %4, align 8
  %46 = getelementptr inbounds %struct.mlx5e_tc_table, %struct.mlx5e_tc_table* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  store i32* null, i32** %47, align 8
  %48 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %49 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @mlx5_core_warn(i32 %50, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %52

52:                                               ; preds = %44, %35
  %53 = load i32, i32* %5, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %52, %33
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @hash_init(i32) #1

declare dso_local i32 @rhashtable_init(i32*, i32*) #1

declare dso_local i64 @register_netdevice_notifier(%struct.TYPE_6__*) #1

declare dso_local i32 @mlx5_core_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
