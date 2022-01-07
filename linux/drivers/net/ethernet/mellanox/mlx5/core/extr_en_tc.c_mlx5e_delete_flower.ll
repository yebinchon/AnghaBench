; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_mlx5e_delete_flower.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_mlx5e_delete_flower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlx5e_priv = type { i32 }
%struct.flow_cls_offload = type { i32 }
%struct.rhashtable = type { i32 }
%struct.mlx5e_tc_flow = type { i32 }

@tc_ht_params = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DELETED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5e_delete_flower(%struct.net_device* %0, %struct.mlx5e_priv* %1, %struct.flow_cls_offload* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.mlx5e_priv*, align 8
  %8 = alloca %struct.flow_cls_offload*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.rhashtable*, align 8
  %11 = alloca %struct.mlx5e_tc_flow*, align 8
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.mlx5e_priv* %1, %struct.mlx5e_priv** %7, align 8
  store %struct.flow_cls_offload* %2, %struct.flow_cls_offload** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %14 = load i64, i64* %9, align 8
  %15 = call %struct.rhashtable* @get_tc_ht(%struct.mlx5e_priv* %13, i64 %14)
  store %struct.rhashtable* %15, %struct.rhashtable** %10, align 8
  %16 = call i32 (...) @rcu_read_lock()
  %17 = load %struct.rhashtable*, %struct.rhashtable** %10, align 8
  %18 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %8, align 8
  %19 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %18, i32 0, i32 0
  %20 = load i32, i32* @tc_ht_params, align 4
  %21 = call %struct.mlx5e_tc_flow* @rhashtable_lookup_fast(%struct.rhashtable* %17, i32* %19, i32 %20)
  store %struct.mlx5e_tc_flow* %21, %struct.mlx5e_tc_flow** %11, align 8
  %22 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %11, align 8
  %23 = icmp ne %struct.mlx5e_tc_flow* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %4
  %25 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %11, align 8
  %26 = load i64, i64* %9, align 8
  %27 = call i32 @same_flow_direction(%struct.mlx5e_tc_flow* %25, i64 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24, %4
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %12, align 4
  br label %52

32:                                               ; preds = %24
  %33 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %11, align 8
  %34 = load i32, i32* @DELETED, align 4
  %35 = call i64 @flow_flag_test_and_set(%struct.mlx5e_tc_flow* %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %12, align 4
  br label %52

40:                                               ; preds = %32
  %41 = load %struct.rhashtable*, %struct.rhashtable** %10, align 8
  %42 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %11, align 8
  %43 = getelementptr inbounds %struct.mlx5e_tc_flow, %struct.mlx5e_tc_flow* %42, i32 0, i32 0
  %44 = load i32, i32* @tc_ht_params, align 4
  %45 = call i32 @rhashtable_remove_fast(%struct.rhashtable* %41, i32* %43, i32 %44)
  %46 = call i32 (...) @rcu_read_unlock()
  %47 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %8, align 8
  %48 = call i32 @trace_mlx5e_delete_flower(%struct.flow_cls_offload* %47)
  %49 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %50 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %11, align 8
  %51 = call i32 @mlx5e_flow_put(%struct.mlx5e_priv* %49, %struct.mlx5e_tc_flow* %50)
  store i32 0, i32* %5, align 4
  br label %55

52:                                               ; preds = %37, %29
  %53 = call i32 (...) @rcu_read_unlock()
  %54 = load i32, i32* %12, align 4
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %52, %40
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local %struct.rhashtable* @get_tc_ht(%struct.mlx5e_priv*, i64) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.mlx5e_tc_flow* @rhashtable_lookup_fast(%struct.rhashtable*, i32*, i32) #1

declare dso_local i32 @same_flow_direction(%struct.mlx5e_tc_flow*, i64) #1

declare dso_local i64 @flow_flag_test_and_set(%struct.mlx5e_tc_flow*, i32) #1

declare dso_local i32 @rhashtable_remove_fast(%struct.rhashtable*, i32*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @trace_mlx5e_delete_flower(%struct.flow_cls_offload*) #1

declare dso_local i32 @mlx5e_flow_put(%struct.mlx5e_priv*, %struct.mlx5e_tc_flow*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
