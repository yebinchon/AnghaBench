; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_mlx5e_tc_add_fdb_peer_flow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_mlx5e_tc_add_fdb_peer_flow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flow_cls_offload = type { i32 }
%struct.mlx5e_tc_flow = type { i32, %struct.mlx5e_tc_flow*, %struct.TYPE_6__*, %struct.mlx5e_priv* }
%struct.TYPE_6__ = type { %struct.TYPE_8__*, %struct.mlx5e_tc_flow_parse_attr* }
%struct.TYPE_8__ = type { i64 }
%struct.mlx5e_tc_flow_parse_attr = type { i32 }
%struct.mlx5e_priv = type { %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.mlx5_devcom*, %struct.mlx5_eswitch* }
%struct.mlx5_devcom = type { i32 }
%struct.mlx5_eswitch = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.mlx5e_rep_priv = type { i32 }

@MLX5_DEVCOM_ESW_OFFLOADS = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@REP_ETH = common dso_local global i32 0, align 4
@MLX5_VPORT_UPLINK = common dso_local global i64 0, align 8
@DUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.flow_cls_offload*, %struct.mlx5e_tc_flow*, i64)* @mlx5e_tc_add_fdb_peer_flow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_tc_add_fdb_peer_flow(%struct.flow_cls_offload* %0, %struct.mlx5e_tc_flow* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.flow_cls_offload*, align 8
  %6 = alloca %struct.mlx5e_tc_flow*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mlx5e_priv*, align 8
  %9 = alloca %struct.mlx5e_priv*, align 8
  %10 = alloca %struct.mlx5_eswitch*, align 8
  %11 = alloca %struct.mlx5_eswitch*, align 8
  %12 = alloca %struct.mlx5_devcom*, align 8
  %13 = alloca %struct.mlx5e_tc_flow_parse_attr*, align 8
  %14 = alloca %struct.mlx5e_rep_priv*, align 8
  %15 = alloca %struct.mlx5e_tc_flow*, align 8
  %16 = alloca %struct.mlx5_core_dev*, align 8
  %17 = alloca i32, align 4
  store %struct.flow_cls_offload* %0, %struct.flow_cls_offload** %5, align 8
  store %struct.mlx5e_tc_flow* %1, %struct.mlx5e_tc_flow** %6, align 8
  store i64 %2, i64* %7, align 8
  %18 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %6, align 8
  %19 = getelementptr inbounds %struct.mlx5e_tc_flow, %struct.mlx5e_tc_flow* %18, i32 0, i32 3
  %20 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %19, align 8
  store %struct.mlx5e_priv* %20, %struct.mlx5e_priv** %8, align 8
  %21 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %22 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %21, i32 0, i32 0
  %23 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %22, align 8
  %24 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %25, align 8
  store %struct.mlx5_eswitch* %26, %struct.mlx5_eswitch** %10, align 8
  %27 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %28 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %27, i32 0, i32 0
  %29 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %28, align 8
  %30 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load %struct.mlx5_devcom*, %struct.mlx5_devcom** %31, align 8
  store %struct.mlx5_devcom* %32, %struct.mlx5_devcom** %12, align 8
  store i32 0, i32* %17, align 4
  %33 = load %struct.mlx5_devcom*, %struct.mlx5_devcom** %12, align 8
  %34 = load i32, i32* @MLX5_DEVCOM_ESW_OFFLOADS, align 4
  %35 = call %struct.mlx5_eswitch* @mlx5_devcom_get_peer_data(%struct.mlx5_devcom* %33, i32 %34)
  store %struct.mlx5_eswitch* %35, %struct.mlx5_eswitch** %11, align 8
  %36 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %11, align 8
  %37 = icmp ne %struct.mlx5_eswitch* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %3
  %39 = load i32, i32* @ENODEV, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %117

41:                                               ; preds = %3
  %42 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %11, align 8
  %43 = load i32, i32* @REP_ETH, align 4
  %44 = call %struct.mlx5e_rep_priv* @mlx5_eswitch_get_uplink_priv(%struct.mlx5_eswitch* %42, i32 %43)
  store %struct.mlx5e_rep_priv* %44, %struct.mlx5e_rep_priv** %14, align 8
  %45 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %14, align 8
  %46 = getelementptr inbounds %struct.mlx5e_rep_priv, %struct.mlx5e_rep_priv* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call %struct.mlx5e_priv* @netdev_priv(i32 %47)
  store %struct.mlx5e_priv* %48, %struct.mlx5e_priv** %9, align 8
  %49 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %6, align 8
  %50 = getelementptr inbounds %struct.mlx5e_tc_flow, %struct.mlx5e_tc_flow* %49, i32 0, i32 2
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @MLX5_VPORT_UPLINK, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %41
  %59 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %9, align 8
  %60 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %59, i32 0, i32 0
  %61 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %60, align 8
  store %struct.mlx5_core_dev* %61, %struct.mlx5_core_dev** %16, align 8
  br label %66

62:                                               ; preds = %41
  %63 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %64 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %63, i32 0, i32 0
  %65 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %64, align 8
  store %struct.mlx5_core_dev* %65, %struct.mlx5_core_dev** %16, align 8
  br label %66

66:                                               ; preds = %62, %58
  %67 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %6, align 8
  %68 = getelementptr inbounds %struct.mlx5e_tc_flow, %struct.mlx5e_tc_flow* %67, i32 0, i32 2
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load %struct.mlx5e_tc_flow_parse_attr*, %struct.mlx5e_tc_flow_parse_attr** %70, align 8
  store %struct.mlx5e_tc_flow_parse_attr* %71, %struct.mlx5e_tc_flow_parse_attr** %13, align 8
  %72 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %9, align 8
  %73 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %5, align 8
  %74 = load i64, i64* %7, align 8
  %75 = load %struct.mlx5e_tc_flow_parse_attr*, %struct.mlx5e_tc_flow_parse_attr** %13, align 8
  %76 = getelementptr inbounds %struct.mlx5e_tc_flow_parse_attr, %struct.mlx5e_tc_flow_parse_attr* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %6, align 8
  %79 = getelementptr inbounds %struct.mlx5e_tc_flow, %struct.mlx5e_tc_flow* %78, i32 0, i32 2
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %16, align 8
  %84 = call %struct.mlx5e_tc_flow* @__mlx5e_add_fdb_flow(%struct.mlx5e_priv* %72, %struct.flow_cls_offload* %73, i64 %74, i32 %77, %struct.TYPE_8__* %82, %struct.mlx5_core_dev* %83)
  store %struct.mlx5e_tc_flow* %84, %struct.mlx5e_tc_flow** %15, align 8
  %85 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %15, align 8
  %86 = call i64 @IS_ERR(%struct.mlx5e_tc_flow* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %66
  %89 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %15, align 8
  %90 = call i32 @PTR_ERR(%struct.mlx5e_tc_flow* %89)
  store i32 %90, i32* %17, align 4
  br label %112

91:                                               ; preds = %66
  %92 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %15, align 8
  %93 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %6, align 8
  %94 = getelementptr inbounds %struct.mlx5e_tc_flow, %struct.mlx5e_tc_flow* %93, i32 0, i32 1
  store %struct.mlx5e_tc_flow* %92, %struct.mlx5e_tc_flow** %94, align 8
  %95 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %6, align 8
  %96 = load i32, i32* @DUP, align 4
  %97 = call i32 @flow_flag_set(%struct.mlx5e_tc_flow* %95, i32 %96)
  %98 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %10, align 8
  %99 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = call i32 @mutex_lock(i32* %100)
  %102 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %6, align 8
  %103 = getelementptr inbounds %struct.mlx5e_tc_flow, %struct.mlx5e_tc_flow* %102, i32 0, i32 0
  %104 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %10, align 8
  %105 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 1
  %107 = call i32 @list_add_tail(i32* %103, i32* %106)
  %108 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %10, align 8
  %109 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = call i32 @mutex_unlock(i32* %110)
  br label %112

112:                                              ; preds = %91, %88
  %113 = load %struct.mlx5_devcom*, %struct.mlx5_devcom** %12, align 8
  %114 = load i32, i32* @MLX5_DEVCOM_ESW_OFFLOADS, align 4
  %115 = call i32 @mlx5_devcom_release_peer_data(%struct.mlx5_devcom* %113, i32 %114)
  %116 = load i32, i32* %17, align 4
  store i32 %116, i32* %4, align 4
  br label %117

117:                                              ; preds = %112, %38
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local %struct.mlx5_eswitch* @mlx5_devcom_get_peer_data(%struct.mlx5_devcom*, i32) #1

declare dso_local %struct.mlx5e_rep_priv* @mlx5_eswitch_get_uplink_priv(%struct.mlx5_eswitch*, i32) #1

declare dso_local %struct.mlx5e_priv* @netdev_priv(i32) #1

declare dso_local %struct.mlx5e_tc_flow* @__mlx5e_add_fdb_flow(%struct.mlx5e_priv*, %struct.flow_cls_offload*, i64, i32, %struct.TYPE_8__*, %struct.mlx5_core_dev*) #1

declare dso_local i64 @IS_ERR(%struct.mlx5e_tc_flow*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx5e_tc_flow*) #1

declare dso_local i32 @flow_flag_set(%struct.mlx5e_tc_flow*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @mlx5_devcom_release_peer_data(%struct.mlx5_devcom*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
