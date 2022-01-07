; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_mlx5e_tc_add_flow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_mlx5e_tc_add_flow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.mlx5_eswitch* }
%struct.mlx5_eswitch = type { i64 }
%struct.flow_cls_offload = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.net_device = type { i32 }
%struct.mlx5e_tc_flow = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@MLX5_ESWITCH_OFFLOADS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_priv*, %struct.flow_cls_offload*, i64, %struct.net_device*, %struct.mlx5e_tc_flow**)* @mlx5e_tc_add_flow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_tc_add_flow(%struct.mlx5e_priv* %0, %struct.flow_cls_offload* %1, i64 %2, %struct.net_device* %3, %struct.mlx5e_tc_flow** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5e_priv*, align 8
  %8 = alloca %struct.flow_cls_offload*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %struct.mlx5e_tc_flow**, align 8
  %12 = alloca %struct.mlx5_eswitch*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %7, align 8
  store %struct.flow_cls_offload* %1, %struct.flow_cls_offload** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.net_device* %3, %struct.net_device** %10, align 8
  store %struct.mlx5e_tc_flow** %4, %struct.mlx5e_tc_flow*** %11, align 8
  %15 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %16 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %15, i32 0, i32 1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %19, align 8
  store %struct.mlx5_eswitch* %20, %struct.mlx5_eswitch** %12, align 8
  %21 = load i64, i64* %9, align 8
  %22 = call i32 @get_flags(i64 %21, i64* %13)
  %23 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %24 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %8, align 8
  %27 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @tc_can_offload_extack(i32 %25, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %5
  %33 = load i32, i32* @EOPNOTSUPP, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %60

35:                                               ; preds = %5
  %36 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %12, align 8
  %37 = icmp ne %struct.mlx5_eswitch* %36, null
  br i1 %37, label %38, label %51

38:                                               ; preds = %35
  %39 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %12, align 8
  %40 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @MLX5_ESWITCH_OFFLOADS, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %38
  %45 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %46 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %8, align 8
  %47 = load i64, i64* %13, align 8
  %48 = load %struct.net_device*, %struct.net_device** %10, align 8
  %49 = load %struct.mlx5e_tc_flow**, %struct.mlx5e_tc_flow*** %11, align 8
  %50 = call i32 @mlx5e_add_fdb_flow(%struct.mlx5e_priv* %45, %struct.flow_cls_offload* %46, i64 %47, %struct.net_device* %48, %struct.mlx5e_tc_flow** %49)
  store i32 %50, i32* %14, align 4
  br label %58

51:                                               ; preds = %38, %35
  %52 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %53 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %8, align 8
  %54 = load i64, i64* %13, align 8
  %55 = load %struct.net_device*, %struct.net_device** %10, align 8
  %56 = load %struct.mlx5e_tc_flow**, %struct.mlx5e_tc_flow*** %11, align 8
  %57 = call i32 @mlx5e_add_nic_flow(%struct.mlx5e_priv* %52, %struct.flow_cls_offload* %53, i64 %54, %struct.net_device* %55, %struct.mlx5e_tc_flow** %56)
  store i32 %57, i32* %14, align 4
  br label %58

58:                                               ; preds = %51, %44
  %59 = load i32, i32* %14, align 4
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %58, %32
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local i32 @get_flags(i64, i64*) #1

declare dso_local i32 @tc_can_offload_extack(i32, i32) #1

declare dso_local i32 @mlx5e_add_fdb_flow(%struct.mlx5e_priv*, %struct.flow_cls_offload*, i64, %struct.net_device*, %struct.mlx5e_tc_flow**) #1

declare dso_local i32 @mlx5e_add_nic_flow(%struct.mlx5e_priv*, %struct.flow_cls_offload*, i64, %struct.net_device*, %struct.mlx5e_tc_flow**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
