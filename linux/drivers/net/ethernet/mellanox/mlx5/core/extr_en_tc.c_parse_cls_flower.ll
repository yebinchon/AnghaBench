; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_parse_cls_flower.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_parse_cls_flower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i32, %struct.mlx5e_rep_priv*, %struct.mlx5_core_dev* }
%struct.mlx5e_rep_priv = type { %struct.mlx5_eswitch_rep* }
%struct.mlx5_eswitch_rep = type { i64 }
%struct.mlx5_core_dev = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.mlx5_eswitch* }
%struct.mlx5_eswitch = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.mlx5e_tc_flow = type { %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64, i64 }
%struct.mlx5_flow_spec = type { i32 }
%struct.flow_cls_offload = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.netlink_ext_ack* }
%struct.netlink_ext_ack = type { i32 }
%struct.net_device = type { i32 }

@MLX5_MATCH_NONE = common dso_local global i64 0, align 8
@MLX5_VPORT_UPLINK = common dso_local global i64 0, align 8
@MLX5_INLINE_MODE_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"Flow is not offloaded due to min inline setting\00", align 1
@.str.1 = private unnamed_addr constant [72 x i8] c"Flow is not offloaded due to min inline setting, required %d actual %d\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_priv*, %struct.mlx5e_tc_flow*, %struct.mlx5_flow_spec*, %struct.flow_cls_offload*, %struct.net_device*)* @parse_cls_flower to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_cls_flower(%struct.mlx5e_priv* %0, %struct.mlx5e_tc_flow* %1, %struct.mlx5_flow_spec* %2, %struct.flow_cls_offload* %3, %struct.net_device* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5e_priv*, align 8
  %8 = alloca %struct.mlx5e_tc_flow*, align 8
  %9 = alloca %struct.mlx5_flow_spec*, align 8
  %10 = alloca %struct.flow_cls_offload*, align 8
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.netlink_ext_ack*, align 8
  %16 = alloca %struct.mlx5_core_dev*, align 8
  %17 = alloca %struct.mlx5_eswitch*, align 8
  %18 = alloca %struct.mlx5e_rep_priv*, align 8
  %19 = alloca %struct.mlx5_eswitch_rep*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %7, align 8
  store %struct.mlx5e_tc_flow* %1, %struct.mlx5e_tc_flow** %8, align 8
  store %struct.mlx5_flow_spec* %2, %struct.mlx5_flow_spec** %9, align 8
  store %struct.flow_cls_offload* %3, %struct.flow_cls_offload** %10, align 8
  store %struct.net_device* %4, %struct.net_device** %11, align 8
  %22 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %10, align 8
  %23 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %24, align 8
  store %struct.netlink_ext_ack* %25, %struct.netlink_ext_ack** %15, align 8
  %26 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %27 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %26, i32 0, i32 2
  %28 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %27, align 8
  store %struct.mlx5_core_dev* %28, %struct.mlx5_core_dev** %16, align 8
  %29 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %16, align 8
  %30 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %31, align 8
  store %struct.mlx5_eswitch* %32, %struct.mlx5_eswitch** %17, align 8
  %33 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %34 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %33, i32 0, i32 1
  %35 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %34, align 8
  store %struct.mlx5e_rep_priv* %35, %struct.mlx5e_rep_priv** %18, align 8
  %36 = load i64, i64* @MLX5_MATCH_NONE, align 8
  store i64 %36, i64* %12, align 8
  %37 = load i64, i64* @MLX5_MATCH_NONE, align 8
  store i64 %37, i64* %13, align 8
  %38 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %39 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %9, align 8
  %40 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %10, align 8
  %41 = load %struct.net_device*, %struct.net_device** %11, align 8
  %42 = call i32 @__parse_cls_flower(%struct.mlx5e_priv* %38, %struct.mlx5_flow_spec* %39, %struct.flow_cls_offload* %40, %struct.net_device* %41, i64* %12, i64* %13)
  store i32 %42, i32* %21, align 4
  %43 = load i64, i64* %12, align 8
  %44 = load i64, i64* @MLX5_MATCH_NONE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %5
  %47 = load i64, i64* %13, align 8
  br label %50

48:                                               ; preds = %5
  %49 = load i64, i64* %12, align 8
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i64 [ %47, %46 ], [ %49, %48 ]
  store i64 %51, i64* %14, align 8
  %52 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %8, align 8
  %53 = call i32 @mlx5e_is_eswitch_flow(%struct.mlx5e_tc_flow* %52)
  store i32 %53, i32* %20, align 4
  %54 = load i32, i32* %21, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %97, label %56

56:                                               ; preds = %50
  %57 = load i32, i32* %20, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %97

59:                                               ; preds = %56
  %60 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %18, align 8
  %61 = getelementptr inbounds %struct.mlx5e_rep_priv, %struct.mlx5e_rep_priv* %60, i32 0, i32 0
  %62 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %61, align 8
  store %struct.mlx5_eswitch_rep* %62, %struct.mlx5_eswitch_rep** %19, align 8
  %63 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %19, align 8
  %64 = getelementptr inbounds %struct.mlx5_eswitch_rep, %struct.mlx5_eswitch_rep* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @MLX5_VPORT_UPLINK, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %96

68:                                               ; preds = %59
  %69 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %17, align 8
  %70 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @MLX5_INLINE_MODE_NONE, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %96

75:                                               ; preds = %68
  %76 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %17, align 8
  %77 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %14, align 8
  %81 = icmp slt i64 %79, %80
  br i1 %81, label %82, label %96

82:                                               ; preds = %75
  %83 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %15, align 8
  %84 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %83, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %85 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %86 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i64, i64* %14, align 8
  %89 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %17, align 8
  %90 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @netdev_warn(i32 %87, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i64 %88, i64 %92)
  %94 = load i32, i32* @EOPNOTSUPP, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %6, align 4
  br label %119

96:                                               ; preds = %75, %68, %59
  br label %97

97:                                               ; preds = %96, %56, %50
  %98 = load i32, i32* %20, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %111

100:                                              ; preds = %97
  %101 = load i64, i64* %12, align 8
  %102 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %8, align 8
  %103 = getelementptr inbounds %struct.mlx5e_tc_flow, %struct.mlx5e_tc_flow* %102, i32 0, i32 1
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 1
  store i64 %101, i64* %105, align 8
  %106 = load i64, i64* %13, align 8
  %107 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %8, align 8
  %108 = getelementptr inbounds %struct.mlx5e_tc_flow, %struct.mlx5e_tc_flow* %107, i32 0, i32 1
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  store i64 %106, i64* %110, align 8
  br label %117

111:                                              ; preds = %97
  %112 = load i64, i64* %14, align 8
  %113 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %8, align 8
  %114 = getelementptr inbounds %struct.mlx5e_tc_flow, %struct.mlx5e_tc_flow* %113, i32 0, i32 0
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  store i64 %112, i64* %116, align 8
  br label %117

117:                                              ; preds = %111, %100
  %118 = load i32, i32* %21, align 4
  store i32 %118, i32* %6, align 4
  br label %119

119:                                              ; preds = %117, %82
  %120 = load i32, i32* %6, align 4
  ret i32 %120
}

declare dso_local i32 @__parse_cls_flower(%struct.mlx5e_priv*, %struct.mlx5_flow_spec*, %struct.flow_cls_offload*, %struct.net_device*, i64*, i64*) #1

declare dso_local i32 @mlx5e_is_eswitch_flow(%struct.mlx5e_tc_flow*) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @netdev_warn(i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
