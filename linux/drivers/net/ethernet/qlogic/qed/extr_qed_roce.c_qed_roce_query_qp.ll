; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_roce.c_qed_roce_query_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_roce.c_qed_roce_query_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_8__*, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.qed_rdma_qp = type { i8*, i64, i8*, i32, i32, i8* }
%struct.qed_rdma_query_qp_out_params = type { i32, i8*, i8*, i8* }
%struct.roce_query_qp_resp_output_params = type { i32, i32, i32 }
%struct.roce_query_qp_req_output_params = type { i32, i32, i32 }
%struct.roce_query_qp_resp_ramrod_data = type { i32 }
%struct.roce_query_qp_req_ramrod_data = type { i32 }
%struct.qed_sp_init_data = type { i64, i32, i32 }
%struct.qed_spq_entry = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.roce_query_qp_req_ramrod_data, %struct.roce_query_qp_resp_ramrod_data }

@ENOMEM = common dso_local global i32 0, align 4
@QED_MSG_RDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"No QPs as no offload\0A\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"The responder's qp should be offloaded before requester's\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"qed query qp failed: cannot allocate memory (ramrod)\0A\00", align 1
@QED_SPQ_MODE_EBLOCK = common dso_local global i32 0, align 4
@ROCE_RAMROD_QUERY_QP = common dso_local global i32 0, align 4
@PROTOCOLID_ROCE = common dso_local global i32 0, align 4
@ROCE_QUERY_QP_RESP_OUTPUT_PARAMS_ERROR_FLG = common dso_local global i32 0, align 4
@QED_ROCE_QP_STATE_ERR = common dso_local global i8* null, align 8
@ROCE_QUERY_QP_REQ_OUTPUT_PARAMS_ERR_FLG = common dso_local global i32 0, align 4
@ROCE_QUERY_QP_REQ_OUTPUT_PARAMS_SQ_DRAINING_FLG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_roce_query_qp(%struct.qed_hwfn* %0, %struct.qed_rdma_qp* %1, %struct.qed_rdma_query_qp_out_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca %struct.qed_rdma_qp*, align 8
  %7 = alloca %struct.qed_rdma_query_qp_out_params*, align 8
  %8 = alloca %struct.roce_query_qp_resp_output_params*, align 8
  %9 = alloca %struct.roce_query_qp_req_output_params*, align 8
  %10 = alloca %struct.roce_query_qp_resp_ramrod_data*, align 8
  %11 = alloca %struct.roce_query_qp_req_ramrod_data*, align 8
  %12 = alloca %struct.qed_sp_init_data, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.qed_spq_entry*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %5, align 8
  store %struct.qed_rdma_qp* %1, %struct.qed_rdma_qp** %6, align 8
  store %struct.qed_rdma_query_qp_out_params* %2, %struct.qed_rdma_query_qp_out_params** %7, align 8
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %19, align 4
  %22 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %6, align 8
  %23 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %52, label %26

26:                                               ; preds = %3
  %27 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %6, align 8
  %28 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %52, label %31

31:                                               ; preds = %26
  %32 = load %struct.qed_rdma_query_qp_out_params*, %struct.qed_rdma_query_qp_out_params** %7, align 8
  %33 = getelementptr inbounds %struct.qed_rdma_query_qp_out_params, %struct.qed_rdma_query_qp_out_params* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  %34 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %6, align 8
  %35 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %34, i32 0, i32 5
  %36 = load i8*, i8** %35, align 8
  %37 = load %struct.qed_rdma_query_qp_out_params*, %struct.qed_rdma_query_qp_out_params** %7, align 8
  %38 = getelementptr inbounds %struct.qed_rdma_query_qp_out_params, %struct.qed_rdma_query_qp_out_params* %37, i32 0, i32 3
  store i8* %36, i8** %38, align 8
  %39 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %6, align 8
  %40 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %39, i32 0, i32 2
  %41 = load i8*, i8** %40, align 8
  %42 = load %struct.qed_rdma_query_qp_out_params*, %struct.qed_rdma_query_qp_out_params** %7, align 8
  %43 = getelementptr inbounds %struct.qed_rdma_query_qp_out_params, %struct.qed_rdma_query_qp_out_params* %42, i32 0, i32 2
  store i8* %41, i8** %43, align 8
  %44 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %6, align 8
  %45 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = load %struct.qed_rdma_query_qp_out_params*, %struct.qed_rdma_query_qp_out_params** %7, align 8
  %48 = getelementptr inbounds %struct.qed_rdma_query_qp_out_params, %struct.qed_rdma_query_qp_out_params* %47, i32 0, i32 1
  store i8* %46, i8** %48, align 8
  %49 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %50 = load i32, i32* @QED_MSG_RDMA, align 4
  %51 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %49, i32 %50, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %281

52:                                               ; preds = %26, %3
  %53 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %6, align 8
  %54 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %52
  %58 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %59 = call i32 @DP_NOTICE(%struct.qed_hwfn* %58, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %281

62:                                               ; preds = %52
  %63 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %64 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %63, i32 0, i32 0
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32, i32* @GFP_KERNEL, align 4
  %70 = call i64 @dma_alloc_coherent(i32* %68, i32 12, i32* %13, i32 %69)
  %71 = inttoptr i64 %70 to %struct.roce_query_qp_resp_output_params*
  store %struct.roce_query_qp_resp_output_params* %71, %struct.roce_query_qp_resp_output_params** %8, align 8
  %72 = load %struct.roce_query_qp_resp_output_params*, %struct.roce_query_qp_resp_output_params** %8, align 8
  %73 = icmp ne %struct.roce_query_qp_resp_output_params* %72, null
  br i1 %73, label %78, label %74

74:                                               ; preds = %62
  %75 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %76 = call i32 @DP_NOTICE(%struct.qed_hwfn* %75, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  %77 = load i32, i32* %19, align 4
  store i32 %77, i32* %4, align 4
  br label %281

78:                                               ; preds = %62
  %79 = call i32 @memset(%struct.qed_sp_init_data* %12, i32 0, i32 16)
  %80 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %6, align 8
  %81 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %12, i32 0, i32 0
  store i64 %82, i64* %83, align 8
  %84 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %85 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %12, i32 0, i32 2
  store i32 %87, i32* %88, align 4
  %89 = load i32, i32* @QED_SPQ_MODE_EBLOCK, align 4
  %90 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %12, i32 0, i32 1
  store i32 %89, i32* %90, align 8
  %91 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %92 = load i32, i32* @ROCE_RAMROD_QUERY_QP, align 4
  %93 = load i32, i32* @PROTOCOLID_ROCE, align 4
  %94 = call i32 @qed_sp_init_request(%struct.qed_hwfn* %91, %struct.qed_spq_entry** %15, i32 %92, i32 %93, %struct.qed_sp_init_data* %12)
  store i32 %94, i32* %19, align 4
  %95 = load i32, i32* %19, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %78
  br label %270

98:                                               ; preds = %78
  %99 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %15, align 8
  %100 = getelementptr inbounds %struct.qed_spq_entry, %struct.qed_spq_entry* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  store %struct.roce_query_qp_resp_ramrod_data* %101, %struct.roce_query_qp_resp_ramrod_data** %10, align 8
  %102 = load %struct.roce_query_qp_resp_ramrod_data*, %struct.roce_query_qp_resp_ramrod_data** %10, align 8
  %103 = getelementptr inbounds %struct.roce_query_qp_resp_ramrod_data, %struct.roce_query_qp_resp_ramrod_data* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %13, align 4
  %106 = call i32 @DMA_REGPAIR_LE(i32 %104, i32 %105)
  %107 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %108 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %15, align 8
  %109 = call i32 @qed_spq_post(%struct.qed_hwfn* %107, %struct.qed_spq_entry* %108, i32* null)
  store i32 %109, i32* %19, align 4
  %110 = load i32, i32* %19, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %98
  br label %270

113:                                              ; preds = %98
  %114 = load %struct.roce_query_qp_resp_output_params*, %struct.roce_query_qp_resp_output_params** %8, align 8
  %115 = getelementptr inbounds %struct.roce_query_qp_resp_output_params, %struct.roce_query_qp_resp_output_params* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i8* @le32_to_cpu(i32 %116)
  %118 = load %struct.qed_rdma_query_qp_out_params*, %struct.qed_rdma_query_qp_out_params** %7, align 8
  %119 = getelementptr inbounds %struct.qed_rdma_query_qp_out_params, %struct.qed_rdma_query_qp_out_params* %118, i32 0, i32 3
  store i8* %117, i8** %119, align 8
  %120 = load %struct.roce_query_qp_resp_output_params*, %struct.roce_query_qp_resp_output_params** %8, align 8
  %121 = getelementptr inbounds %struct.roce_query_qp_resp_output_params, %struct.roce_query_qp_resp_output_params* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = call i8* @le32_to_cpu(i32 %122)
  %124 = load i32, i32* @ROCE_QUERY_QP_RESP_OUTPUT_PARAMS_ERROR_FLG, align 4
  %125 = call i32 @GET_FIELD(i8* %123, i32 %124)
  store i32 %125, i32* %16, align 4
  %126 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %127 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %126, i32 0, i32 0
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = load %struct.roce_query_qp_resp_output_params*, %struct.roce_query_qp_resp_output_params** %8, align 8
  %133 = load i32, i32* %13, align 4
  %134 = call i32 @dma_free_coherent(i32* %131, i32 12, %struct.roce_query_qp_resp_output_params* %132, i32 %133)
  %135 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %6, align 8
  %136 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 8
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %159, label %139

139:                                              ; preds = %113
  %140 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %6, align 8
  %141 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %140, i32 0, i32 2
  %142 = load i8*, i8** %141, align 8
  %143 = load %struct.qed_rdma_query_qp_out_params*, %struct.qed_rdma_query_qp_out_params** %7, align 8
  %144 = getelementptr inbounds %struct.qed_rdma_query_qp_out_params, %struct.qed_rdma_query_qp_out_params* %143, i32 0, i32 2
  store i8* %142, i8** %144, align 8
  %145 = load %struct.qed_rdma_query_qp_out_params*, %struct.qed_rdma_query_qp_out_params** %7, align 8
  %146 = getelementptr inbounds %struct.qed_rdma_query_qp_out_params, %struct.qed_rdma_query_qp_out_params* %145, i32 0, i32 0
  store i32 0, i32* %146, align 8
  %147 = load i32, i32* %16, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %139
  %150 = load i8*, i8** @QED_ROCE_QP_STATE_ERR, align 8
  %151 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %6, align 8
  %152 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %151, i32 0, i32 0
  store i8* %150, i8** %152, align 8
  br label %153

153:                                              ; preds = %149, %139
  %154 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %6, align 8
  %155 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %154, i32 0, i32 0
  %156 = load i8*, i8** %155, align 8
  %157 = load %struct.qed_rdma_query_qp_out_params*, %struct.qed_rdma_query_qp_out_params** %7, align 8
  %158 = getelementptr inbounds %struct.qed_rdma_query_qp_out_params, %struct.qed_rdma_query_qp_out_params* %157, i32 0, i32 1
  store i8* %156, i8** %158, align 8
  store i32 0, i32* %4, align 4
  br label %281

159:                                              ; preds = %113
  %160 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %161 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %160, i32 0, i32 0
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 0
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 0
  %166 = load i32, i32* @GFP_KERNEL, align 4
  %167 = call i64 @dma_alloc_coherent(i32* %165, i32 12, i32* %14, i32 %166)
  %168 = inttoptr i64 %167 to %struct.roce_query_qp_req_output_params*
  store %struct.roce_query_qp_req_output_params* %168, %struct.roce_query_qp_req_output_params** %9, align 8
  %169 = load %struct.roce_query_qp_req_output_params*, %struct.roce_query_qp_req_output_params** %9, align 8
  %170 = icmp ne %struct.roce_query_qp_req_output_params* %169, null
  br i1 %170, label %177, label %171

171:                                              ; preds = %159
  %172 = load i32, i32* @ENOMEM, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %19, align 4
  %174 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %175 = call i32 @DP_NOTICE(%struct.qed_hwfn* %174, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  %176 = load i32, i32* %19, align 4
  store i32 %176, i32* %4, align 4
  br label %281

177:                                              ; preds = %159
  %178 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %6, align 8
  %179 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = add nsw i64 %180, 1
  %182 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %12, i32 0, i32 0
  store i64 %181, i64* %182, align 8
  %183 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %184 = load i32, i32* @ROCE_RAMROD_QUERY_QP, align 4
  %185 = load i32, i32* @PROTOCOLID_ROCE, align 4
  %186 = call i32 @qed_sp_init_request(%struct.qed_hwfn* %183, %struct.qed_spq_entry** %15, i32 %184, i32 %185, %struct.qed_sp_init_data* %12)
  store i32 %186, i32* %19, align 4
  %187 = load i32, i32* %19, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %177
  br label %258

190:                                              ; preds = %177
  %191 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %15, align 8
  %192 = getelementptr inbounds %struct.qed_spq_entry, %struct.qed_spq_entry* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 0
  store %struct.roce_query_qp_req_ramrod_data* %193, %struct.roce_query_qp_req_ramrod_data** %11, align 8
  %194 = load %struct.roce_query_qp_req_ramrod_data*, %struct.roce_query_qp_req_ramrod_data** %11, align 8
  %195 = getelementptr inbounds %struct.roce_query_qp_req_ramrod_data, %struct.roce_query_qp_req_ramrod_data* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* %14, align 4
  %198 = call i32 @DMA_REGPAIR_LE(i32 %196, i32 %197)
  %199 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %200 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %15, align 8
  %201 = call i32 @qed_spq_post(%struct.qed_hwfn* %199, %struct.qed_spq_entry* %200, i32* null)
  store i32 %201, i32* %19, align 4
  %202 = load i32, i32* %19, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %190
  br label %258

205:                                              ; preds = %190
  %206 = load %struct.roce_query_qp_req_output_params*, %struct.roce_query_qp_req_output_params** %9, align 8
  %207 = getelementptr inbounds %struct.roce_query_qp_req_output_params, %struct.roce_query_qp_req_output_params* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = call i8* @le32_to_cpu(i32 %208)
  %210 = load %struct.qed_rdma_query_qp_out_params*, %struct.qed_rdma_query_qp_out_params** %7, align 8
  %211 = getelementptr inbounds %struct.qed_rdma_query_qp_out_params, %struct.qed_rdma_query_qp_out_params* %210, i32 0, i32 2
  store i8* %209, i8** %211, align 8
  %212 = load %struct.roce_query_qp_req_output_params*, %struct.roce_query_qp_req_output_params** %9, align 8
  %213 = getelementptr inbounds %struct.roce_query_qp_req_output_params, %struct.roce_query_qp_req_output_params* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = call i8* @le32_to_cpu(i32 %214)
  %216 = load i32, i32* @ROCE_QUERY_QP_REQ_OUTPUT_PARAMS_ERR_FLG, align 4
  %217 = call i32 @GET_FIELD(i8* %215, i32 %216)
  store i32 %217, i32* %17, align 4
  %218 = load %struct.roce_query_qp_req_output_params*, %struct.roce_query_qp_req_output_params** %9, align 8
  %219 = getelementptr inbounds %struct.roce_query_qp_req_output_params, %struct.roce_query_qp_req_output_params* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = call i8* @le32_to_cpu(i32 %220)
  %222 = load i32, i32* @ROCE_QUERY_QP_REQ_OUTPUT_PARAMS_SQ_DRAINING_FLG, align 4
  %223 = call i32 @GET_FIELD(i8* %221, i32 %222)
  store i32 %223, i32* %18, align 4
  %224 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %225 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %224, i32 0, i32 0
  %226 = load %struct.TYPE_8__*, %struct.TYPE_8__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 0
  %228 = load %struct.TYPE_7__*, %struct.TYPE_7__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %228, i32 0, i32 0
  %230 = load %struct.roce_query_qp_req_output_params*, %struct.roce_query_qp_req_output_params** %9, align 8
  %231 = bitcast %struct.roce_query_qp_req_output_params* %230 to %struct.roce_query_qp_resp_output_params*
  %232 = load i32, i32* %14, align 4
  %233 = call i32 @dma_free_coherent(i32* %229, i32 12, %struct.roce_query_qp_resp_output_params* %231, i32 %232)
  %234 = load %struct.qed_rdma_query_qp_out_params*, %struct.qed_rdma_query_qp_out_params** %7, align 8
  %235 = getelementptr inbounds %struct.qed_rdma_query_qp_out_params, %struct.qed_rdma_query_qp_out_params* %234, i32 0, i32 0
  store i32 0, i32* %235, align 8
  %236 = load i32, i32* %16, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %241, label %238

238:                                              ; preds = %205
  %239 = load i32, i32* %17, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %245

241:                                              ; preds = %238, %205
  %242 = load i8*, i8** @QED_ROCE_QP_STATE_ERR, align 8
  %243 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %6, align 8
  %244 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %243, i32 0, i32 0
  store i8* %242, i8** %244, align 8
  br label %252

245:                                              ; preds = %238
  %246 = load i32, i32* %18, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %251

248:                                              ; preds = %245
  %249 = load %struct.qed_rdma_query_qp_out_params*, %struct.qed_rdma_query_qp_out_params** %7, align 8
  %250 = getelementptr inbounds %struct.qed_rdma_query_qp_out_params, %struct.qed_rdma_query_qp_out_params* %249, i32 0, i32 0
  store i32 1, i32* %250, align 8
  br label %251

251:                                              ; preds = %248, %245
  br label %252

252:                                              ; preds = %251, %241
  %253 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %6, align 8
  %254 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %253, i32 0, i32 0
  %255 = load i8*, i8** %254, align 8
  %256 = load %struct.qed_rdma_query_qp_out_params*, %struct.qed_rdma_query_qp_out_params** %7, align 8
  %257 = getelementptr inbounds %struct.qed_rdma_query_qp_out_params, %struct.qed_rdma_query_qp_out_params* %256, i32 0, i32 1
  store i8* %255, i8** %257, align 8
  store i32 0, i32* %4, align 4
  br label %281

258:                                              ; preds = %204, %189
  %259 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %260 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %259, i32 0, i32 0
  %261 = load %struct.TYPE_8__*, %struct.TYPE_8__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %261, i32 0, i32 0
  %263 = load %struct.TYPE_7__*, %struct.TYPE_7__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %263, i32 0, i32 0
  %265 = load %struct.roce_query_qp_req_output_params*, %struct.roce_query_qp_req_output_params** %9, align 8
  %266 = bitcast %struct.roce_query_qp_req_output_params* %265 to %struct.roce_query_qp_resp_output_params*
  %267 = load i32, i32* %14, align 4
  %268 = call i32 @dma_free_coherent(i32* %264, i32 12, %struct.roce_query_qp_resp_output_params* %266, i32 %267)
  %269 = load i32, i32* %19, align 4
  store i32 %269, i32* %4, align 4
  br label %281

270:                                              ; preds = %112, %97
  %271 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %272 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %271, i32 0, i32 0
  %273 = load %struct.TYPE_8__*, %struct.TYPE_8__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %273, i32 0, i32 0
  %275 = load %struct.TYPE_7__*, %struct.TYPE_7__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %275, i32 0, i32 0
  %277 = load %struct.roce_query_qp_resp_output_params*, %struct.roce_query_qp_resp_output_params** %8, align 8
  %278 = load i32, i32* %13, align 4
  %279 = call i32 @dma_free_coherent(i32* %276, i32 12, %struct.roce_query_qp_resp_output_params* %277, i32 %278)
  %280 = load i32, i32* %19, align 4
  store i32 %280, i32* %4, align 4
  br label %281

281:                                              ; preds = %270, %258, %252, %171, %153, %74, %57, %31
  %282 = load i32, i32* %4, align 4
  ret i32 %282
}

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*) #1

declare dso_local i64 @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @memset(%struct.qed_sp_init_data*, i32, i32) #1

declare dso_local i32 @qed_sp_init_request(%struct.qed_hwfn*, %struct.qed_spq_entry**, i32, i32, %struct.qed_sp_init_data*) #1

declare dso_local i32 @DMA_REGPAIR_LE(i32, i32) #1

declare dso_local i32 @qed_spq_post(%struct.qed_hwfn*, %struct.qed_spq_entry*, i32*) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @GET_FIELD(i8*, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, %struct.roce_query_qp_resp_output_params*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
