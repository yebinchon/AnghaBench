; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_mlx5e_configure_flower.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_mlx5e_configure_flower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlx5e_priv = type { i32 }
%struct.flow_cls_offload = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.netlink_ext_ack* }
%struct.netlink_ext_ack = type { i32 }
%struct.rhashtable = type { i32 }
%struct.mlx5e_tc_flow = type { i32 }

@tc_ht_params = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"flow cookie already exists, ignoring\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"flow cookie %lx already exists, ignoring\0A\00", align 1
@EEXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5e_configure_flower(%struct.net_device* %0, %struct.mlx5e_priv* %1, %struct.flow_cls_offload* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.mlx5e_priv*, align 8
  %8 = alloca %struct.flow_cls_offload*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.netlink_ext_ack*, align 8
  %11 = alloca %struct.rhashtable*, align 8
  %12 = alloca %struct.mlx5e_tc_flow*, align 8
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.mlx5e_priv* %1, %struct.mlx5e_priv** %7, align 8
  store %struct.flow_cls_offload* %2, %struct.flow_cls_offload** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %8, align 8
  %15 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %16, align 8
  store %struct.netlink_ext_ack* %17, %struct.netlink_ext_ack** %10, align 8
  %18 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %19 = load i64, i64* %9, align 8
  %20 = call %struct.rhashtable* @get_tc_ht(%struct.mlx5e_priv* %18, i64 %19)
  store %struct.rhashtable* %20, %struct.rhashtable** %11, align 8
  store i32 0, i32* %13, align 4
  %21 = call i32 (...) @rcu_read_lock()
  %22 = load %struct.rhashtable*, %struct.rhashtable** %11, align 8
  %23 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %8, align 8
  %24 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %23, i32 0, i32 0
  %25 = load i32, i32* @tc_ht_params, align 4
  %26 = call %struct.mlx5e_tc_flow* @rhashtable_lookup(%struct.rhashtable* %22, i32* %24, i32 %25)
  store %struct.mlx5e_tc_flow* %26, %struct.mlx5e_tc_flow** %12, align 8
  %27 = call i32 (...) @rcu_read_unlock()
  %28 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %12, align 8
  %29 = icmp ne %struct.mlx5e_tc_flow* %28, null
  br i1 %29, label %30, label %42

30:                                               ; preds = %4
  %31 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %10, align 8
  %32 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %31, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %34 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %8, align 8
  %37 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @netdev_warn_once(i32 %35, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @EEXIST, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %13, align 4
  br label %67

42:                                               ; preds = %4
  %43 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %8, align 8
  %44 = call i32 @trace_mlx5e_configure_flower(%struct.flow_cls_offload* %43)
  %45 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %46 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %8, align 8
  %47 = load i64, i64* %9, align 8
  %48 = load %struct.net_device*, %struct.net_device** %6, align 8
  %49 = call i32 @mlx5e_tc_add_flow(%struct.mlx5e_priv* %45, %struct.flow_cls_offload* %46, i64 %47, %struct.net_device* %48, %struct.mlx5e_tc_flow** %12)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  br label %67

53:                                               ; preds = %42
  %54 = load %struct.rhashtable*, %struct.rhashtable** %11, align 8
  %55 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %12, align 8
  %56 = getelementptr inbounds %struct.mlx5e_tc_flow, %struct.mlx5e_tc_flow* %55, i32 0, i32 0
  %57 = load i32, i32* @tc_ht_params, align 4
  %58 = call i32 @rhashtable_lookup_insert_fast(%struct.rhashtable* %54, i32* %56, i32 %57)
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %13, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  br label %63

62:                                               ; preds = %53
  store i32 0, i32* %5, align 4
  br label %69

63:                                               ; preds = %61
  %64 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %65 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %12, align 8
  %66 = call i32 @mlx5e_flow_put(%struct.mlx5e_priv* %64, %struct.mlx5e_tc_flow* %65)
  br label %67

67:                                               ; preds = %63, %52, %30
  %68 = load i32, i32* %13, align 4
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %67, %62
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local %struct.rhashtable* @get_tc_ht(%struct.mlx5e_priv*, i64) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.mlx5e_tc_flow* @rhashtable_lookup(%struct.rhashtable*, i32*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @netdev_warn_once(i32, i8*, i32) #1

declare dso_local i32 @trace_mlx5e_configure_flower(%struct.flow_cls_offload*) #1

declare dso_local i32 @mlx5e_tc_add_flow(%struct.mlx5e_priv*, %struct.flow_cls_offload*, i64, %struct.net_device*, %struct.mlx5e_tc_flow**) #1

declare dso_local i32 @rhashtable_lookup_insert_fast(%struct.rhashtable*, i32*, i32) #1

declare dso_local i32 @mlx5e_flow_put(%struct.mlx5e_priv*, %struct.mlx5e_tc_flow*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
