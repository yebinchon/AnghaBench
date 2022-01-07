; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_iscsi.c_qed_sp_iscsi_func_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_iscsi.c_qed_sp_iscsi_func_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_10__*, %struct.TYPE_16__, %struct.TYPE_12__ }
%struct.TYPE_10__ = type { i32, i8* }
%struct.TYPE_16__ = type { i64*, i64*, i32 }
%struct.TYPE_12__ = type { %struct.qed_iscsi_pf_params }
%struct.qed_iscsi_pf_params = type { i64, i32, i32, i32, i64, i32, i32*, i32*, i64*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32 }
%struct.qed_spq_comp_cb = type { i32 }
%struct.iscsi_init_ramrod_params = type { %struct.TYPE_9__, %struct.iscsi_spe_func_init }
%struct.TYPE_9__ = type { i32, i8*, i32 }
%struct.iscsi_spe_func_init = type { %struct.TYPE_15__, %struct.TYPE_14__, i64, i32, i32, i32, i8*, %struct.TYPE_13__, %struct.scsi_init_func_queues }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i8*, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.scsi_init_func_queues = type { i64, i64, i64, i32, i64*, i8*, i8**, i8**, i32*, i8**, i32, i32, i8*, i8*, i32 }
%struct.qed_spq_entry = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.iscsi_init_ramrod_params }
%struct.qed_sp_init_data = type { i32, %struct.qed_spq_comp_cb*, i32, i32 }

@ISCSI_RAMROD_CMD_ID_INIT_FUNC = common dso_local global i32 0, align 4
@PROTOCOLID_ISCSI = common dso_local global i32 0, align 4
@QED_ISCSI_CQ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [90 x i8] c"Cannot satisfy CQ amount. Queues requested %d, CQs available %d. Aborting function start\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ISCSI_SLOW_PATH_HDR_LAYER_CODE = common dso_local global i32 0, align 4
@ISCSI_SLOW_PATH_LAYER_CODE = common dso_local global i32 0, align 4
@QED_LL2_QUEUE = common dso_local global i64 0, align 8
@QED_CMDQS_CQS = common dso_local global i64 0, align 8
@QED_BDQ = common dso_local global i32 0, align 4
@BDQ_ID_RQ = common dso_local global i64 0, align 8
@BDQ_ID_IMM_DATA = common dso_local global i64 0, align 8
@SCSI_INIT_FUNC_QUEUES_RQ_VALID = common dso_local global i32 0, align 4
@SCSI_INIT_FUNC_QUEUES_IMM_DATA_VALID = common dso_local global i32 0, align 4
@SCSI_INIT_FUNC_QUEUES_CMD_VALID = common dso_local global i32 0, align 4
@qed_iscsi_async_event = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, i32, %struct.qed_spq_comp_cb*, i8*, i32)* @qed_sp_iscsi_func_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_sp_iscsi_func_start(%struct.qed_hwfn* %0, i32 %1, %struct.qed_spq_comp_cb* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.qed_hwfn*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.qed_spq_comp_cb*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.iscsi_init_ramrod_params*, align 8
  %13 = alloca %struct.scsi_init_func_queues*, align 8
  %14 = alloca %struct.qed_iscsi_pf_params*, align 8
  %15 = alloca %struct.iscsi_spe_func_init*, align 8
  %16 = alloca %struct.qed_spq_entry*, align 8
  %17 = alloca %struct.qed_sp_init_data, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.qed_spq_comp_cb* %2, %struct.qed_spq_comp_cb** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.iscsi_init_ramrod_params* null, %struct.iscsi_init_ramrod_params** %12, align 8
  store %struct.scsi_init_func_queues* null, %struct.scsi_init_func_queues** %13, align 8
  store %struct.qed_iscsi_pf_params* null, %struct.qed_iscsi_pf_params** %14, align 8
  store %struct.iscsi_spe_func_init* null, %struct.iscsi_spe_func_init** %15, align 8
  store %struct.qed_spq_entry* null, %struct.qed_spq_entry** %16, align 8
  store i32 0, i32* %18, align 4
  %22 = call i32 @memset(%struct.qed_sp_init_data* %17, i32 0, i32 24)
  %23 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %24 = call i32 @qed_spq_get_cid(%struct.qed_hwfn* %23)
  %25 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %17, i32 0, i32 3
  store i32 %24, i32* %25, align 4
  %26 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %27 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %17, i32 0, i32 2
  store i32 %29, i32* %30, align 8
  %31 = load i32, i32* %8, align 4
  %32 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %17, i32 0, i32 0
  store i32 %31, i32* %32, align 8
  %33 = load %struct.qed_spq_comp_cb*, %struct.qed_spq_comp_cb** %9, align 8
  %34 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %17, i32 0, i32 1
  store %struct.qed_spq_comp_cb* %33, %struct.qed_spq_comp_cb** %34, align 8
  %35 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %36 = load i32, i32* @ISCSI_RAMROD_CMD_ID_INIT_FUNC, align 4
  %37 = load i32, i32* @PROTOCOLID_ISCSI, align 4
  %38 = call i32 @qed_sp_init_request(%struct.qed_hwfn* %35, %struct.qed_spq_entry** %16, i32 %36, i32 %37, %struct.qed_sp_init_data* %17)
  store i32 %38, i32* %18, align 4
  %39 = load i32, i32* %18, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %5
  %42 = load i32, i32* %18, align 4
  store i32 %42, i32* %6, align 4
  br label %403

43:                                               ; preds = %5
  %44 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %16, align 8
  %45 = getelementptr inbounds %struct.qed_spq_entry, %struct.qed_spq_entry* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  store %struct.iscsi_init_ramrod_params* %46, %struct.iscsi_init_ramrod_params** %12, align 8
  %47 = load %struct.iscsi_init_ramrod_params*, %struct.iscsi_init_ramrod_params** %12, align 8
  %48 = getelementptr inbounds %struct.iscsi_init_ramrod_params, %struct.iscsi_init_ramrod_params* %47, i32 0, i32 1
  store %struct.iscsi_spe_func_init* %48, %struct.iscsi_spe_func_init** %15, align 8
  %49 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %50 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  store %struct.qed_iscsi_pf_params* %51, %struct.qed_iscsi_pf_params** %14, align 8
  %52 = load %struct.iscsi_spe_func_init*, %struct.iscsi_spe_func_init** %15, align 8
  %53 = getelementptr inbounds %struct.iscsi_spe_func_init, %struct.iscsi_spe_func_init* %52, i32 0, i32 8
  store %struct.scsi_init_func_queues* %53, %struct.scsi_init_func_queues** %13, align 8
  %54 = load %struct.qed_iscsi_pf_params*, %struct.qed_iscsi_pf_params** %14, align 8
  %55 = getelementptr inbounds %struct.qed_iscsi_pf_params, %struct.qed_iscsi_pf_params* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %58 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = load i64, i64* @QED_ISCSI_CQ, align 8
  %62 = getelementptr inbounds i64, i64* %60, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = icmp sgt i64 %56, %63
  br i1 %64, label %65, label %83

65:                                               ; preds = %43
  %66 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %67 = load %struct.qed_iscsi_pf_params*, %struct.qed_iscsi_pf_params** %14, align 8
  %68 = getelementptr inbounds %struct.qed_iscsi_pf_params, %struct.qed_iscsi_pf_params* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %71 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 0
  %73 = load i64*, i64** %72, align 8
  %74 = load i64, i64* @QED_ISCSI_CQ, align 8
  %75 = getelementptr inbounds i64, i64* %73, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @DP_ERR(%struct.qed_hwfn* %66, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str, i64 0, i64 0), i64 %69, i64 %76)
  %78 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %79 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %16, align 8
  %80 = call i32 @qed_sp_destroy_request(%struct.qed_hwfn* %78, %struct.qed_spq_entry* %79)
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %6, align 4
  br label %403

83:                                               ; preds = %43
  %84 = load %struct.iscsi_spe_func_init*, %struct.iscsi_spe_func_init** %15, align 8
  %85 = getelementptr inbounds %struct.iscsi_spe_func_init, %struct.iscsi_spe_func_init* %84, i32 0, i32 7
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @ISCSI_SLOW_PATH_HDR_LAYER_CODE, align 4
  %89 = load i32, i32* @ISCSI_SLOW_PATH_LAYER_CODE, align 4
  %90 = call i32 @SET_FIELD(i32 %87, i32 %88, i32 %89)
  %91 = load i32, i32* @ISCSI_RAMROD_CMD_ID_INIT_FUNC, align 4
  %92 = load %struct.iscsi_spe_func_init*, %struct.iscsi_spe_func_init** %15, align 8
  %93 = getelementptr inbounds %struct.iscsi_spe_func_init, %struct.iscsi_spe_func_init* %92, i32 0, i32 7
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  store i32 %91, i32* %94, align 8
  %95 = load %struct.qed_iscsi_pf_params*, %struct.qed_iscsi_pf_params** %14, align 8
  %96 = getelementptr inbounds %struct.qed_iscsi_pf_params, %struct.qed_iscsi_pf_params* %95, i32 0, i32 22
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %20, align 4
  %98 = load i32, i32* %20, align 4
  %99 = call i8* @cpu_to_le16(i32 %98)
  %100 = load %struct.iscsi_spe_func_init*, %struct.iscsi_spe_func_init** %15, align 8
  %101 = getelementptr inbounds %struct.iscsi_spe_func_init, %struct.iscsi_spe_func_init* %100, i32 0, i32 6
  store i8* %99, i8** %101, align 8
  %102 = load %struct.qed_iscsi_pf_params*, %struct.qed_iscsi_pf_params** %14, align 8
  %103 = getelementptr inbounds %struct.qed_iscsi_pf_params, %struct.qed_iscsi_pf_params* %102, i32 0, i32 21
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.iscsi_spe_func_init*, %struct.iscsi_spe_func_init** %15, align 8
  %106 = getelementptr inbounds %struct.iscsi_spe_func_init, %struct.iscsi_spe_func_init* %105, i32 0, i32 5
  store i32 %104, i32* %106, align 8
  %107 = load %struct.qed_iscsi_pf_params*, %struct.qed_iscsi_pf_params** %14, align 8
  %108 = getelementptr inbounds %struct.qed_iscsi_pf_params, %struct.qed_iscsi_pf_params* %107, i32 0, i32 20
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.iscsi_spe_func_init*, %struct.iscsi_spe_func_init** %15, align 8
  %111 = getelementptr inbounds %struct.iscsi_spe_func_init, %struct.iscsi_spe_func_init* %110, i32 0, i32 4
  store i32 %109, i32* %111, align 4
  %112 = load %struct.qed_iscsi_pf_params*, %struct.qed_iscsi_pf_params** %14, align 8
  %113 = getelementptr inbounds %struct.qed_iscsi_pf_params, %struct.qed_iscsi_pf_params* %112, i32 0, i32 19
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.iscsi_spe_func_init*, %struct.iscsi_spe_func_init** %15, align 8
  %116 = getelementptr inbounds %struct.iscsi_spe_func_init, %struct.iscsi_spe_func_init* %115, i32 0, i32 3
  store i32 %114, i32* %116, align 8
  %117 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %118 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 1
  %120 = load i64*, i64** %119, align 8
  %121 = load i64, i64* @QED_LL2_QUEUE, align 8
  %122 = getelementptr inbounds i64, i64* %120, i64 %121
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.qed_iscsi_pf_params*, %struct.qed_iscsi_pf_params** %14, align 8
  %125 = getelementptr inbounds %struct.qed_iscsi_pf_params, %struct.qed_iscsi_pf_params* %124, i32 0, i32 18
  %126 = load i64, i64* %125, align 8
  %127 = add nsw i64 %123, %126
  %128 = load %struct.iscsi_spe_func_init*, %struct.iscsi_spe_func_init** %15, align 8
  %129 = getelementptr inbounds %struct.iscsi_spe_func_init, %struct.iscsi_spe_func_init* %128, i32 0, i32 2
  store i64 %127, i64* %129, align 8
  %130 = load %struct.qed_iscsi_pf_params*, %struct.qed_iscsi_pf_params** %14, align 8
  %131 = getelementptr inbounds %struct.qed_iscsi_pf_params, %struct.qed_iscsi_pf_params* %130, i32 0, i32 17
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.iscsi_spe_func_init*, %struct.iscsi_spe_func_init** %15, align 8
  %134 = getelementptr inbounds %struct.iscsi_spe_func_init, %struct.iscsi_spe_func_init* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 1
  store i32 %132, i32* %135, align 8
  %136 = load %struct.qed_iscsi_pf_params*, %struct.qed_iscsi_pf_params** %14, align 8
  %137 = getelementptr inbounds %struct.qed_iscsi_pf_params, %struct.qed_iscsi_pf_params* %136, i32 0, i32 16
  %138 = load i32, i32* %137, align 8
  store i32 %138, i32* %20, align 4
  %139 = load i32, i32* %20, align 4
  %140 = call i8* @cpu_to_le16(i32 %139)
  %141 = load %struct.iscsi_spe_func_init*, %struct.iscsi_spe_func_init** %15, align 8
  %142 = getelementptr inbounds %struct.iscsi_spe_func_init, %struct.iscsi_spe_func_init* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 0
  store i8* %140, i8** %143, align 8
  %144 = load %struct.qed_iscsi_pf_params*, %struct.qed_iscsi_pf_params** %14, align 8
  %145 = getelementptr inbounds %struct.qed_iscsi_pf_params, %struct.qed_iscsi_pf_params* %144, i32 0, i32 15
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.iscsi_spe_func_init*, %struct.iscsi_spe_func_init** %15, align 8
  %148 = getelementptr inbounds %struct.iscsi_spe_func_init, %struct.iscsi_spe_func_init* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 0
  store i32 %146, i32* %149, align 8
  %150 = load %struct.scsi_init_func_queues*, %struct.scsi_init_func_queues** %13, align 8
  %151 = getelementptr inbounds %struct.scsi_init_func_queues, %struct.scsi_init_func_queues* %150, i32 0, i32 14
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.qed_iscsi_pf_params*, %struct.qed_iscsi_pf_params** %14, align 8
  %154 = getelementptr inbounds %struct.qed_iscsi_pf_params, %struct.qed_iscsi_pf_params* %153, i32 0, i32 14
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @DMA_REGPAIR_LE(i32 %152, i32 %155)
  %157 = load %struct.qed_iscsi_pf_params*, %struct.qed_iscsi_pf_params** %14, align 8
  %158 = getelementptr inbounds %struct.qed_iscsi_pf_params, %struct.qed_iscsi_pf_params* %157, i32 0, i32 13
  %159 = load i32, i32* %158, align 4
  store i32 %159, i32* %20, align 4
  %160 = load i32, i32* %20, align 4
  %161 = call i8* @cpu_to_le16(i32 %160)
  %162 = load %struct.scsi_init_func_queues*, %struct.scsi_init_func_queues** %13, align 8
  %163 = getelementptr inbounds %struct.scsi_init_func_queues, %struct.scsi_init_func_queues* %162, i32 0, i32 13
  store i8* %161, i8** %163, align 8
  %164 = load %struct.qed_iscsi_pf_params*, %struct.qed_iscsi_pf_params** %14, align 8
  %165 = getelementptr inbounds %struct.qed_iscsi_pf_params, %struct.qed_iscsi_pf_params* %164, i32 0, i32 12
  %166 = load i32, i32* %165, align 8
  store i32 %166, i32* %20, align 4
  %167 = load i32, i32* %20, align 4
  %168 = call i8* @cpu_to_le16(i32 %167)
  %169 = load %struct.scsi_init_func_queues*, %struct.scsi_init_func_queues** %13, align 8
  %170 = getelementptr inbounds %struct.scsi_init_func_queues, %struct.scsi_init_func_queues* %169, i32 0, i32 12
  store i8* %168, i8** %170, align 8
  %171 = load %struct.qed_iscsi_pf_params*, %struct.qed_iscsi_pf_params** %14, align 8
  %172 = getelementptr inbounds %struct.qed_iscsi_pf_params, %struct.qed_iscsi_pf_params* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.scsi_init_func_queues*, %struct.scsi_init_func_queues** %13, align 8
  %175 = getelementptr inbounds %struct.scsi_init_func_queues, %struct.scsi_init_func_queues* %174, i32 0, i32 0
  store i64 %173, i64* %175, align 8
  %176 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %177 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 1
  %179 = load i64*, i64** %178, align 8
  %180 = load i64, i64* @QED_CMDQS_CQS, align 8
  %181 = getelementptr inbounds i64, i64* %179, i64 %180
  %182 = load i64, i64* %181, align 8
  store i64 %182, i64* %19, align 8
  %183 = load i64, i64* %19, align 8
  %184 = load %struct.scsi_init_func_queues*, %struct.scsi_init_func_queues** %13, align 8
  %185 = getelementptr inbounds %struct.scsi_init_func_queues, %struct.scsi_init_func_queues* %184, i32 0, i32 1
  store i64 %183, i64* %185, align 8
  %186 = load %struct.qed_iscsi_pf_params*, %struct.qed_iscsi_pf_params** %14, align 8
  %187 = getelementptr inbounds %struct.qed_iscsi_pf_params, %struct.qed_iscsi_pf_params* %186, i32 0, i32 11
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.scsi_init_func_queues*, %struct.scsi_init_func_queues** %13, align 8
  %190 = getelementptr inbounds %struct.scsi_init_func_queues, %struct.scsi_init_func_queues* %189, i32 0, i32 11
  store i32 %188, i32* %190, align 4
  %191 = load %struct.qed_iscsi_pf_params*, %struct.qed_iscsi_pf_params** %14, align 8
  %192 = getelementptr inbounds %struct.qed_iscsi_pf_params, %struct.qed_iscsi_pf_params* %191, i32 0, i32 10
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.scsi_init_func_queues*, %struct.scsi_init_func_queues** %13, align 8
  %195 = getelementptr inbounds %struct.scsi_init_func_queues, %struct.scsi_init_func_queues* %194, i32 0, i32 10
  store i32 %193, i32* %195, align 8
  store i64 0, i64* %21, align 8
  br label %196

196:                                              ; preds = %213, %83
  %197 = load i64, i64* %21, align 8
  %198 = load %struct.qed_iscsi_pf_params*, %struct.qed_iscsi_pf_params** %14, align 8
  %199 = getelementptr inbounds %struct.qed_iscsi_pf_params, %struct.qed_iscsi_pf_params* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = icmp ult i64 %197, %200
  br i1 %201, label %202, label %216

202:                                              ; preds = %196
  %203 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %204 = load i64, i64* %21, align 8
  %205 = call i32 @qed_get_igu_sb_id(%struct.qed_hwfn* %203, i64 %204)
  store i32 %205, i32* %20, align 4
  %206 = load i32, i32* %20, align 4
  %207 = call i8* @cpu_to_le16(i32 %206)
  %208 = load %struct.scsi_init_func_queues*, %struct.scsi_init_func_queues** %13, align 8
  %209 = getelementptr inbounds %struct.scsi_init_func_queues, %struct.scsi_init_func_queues* %208, i32 0, i32 9
  %210 = load i8**, i8*** %209, align 8
  %211 = load i64, i64* %21, align 8
  %212 = getelementptr inbounds i8*, i8** %210, i64 %211
  store i8* %207, i8** %212, align 8
  br label %213

213:                                              ; preds = %202
  %214 = load i64, i64* %21, align 8
  %215 = add i64 %214, 1
  store i64 %215, i64* %21, align 8
  br label %196

216:                                              ; preds = %196
  %217 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %218 = load i32, i32* @QED_BDQ, align 4
  %219 = call i64 @RESC_START(%struct.qed_hwfn* %217, i32 %218)
  %220 = load %struct.scsi_init_func_queues*, %struct.scsi_init_func_queues** %13, align 8
  %221 = getelementptr inbounds %struct.scsi_init_func_queues, %struct.scsi_init_func_queues* %220, i32 0, i32 2
  store i64 %219, i64* %221, align 8
  %222 = load %struct.scsi_init_func_queues*, %struct.scsi_init_func_queues** %13, align 8
  %223 = getelementptr inbounds %struct.scsi_init_func_queues, %struct.scsi_init_func_queues* %222, i32 0, i32 8
  %224 = load i32*, i32** %223, align 8
  %225 = load i64, i64* @BDQ_ID_RQ, align 8
  %226 = getelementptr inbounds i32, i32* %224, i64 %225
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.qed_iscsi_pf_params*, %struct.qed_iscsi_pf_params** %14, align 8
  %229 = getelementptr inbounds %struct.qed_iscsi_pf_params, %struct.qed_iscsi_pf_params* %228, i32 0, i32 9
  %230 = load i32*, i32** %229, align 8
  %231 = load i64, i64* @BDQ_ID_RQ, align 8
  %232 = getelementptr inbounds i32, i32* %230, i64 %231
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @DMA_REGPAIR_LE(i32 %227, i32 %233)
  %235 = load %struct.qed_iscsi_pf_params*, %struct.qed_iscsi_pf_params** %14, align 8
  %236 = getelementptr inbounds %struct.qed_iscsi_pf_params, %struct.qed_iscsi_pf_params* %235, i32 0, i32 8
  %237 = load i64*, i64** %236, align 8
  %238 = load i64, i64* @BDQ_ID_RQ, align 8
  %239 = getelementptr inbounds i64, i64* %237, i64 %238
  %240 = load i64, i64* %239, align 8
  %241 = load %struct.scsi_init_func_queues*, %struct.scsi_init_func_queues** %13, align 8
  %242 = getelementptr inbounds %struct.scsi_init_func_queues, %struct.scsi_init_func_queues* %241, i32 0, i32 4
  %243 = load i64*, i64** %242, align 8
  %244 = load i64, i64* @BDQ_ID_RQ, align 8
  %245 = getelementptr inbounds i64, i64* %243, i64 %244
  store i64 %240, i64* %245, align 8
  %246 = load %struct.qed_iscsi_pf_params*, %struct.qed_iscsi_pf_params** %14, align 8
  %247 = getelementptr inbounds %struct.qed_iscsi_pf_params, %struct.qed_iscsi_pf_params* %246, i32 0, i32 7
  %248 = load i32*, i32** %247, align 8
  %249 = load i64, i64* @BDQ_ID_RQ, align 8
  %250 = getelementptr inbounds i32, i32* %248, i64 %249
  %251 = load i32, i32* %250, align 4
  store i32 %251, i32* %20, align 4
  %252 = load i32, i32* %20, align 4
  %253 = call i8* @cpu_to_le16(i32 %252)
  %254 = load %struct.scsi_init_func_queues*, %struct.scsi_init_func_queues** %13, align 8
  %255 = getelementptr inbounds %struct.scsi_init_func_queues, %struct.scsi_init_func_queues* %254, i32 0, i32 7
  %256 = load i8**, i8*** %255, align 8
  %257 = load i64, i64* @BDQ_ID_RQ, align 8
  %258 = getelementptr inbounds i8*, i8** %256, i64 %257
  store i8* %253, i8** %258, align 8
  %259 = load %struct.qed_iscsi_pf_params*, %struct.qed_iscsi_pf_params** %14, align 8
  %260 = getelementptr inbounds %struct.qed_iscsi_pf_params, %struct.qed_iscsi_pf_params* %259, i32 0, i32 6
  %261 = load i32*, i32** %260, align 8
  %262 = load i64, i64* @BDQ_ID_RQ, align 8
  %263 = getelementptr inbounds i32, i32* %261, i64 %262
  %264 = load i32, i32* %263, align 4
  store i32 %264, i32* %20, align 4
  %265 = load i32, i32* %20, align 4
  %266 = call i8* @cpu_to_le16(i32 %265)
  %267 = load %struct.scsi_init_func_queues*, %struct.scsi_init_func_queues** %13, align 8
  %268 = getelementptr inbounds %struct.scsi_init_func_queues, %struct.scsi_init_func_queues* %267, i32 0, i32 6
  %269 = load i8**, i8*** %268, align 8
  %270 = load i64, i64* @BDQ_ID_RQ, align 8
  %271 = getelementptr inbounds i8*, i8** %269, i64 %270
  store i8* %266, i8** %271, align 8
  %272 = load %struct.scsi_init_func_queues*, %struct.scsi_init_func_queues** %13, align 8
  %273 = getelementptr inbounds %struct.scsi_init_func_queues, %struct.scsi_init_func_queues* %272, i32 0, i32 8
  %274 = load i32*, i32** %273, align 8
  %275 = load i64, i64* @BDQ_ID_IMM_DATA, align 8
  %276 = getelementptr inbounds i32, i32* %274, i64 %275
  %277 = load i32, i32* %276, align 4
  %278 = load %struct.qed_iscsi_pf_params*, %struct.qed_iscsi_pf_params** %14, align 8
  %279 = getelementptr inbounds %struct.qed_iscsi_pf_params, %struct.qed_iscsi_pf_params* %278, i32 0, i32 9
  %280 = load i32*, i32** %279, align 8
  %281 = load i64, i64* @BDQ_ID_IMM_DATA, align 8
  %282 = getelementptr inbounds i32, i32* %280, i64 %281
  %283 = load i32, i32* %282, align 4
  %284 = call i32 @DMA_REGPAIR_LE(i32 %277, i32 %283)
  %285 = load %struct.qed_iscsi_pf_params*, %struct.qed_iscsi_pf_params** %14, align 8
  %286 = getelementptr inbounds %struct.qed_iscsi_pf_params, %struct.qed_iscsi_pf_params* %285, i32 0, i32 8
  %287 = load i64*, i64** %286, align 8
  %288 = load i64, i64* @BDQ_ID_IMM_DATA, align 8
  %289 = getelementptr inbounds i64, i64* %287, i64 %288
  %290 = load i64, i64* %289, align 8
  %291 = load %struct.scsi_init_func_queues*, %struct.scsi_init_func_queues** %13, align 8
  %292 = getelementptr inbounds %struct.scsi_init_func_queues, %struct.scsi_init_func_queues* %291, i32 0, i32 4
  %293 = load i64*, i64** %292, align 8
  %294 = load i64, i64* @BDQ_ID_IMM_DATA, align 8
  %295 = getelementptr inbounds i64, i64* %293, i64 %294
  store i64 %290, i64* %295, align 8
  %296 = load %struct.qed_iscsi_pf_params*, %struct.qed_iscsi_pf_params** %14, align 8
  %297 = getelementptr inbounds %struct.qed_iscsi_pf_params, %struct.qed_iscsi_pf_params* %296, i32 0, i32 7
  %298 = load i32*, i32** %297, align 8
  %299 = load i64, i64* @BDQ_ID_IMM_DATA, align 8
  %300 = getelementptr inbounds i32, i32* %298, i64 %299
  %301 = load i32, i32* %300, align 4
  store i32 %301, i32* %20, align 4
  %302 = load i32, i32* %20, align 4
  %303 = call i8* @cpu_to_le16(i32 %302)
  %304 = load %struct.scsi_init_func_queues*, %struct.scsi_init_func_queues** %13, align 8
  %305 = getelementptr inbounds %struct.scsi_init_func_queues, %struct.scsi_init_func_queues* %304, i32 0, i32 7
  %306 = load i8**, i8*** %305, align 8
  %307 = load i64, i64* @BDQ_ID_IMM_DATA, align 8
  %308 = getelementptr inbounds i8*, i8** %306, i64 %307
  store i8* %303, i8** %308, align 8
  %309 = load %struct.qed_iscsi_pf_params*, %struct.qed_iscsi_pf_params** %14, align 8
  %310 = getelementptr inbounds %struct.qed_iscsi_pf_params, %struct.qed_iscsi_pf_params* %309, i32 0, i32 6
  %311 = load i32*, i32** %310, align 8
  %312 = load i64, i64* @BDQ_ID_IMM_DATA, align 8
  %313 = getelementptr inbounds i32, i32* %311, i64 %312
  %314 = load i32, i32* %313, align 4
  store i32 %314, i32* %20, align 4
  %315 = load i32, i32* %20, align 4
  %316 = call i8* @cpu_to_le16(i32 %315)
  %317 = load %struct.scsi_init_func_queues*, %struct.scsi_init_func_queues** %13, align 8
  %318 = getelementptr inbounds %struct.scsi_init_func_queues, %struct.scsi_init_func_queues* %317, i32 0, i32 6
  %319 = load i8**, i8*** %318, align 8
  %320 = load i64, i64* @BDQ_ID_IMM_DATA, align 8
  %321 = getelementptr inbounds i8*, i8** %319, i64 %320
  store i8* %316, i8** %321, align 8
  %322 = load %struct.qed_iscsi_pf_params*, %struct.qed_iscsi_pf_params** %14, align 8
  %323 = getelementptr inbounds %struct.qed_iscsi_pf_params, %struct.qed_iscsi_pf_params* %322, i32 0, i32 5
  %324 = load i32, i32* %323, align 8
  store i32 %324, i32* %20, align 4
  %325 = load i32, i32* %20, align 4
  %326 = call i8* @cpu_to_le16(i32 %325)
  %327 = load %struct.scsi_init_func_queues*, %struct.scsi_init_func_queues** %13, align 8
  %328 = getelementptr inbounds %struct.scsi_init_func_queues, %struct.scsi_init_func_queues* %327, i32 0, i32 5
  store i8* %326, i8** %328, align 8
  %329 = load %struct.qed_iscsi_pf_params*, %struct.qed_iscsi_pf_params** %14, align 8
  %330 = getelementptr inbounds %struct.qed_iscsi_pf_params, %struct.qed_iscsi_pf_params* %329, i32 0, i32 4
  %331 = load i64, i64* %330, align 8
  %332 = icmp ne i64 %331, 0
  br i1 %332, label %333, label %358

333:                                              ; preds = %216
  %334 = load %struct.scsi_init_func_queues*, %struct.scsi_init_func_queues** %13, align 8
  %335 = getelementptr inbounds %struct.scsi_init_func_queues, %struct.scsi_init_func_queues* %334, i32 0, i32 3
  %336 = load i32, i32* %335, align 8
  %337 = load i32, i32* @SCSI_INIT_FUNC_QUEUES_RQ_VALID, align 4
  %338 = call i32 @SET_FIELD(i32 %336, i32 %337, i32 1)
  %339 = load %struct.scsi_init_func_queues*, %struct.scsi_init_func_queues** %13, align 8
  %340 = getelementptr inbounds %struct.scsi_init_func_queues, %struct.scsi_init_func_queues* %339, i32 0, i32 4
  %341 = load i64*, i64** %340, align 8
  %342 = load i64, i64* @BDQ_ID_IMM_DATA, align 8
  %343 = getelementptr inbounds i64, i64* %341, i64 %342
  %344 = load i64, i64* %343, align 8
  %345 = icmp ne i64 %344, 0
  br i1 %345, label %346, label %352

346:                                              ; preds = %333
  %347 = load %struct.scsi_init_func_queues*, %struct.scsi_init_func_queues** %13, align 8
  %348 = getelementptr inbounds %struct.scsi_init_func_queues, %struct.scsi_init_func_queues* %347, i32 0, i32 3
  %349 = load i32, i32* %348, align 8
  %350 = load i32, i32* @SCSI_INIT_FUNC_QUEUES_IMM_DATA_VALID, align 4
  %351 = call i32 @SET_FIELD(i32 %349, i32 %350, i32 1)
  br label %352

352:                                              ; preds = %346, %333
  %353 = load %struct.scsi_init_func_queues*, %struct.scsi_init_func_queues** %13, align 8
  %354 = getelementptr inbounds %struct.scsi_init_func_queues, %struct.scsi_init_func_queues* %353, i32 0, i32 3
  %355 = load i32, i32* %354, align 8
  %356 = load i32, i32* @SCSI_INIT_FUNC_QUEUES_CMD_VALID, align 4
  %357 = call i32 @SET_FIELD(i32 %355, i32 %356, i32 1)
  br label %364

358:                                              ; preds = %216
  %359 = load %struct.scsi_init_func_queues*, %struct.scsi_init_func_queues** %13, align 8
  %360 = getelementptr inbounds %struct.scsi_init_func_queues, %struct.scsi_init_func_queues* %359, i32 0, i32 3
  %361 = load i32, i32* %360, align 8
  %362 = load i32, i32* @SCSI_INIT_FUNC_QUEUES_RQ_VALID, align 4
  %363 = call i32 @SET_FIELD(i32 %361, i32 %362, i32 1)
  br label %364

364:                                              ; preds = %358, %352
  %365 = load %struct.qed_iscsi_pf_params*, %struct.qed_iscsi_pf_params** %14, align 8
  %366 = getelementptr inbounds %struct.qed_iscsi_pf_params, %struct.qed_iscsi_pf_params* %365, i32 0, i32 3
  %367 = load i32, i32* %366, align 8
  %368 = call i32 @cpu_to_le32(i32 %367)
  %369 = load %struct.iscsi_init_ramrod_params*, %struct.iscsi_init_ramrod_params** %12, align 8
  %370 = getelementptr inbounds %struct.iscsi_init_ramrod_params, %struct.iscsi_init_ramrod_params* %369, i32 0, i32 0
  %371 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %370, i32 0, i32 2
  store i32 %368, i32* %371, align 8
  %372 = load %struct.qed_iscsi_pf_params*, %struct.qed_iscsi_pf_params** %14, align 8
  %373 = getelementptr inbounds %struct.qed_iscsi_pf_params, %struct.qed_iscsi_pf_params* %372, i32 0, i32 2
  %374 = load i32, i32* %373, align 4
  store i32 %374, i32* %20, align 4
  %375 = load i32, i32* %20, align 4
  %376 = call i8* @cpu_to_le16(i32 %375)
  %377 = load %struct.iscsi_init_ramrod_params*, %struct.iscsi_init_ramrod_params** %12, align 8
  %378 = getelementptr inbounds %struct.iscsi_init_ramrod_params, %struct.iscsi_init_ramrod_params* %377, i32 0, i32 0
  %379 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %378, i32 0, i32 1
  store i8* %376, i8** %379, align 8
  %380 = load %struct.qed_iscsi_pf_params*, %struct.qed_iscsi_pf_params** %14, align 8
  %381 = getelementptr inbounds %struct.qed_iscsi_pf_params, %struct.qed_iscsi_pf_params* %380, i32 0, i32 1
  %382 = load i32, i32* %381, align 8
  %383 = load %struct.iscsi_init_ramrod_params*, %struct.iscsi_init_ramrod_params** %12, align 8
  %384 = getelementptr inbounds %struct.iscsi_init_ramrod_params, %struct.iscsi_init_ramrod_params* %383, i32 0, i32 0
  %385 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %384, i32 0, i32 0
  store i32 %382, i32* %385, align 8
  %386 = load i8*, i8** %10, align 8
  %387 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %388 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %387, i32 0, i32 0
  %389 = load %struct.TYPE_10__*, %struct.TYPE_10__** %388, align 8
  %390 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %389, i32 0, i32 1
  store i8* %386, i8** %390, align 8
  %391 = load i32, i32* %11, align 4
  %392 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %393 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %392, i32 0, i32 0
  %394 = load %struct.TYPE_10__*, %struct.TYPE_10__** %393, align 8
  %395 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %394, i32 0, i32 0
  store i32 %391, i32* %395, align 8
  %396 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %397 = load i32, i32* @PROTOCOLID_ISCSI, align 4
  %398 = load i32, i32* @qed_iscsi_async_event, align 4
  %399 = call i32 @qed_spq_register_async_cb(%struct.qed_hwfn* %396, i32 %397, i32 %398)
  %400 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %401 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %16, align 8
  %402 = call i32 @qed_spq_post(%struct.qed_hwfn* %400, %struct.qed_spq_entry* %401, i32* null)
  store i32 %402, i32* %6, align 4
  br label %403

403:                                              ; preds = %364, %65, %41
  %404 = load i32, i32* %6, align 4
  ret i32 %404
}

declare dso_local i32 @memset(%struct.qed_sp_init_data*, i32, i32) #1

declare dso_local i32 @qed_spq_get_cid(%struct.qed_hwfn*) #1

declare dso_local i32 @qed_sp_init_request(%struct.qed_hwfn*, %struct.qed_spq_entry**, i32, i32, %struct.qed_sp_init_data*) #1

declare dso_local i32 @DP_ERR(%struct.qed_hwfn*, i8*, i64, i64) #1

declare dso_local i32 @qed_sp_destroy_request(%struct.qed_hwfn*, %struct.qed_spq_entry*) #1

declare dso_local i32 @SET_FIELD(i32, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @DMA_REGPAIR_LE(i32, i32) #1

declare dso_local i32 @qed_get_igu_sb_id(%struct.qed_hwfn*, i64) #1

declare dso_local i64 @RESC_START(%struct.qed_hwfn*, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @qed_spq_register_async_cb(%struct.qed_hwfn*, i32, i32) #1

declare dso_local i32 @qed_spq_post(%struct.qed_hwfn*, %struct.qed_spq_entry*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
