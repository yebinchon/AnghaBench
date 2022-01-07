; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_fcoe.c_qed_sp_fcoe_func_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_fcoe.c_qed_sp_fcoe_func_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_11__, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { i64*, i64*, i32 }
%struct.TYPE_8__ = type { %struct.qed_fcoe_pf_params }
%struct.qed_fcoe_pf_params = type { i64, i8*, i8*, i8*, i8*, i8*, i64, i8*, i8**, i8**, i64*, i32*, i32, i32, i32, i32, i32, i8* }
%struct.qed_spq_comp_cb = type { i32 }
%struct.fcoe_init_ramrod_params = type { %struct.fcoe_init_func_ramrod_data }
%struct.fcoe_init_func_ramrod_data = type { %struct.TYPE_12__, %struct.TYPE_10__, i8*, i8* }
%struct.TYPE_12__ = type { i64, i64, i64, i32, i64*, i8*, i8**, i8**, i32*, i32, i32, i8**, i8*, i8*, i32 }
%struct.TYPE_10__ = type { i32, i32, i8* }
%struct.e4_fcoe_conn_context = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.qed_spq_entry = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.fcoe_init_ramrod_params }
%struct.qed_sp_init_data = type { i32, %struct.qed_spq_comp_cb*, i32, i32 }
%struct.qed_cxt_info = type { %struct.e4_fcoe_conn_context*, i64 }

@FCOE_RAMROD_CMD_ID_INIT_FUNC = common dso_local global i32 0, align 4
@PROTOCOLID_FCOE = common dso_local global i32 0, align 4
@QED_FCOE_CQ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [87 x i8] c"Cannot satisfy CQ amount. CQs requested %d, CQs available %d. Aborting function start\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Cannot find context info for dummy cid=%d\0A\00", align 1
@E4_TSTORM_FCOE_CONN_AG_CTX_DUMMY_TIMER_CF_EN = common dso_local global i32 0, align 4
@QED_CMDQS_CQS = common dso_local global i64 0, align 8
@QED_BDQ = common dso_local global i32 0, align 4
@BDQ_ID_RQ = common dso_local global i64 0, align 8
@BDQ_ID_IMM_DATA = common dso_local global i64 0, align 8
@SCSI_INIT_FUNC_QUEUES_RQ_VALID = common dso_local global i32 0, align 4
@SCSI_INIT_FUNC_QUEUES_IMM_DATA_VALID = common dso_local global i32 0, align 4
@SCSI_INIT_FUNC_QUEUES_CMD_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, i32, %struct.qed_spq_comp_cb*)* @qed_sp_fcoe_func_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_sp_fcoe_func_start(%struct.qed_hwfn* %0, i32 %1, %struct.qed_spq_comp_cb* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.qed_spq_comp_cb*, align 8
  %8 = alloca %struct.qed_fcoe_pf_params*, align 8
  %9 = alloca %struct.fcoe_init_ramrod_params*, align 8
  %10 = alloca %struct.fcoe_init_func_ramrod_data*, align 8
  %11 = alloca %struct.e4_fcoe_conn_context*, align 8
  %12 = alloca %struct.qed_spq_entry*, align 8
  %13 = alloca %struct.qed_sp_init_data, align 8
  %14 = alloca %struct.qed_cxt_info, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.qed_spq_comp_cb* %2, %struct.qed_spq_comp_cb** %7, align 8
  store %struct.qed_fcoe_pf_params* null, %struct.qed_fcoe_pf_params** %8, align 8
  store %struct.fcoe_init_ramrod_params* null, %struct.fcoe_init_ramrod_params** %9, align 8
  store %struct.e4_fcoe_conn_context* null, %struct.e4_fcoe_conn_context** %11, align 8
  store %struct.qed_spq_entry* null, %struct.qed_spq_entry** %12, align 8
  store i32 0, i32* %16, align 4
  %20 = call i32 @memset(%struct.qed_sp_init_data* %13, i32 0, i32 24)
  %21 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %22 = call i32 @qed_spq_get_cid(%struct.qed_hwfn* %21)
  %23 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %13, i32 0, i32 3
  store i32 %22, i32* %23, align 4
  %24 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %25 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %13, i32 0, i32 2
  store i32 %27, i32* %28, align 8
  %29 = load i32, i32* %6, align 4
  %30 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %13, i32 0, i32 0
  store i32 %29, i32* %30, align 8
  %31 = load %struct.qed_spq_comp_cb*, %struct.qed_spq_comp_cb** %7, align 8
  %32 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %13, i32 0, i32 1
  store %struct.qed_spq_comp_cb* %31, %struct.qed_spq_comp_cb** %32, align 8
  %33 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %34 = load i32, i32* @FCOE_RAMROD_CMD_ID_INIT_FUNC, align 4
  %35 = load i32, i32* @PROTOCOLID_FCOE, align 4
  %36 = call i32 @qed_sp_init_request(%struct.qed_hwfn* %33, %struct.qed_spq_entry** %12, i32 %34, i32 %35, %struct.qed_sp_init_data* %13)
  store i32 %36, i32* %16, align 4
  %37 = load i32, i32* %16, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %3
  %40 = load i32, i32* %16, align 4
  store i32 %40, i32* %4, align 4
  br label %393

41:                                               ; preds = %3
  %42 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %12, align 8
  %43 = getelementptr inbounds %struct.qed_spq_entry, %struct.qed_spq_entry* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  store %struct.fcoe_init_ramrod_params* %44, %struct.fcoe_init_ramrod_params** %9, align 8
  %45 = load %struct.fcoe_init_ramrod_params*, %struct.fcoe_init_ramrod_params** %9, align 8
  %46 = getelementptr inbounds %struct.fcoe_init_ramrod_params, %struct.fcoe_init_ramrod_params* %45, i32 0, i32 0
  store %struct.fcoe_init_func_ramrod_data* %46, %struct.fcoe_init_func_ramrod_data** %10, align 8
  %47 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %48 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  store %struct.qed_fcoe_pf_params* %49, %struct.qed_fcoe_pf_params** %8, align 8
  %50 = load %struct.qed_fcoe_pf_params*, %struct.qed_fcoe_pf_params** %8, align 8
  %51 = getelementptr inbounds %struct.qed_fcoe_pf_params, %struct.qed_fcoe_pf_params* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %54 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = load i64, i64* @QED_FCOE_CQ, align 8
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = icmp sgt i64 %52, %59
  br i1 %60, label %61, label %76

61:                                               ; preds = %41
  %62 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %63 = load %struct.qed_fcoe_pf_params*, %struct.qed_fcoe_pf_params** %8, align 8
  %64 = getelementptr inbounds %struct.qed_fcoe_pf_params, %struct.qed_fcoe_pf_params* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %67 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load i64*, i64** %68, align 8
  %70 = load i64, i64* @QED_FCOE_CQ, align 8
  %71 = getelementptr inbounds i64, i64* %69, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @DP_ERR(%struct.qed_hwfn* %62, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i64 0, i64 0), i64 %65, i64 %72)
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %16, align 4
  br label %388

76:                                               ; preds = %41
  %77 = load %struct.qed_fcoe_pf_params*, %struct.qed_fcoe_pf_params** %8, align 8
  %78 = getelementptr inbounds %struct.qed_fcoe_pf_params, %struct.qed_fcoe_pf_params* %77, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  %80 = call i8* @cpu_to_le16(i8* %79)
  %81 = load %struct.fcoe_init_func_ramrod_data*, %struct.fcoe_init_func_ramrod_data** %10, align 8
  %82 = getelementptr inbounds %struct.fcoe_init_func_ramrod_data, %struct.fcoe_init_func_ramrod_data* %81, i32 0, i32 3
  store i8* %80, i8** %82, align 8
  %83 = load %struct.qed_fcoe_pf_params*, %struct.qed_fcoe_pf_params** %8, align 8
  %84 = getelementptr inbounds %struct.qed_fcoe_pf_params, %struct.qed_fcoe_pf_params* %83, i32 0, i32 2
  %85 = load i8*, i8** %84, align 8
  %86 = call i8* @cpu_to_le16(i8* %85)
  store i8* %86, i8** %17, align 8
  %87 = load i8*, i8** %17, align 8
  %88 = load %struct.fcoe_init_func_ramrod_data*, %struct.fcoe_init_func_ramrod_data** %10, align 8
  %89 = getelementptr inbounds %struct.fcoe_init_func_ramrod_data, %struct.fcoe_init_func_ramrod_data* %88, i32 0, i32 2
  store i8* %87, i8** %89, align 8
  %90 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %91 = load i32, i32* @PROTOCOLID_FCOE, align 4
  %92 = call i32 @qed_cxt_acquire_cid(%struct.qed_hwfn* %90, i32 %91, i64* %15)
  store i32 %92, i32* %16, align 4
  %93 = load i32, i32* %16, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %76
  br label %388

96:                                               ; preds = %76
  %97 = load i64, i64* %15, align 8
  %98 = getelementptr inbounds %struct.qed_cxt_info, %struct.qed_cxt_info* %14, i32 0, i32 1
  store i64 %97, i64* %98, align 8
  %99 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %100 = call i32 @qed_cxt_get_cid_info(%struct.qed_hwfn* %99, %struct.qed_cxt_info* %14)
  store i32 %100, i32* %16, align 4
  %101 = load i32, i32* %16, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %96
  %104 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %105 = load i64, i64* %15, align 8
  %106 = call i32 @DP_NOTICE(%struct.qed_hwfn* %104, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %105)
  br label %388

107:                                              ; preds = %96
  %108 = getelementptr inbounds %struct.qed_cxt_info, %struct.qed_cxt_info* %14, i32 0, i32 0
  %109 = load %struct.e4_fcoe_conn_context*, %struct.e4_fcoe_conn_context** %108, align 8
  store %struct.e4_fcoe_conn_context* %109, %struct.e4_fcoe_conn_context** %11, align 8
  %110 = load %struct.e4_fcoe_conn_context*, %struct.e4_fcoe_conn_context** %11, align 8
  %111 = getelementptr inbounds %struct.e4_fcoe_conn_context, %struct.e4_fcoe_conn_context* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @E4_TSTORM_FCOE_CONN_AG_CTX_DUMMY_TIMER_CF_EN, align 4
  %115 = call i32 @SET_FIELD(i32 %113, i32 %114, i32 1)
  %116 = load i64, i64* %15, align 8
  %117 = inttoptr i64 %116 to i8*
  %118 = load %struct.qed_fcoe_pf_params*, %struct.qed_fcoe_pf_params** %8, align 8
  %119 = getelementptr inbounds %struct.qed_fcoe_pf_params, %struct.qed_fcoe_pf_params* %118, i32 0, i32 17
  store i8* %117, i8** %119, align 8
  %120 = load %struct.qed_fcoe_pf_params*, %struct.qed_fcoe_pf_params** %8, align 8
  %121 = getelementptr inbounds %struct.qed_fcoe_pf_params, %struct.qed_fcoe_pf_params* %120, i32 0, i32 3
  %122 = load i8*, i8** %121, align 8
  %123 = call i8* @cpu_to_le16(i8* %122)
  store i8* %123, i8** %17, align 8
  %124 = load i8*, i8** %17, align 8
  %125 = load %struct.fcoe_init_func_ramrod_data*, %struct.fcoe_init_func_ramrod_data** %10, align 8
  %126 = getelementptr inbounds %struct.fcoe_init_func_ramrod_data, %struct.fcoe_init_func_ramrod_data* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 2
  store i8* %124, i8** %127, align 8
  %128 = load %struct.qed_fcoe_pf_params*, %struct.qed_fcoe_pf_params** %8, align 8
  %129 = getelementptr inbounds %struct.qed_fcoe_pf_params, %struct.qed_fcoe_pf_params* %128, i32 0, i32 16
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.fcoe_init_func_ramrod_data*, %struct.fcoe_init_func_ramrod_data** %10, align 8
  %132 = getelementptr inbounds %struct.fcoe_init_func_ramrod_data, %struct.fcoe_init_func_ramrod_data* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 1
  store i32 %130, i32* %133, align 4
  %134 = load %struct.qed_fcoe_pf_params*, %struct.qed_fcoe_pf_params** %8, align 8
  %135 = getelementptr inbounds %struct.qed_fcoe_pf_params, %struct.qed_fcoe_pf_params* %134, i32 0, i32 15
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.fcoe_init_func_ramrod_data*, %struct.fcoe_init_func_ramrod_data** %10, align 8
  %138 = getelementptr inbounds %struct.fcoe_init_func_ramrod_data, %struct.fcoe_init_func_ramrod_data* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 0
  store i32 %136, i32* %139, align 8
  %140 = load %struct.fcoe_init_func_ramrod_data*, %struct.fcoe_init_func_ramrod_data** %10, align 8
  %141 = getelementptr inbounds %struct.fcoe_init_func_ramrod_data, %struct.fcoe_init_func_ramrod_data* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 14
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.qed_fcoe_pf_params*, %struct.qed_fcoe_pf_params** %8, align 8
  %145 = getelementptr inbounds %struct.qed_fcoe_pf_params, %struct.qed_fcoe_pf_params* %144, i32 0, i32 14
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @DMA_REGPAIR_LE(i32 %143, i32 %146)
  %148 = load %struct.qed_fcoe_pf_params*, %struct.qed_fcoe_pf_params** %8, align 8
  %149 = getelementptr inbounds %struct.qed_fcoe_pf_params, %struct.qed_fcoe_pf_params* %148, i32 0, i32 4
  %150 = load i8*, i8** %149, align 8
  %151 = call i8* @cpu_to_le16(i8* %150)
  store i8* %151, i8** %17, align 8
  %152 = load i8*, i8** %17, align 8
  %153 = load %struct.fcoe_init_func_ramrod_data*, %struct.fcoe_init_func_ramrod_data** %10, align 8
  %154 = getelementptr inbounds %struct.fcoe_init_func_ramrod_data, %struct.fcoe_init_func_ramrod_data* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 13
  store i8* %152, i8** %155, align 8
  %156 = load %struct.qed_fcoe_pf_params*, %struct.qed_fcoe_pf_params** %8, align 8
  %157 = getelementptr inbounds %struct.qed_fcoe_pf_params, %struct.qed_fcoe_pf_params* %156, i32 0, i32 5
  %158 = load i8*, i8** %157, align 8
  %159 = call i8* @cpu_to_le16(i8* %158)
  store i8* %159, i8** %17, align 8
  %160 = load i8*, i8** %17, align 8
  %161 = load %struct.fcoe_init_func_ramrod_data*, %struct.fcoe_init_func_ramrod_data** %10, align 8
  %162 = getelementptr inbounds %struct.fcoe_init_func_ramrod_data, %struct.fcoe_init_func_ramrod_data* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 12
  store i8* %160, i8** %163, align 8
  %164 = load %struct.qed_fcoe_pf_params*, %struct.qed_fcoe_pf_params** %8, align 8
  %165 = getelementptr inbounds %struct.qed_fcoe_pf_params, %struct.qed_fcoe_pf_params* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = inttoptr i64 %166 to i8*
  store i8* %167, i8** %17, align 8
  %168 = load i8*, i8** %17, align 8
  %169 = ptrtoint i8* %168 to i64
  %170 = load %struct.fcoe_init_func_ramrod_data*, %struct.fcoe_init_func_ramrod_data** %10, align 8
  %171 = getelementptr inbounds %struct.fcoe_init_func_ramrod_data, %struct.fcoe_init_func_ramrod_data* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 0
  store i64 %169, i64* %172, align 8
  %173 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %174 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 1
  %176 = load i64*, i64** %175, align 8
  %177 = load i64, i64* @QED_CMDQS_CQS, align 8
  %178 = getelementptr inbounds i64, i64* %176, i64 %177
  %179 = load i64, i64* %178, align 8
  %180 = inttoptr i64 %179 to i8*
  store i8* %180, i8** %17, align 8
  %181 = load i8*, i8** %17, align 8
  %182 = ptrtoint i8* %181 to i64
  %183 = load %struct.fcoe_init_func_ramrod_data*, %struct.fcoe_init_func_ramrod_data** %10, align 8
  %184 = getelementptr inbounds %struct.fcoe_init_func_ramrod_data, %struct.fcoe_init_func_ramrod_data* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 1
  store i64 %182, i64* %185, align 8
  store i64 0, i64* %18, align 8
  br label %186

186:                                              ; preds = %205, %107
  %187 = load i64, i64* %18, align 8
  %188 = load %struct.qed_fcoe_pf_params*, %struct.qed_fcoe_pf_params** %8, align 8
  %189 = getelementptr inbounds %struct.qed_fcoe_pf_params, %struct.qed_fcoe_pf_params* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = icmp ult i64 %187, %190
  br i1 %191, label %192, label %208

192:                                              ; preds = %186
  %193 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %194 = load i64, i64* %18, align 8
  %195 = call i8* @qed_get_igu_sb_id(%struct.qed_hwfn* %193, i64 %194)
  store i8* %195, i8** %19, align 8
  %196 = load i8*, i8** %19, align 8
  %197 = call i8* @cpu_to_le16(i8* %196)
  store i8* %197, i8** %17, align 8
  %198 = load i8*, i8** %17, align 8
  %199 = load %struct.fcoe_init_func_ramrod_data*, %struct.fcoe_init_func_ramrod_data** %10, align 8
  %200 = getelementptr inbounds %struct.fcoe_init_func_ramrod_data, %struct.fcoe_init_func_ramrod_data* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %200, i32 0, i32 11
  %202 = load i8**, i8*** %201, align 8
  %203 = load i64, i64* %18, align 8
  %204 = getelementptr inbounds i8*, i8** %202, i64 %203
  store i8* %198, i8** %204, align 8
  br label %205

205:                                              ; preds = %192
  %206 = load i64, i64* %18, align 8
  %207 = add i64 %206, 1
  store i64 %207, i64* %18, align 8
  br label %186

208:                                              ; preds = %186
  %209 = load %struct.qed_fcoe_pf_params*, %struct.qed_fcoe_pf_params** %8, align 8
  %210 = getelementptr inbounds %struct.qed_fcoe_pf_params, %struct.qed_fcoe_pf_params* %209, i32 0, i32 13
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.fcoe_init_func_ramrod_data*, %struct.fcoe_init_func_ramrod_data** %10, align 8
  %213 = getelementptr inbounds %struct.fcoe_init_func_ramrod_data, %struct.fcoe_init_func_ramrod_data* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 0, i32 10
  store i32 %211, i32* %214, align 4
  %215 = load %struct.qed_fcoe_pf_params*, %struct.qed_fcoe_pf_params** %8, align 8
  %216 = getelementptr inbounds %struct.qed_fcoe_pf_params, %struct.qed_fcoe_pf_params* %215, i32 0, i32 12
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.fcoe_init_func_ramrod_data*, %struct.fcoe_init_func_ramrod_data** %10, align 8
  %219 = getelementptr inbounds %struct.fcoe_init_func_ramrod_data, %struct.fcoe_init_func_ramrod_data* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %219, i32 0, i32 9
  store i32 %217, i32* %220, align 8
  %221 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %222 = load i32, i32* @QED_BDQ, align 4
  %223 = call i64 @RESC_START(%struct.qed_hwfn* %221, i32 %222)
  %224 = load %struct.fcoe_init_func_ramrod_data*, %struct.fcoe_init_func_ramrod_data** %10, align 8
  %225 = getelementptr inbounds %struct.fcoe_init_func_ramrod_data, %struct.fcoe_init_func_ramrod_data* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i32 0, i32 2
  store i64 %223, i64* %226, align 8
  %227 = load %struct.fcoe_init_func_ramrod_data*, %struct.fcoe_init_func_ramrod_data** %10, align 8
  %228 = getelementptr inbounds %struct.fcoe_init_func_ramrod_data, %struct.fcoe_init_func_ramrod_data* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %228, i32 0, i32 8
  %230 = load i32*, i32** %229, align 8
  %231 = load i64, i64* @BDQ_ID_RQ, align 8
  %232 = getelementptr inbounds i32, i32* %230, i64 %231
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.qed_fcoe_pf_params*, %struct.qed_fcoe_pf_params** %8, align 8
  %235 = getelementptr inbounds %struct.qed_fcoe_pf_params, %struct.qed_fcoe_pf_params* %234, i32 0, i32 11
  %236 = load i32*, i32** %235, align 8
  %237 = load i64, i64* @BDQ_ID_RQ, align 8
  %238 = getelementptr inbounds i32, i32* %236, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @DMA_REGPAIR_LE(i32 %233, i32 %239)
  %241 = load %struct.qed_fcoe_pf_params*, %struct.qed_fcoe_pf_params** %8, align 8
  %242 = getelementptr inbounds %struct.qed_fcoe_pf_params, %struct.qed_fcoe_pf_params* %241, i32 0, i32 10
  %243 = load i64*, i64** %242, align 8
  %244 = load i64, i64* @BDQ_ID_RQ, align 8
  %245 = getelementptr inbounds i64, i64* %243, i64 %244
  %246 = load i64, i64* %245, align 8
  %247 = load %struct.fcoe_init_func_ramrod_data*, %struct.fcoe_init_func_ramrod_data** %10, align 8
  %248 = getelementptr inbounds %struct.fcoe_init_func_ramrod_data, %struct.fcoe_init_func_ramrod_data* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %248, i32 0, i32 4
  %250 = load i64*, i64** %249, align 8
  %251 = load i64, i64* @BDQ_ID_RQ, align 8
  %252 = getelementptr inbounds i64, i64* %250, i64 %251
  store i64 %246, i64* %252, align 8
  %253 = load %struct.qed_fcoe_pf_params*, %struct.qed_fcoe_pf_params** %8, align 8
  %254 = getelementptr inbounds %struct.qed_fcoe_pf_params, %struct.qed_fcoe_pf_params* %253, i32 0, i32 9
  %255 = load i8**, i8*** %254, align 8
  %256 = load i64, i64* @BDQ_ID_RQ, align 8
  %257 = getelementptr inbounds i8*, i8** %255, i64 %256
  %258 = load i8*, i8** %257, align 8
  store i8* %258, i8** %17, align 8
  %259 = load i8*, i8** %17, align 8
  %260 = call i8* @cpu_to_le16(i8* %259)
  %261 = load %struct.fcoe_init_func_ramrod_data*, %struct.fcoe_init_func_ramrod_data** %10, align 8
  %262 = getelementptr inbounds %struct.fcoe_init_func_ramrod_data, %struct.fcoe_init_func_ramrod_data* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %262, i32 0, i32 7
  %264 = load i8**, i8*** %263, align 8
  %265 = load i64, i64* @BDQ_ID_RQ, align 8
  %266 = getelementptr inbounds i8*, i8** %264, i64 %265
  store i8* %260, i8** %266, align 8
  %267 = load %struct.qed_fcoe_pf_params*, %struct.qed_fcoe_pf_params** %8, align 8
  %268 = getelementptr inbounds %struct.qed_fcoe_pf_params, %struct.qed_fcoe_pf_params* %267, i32 0, i32 8
  %269 = load i8**, i8*** %268, align 8
  %270 = load i64, i64* @BDQ_ID_RQ, align 8
  %271 = getelementptr inbounds i8*, i8** %269, i64 %270
  %272 = load i8*, i8** %271, align 8
  store i8* %272, i8** %17, align 8
  %273 = load i8*, i8** %17, align 8
  %274 = call i8* @cpu_to_le16(i8* %273)
  %275 = load %struct.fcoe_init_func_ramrod_data*, %struct.fcoe_init_func_ramrod_data** %10, align 8
  %276 = getelementptr inbounds %struct.fcoe_init_func_ramrod_data, %struct.fcoe_init_func_ramrod_data* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %276, i32 0, i32 6
  %278 = load i8**, i8*** %277, align 8
  %279 = load i64, i64* @BDQ_ID_RQ, align 8
  %280 = getelementptr inbounds i8*, i8** %278, i64 %279
  store i8* %274, i8** %280, align 8
  %281 = load %struct.fcoe_init_func_ramrod_data*, %struct.fcoe_init_func_ramrod_data** %10, align 8
  %282 = getelementptr inbounds %struct.fcoe_init_func_ramrod_data, %struct.fcoe_init_func_ramrod_data* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %282, i32 0, i32 8
  %284 = load i32*, i32** %283, align 8
  %285 = load i64, i64* @BDQ_ID_IMM_DATA, align 8
  %286 = getelementptr inbounds i32, i32* %284, i64 %285
  %287 = load i32, i32* %286, align 4
  %288 = load %struct.qed_fcoe_pf_params*, %struct.qed_fcoe_pf_params** %8, align 8
  %289 = getelementptr inbounds %struct.qed_fcoe_pf_params, %struct.qed_fcoe_pf_params* %288, i32 0, i32 11
  %290 = load i32*, i32** %289, align 8
  %291 = load i64, i64* @BDQ_ID_IMM_DATA, align 8
  %292 = getelementptr inbounds i32, i32* %290, i64 %291
  %293 = load i32, i32* %292, align 4
  %294 = call i32 @DMA_REGPAIR_LE(i32 %287, i32 %293)
  %295 = load %struct.qed_fcoe_pf_params*, %struct.qed_fcoe_pf_params** %8, align 8
  %296 = getelementptr inbounds %struct.qed_fcoe_pf_params, %struct.qed_fcoe_pf_params* %295, i32 0, i32 10
  %297 = load i64*, i64** %296, align 8
  %298 = load i64, i64* @BDQ_ID_IMM_DATA, align 8
  %299 = getelementptr inbounds i64, i64* %297, i64 %298
  %300 = load i64, i64* %299, align 8
  %301 = load %struct.fcoe_init_func_ramrod_data*, %struct.fcoe_init_func_ramrod_data** %10, align 8
  %302 = getelementptr inbounds %struct.fcoe_init_func_ramrod_data, %struct.fcoe_init_func_ramrod_data* %301, i32 0, i32 0
  %303 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %302, i32 0, i32 4
  %304 = load i64*, i64** %303, align 8
  %305 = load i64, i64* @BDQ_ID_IMM_DATA, align 8
  %306 = getelementptr inbounds i64, i64* %304, i64 %305
  store i64 %300, i64* %306, align 8
  %307 = load %struct.qed_fcoe_pf_params*, %struct.qed_fcoe_pf_params** %8, align 8
  %308 = getelementptr inbounds %struct.qed_fcoe_pf_params, %struct.qed_fcoe_pf_params* %307, i32 0, i32 9
  %309 = load i8**, i8*** %308, align 8
  %310 = load i64, i64* @BDQ_ID_IMM_DATA, align 8
  %311 = getelementptr inbounds i8*, i8** %309, i64 %310
  %312 = load i8*, i8** %311, align 8
  store i8* %312, i8** %17, align 8
  %313 = load i8*, i8** %17, align 8
  %314 = call i8* @cpu_to_le16(i8* %313)
  %315 = load %struct.fcoe_init_func_ramrod_data*, %struct.fcoe_init_func_ramrod_data** %10, align 8
  %316 = getelementptr inbounds %struct.fcoe_init_func_ramrod_data, %struct.fcoe_init_func_ramrod_data* %315, i32 0, i32 0
  %317 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %316, i32 0, i32 7
  %318 = load i8**, i8*** %317, align 8
  %319 = load i64, i64* @BDQ_ID_IMM_DATA, align 8
  %320 = getelementptr inbounds i8*, i8** %318, i64 %319
  store i8* %314, i8** %320, align 8
  %321 = load %struct.qed_fcoe_pf_params*, %struct.qed_fcoe_pf_params** %8, align 8
  %322 = getelementptr inbounds %struct.qed_fcoe_pf_params, %struct.qed_fcoe_pf_params* %321, i32 0, i32 8
  %323 = load i8**, i8*** %322, align 8
  %324 = load i64, i64* @BDQ_ID_IMM_DATA, align 8
  %325 = getelementptr inbounds i8*, i8** %323, i64 %324
  %326 = load i8*, i8** %325, align 8
  store i8* %326, i8** %17, align 8
  %327 = load i8*, i8** %17, align 8
  %328 = call i8* @cpu_to_le16(i8* %327)
  %329 = load %struct.fcoe_init_func_ramrod_data*, %struct.fcoe_init_func_ramrod_data** %10, align 8
  %330 = getelementptr inbounds %struct.fcoe_init_func_ramrod_data, %struct.fcoe_init_func_ramrod_data* %329, i32 0, i32 0
  %331 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %330, i32 0, i32 6
  %332 = load i8**, i8*** %331, align 8
  %333 = load i64, i64* @BDQ_ID_IMM_DATA, align 8
  %334 = getelementptr inbounds i8*, i8** %332, i64 %333
  store i8* %328, i8** %334, align 8
  %335 = load %struct.qed_fcoe_pf_params*, %struct.qed_fcoe_pf_params** %8, align 8
  %336 = getelementptr inbounds %struct.qed_fcoe_pf_params, %struct.qed_fcoe_pf_params* %335, i32 0, i32 7
  %337 = load i8*, i8** %336, align 8
  store i8* %337, i8** %17, align 8
  %338 = load i8*, i8** %17, align 8
  %339 = call i8* @cpu_to_le16(i8* %338)
  %340 = load %struct.fcoe_init_func_ramrod_data*, %struct.fcoe_init_func_ramrod_data** %10, align 8
  %341 = getelementptr inbounds %struct.fcoe_init_func_ramrod_data, %struct.fcoe_init_func_ramrod_data* %340, i32 0, i32 0
  %342 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %341, i32 0, i32 5
  store i8* %339, i8** %342, align 8
  %343 = load %struct.qed_fcoe_pf_params*, %struct.qed_fcoe_pf_params** %8, align 8
  %344 = getelementptr inbounds %struct.qed_fcoe_pf_params, %struct.qed_fcoe_pf_params* %343, i32 0, i32 6
  %345 = load i64, i64* %344, align 8
  %346 = icmp ne i64 %345, 0
  br i1 %346, label %347, label %376

347:                                              ; preds = %208
  %348 = load %struct.fcoe_init_func_ramrod_data*, %struct.fcoe_init_func_ramrod_data** %10, align 8
  %349 = getelementptr inbounds %struct.fcoe_init_func_ramrod_data, %struct.fcoe_init_func_ramrod_data* %348, i32 0, i32 0
  %350 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %349, i32 0, i32 3
  %351 = load i32, i32* %350, align 8
  %352 = load i32, i32* @SCSI_INIT_FUNC_QUEUES_RQ_VALID, align 4
  %353 = call i32 @SET_FIELD(i32 %351, i32 %352, i32 1)
  %354 = load %struct.fcoe_init_func_ramrod_data*, %struct.fcoe_init_func_ramrod_data** %10, align 8
  %355 = getelementptr inbounds %struct.fcoe_init_func_ramrod_data, %struct.fcoe_init_func_ramrod_data* %354, i32 0, i32 0
  %356 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %355, i32 0, i32 4
  %357 = load i64*, i64** %356, align 8
  %358 = load i64, i64* @BDQ_ID_IMM_DATA, align 8
  %359 = getelementptr inbounds i64, i64* %357, i64 %358
  %360 = load i64, i64* %359, align 8
  %361 = icmp ne i64 %360, 0
  br i1 %361, label %362, label %369

362:                                              ; preds = %347
  %363 = load %struct.fcoe_init_func_ramrod_data*, %struct.fcoe_init_func_ramrod_data** %10, align 8
  %364 = getelementptr inbounds %struct.fcoe_init_func_ramrod_data, %struct.fcoe_init_func_ramrod_data* %363, i32 0, i32 0
  %365 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %364, i32 0, i32 3
  %366 = load i32, i32* %365, align 8
  %367 = load i32, i32* @SCSI_INIT_FUNC_QUEUES_IMM_DATA_VALID, align 4
  %368 = call i32 @SET_FIELD(i32 %366, i32 %367, i32 1)
  br label %369

369:                                              ; preds = %362, %347
  %370 = load %struct.fcoe_init_func_ramrod_data*, %struct.fcoe_init_func_ramrod_data** %10, align 8
  %371 = getelementptr inbounds %struct.fcoe_init_func_ramrod_data, %struct.fcoe_init_func_ramrod_data* %370, i32 0, i32 0
  %372 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %371, i32 0, i32 3
  %373 = load i32, i32* %372, align 8
  %374 = load i32, i32* @SCSI_INIT_FUNC_QUEUES_CMD_VALID, align 4
  %375 = call i32 @SET_FIELD(i32 %373, i32 %374, i32 1)
  br label %383

376:                                              ; preds = %208
  %377 = load %struct.fcoe_init_func_ramrod_data*, %struct.fcoe_init_func_ramrod_data** %10, align 8
  %378 = getelementptr inbounds %struct.fcoe_init_func_ramrod_data, %struct.fcoe_init_func_ramrod_data* %377, i32 0, i32 0
  %379 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %378, i32 0, i32 3
  %380 = load i32, i32* %379, align 8
  %381 = load i32, i32* @SCSI_INIT_FUNC_QUEUES_RQ_VALID, align 4
  %382 = call i32 @SET_FIELD(i32 %380, i32 %381, i32 1)
  br label %383

383:                                              ; preds = %376, %369
  %384 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %385 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %12, align 8
  %386 = call i32 @qed_spq_post(%struct.qed_hwfn* %384, %struct.qed_spq_entry* %385, i32* null)
  store i32 %386, i32* %16, align 4
  %387 = load i32, i32* %16, align 4
  store i32 %387, i32* %4, align 4
  br label %393

388:                                              ; preds = %103, %95, %61
  %389 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %390 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %12, align 8
  %391 = call i32 @qed_sp_destroy_request(%struct.qed_hwfn* %389, %struct.qed_spq_entry* %390)
  %392 = load i32, i32* %16, align 4
  store i32 %392, i32* %4, align 4
  br label %393

393:                                              ; preds = %388, %383, %39
  %394 = load i32, i32* %4, align 4
  ret i32 %394
}

declare dso_local i32 @memset(%struct.qed_sp_init_data*, i32, i32) #1

declare dso_local i32 @qed_spq_get_cid(%struct.qed_hwfn*) #1

declare dso_local i32 @qed_sp_init_request(%struct.qed_hwfn*, %struct.qed_spq_entry**, i32, i32, %struct.qed_sp_init_data*) #1

declare dso_local i32 @DP_ERR(%struct.qed_hwfn*, i8*, i64, i64) #1

declare dso_local i8* @cpu_to_le16(i8*) #1

declare dso_local i32 @qed_cxt_acquire_cid(%struct.qed_hwfn*, i32, i64*) #1

declare dso_local i32 @qed_cxt_get_cid_info(%struct.qed_hwfn*, %struct.qed_cxt_info*) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*, i64) #1

declare dso_local i32 @SET_FIELD(i32, i32, i32) #1

declare dso_local i32 @DMA_REGPAIR_LE(i32, i32) #1

declare dso_local i8* @qed_get_igu_sb_id(%struct.qed_hwfn*, i64) #1

declare dso_local i64 @RESC_START(%struct.qed_hwfn*, i32) #1

declare dso_local i32 @qed_spq_post(%struct.qed_hwfn*, %struct.qed_spq_entry*, i32*) #1

declare dso_local i32 @qed_sp_destroy_request(%struct.qed_hwfn*, %struct.qed_spq_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
