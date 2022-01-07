; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_roce.c_qed_roce_sp_modify_requester.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_roce.c_qed_roce_sp_modify_requester.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.qed_rdma_qp = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.roce_modify_qp_req_ramrod_data = type { i32, i32, i8*, i8*, i8*, i8*, i32, i32, i32, i64, i64 }
%struct.qed_sp_init_data = type { i32, i32, i32 }
%struct.qed_spq_entry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.roce_modify_qp_req_ramrod_data }

@QED_MSG_RDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"icid = %08x\0A\00", align 1
@QED_SPQ_MODE_EBLOCK = common dso_local global i32 0, align 4
@ROCE_EVENT_MODIFY_QP = common dso_local global i32 0, align 4
@PROTOCOLID_ROCE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"rc = %d\0A\00", align 1
@ROCE_MODIFY_QP_REQ_RAMROD_DATA_MOVE_TO_ERR_FLG = common dso_local global i32 0, align 4
@ROCE_MODIFY_QP_REQ_RAMROD_DATA_MOVE_TO_SQD_FLG = common dso_local global i32 0, align 4
@ROCE_MODIFY_QP_REQ_RAMROD_DATA_EN_SQD_ASYNC_NOTIFY = common dso_local global i32 0, align 4
@ROCE_MODIFY_QP_REQ_RAMROD_DATA_P_KEY_FLG = common dso_local global i32 0, align 4
@QED_ROCE_MODIFY_QP_VALID_PKEY = common dso_local global i32 0, align 4
@ROCE_MODIFY_QP_REQ_RAMROD_DATA_ADDRESS_VECTOR_FLG = common dso_local global i32 0, align 4
@QED_ROCE_MODIFY_QP_VALID_ADDRESS_VECTOR = common dso_local global i32 0, align 4
@ROCE_MODIFY_QP_REQ_RAMROD_DATA_MAX_ORD_FLG = common dso_local global i32 0, align 4
@QED_RDMA_MODIFY_QP_VALID_MAX_RD_ATOMIC_REQ = common dso_local global i32 0, align 4
@ROCE_MODIFY_QP_REQ_RAMROD_DATA_RNR_NAK_CNT_FLG = common dso_local global i32 0, align 4
@QED_ROCE_MODIFY_QP_VALID_RNR_RETRY_CNT = common dso_local global i32 0, align 4
@ROCE_MODIFY_QP_REQ_RAMROD_DATA_ERR_RETRY_CNT_FLG = common dso_local global i32 0, align 4
@QED_ROCE_MODIFY_QP_VALID_RETRY_CNT = common dso_local global i32 0, align 4
@ROCE_MODIFY_QP_REQ_RAMROD_DATA_ACK_TIMEOUT_FLG = common dso_local global i32 0, align 4
@QED_ROCE_MODIFY_QP_VALID_ACK_TIMEOUT = common dso_local global i32 0, align 4
@ROCE_MODIFY_QP_REQ_RAMROD_DATA_ERR_RETRY_CNT = common dso_local global i32 0, align 4
@ROCE_MODIFY_QP_REQ_RAMROD_DATA_RNR_NAK_CNT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Modify requester, rc = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_rdma_qp*, i32, i32, i32)* @qed_roce_sp_modify_requester to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_roce_sp_modify_requester(%struct.qed_hwfn* %0, %struct.qed_rdma_qp* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.qed_hwfn*, align 8
  %8 = alloca %struct.qed_rdma_qp*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.roce_modify_qp_req_ramrod_data*, align 8
  %13 = alloca %struct.qed_sp_init_data, align 4
  %14 = alloca %struct.qed_spq_entry*, align 8
  %15 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %7, align 8
  store %struct.qed_rdma_qp* %1, %struct.qed_rdma_qp** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %17 = load i32, i32* @QED_MSG_RDMA, align 4
  %18 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %8, align 8
  %19 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %16, i32 %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %5
  %25 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %8, align 8
  %26 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %25, i32 0, i32 11
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  store i32 0, i32* %6, align 4
  br label %202

30:                                               ; preds = %24, %5
  %31 = call i32 @memset(%struct.qed_sp_init_data* %13, i32 0, i32 12)
  %32 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %8, align 8
  %33 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  %36 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %13, i32 0, i32 0
  store i32 %35, i32* %36, align 4
  %37 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %38 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %13, i32 0, i32 2
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* @QED_SPQ_MODE_EBLOCK, align 4
  %43 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %13, i32 0, i32 1
  store i32 %42, i32* %43, align 4
  %44 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %45 = load i32, i32* @ROCE_EVENT_MODIFY_QP, align 4
  %46 = load i32, i32* @PROTOCOLID_ROCE, align 4
  %47 = call i32 @qed_sp_init_request(%struct.qed_hwfn* %44, %struct.qed_spq_entry** %14, i32 %45, i32 %46, %struct.qed_sp_init_data* %13)
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* %15, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %30
  %51 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %52 = load i32, i32* %15, align 4
  %53 = call i32 @DP_NOTICE(%struct.qed_hwfn* %51, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %15, align 4
  store i32 %54, i32* %6, align 4
  br label %202

55:                                               ; preds = %30
  %56 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %14, align 8
  %57 = getelementptr inbounds %struct.qed_spq_entry, %struct.qed_spq_entry* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  store %struct.roce_modify_qp_req_ramrod_data* %58, %struct.roce_modify_qp_req_ramrod_data** %12, align 8
  %59 = load %struct.roce_modify_qp_req_ramrod_data*, %struct.roce_modify_qp_req_ramrod_data** %12, align 8
  %60 = getelementptr inbounds %struct.roce_modify_qp_req_ramrod_data, %struct.roce_modify_qp_req_ramrod_data* %59, i32 0, i32 10
  store i64 0, i64* %60, align 8
  %61 = load %struct.roce_modify_qp_req_ramrod_data*, %struct.roce_modify_qp_req_ramrod_data** %12, align 8
  %62 = getelementptr inbounds %struct.roce_modify_qp_req_ramrod_data, %struct.roce_modify_qp_req_ramrod_data* %61, i32 0, i32 10
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* @ROCE_MODIFY_QP_REQ_RAMROD_DATA_MOVE_TO_ERR_FLG, align 4
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @SET_FIELD(i64 %63, i32 %64, i32 %65)
  %67 = load %struct.roce_modify_qp_req_ramrod_data*, %struct.roce_modify_qp_req_ramrod_data** %12, align 8
  %68 = getelementptr inbounds %struct.roce_modify_qp_req_ramrod_data, %struct.roce_modify_qp_req_ramrod_data* %67, i32 0, i32 10
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* @ROCE_MODIFY_QP_REQ_RAMROD_DATA_MOVE_TO_SQD_FLG, align 4
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @SET_FIELD(i64 %69, i32 %70, i32 %71)
  %73 = load %struct.roce_modify_qp_req_ramrod_data*, %struct.roce_modify_qp_req_ramrod_data** %12, align 8
  %74 = getelementptr inbounds %struct.roce_modify_qp_req_ramrod_data, %struct.roce_modify_qp_req_ramrod_data* %73, i32 0, i32 10
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* @ROCE_MODIFY_QP_REQ_RAMROD_DATA_EN_SQD_ASYNC_NOTIFY, align 4
  %77 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %8, align 8
  %78 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @SET_FIELD(i64 %75, i32 %76, i32 %79)
  %81 = load %struct.roce_modify_qp_req_ramrod_data*, %struct.roce_modify_qp_req_ramrod_data** %12, align 8
  %82 = getelementptr inbounds %struct.roce_modify_qp_req_ramrod_data, %struct.roce_modify_qp_req_ramrod_data* %81, i32 0, i32 10
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* @ROCE_MODIFY_QP_REQ_RAMROD_DATA_P_KEY_FLG, align 4
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* @QED_ROCE_MODIFY_QP_VALID_PKEY, align 4
  %87 = call i32 @GET_FIELD(i32 %85, i32 %86)
  %88 = call i32 @SET_FIELD(i64 %83, i32 %84, i32 %87)
  %89 = load %struct.roce_modify_qp_req_ramrod_data*, %struct.roce_modify_qp_req_ramrod_data** %12, align 8
  %90 = getelementptr inbounds %struct.roce_modify_qp_req_ramrod_data, %struct.roce_modify_qp_req_ramrod_data* %89, i32 0, i32 10
  %91 = load i64, i64* %90, align 8
  %92 = load i32, i32* @ROCE_MODIFY_QP_REQ_RAMROD_DATA_ADDRESS_VECTOR_FLG, align 4
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* @QED_ROCE_MODIFY_QP_VALID_ADDRESS_VECTOR, align 4
  %95 = call i32 @GET_FIELD(i32 %93, i32 %94)
  %96 = call i32 @SET_FIELD(i64 %91, i32 %92, i32 %95)
  %97 = load %struct.roce_modify_qp_req_ramrod_data*, %struct.roce_modify_qp_req_ramrod_data** %12, align 8
  %98 = getelementptr inbounds %struct.roce_modify_qp_req_ramrod_data, %struct.roce_modify_qp_req_ramrod_data* %97, i32 0, i32 10
  %99 = load i64, i64* %98, align 8
  %100 = load i32, i32* @ROCE_MODIFY_QP_REQ_RAMROD_DATA_MAX_ORD_FLG, align 4
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* @QED_RDMA_MODIFY_QP_VALID_MAX_RD_ATOMIC_REQ, align 4
  %103 = call i32 @GET_FIELD(i32 %101, i32 %102)
  %104 = call i32 @SET_FIELD(i64 %99, i32 %100, i32 %103)
  %105 = load %struct.roce_modify_qp_req_ramrod_data*, %struct.roce_modify_qp_req_ramrod_data** %12, align 8
  %106 = getelementptr inbounds %struct.roce_modify_qp_req_ramrod_data, %struct.roce_modify_qp_req_ramrod_data* %105, i32 0, i32 10
  %107 = load i64, i64* %106, align 8
  %108 = load i32, i32* @ROCE_MODIFY_QP_REQ_RAMROD_DATA_RNR_NAK_CNT_FLG, align 4
  %109 = load i32, i32* %11, align 4
  %110 = load i32, i32* @QED_ROCE_MODIFY_QP_VALID_RNR_RETRY_CNT, align 4
  %111 = call i32 @GET_FIELD(i32 %109, i32 %110)
  %112 = call i32 @SET_FIELD(i64 %107, i32 %108, i32 %111)
  %113 = load %struct.roce_modify_qp_req_ramrod_data*, %struct.roce_modify_qp_req_ramrod_data** %12, align 8
  %114 = getelementptr inbounds %struct.roce_modify_qp_req_ramrod_data, %struct.roce_modify_qp_req_ramrod_data* %113, i32 0, i32 10
  %115 = load i64, i64* %114, align 8
  %116 = load i32, i32* @ROCE_MODIFY_QP_REQ_RAMROD_DATA_ERR_RETRY_CNT_FLG, align 4
  %117 = load i32, i32* %11, align 4
  %118 = load i32, i32* @QED_ROCE_MODIFY_QP_VALID_RETRY_CNT, align 4
  %119 = call i32 @GET_FIELD(i32 %117, i32 %118)
  %120 = call i32 @SET_FIELD(i64 %115, i32 %116, i32 %119)
  %121 = load %struct.roce_modify_qp_req_ramrod_data*, %struct.roce_modify_qp_req_ramrod_data** %12, align 8
  %122 = getelementptr inbounds %struct.roce_modify_qp_req_ramrod_data, %struct.roce_modify_qp_req_ramrod_data* %121, i32 0, i32 10
  %123 = load i64, i64* %122, align 8
  %124 = load i32, i32* @ROCE_MODIFY_QP_REQ_RAMROD_DATA_ACK_TIMEOUT_FLG, align 4
  %125 = load i32, i32* %11, align 4
  %126 = load i32, i32* @QED_ROCE_MODIFY_QP_VALID_ACK_TIMEOUT, align 4
  %127 = call i32 @GET_FIELD(i32 %125, i32 %126)
  %128 = call i32 @SET_FIELD(i64 %123, i32 %124, i32 %127)
  %129 = load %struct.roce_modify_qp_req_ramrod_data*, %struct.roce_modify_qp_req_ramrod_data** %12, align 8
  %130 = getelementptr inbounds %struct.roce_modify_qp_req_ramrod_data, %struct.roce_modify_qp_req_ramrod_data* %129, i32 0, i32 9
  store i64 0, i64* %130, align 8
  %131 = load %struct.roce_modify_qp_req_ramrod_data*, %struct.roce_modify_qp_req_ramrod_data** %12, align 8
  %132 = getelementptr inbounds %struct.roce_modify_qp_req_ramrod_data, %struct.roce_modify_qp_req_ramrod_data* %131, i32 0, i32 9
  %133 = load i64, i64* %132, align 8
  %134 = load i32, i32* @ROCE_MODIFY_QP_REQ_RAMROD_DATA_ERR_RETRY_CNT, align 4
  %135 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %8, align 8
  %136 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @SET_FIELD(i64 %133, i32 %134, i32 %137)
  %139 = load %struct.roce_modify_qp_req_ramrod_data*, %struct.roce_modify_qp_req_ramrod_data** %12, align 8
  %140 = getelementptr inbounds %struct.roce_modify_qp_req_ramrod_data, %struct.roce_modify_qp_req_ramrod_data* %139, i32 0, i32 9
  %141 = load i64, i64* %140, align 8
  %142 = load i32, i32* @ROCE_MODIFY_QP_REQ_RAMROD_DATA_RNR_NAK_CNT, align 4
  %143 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %8, align 8
  %144 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @SET_FIELD(i64 %141, i32 %142, i32 %145)
  %147 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %8, align 8
  %148 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %147, i32 0, i32 10
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.roce_modify_qp_req_ramrod_data*, %struct.roce_modify_qp_req_ramrod_data** %12, align 8
  %151 = getelementptr inbounds %struct.roce_modify_qp_req_ramrod_data, %struct.roce_modify_qp_req_ramrod_data* %150, i32 0, i32 8
  store i32 %149, i32* %151, align 8
  %152 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %8, align 8
  %153 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %152, i32 0, i32 9
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.roce_modify_qp_req_ramrod_data*, %struct.roce_modify_qp_req_ramrod_data** %12, align 8
  %156 = getelementptr inbounds %struct.roce_modify_qp_req_ramrod_data, %struct.roce_modify_qp_req_ramrod_data* %155, i32 0, i32 7
  store i32 %154, i32* %156, align 4
  %157 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %8, align 8
  %158 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %157, i32 0, i32 8
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.roce_modify_qp_req_ramrod_data*, %struct.roce_modify_qp_req_ramrod_data** %12, align 8
  %161 = getelementptr inbounds %struct.roce_modify_qp_req_ramrod_data, %struct.roce_modify_qp_req_ramrod_data* %160, i32 0, i32 6
  store i32 %159, i32* %161, align 8
  %162 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %8, align 8
  %163 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %162, i32 0, i32 7
  %164 = load i32, i32* %163, align 4
  %165 = call i8* @cpu_to_le16(i32 %164)
  %166 = load %struct.roce_modify_qp_req_ramrod_data*, %struct.roce_modify_qp_req_ramrod_data** %12, align 8
  %167 = getelementptr inbounds %struct.roce_modify_qp_req_ramrod_data, %struct.roce_modify_qp_req_ramrod_data* %166, i32 0, i32 5
  store i8* %165, i8** %167, align 8
  %168 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %8, align 8
  %169 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %168, i32 0, i32 6
  %170 = load i32, i32* %169, align 4
  %171 = call i8* @cpu_to_le32(i32 %170)
  %172 = load %struct.roce_modify_qp_req_ramrod_data*, %struct.roce_modify_qp_req_ramrod_data** %12, align 8
  %173 = getelementptr inbounds %struct.roce_modify_qp_req_ramrod_data, %struct.roce_modify_qp_req_ramrod_data* %172, i32 0, i32 4
  store i8* %171, i8** %173, align 8
  %174 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %8, align 8
  %175 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %174, i32 0, i32 5
  %176 = load i32, i32* %175, align 4
  %177 = call i8* @cpu_to_le32(i32 %176)
  %178 = load %struct.roce_modify_qp_req_ramrod_data*, %struct.roce_modify_qp_req_ramrod_data** %12, align 8
  %179 = getelementptr inbounds %struct.roce_modify_qp_req_ramrod_data, %struct.roce_modify_qp_req_ramrod_data* %178, i32 0, i32 3
  store i8* %177, i8** %179, align 8
  %180 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %8, align 8
  %181 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 4
  %183 = call i8* @cpu_to_le16(i32 %182)
  %184 = load %struct.roce_modify_qp_req_ramrod_data*, %struct.roce_modify_qp_req_ramrod_data** %12, align 8
  %185 = getelementptr inbounds %struct.roce_modify_qp_req_ramrod_data, %struct.roce_modify_qp_req_ramrod_data* %184, i32 0, i32 2
  store i8* %183, i8** %185, align 8
  %186 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %8, align 8
  %187 = load %struct.roce_modify_qp_req_ramrod_data*, %struct.roce_modify_qp_req_ramrod_data** %12, align 8
  %188 = getelementptr inbounds %struct.roce_modify_qp_req_ramrod_data, %struct.roce_modify_qp_req_ramrod_data* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.roce_modify_qp_req_ramrod_data*, %struct.roce_modify_qp_req_ramrod_data** %12, align 8
  %191 = getelementptr inbounds %struct.roce_modify_qp_req_ramrod_data, %struct.roce_modify_qp_req_ramrod_data* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @qed_rdma_copy_gids(%struct.qed_rdma_qp* %186, i32 %189, i32 %192)
  %194 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %195 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %14, align 8
  %196 = call i32 @qed_spq_post(%struct.qed_hwfn* %194, %struct.qed_spq_entry* %195, i32* null)
  store i32 %196, i32* %15, align 4
  %197 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %198 = load i32, i32* @QED_MSG_RDMA, align 4
  %199 = load i32, i32* %15, align 4
  %200 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %197, i32 %198, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %199)
  %201 = load i32, i32* %15, align 4
  store i32 %201, i32* %6, align 4
  br label %202

202:                                              ; preds = %55, %50, %29
  %203 = load i32, i32* %6, align 4
  ret i32 %203
}

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i32) #1

declare dso_local i32 @memset(%struct.qed_sp_init_data*, i32, i32) #1

declare dso_local i32 @qed_sp_init_request(%struct.qed_hwfn*, %struct.qed_spq_entry**, i32, i32, %struct.qed_sp_init_data*) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*, i32) #1

declare dso_local i32 @SET_FIELD(i64, i32, i32) #1

declare dso_local i32 @GET_FIELD(i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @qed_rdma_copy_gids(%struct.qed_rdma_qp*, i32, i32) #1

declare dso_local i32 @qed_spq_post(%struct.qed_hwfn*, %struct.qed_spq_entry*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
