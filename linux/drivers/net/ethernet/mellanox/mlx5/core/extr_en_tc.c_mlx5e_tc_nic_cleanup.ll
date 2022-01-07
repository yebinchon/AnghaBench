; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_mlx5e_tc_nic_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_mlx5e_tc_nic_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.mlx5e_tc_table }
%struct.mlx5e_tc_table = type { i32, i32*, i32, i32, %struct.TYPE_4__, %struct.TYPE_6__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5e_tc_nic_cleanup(%struct.mlx5e_priv* %0) #0 {
  %2 = alloca %struct.mlx5e_priv*, align 8
  %3 = alloca %struct.mlx5e_tc_table*, align 8
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %2, align 8
  %4 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %5 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  store %struct.mlx5e_tc_table* %6, %struct.mlx5e_tc_table** %3, align 8
  %7 = load %struct.mlx5e_tc_table*, %struct.mlx5e_tc_table** %3, align 8
  %8 = getelementptr inbounds %struct.mlx5e_tc_table, %struct.mlx5e_tc_table* %7, i32 0, i32 5
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.mlx5e_tc_table*, %struct.mlx5e_tc_table** %3, align 8
  %14 = getelementptr inbounds %struct.mlx5e_tc_table, %struct.mlx5e_tc_table* %13, i32 0, i32 5
  %15 = call i32 @unregister_netdevice_notifier(%struct.TYPE_6__* %14)
  br label %16

16:                                               ; preds = %12, %1
  %17 = load %struct.mlx5e_tc_table*, %struct.mlx5e_tc_table** %3, align 8
  %18 = getelementptr inbounds %struct.mlx5e_tc_table, %struct.mlx5e_tc_table* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = call i32 @mutex_destroy(i32* %19)
  %21 = load %struct.mlx5e_tc_table*, %struct.mlx5e_tc_table** %3, align 8
  %22 = getelementptr inbounds %struct.mlx5e_tc_table, %struct.mlx5e_tc_table* %21, i32 0, i32 3
  %23 = call i32 @mutex_destroy(i32* %22)
  %24 = load %struct.mlx5e_tc_table*, %struct.mlx5e_tc_table** %3, align 8
  %25 = getelementptr inbounds %struct.mlx5e_tc_table, %struct.mlx5e_tc_table* %24, i32 0, i32 2
  %26 = call i32 @rhashtable_destroy(i32* %25)
  %27 = load %struct.mlx5e_tc_table*, %struct.mlx5e_tc_table** %3, align 8
  %28 = getelementptr inbounds %struct.mlx5e_tc_table, %struct.mlx5e_tc_table* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @IS_ERR_OR_NULL(i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %16
  %33 = load %struct.mlx5e_tc_table*, %struct.mlx5e_tc_table** %3, align 8
  %34 = getelementptr inbounds %struct.mlx5e_tc_table, %struct.mlx5e_tc_table* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @mlx5_destroy_flow_table(i32* %35)
  %37 = load %struct.mlx5e_tc_table*, %struct.mlx5e_tc_table** %3, align 8
  %38 = getelementptr inbounds %struct.mlx5e_tc_table, %struct.mlx5e_tc_table* %37, i32 0, i32 1
  store i32* null, i32** %38, align 8
  br label %39

39:                                               ; preds = %32, %16
  %40 = load %struct.mlx5e_tc_table*, %struct.mlx5e_tc_table** %3, align 8
  %41 = getelementptr inbounds %struct.mlx5e_tc_table, %struct.mlx5e_tc_table* %40, i32 0, i32 0
  %42 = call i32 @mutex_destroy(i32* %41)
  ret void
}

declare dso_local i32 @unregister_netdevice_notifier(%struct.TYPE_6__*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @rhashtable_destroy(i32*) #1

declare dso_local i32 @IS_ERR_OR_NULL(i32*) #1

declare dso_local i32 @mlx5_destroy_flow_table(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
