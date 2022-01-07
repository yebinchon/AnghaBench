; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_mlx5e_add_fdb_flow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_mlx5e_add_fdb_flow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { %struct.mlx5_core_dev*, %struct.mlx5e_rep_priv* }
%struct.mlx5_core_dev = type { i32 }
%struct.mlx5e_rep_priv = type { %struct.mlx5_eswitch_rep* }
%struct.mlx5_eswitch_rep = type { i32 }
%struct.flow_cls_offload = type { i32 }
%struct.net_device = type { i32 }
%struct.mlx5e_tc_flow = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_priv*, %struct.flow_cls_offload*, i64, %struct.net_device*, %struct.mlx5e_tc_flow**)* @mlx5e_add_fdb_flow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_add_fdb_flow(%struct.mlx5e_priv* %0, %struct.flow_cls_offload* %1, i64 %2, %struct.net_device* %3, %struct.mlx5e_tc_flow** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5e_priv*, align 8
  %8 = alloca %struct.flow_cls_offload*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %struct.mlx5e_tc_flow**, align 8
  %12 = alloca %struct.mlx5e_rep_priv*, align 8
  %13 = alloca %struct.mlx5_eswitch_rep*, align 8
  %14 = alloca %struct.mlx5_core_dev*, align 8
  %15 = alloca %struct.mlx5e_tc_flow*, align 8
  %16 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %7, align 8
  store %struct.flow_cls_offload* %1, %struct.flow_cls_offload** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.net_device* %3, %struct.net_device** %10, align 8
  store %struct.mlx5e_tc_flow** %4, %struct.mlx5e_tc_flow*** %11, align 8
  %17 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %18 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %17, i32 0, i32 1
  %19 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %18, align 8
  store %struct.mlx5e_rep_priv* %19, %struct.mlx5e_rep_priv** %12, align 8
  %20 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %12, align 8
  %21 = getelementptr inbounds %struct.mlx5e_rep_priv, %struct.mlx5e_rep_priv* %20, i32 0, i32 0
  %22 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %21, align 8
  store %struct.mlx5_eswitch_rep* %22, %struct.mlx5_eswitch_rep** %13, align 8
  %23 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %24 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %23, i32 0, i32 0
  %25 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %24, align 8
  store %struct.mlx5_core_dev* %25, %struct.mlx5_core_dev** %14, align 8
  %26 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %27 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %8, align 8
  %28 = load i64, i64* %9, align 8
  %29 = load %struct.net_device*, %struct.net_device** %10, align 8
  %30 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %13, align 8
  %31 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %14, align 8
  %32 = call %struct.mlx5e_tc_flow* @__mlx5e_add_fdb_flow(%struct.mlx5e_priv* %26, %struct.flow_cls_offload* %27, i64 %28, %struct.net_device* %29, %struct.mlx5_eswitch_rep* %30, %struct.mlx5_core_dev* %31)
  store %struct.mlx5e_tc_flow* %32, %struct.mlx5e_tc_flow** %15, align 8
  %33 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %15, align 8
  %34 = call i64 @IS_ERR(%struct.mlx5e_tc_flow* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %5
  %37 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %15, align 8
  %38 = call i32 @PTR_ERR(%struct.mlx5e_tc_flow* %37)
  store i32 %38, i32* %6, align 4
  br label %60

39:                                               ; preds = %5
  %40 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %15, align 8
  %41 = call i64 @is_peer_flow_needed(%struct.mlx5e_tc_flow* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %39
  %44 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %8, align 8
  %45 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %15, align 8
  %46 = load i64, i64* %9, align 8
  %47 = call i32 @mlx5e_tc_add_fdb_peer_flow(%struct.flow_cls_offload* %44, %struct.mlx5e_tc_flow* %45, i64 %46)
  store i32 %47, i32* %16, align 4
  %48 = load i32, i32* %16, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %43
  %51 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %52 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %15, align 8
  %53 = call i32 @mlx5e_tc_del_fdb_flow(%struct.mlx5e_priv* %51, %struct.mlx5e_tc_flow* %52)
  br label %58

54:                                               ; preds = %43
  br label %55

55:                                               ; preds = %54, %39
  %56 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %15, align 8
  %57 = load %struct.mlx5e_tc_flow**, %struct.mlx5e_tc_flow*** %11, align 8
  store %struct.mlx5e_tc_flow* %56, %struct.mlx5e_tc_flow** %57, align 8
  store i32 0, i32* %6, align 4
  br label %60

58:                                               ; preds = %50
  %59 = load i32, i32* %16, align 4
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %58, %55, %36
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local %struct.mlx5e_tc_flow* @__mlx5e_add_fdb_flow(%struct.mlx5e_priv*, %struct.flow_cls_offload*, i64, %struct.net_device*, %struct.mlx5_eswitch_rep*, %struct.mlx5_core_dev*) #1

declare dso_local i64 @IS_ERR(%struct.mlx5e_tc_flow*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx5e_tc_flow*) #1

declare dso_local i64 @is_peer_flow_needed(%struct.mlx5e_tc_flow*) #1

declare dso_local i32 @mlx5e_tc_add_fdb_peer_flow(%struct.flow_cls_offload*, %struct.mlx5e_tc_flow*, i64) #1

declare dso_local i32 @mlx5e_tc_del_fdb_flow(%struct.mlx5e_priv*, %struct.mlx5e_tc_flow*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
