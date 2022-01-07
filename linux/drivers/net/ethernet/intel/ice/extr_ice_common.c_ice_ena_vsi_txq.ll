; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_common.c_ice_ena_vsi_txq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_common.c_ice_ena_vsi_txq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_port_info = type { i64, i32, %struct.ice_hw* }
%struct.ice_hw = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.ice_aqc_add_tx_qgrp = type { i32, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.ice_sq_cd = type { i32 }
%struct.ice_aqc_txsched_elem_data = type { %struct.TYPE_10__, i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.ice_sched_node = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.ice_q_ctx = type { i32 }

@ICE_SCHED_PORT_STATE_READY = common dso_local global i64 0, align 8
@ICE_ERR_CFG = common dso_local global i32 0, align 4
@ICE_ERR_MAX_LIMIT = common dso_local global i32 0, align 4
@ICE_ERR_PARAM = common dso_local global i32 0, align 4
@ICE_DBG_SCHED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Enaq: invalid queue handle %d\0A\00", align 1
@ICE_SCHED_NODE_OWNER_LAN = common dso_local global i32 0, align 4
@ICE_AQC_ELEM_VALID_GENERIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"enable queue %d failed %d\0A\00", align 1
@ICE_AQC_ELEM_TYPE_LEAF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ice_ena_vsi_txq(%struct.ice_port_info* %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.ice_aqc_add_tx_qgrp* %5, i32 %6, %struct.ice_sq_cd* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.ice_port_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ice_aqc_add_tx_qgrp*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.ice_sq_cd*, align 8
  %18 = alloca %struct.ice_aqc_txsched_elem_data, align 4
  %19 = alloca %struct.ice_sched_node*, align 8
  %20 = alloca %struct.ice_q_ctx*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.ice_hw*, align 8
  store %struct.ice_port_info* %0, %struct.ice_port_info** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store %struct.ice_aqc_add_tx_qgrp* %5, %struct.ice_aqc_add_tx_qgrp** %15, align 8
  store i32 %6, i32* %16, align 4
  store %struct.ice_sq_cd* %7, %struct.ice_sq_cd** %17, align 8
  %23 = bitcast %struct.ice_aqc_txsched_elem_data* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %23, i8 0, i64 16, i1 false)
  %24 = load %struct.ice_port_info*, %struct.ice_port_info** %10, align 8
  %25 = icmp ne %struct.ice_port_info* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %8
  %27 = load %struct.ice_port_info*, %struct.ice_port_info** %10, align 8
  %28 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @ICE_SCHED_PORT_STATE_READY, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26, %8
  %33 = load i32, i32* @ICE_ERR_CFG, align 4
  store i32 %33, i32* %9, align 4
  br label %148

34:                                               ; preds = %26
  %35 = load i32, i32* %14, align 4
  %36 = icmp sgt i32 %35, 1
  br i1 %36, label %42, label %37

37:                                               ; preds = %34
  %38 = load %struct.ice_aqc_add_tx_qgrp*, %struct.ice_aqc_add_tx_qgrp** %15, align 8
  %39 = getelementptr inbounds %struct.ice_aqc_add_tx_qgrp, %struct.ice_aqc_add_tx_qgrp* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp sgt i32 %40, 1
  br i1 %41, label %42, label %44

42:                                               ; preds = %37, %34
  %43 = load i32, i32* @ICE_ERR_MAX_LIMIT, align 4
  store i32 %43, i32* %9, align 4
  br label %148

44:                                               ; preds = %37
  %45 = load %struct.ice_port_info*, %struct.ice_port_info** %10, align 8
  %46 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %45, i32 0, i32 2
  %47 = load %struct.ice_hw*, %struct.ice_hw** %46, align 8
  store %struct.ice_hw* %47, %struct.ice_hw** %22, align 8
  %48 = load %struct.ice_hw*, %struct.ice_hw** %22, align 8
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @ice_is_vsi_valid(%struct.ice_hw* %48, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %44
  %53 = load i32, i32* @ICE_ERR_PARAM, align 4
  store i32 %53, i32* %9, align 4
  br label %148

54:                                               ; preds = %44
  %55 = load %struct.ice_port_info*, %struct.ice_port_info** %10, align 8
  %56 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %55, i32 0, i32 1
  %57 = call i32 @mutex_lock(i32* %56)
  %58 = load %struct.ice_hw*, %struct.ice_hw** %22, align 8
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %13, align 4
  %62 = call %struct.ice_q_ctx* @ice_get_lan_q_ctx(%struct.ice_hw* %58, i32 %59, i32 %60, i32 %61)
  store %struct.ice_q_ctx* %62, %struct.ice_q_ctx** %20, align 8
  %63 = load %struct.ice_q_ctx*, %struct.ice_q_ctx** %20, align 8
  %64 = icmp ne %struct.ice_q_ctx* %63, null
  br i1 %64, label %71, label %65

65:                                               ; preds = %54
  %66 = load %struct.ice_hw*, %struct.ice_hw** %22, align 8
  %67 = load i32, i32* @ICE_DBG_SCHED, align 4
  %68 = load i32, i32* %13, align 4
  %69 = call i32 (%struct.ice_hw*, i32, i8*, i32, ...) @ice_debug(%struct.ice_hw* %66, i32 %67, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* @ICE_ERR_PARAM, align 4
  store i32 %70, i32* %21, align 4
  br label %143

71:                                               ; preds = %54
  %72 = load %struct.ice_port_info*, %struct.ice_port_info** %10, align 8
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* @ICE_SCHED_NODE_OWNER_LAN, align 4
  %76 = call %struct.ice_sched_node* @ice_sched_get_free_qparent(%struct.ice_port_info* %72, i32 %73, i32 %74, i32 %75)
  store %struct.ice_sched_node* %76, %struct.ice_sched_node** %19, align 8
  %77 = load %struct.ice_sched_node*, %struct.ice_sched_node** %19, align 8
  %78 = icmp ne %struct.ice_sched_node* %77, null
  br i1 %78, label %81, label %79

79:                                               ; preds = %71
  %80 = load i32, i32* @ICE_ERR_PARAM, align 4
  store i32 %80, i32* %21, align 4
  br label %143

81:                                               ; preds = %71
  %82 = load %struct.ice_sched_node*, %struct.ice_sched_node** %19, align 8
  %83 = getelementptr inbounds %struct.ice_sched_node, %struct.ice_sched_node* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.ice_aqc_add_tx_qgrp*, %struct.ice_aqc_add_tx_qgrp** %15, align 8
  %87 = getelementptr inbounds %struct.ice_aqc_add_tx_qgrp, %struct.ice_aqc_add_tx_qgrp* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 8
  %88 = load %struct.ice_sched_node*, %struct.ice_sched_node** %19, align 8
  %89 = getelementptr inbounds %struct.ice_sched_node, %struct.ice_sched_node* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds %struct.ice_aqc_txsched_elem_data, %struct.ice_aqc_txsched_elem_data* %18, i32 0, i32 2
  store i32 %91, i32* %92, align 4
  %93 = load i32, i32* @ICE_AQC_ELEM_VALID_GENERIC, align 4
  %94 = load %struct.ice_aqc_add_tx_qgrp*, %struct.ice_aqc_add_tx_qgrp** %15, align 8
  %95 = getelementptr inbounds %struct.ice_aqc_add_tx_qgrp, %struct.ice_aqc_add_tx_qgrp* %94, i32 0, i32 1
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i64 0
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  store i32 %93, i32* %99, align 4
  %100 = load %struct.ice_hw*, %struct.ice_hw** %22, align 8
  %101 = load i32, i32* %14, align 4
  %102 = load %struct.ice_aqc_add_tx_qgrp*, %struct.ice_aqc_add_tx_qgrp** %15, align 8
  %103 = load i32, i32* %16, align 4
  %104 = load %struct.ice_sq_cd*, %struct.ice_sq_cd** %17, align 8
  %105 = call i32 @ice_aq_add_lan_txq(%struct.ice_hw* %100, i32 %101, %struct.ice_aqc_add_tx_qgrp* %102, i32 %103, %struct.ice_sq_cd* %104)
  store i32 %105, i32* %21, align 4
  %106 = load i32, i32* %21, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %123

108:                                              ; preds = %81
  %109 = load %struct.ice_hw*, %struct.ice_hw** %22, align 8
  %110 = load i32, i32* @ICE_DBG_SCHED, align 4
  %111 = load %struct.ice_aqc_add_tx_qgrp*, %struct.ice_aqc_add_tx_qgrp** %15, align 8
  %112 = getelementptr inbounds %struct.ice_aqc_add_tx_qgrp, %struct.ice_aqc_add_tx_qgrp* %111, i32 0, i32 1
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i64 0
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @le16_to_cpu(i32 %116)
  %118 = load %struct.ice_hw*, %struct.ice_hw** %22, align 8
  %119 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i32 (%struct.ice_hw*, i32, i8*, i32, ...) @ice_debug(%struct.ice_hw* %109, i32 %110, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %117, i32 %121)
  br label %143

123:                                              ; preds = %81
  %124 = load %struct.ice_aqc_add_tx_qgrp*, %struct.ice_aqc_add_tx_qgrp** %15, align 8
  %125 = getelementptr inbounds %struct.ice_aqc_add_tx_qgrp, %struct.ice_aqc_add_tx_qgrp* %124, i32 0, i32 1
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i64 0
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = getelementptr inbounds %struct.ice_aqc_txsched_elem_data, %struct.ice_aqc_txsched_elem_data* %18, i32 0, i32 1
  store i32 %129, i32* %130, align 4
  %131 = load i32, i32* @ICE_AQC_ELEM_TYPE_LEAF, align 4
  %132 = getelementptr inbounds %struct.ice_aqc_txsched_elem_data, %struct.ice_aqc_txsched_elem_data* %18, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 4
  %134 = load i32, i32* %13, align 4
  %135 = load %struct.ice_q_ctx*, %struct.ice_q_ctx** %20, align 8
  %136 = getelementptr inbounds %struct.ice_q_ctx, %struct.ice_q_ctx* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 4
  %137 = load %struct.ice_port_info*, %struct.ice_port_info** %10, align 8
  %138 = load %struct.ice_hw*, %struct.ice_hw** %22, align 8
  %139 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = sub nsw i64 %140, 1
  %142 = call i32 @ice_sched_add_node(%struct.ice_port_info* %137, i64 %141, %struct.ice_aqc_txsched_elem_data* %18)
  store i32 %142, i32* %21, align 4
  br label %143

143:                                              ; preds = %123, %108, %79, %65
  %144 = load %struct.ice_port_info*, %struct.ice_port_info** %10, align 8
  %145 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %144, i32 0, i32 1
  %146 = call i32 @mutex_unlock(i32* %145)
  %147 = load i32, i32* %21, align 4
  store i32 %147, i32* %9, align 4
  br label %148

148:                                              ; preds = %143, %52, %42, %32
  %149 = load i32, i32* %9, align 4
  ret i32 %149
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ice_is_vsi_valid(%struct.ice_hw*, i32) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local %struct.ice_q_ctx* @ice_get_lan_q_ctx(%struct.ice_hw*, i32, i32, i32) #2

declare dso_local i32 @ice_debug(%struct.ice_hw*, i32, i8*, i32, ...) #2

declare dso_local %struct.ice_sched_node* @ice_sched_get_free_qparent(%struct.ice_port_info*, i32, i32, i32) #2

declare dso_local i32 @ice_aq_add_lan_txq(%struct.ice_hw*, i32, %struct.ice_aqc_add_tx_qgrp*, i32, %struct.ice_sq_cd*) #2

declare dso_local i32 @le16_to_cpu(i32) #2

declare dso_local i32 @ice_sched_add_node(%struct.ice_port_info*, i64, %struct.ice_aqc_txsched_elem_data*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
