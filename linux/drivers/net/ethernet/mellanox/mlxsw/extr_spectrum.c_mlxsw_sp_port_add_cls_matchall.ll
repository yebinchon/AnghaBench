; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_port_add_cls_matchall.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_port_add_cls_matchall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_port = type { i32, i32 }
%struct.tc_cls_matchall_offload = type { %struct.TYPE_5__*, i32, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.flow_action_entry* }
%struct.flow_action_entry = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.mlxsw_sp_port_mall_tc_entry = type { i32, i32, %struct.mlxsw_sp_port_mall_mirror_tc_entry, i32 }
%struct.mlxsw_sp_port_mall_mirror_tc_entry = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"only singular actions are supported\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FLOW_ACTION_MIRRED = common dso_local global i64 0, align 8
@ETH_P_ALL = common dso_local global i32 0, align 4
@MLXSW_SP_PORT_MALL_MIRROR = common dso_local global i32 0, align 4
@FLOW_ACTION_SAMPLE = common dso_local global i64 0, align 8
@MLXSW_SP_PORT_MALL_SAMPLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_port*, %struct.tc_cls_matchall_offload*, i32)* @mlxsw_sp_port_add_cls_matchall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_port_add_cls_matchall(%struct.mlxsw_sp_port* %0, %struct.tc_cls_matchall_offload* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_sp_port*, align 8
  %6 = alloca %struct.tc_cls_matchall_offload*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlxsw_sp_port_mall_tc_entry*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.flow_action_entry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.mlxsw_sp_port_mall_mirror_tc_entry*, align 8
  store %struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_port** %5, align 8
  store %struct.tc_cls_matchall_offload* %1, %struct.tc_cls_matchall_offload** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.tc_cls_matchall_offload*, %struct.tc_cls_matchall_offload** %6, align 8
  %14 = getelementptr inbounds %struct.tc_cls_matchall_offload, %struct.tc_cls_matchall_offload* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %9, align 8
  %17 = load %struct.tc_cls_matchall_offload*, %struct.tc_cls_matchall_offload** %6, align 8
  %18 = getelementptr inbounds %struct.tc_cls_matchall_offload, %struct.tc_cls_matchall_offload* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = call i32 @flow_offload_has_one_action(%struct.TYPE_6__* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %3
  %24 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %5, align 8
  %25 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @netdev_err(i32 %26, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EOPNOTSUPP, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %110

30:                                               ; preds = %3
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.mlxsw_sp_port_mall_tc_entry* @kzalloc(i32 16, i32 %31)
  store %struct.mlxsw_sp_port_mall_tc_entry* %32, %struct.mlxsw_sp_port_mall_tc_entry** %8, align 8
  %33 = load %struct.mlxsw_sp_port_mall_tc_entry*, %struct.mlxsw_sp_port_mall_tc_entry** %8, align 8
  %34 = icmp ne %struct.mlxsw_sp_port_mall_tc_entry* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %110

38:                                               ; preds = %30
  %39 = load %struct.tc_cls_matchall_offload*, %struct.tc_cls_matchall_offload** %6, align 8
  %40 = getelementptr inbounds %struct.tc_cls_matchall_offload, %struct.tc_cls_matchall_offload* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.mlxsw_sp_port_mall_tc_entry*, %struct.mlxsw_sp_port_mall_tc_entry** %8, align 8
  %43 = getelementptr inbounds %struct.mlxsw_sp_port_mall_tc_entry, %struct.mlxsw_sp_port_mall_tc_entry* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = load %struct.tc_cls_matchall_offload*, %struct.tc_cls_matchall_offload** %6, align 8
  %45 = getelementptr inbounds %struct.tc_cls_matchall_offload, %struct.tc_cls_matchall_offload* %44, i32 0, i32 0
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load %struct.flow_action_entry*, %struct.flow_action_entry** %48, align 8
  %50 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %49, i64 0
  store %struct.flow_action_entry* %50, %struct.flow_action_entry** %10, align 8
  %51 = load %struct.flow_action_entry*, %struct.flow_action_entry** %10, align 8
  %52 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @FLOW_ACTION_MIRRED, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %72

56:                                               ; preds = %38
  %57 = load i64, i64* %9, align 8
  %58 = load i32, i32* @ETH_P_ALL, align 4
  %59 = call i64 @htons(i32 %58)
  %60 = icmp eq i64 %57, %59
  br i1 %60, label %61, label %72

61:                                               ; preds = %56
  %62 = load i32, i32* @MLXSW_SP_PORT_MALL_MIRROR, align 4
  %63 = load %struct.mlxsw_sp_port_mall_tc_entry*, %struct.mlxsw_sp_port_mall_tc_entry** %8, align 8
  %64 = getelementptr inbounds %struct.mlxsw_sp_port_mall_tc_entry, %struct.mlxsw_sp_port_mall_tc_entry* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.mlxsw_sp_port_mall_tc_entry*, %struct.mlxsw_sp_port_mall_tc_entry** %8, align 8
  %66 = getelementptr inbounds %struct.mlxsw_sp_port_mall_tc_entry, %struct.mlxsw_sp_port_mall_tc_entry* %65, i32 0, i32 2
  store %struct.mlxsw_sp_port_mall_mirror_tc_entry* %66, %struct.mlxsw_sp_port_mall_mirror_tc_entry** %12, align 8
  %67 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %5, align 8
  %68 = load %struct.mlxsw_sp_port_mall_mirror_tc_entry*, %struct.mlxsw_sp_port_mall_mirror_tc_entry** %12, align 8
  %69 = load %struct.flow_action_entry*, %struct.flow_action_entry** %10, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @mlxsw_sp_port_add_cls_matchall_mirror(%struct.mlxsw_sp_port* %67, %struct.mlxsw_sp_port_mall_mirror_tc_entry* %68, %struct.flow_action_entry* %69, i32 %70)
  store i32 %71, i32* %11, align 4
  br label %96

72:                                               ; preds = %56, %38
  %73 = load %struct.flow_action_entry*, %struct.flow_action_entry** %10, align 8
  %74 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @FLOW_ACTION_SAMPLE, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %92

78:                                               ; preds = %72
  %79 = load i64, i64* %9, align 8
  %80 = load i32, i32* @ETH_P_ALL, align 4
  %81 = call i64 @htons(i32 %80)
  %82 = icmp eq i64 %79, %81
  br i1 %82, label %83, label %92

83:                                               ; preds = %78
  %84 = load i32, i32* @MLXSW_SP_PORT_MALL_SAMPLE, align 4
  %85 = load %struct.mlxsw_sp_port_mall_tc_entry*, %struct.mlxsw_sp_port_mall_tc_entry** %8, align 8
  %86 = getelementptr inbounds %struct.mlxsw_sp_port_mall_tc_entry, %struct.mlxsw_sp_port_mall_tc_entry* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %5, align 8
  %88 = load %struct.tc_cls_matchall_offload*, %struct.tc_cls_matchall_offload** %6, align 8
  %89 = load %struct.flow_action_entry*, %struct.flow_action_entry** %10, align 8
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @mlxsw_sp_port_add_cls_matchall_sample(%struct.mlxsw_sp_port* %87, %struct.tc_cls_matchall_offload* %88, %struct.flow_action_entry* %89, i32 %90)
  store i32 %91, i32* %11, align 4
  br label %95

92:                                               ; preds = %78, %72
  %93 = load i32, i32* @EOPNOTSUPP, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %11, align 4
  br label %95

95:                                               ; preds = %92, %83
  br label %96

96:                                               ; preds = %95, %61
  %97 = load i32, i32* %11, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  br label %106

100:                                              ; preds = %96
  %101 = load %struct.mlxsw_sp_port_mall_tc_entry*, %struct.mlxsw_sp_port_mall_tc_entry** %8, align 8
  %102 = getelementptr inbounds %struct.mlxsw_sp_port_mall_tc_entry, %struct.mlxsw_sp_port_mall_tc_entry* %101, i32 0, i32 0
  %103 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %5, align 8
  %104 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %103, i32 0, i32 0
  %105 = call i32 @list_add_tail(i32* %102, i32* %104)
  store i32 0, i32* %4, align 4
  br label %110

106:                                              ; preds = %99
  %107 = load %struct.mlxsw_sp_port_mall_tc_entry*, %struct.mlxsw_sp_port_mall_tc_entry** %8, align 8
  %108 = call i32 @kfree(%struct.mlxsw_sp_port_mall_tc_entry* %107)
  %109 = load i32, i32* %11, align 4
  store i32 %109, i32* %4, align 4
  br label %110

110:                                              ; preds = %106, %100, %35, %23
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local i32 @flow_offload_has_one_action(%struct.TYPE_6__*) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local %struct.mlxsw_sp_port_mall_tc_entry* @kzalloc(i32, i32) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @mlxsw_sp_port_add_cls_matchall_mirror(%struct.mlxsw_sp_port*, %struct.mlxsw_sp_port_mall_mirror_tc_entry*, %struct.flow_action_entry*, i32) #1

declare dso_local i32 @mlxsw_sp_port_add_cls_matchall_sample(%struct.mlxsw_sp_port*, %struct.tc_cls_matchall_offload*, %struct.flow_action_entry*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.mlxsw_sp_port_mall_tc_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
