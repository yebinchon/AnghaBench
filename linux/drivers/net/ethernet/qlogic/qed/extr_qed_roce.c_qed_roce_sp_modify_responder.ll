; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_roce.c_qed_roce_sp_modify_responder.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_roce.c_qed_roce_sp_modify_responder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.qed_rdma_qp = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.roce_modify_qp_resp_ramrod_data = type { i32, i32, i8*, i32, i8*, i32, i32, i32, i64, i64 }
%struct.qed_sp_init_data = type { i32, i32, i32 }
%struct.qed_spq_entry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.roce_modify_qp_resp_ramrod_data }

@QED_MSG_RDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"icid = %08x\0A\00", align 1
@QED_SPQ_MODE_EBLOCK = common dso_local global i32 0, align 4
@ROCE_EVENT_MODIFY_QP = common dso_local global i32 0, align 4
@PROTOCOLID_ROCE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"rc = %d\0A\00", align 1
@ROCE_MODIFY_QP_RESP_RAMROD_DATA_MOVE_TO_ERR_FLG = common dso_local global i32 0, align 4
@ROCE_MODIFY_QP_RESP_RAMROD_DATA_RDMA_RD_EN = common dso_local global i32 0, align 4
@ROCE_MODIFY_QP_RESP_RAMROD_DATA_RDMA_WR_EN = common dso_local global i32 0, align 4
@ROCE_MODIFY_QP_RESP_RAMROD_DATA_ATOMIC_EN = common dso_local global i32 0, align 4
@ROCE_CREATE_QP_RESP_RAMROD_DATA_E2E_FLOW_CONTROL_EN = common dso_local global i32 0, align 4
@ROCE_MODIFY_QP_RESP_RAMROD_DATA_RDMA_OPS_EN_FLG = common dso_local global i32 0, align 4
@QED_RDMA_MODIFY_QP_VALID_RDMA_OPS_EN = common dso_local global i32 0, align 4
@ROCE_MODIFY_QP_RESP_RAMROD_DATA_P_KEY_FLG = common dso_local global i32 0, align 4
@QED_ROCE_MODIFY_QP_VALID_PKEY = common dso_local global i32 0, align 4
@ROCE_MODIFY_QP_RESP_RAMROD_DATA_ADDRESS_VECTOR_FLG = common dso_local global i32 0, align 4
@QED_ROCE_MODIFY_QP_VALID_ADDRESS_VECTOR = common dso_local global i32 0, align 4
@ROCE_MODIFY_QP_RESP_RAMROD_DATA_MAX_IRD_FLG = common dso_local global i32 0, align 4
@QED_RDMA_MODIFY_QP_VALID_MAX_RD_ATOMIC_RESP = common dso_local global i32 0, align 4
@ROCE_MODIFY_QP_RESP_RAMROD_DATA_MIN_RNR_NAK_TIMER_FLG = common dso_local global i32 0, align 4
@QED_ROCE_MODIFY_QP_VALID_MIN_RNR_NAK_TIMER = common dso_local global i32 0, align 4
@ROCE_MODIFY_QP_RESP_RAMROD_DATA_MIN_RNR_NAK_TIMER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Modify responder, rc = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_rdma_qp*, i32, i32)* @qed_roce_sp_modify_responder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_roce_sp_modify_responder(%struct.qed_hwfn* %0, %struct.qed_rdma_qp* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qed_hwfn*, align 8
  %7 = alloca %struct.qed_rdma_qp*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.roce_modify_qp_resp_ramrod_data*, align 8
  %11 = alloca %struct.qed_sp_init_data, align 4
  %12 = alloca %struct.qed_spq_entry*, align 8
  %13 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %6, align 8
  store %struct.qed_rdma_qp* %1, %struct.qed_rdma_qp** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %15 = load i32, i32* @QED_MSG_RDMA, align 4
  %16 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %7, align 8
  %17 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %14, i32 %15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %4
  %23 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %7, align 8
  %24 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %23, i32 0, i32 12
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %195

28:                                               ; preds = %22, %4
  %29 = call i32 @memset(%struct.qed_sp_init_data* %11, i32 0, i32 12)
  %30 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %7, align 8
  %31 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %11, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  %34 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %35 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %11, i32 0, i32 2
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* @QED_SPQ_MODE_EBLOCK, align 4
  %40 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %11, i32 0, i32 1
  store i32 %39, i32* %40, align 4
  %41 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %42 = load i32, i32* @ROCE_EVENT_MODIFY_QP, align 4
  %43 = load i32, i32* @PROTOCOLID_ROCE, align 4
  %44 = call i32 @qed_sp_init_request(%struct.qed_hwfn* %41, %struct.qed_spq_entry** %12, i32 %42, i32 %43, %struct.qed_sp_init_data* %11)
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %28
  %48 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %49 = load i32, i32* %13, align 4
  %50 = call i32 @DP_NOTICE(%struct.qed_hwfn* %48, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* %13, align 4
  store i32 %51, i32* %5, align 4
  br label %195

52:                                               ; preds = %28
  %53 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %12, align 8
  %54 = getelementptr inbounds %struct.qed_spq_entry, %struct.qed_spq_entry* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store %struct.roce_modify_qp_resp_ramrod_data* %55, %struct.roce_modify_qp_resp_ramrod_data** %10, align 8
  %56 = load %struct.roce_modify_qp_resp_ramrod_data*, %struct.roce_modify_qp_resp_ramrod_data** %10, align 8
  %57 = getelementptr inbounds %struct.roce_modify_qp_resp_ramrod_data, %struct.roce_modify_qp_resp_ramrod_data* %56, i32 0, i32 9
  store i64 0, i64* %57, align 8
  %58 = load %struct.roce_modify_qp_resp_ramrod_data*, %struct.roce_modify_qp_resp_ramrod_data** %10, align 8
  %59 = getelementptr inbounds %struct.roce_modify_qp_resp_ramrod_data, %struct.roce_modify_qp_resp_ramrod_data* %58, i32 0, i32 9
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* @ROCE_MODIFY_QP_RESP_RAMROD_DATA_MOVE_TO_ERR_FLG, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @SET_FIELD(i64 %60, i32 %61, i32 %62)
  %64 = load %struct.roce_modify_qp_resp_ramrod_data*, %struct.roce_modify_qp_resp_ramrod_data** %10, align 8
  %65 = getelementptr inbounds %struct.roce_modify_qp_resp_ramrod_data, %struct.roce_modify_qp_resp_ramrod_data* %64, i32 0, i32 9
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* @ROCE_MODIFY_QP_RESP_RAMROD_DATA_RDMA_RD_EN, align 4
  %68 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %7, align 8
  %69 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @SET_FIELD(i64 %66, i32 %67, i32 %70)
  %72 = load %struct.roce_modify_qp_resp_ramrod_data*, %struct.roce_modify_qp_resp_ramrod_data** %10, align 8
  %73 = getelementptr inbounds %struct.roce_modify_qp_resp_ramrod_data, %struct.roce_modify_qp_resp_ramrod_data* %72, i32 0, i32 9
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* @ROCE_MODIFY_QP_RESP_RAMROD_DATA_RDMA_WR_EN, align 4
  %76 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %7, align 8
  %77 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @SET_FIELD(i64 %74, i32 %75, i32 %78)
  %80 = load %struct.roce_modify_qp_resp_ramrod_data*, %struct.roce_modify_qp_resp_ramrod_data** %10, align 8
  %81 = getelementptr inbounds %struct.roce_modify_qp_resp_ramrod_data, %struct.roce_modify_qp_resp_ramrod_data* %80, i32 0, i32 9
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* @ROCE_MODIFY_QP_RESP_RAMROD_DATA_ATOMIC_EN, align 4
  %84 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %7, align 8
  %85 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @SET_FIELD(i64 %82, i32 %83, i32 %86)
  %88 = load %struct.roce_modify_qp_resp_ramrod_data*, %struct.roce_modify_qp_resp_ramrod_data** %10, align 8
  %89 = getelementptr inbounds %struct.roce_modify_qp_resp_ramrod_data, %struct.roce_modify_qp_resp_ramrod_data* %88, i32 0, i32 9
  %90 = load i64, i64* %89, align 8
  %91 = load i32, i32* @ROCE_CREATE_QP_RESP_RAMROD_DATA_E2E_FLOW_CONTROL_EN, align 4
  %92 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %7, align 8
  %93 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @SET_FIELD(i64 %90, i32 %91, i32 %94)
  %96 = load %struct.roce_modify_qp_resp_ramrod_data*, %struct.roce_modify_qp_resp_ramrod_data** %10, align 8
  %97 = getelementptr inbounds %struct.roce_modify_qp_resp_ramrod_data, %struct.roce_modify_qp_resp_ramrod_data* %96, i32 0, i32 9
  %98 = load i64, i64* %97, align 8
  %99 = load i32, i32* @ROCE_MODIFY_QP_RESP_RAMROD_DATA_RDMA_OPS_EN_FLG, align 4
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* @QED_RDMA_MODIFY_QP_VALID_RDMA_OPS_EN, align 4
  %102 = call i32 @GET_FIELD(i32 %100, i32 %101)
  %103 = call i32 @SET_FIELD(i64 %98, i32 %99, i32 %102)
  %104 = load %struct.roce_modify_qp_resp_ramrod_data*, %struct.roce_modify_qp_resp_ramrod_data** %10, align 8
  %105 = getelementptr inbounds %struct.roce_modify_qp_resp_ramrod_data, %struct.roce_modify_qp_resp_ramrod_data* %104, i32 0, i32 9
  %106 = load i64, i64* %105, align 8
  %107 = load i32, i32* @ROCE_MODIFY_QP_RESP_RAMROD_DATA_P_KEY_FLG, align 4
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* @QED_ROCE_MODIFY_QP_VALID_PKEY, align 4
  %110 = call i32 @GET_FIELD(i32 %108, i32 %109)
  %111 = call i32 @SET_FIELD(i64 %106, i32 %107, i32 %110)
  %112 = load %struct.roce_modify_qp_resp_ramrod_data*, %struct.roce_modify_qp_resp_ramrod_data** %10, align 8
  %113 = getelementptr inbounds %struct.roce_modify_qp_resp_ramrod_data, %struct.roce_modify_qp_resp_ramrod_data* %112, i32 0, i32 9
  %114 = load i64, i64* %113, align 8
  %115 = load i32, i32* @ROCE_MODIFY_QP_RESP_RAMROD_DATA_ADDRESS_VECTOR_FLG, align 4
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* @QED_ROCE_MODIFY_QP_VALID_ADDRESS_VECTOR, align 4
  %118 = call i32 @GET_FIELD(i32 %116, i32 %117)
  %119 = call i32 @SET_FIELD(i64 %114, i32 %115, i32 %118)
  %120 = load %struct.roce_modify_qp_resp_ramrod_data*, %struct.roce_modify_qp_resp_ramrod_data** %10, align 8
  %121 = getelementptr inbounds %struct.roce_modify_qp_resp_ramrod_data, %struct.roce_modify_qp_resp_ramrod_data* %120, i32 0, i32 9
  %122 = load i64, i64* %121, align 8
  %123 = load i32, i32* @ROCE_MODIFY_QP_RESP_RAMROD_DATA_MAX_IRD_FLG, align 4
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* @QED_RDMA_MODIFY_QP_VALID_MAX_RD_ATOMIC_RESP, align 4
  %126 = call i32 @GET_FIELD(i32 %124, i32 %125)
  %127 = call i32 @SET_FIELD(i64 %122, i32 %123, i32 %126)
  %128 = load %struct.roce_modify_qp_resp_ramrod_data*, %struct.roce_modify_qp_resp_ramrod_data** %10, align 8
  %129 = getelementptr inbounds %struct.roce_modify_qp_resp_ramrod_data, %struct.roce_modify_qp_resp_ramrod_data* %128, i32 0, i32 9
  %130 = load i64, i64* %129, align 8
  %131 = load i32, i32* @ROCE_MODIFY_QP_RESP_RAMROD_DATA_MIN_RNR_NAK_TIMER_FLG, align 4
  %132 = load i32, i32* %9, align 4
  %133 = load i32, i32* @QED_ROCE_MODIFY_QP_VALID_MIN_RNR_NAK_TIMER, align 4
  %134 = call i32 @GET_FIELD(i32 %132, i32 %133)
  %135 = call i32 @SET_FIELD(i64 %130, i32 %131, i32 %134)
  %136 = load %struct.roce_modify_qp_resp_ramrod_data*, %struct.roce_modify_qp_resp_ramrod_data** %10, align 8
  %137 = getelementptr inbounds %struct.roce_modify_qp_resp_ramrod_data, %struct.roce_modify_qp_resp_ramrod_data* %136, i32 0, i32 8
  store i64 0, i64* %137, align 8
  %138 = load %struct.roce_modify_qp_resp_ramrod_data*, %struct.roce_modify_qp_resp_ramrod_data** %10, align 8
  %139 = getelementptr inbounds %struct.roce_modify_qp_resp_ramrod_data, %struct.roce_modify_qp_resp_ramrod_data* %138, i32 0, i32 8
  %140 = load i64, i64* %139, align 8
  %141 = load i32, i32* @ROCE_MODIFY_QP_RESP_RAMROD_DATA_MIN_RNR_NAK_TIMER, align 4
  %142 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %7, align 8
  %143 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %142, i32 0, i32 5
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @SET_FIELD(i64 %140, i32 %141, i32 %144)
  %146 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %7, align 8
  %147 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %146, i32 0, i32 11
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.roce_modify_qp_resp_ramrod_data*, %struct.roce_modify_qp_resp_ramrod_data** %10, align 8
  %150 = getelementptr inbounds %struct.roce_modify_qp_resp_ramrod_data, %struct.roce_modify_qp_resp_ramrod_data* %149, i32 0, i32 7
  store i32 %148, i32* %150, align 8
  %151 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %7, align 8
  %152 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %151, i32 0, i32 10
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.roce_modify_qp_resp_ramrod_data*, %struct.roce_modify_qp_resp_ramrod_data** %10, align 8
  %155 = getelementptr inbounds %struct.roce_modify_qp_resp_ramrod_data, %struct.roce_modify_qp_resp_ramrod_data* %154, i32 0, i32 6
  store i32 %153, i32* %155, align 4
  %156 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %7, align 8
  %157 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %156, i32 0, i32 9
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.roce_modify_qp_resp_ramrod_data*, %struct.roce_modify_qp_resp_ramrod_data** %10, align 8
  %160 = getelementptr inbounds %struct.roce_modify_qp_resp_ramrod_data, %struct.roce_modify_qp_resp_ramrod_data* %159, i32 0, i32 5
  store i32 %158, i32* %160, align 8
  %161 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %7, align 8
  %162 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %161, i32 0, i32 8
  %163 = load i32, i32* %162, align 4
  %164 = call i8* @cpu_to_le16(i32 %163)
  %165 = load %struct.roce_modify_qp_resp_ramrod_data*, %struct.roce_modify_qp_resp_ramrod_data** %10, align 8
  %166 = getelementptr inbounds %struct.roce_modify_qp_resp_ramrod_data, %struct.roce_modify_qp_resp_ramrod_data* %165, i32 0, i32 4
  store i8* %164, i8** %166, align 8
  %167 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %7, align 8
  %168 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %167, i32 0, i32 7
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @cpu_to_le32(i32 %169)
  %171 = load %struct.roce_modify_qp_resp_ramrod_data*, %struct.roce_modify_qp_resp_ramrod_data** %10, align 8
  %172 = getelementptr inbounds %struct.roce_modify_qp_resp_ramrod_data, %struct.roce_modify_qp_resp_ramrod_data* %171, i32 0, i32 3
  store i32 %170, i32* %172, align 8
  %173 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %7, align 8
  %174 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %173, i32 0, i32 6
  %175 = load i32, i32* %174, align 4
  %176 = call i8* @cpu_to_le16(i32 %175)
  %177 = load %struct.roce_modify_qp_resp_ramrod_data*, %struct.roce_modify_qp_resp_ramrod_data** %10, align 8
  %178 = getelementptr inbounds %struct.roce_modify_qp_resp_ramrod_data, %struct.roce_modify_qp_resp_ramrod_data* %177, i32 0, i32 2
  store i8* %176, i8** %178, align 8
  %179 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %7, align 8
  %180 = load %struct.roce_modify_qp_resp_ramrod_data*, %struct.roce_modify_qp_resp_ramrod_data** %10, align 8
  %181 = getelementptr inbounds %struct.roce_modify_qp_resp_ramrod_data, %struct.roce_modify_qp_resp_ramrod_data* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.roce_modify_qp_resp_ramrod_data*, %struct.roce_modify_qp_resp_ramrod_data** %10, align 8
  %184 = getelementptr inbounds %struct.roce_modify_qp_resp_ramrod_data, %struct.roce_modify_qp_resp_ramrod_data* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @qed_rdma_copy_gids(%struct.qed_rdma_qp* %179, i32 %182, i32 %185)
  %187 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %188 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %12, align 8
  %189 = call i32 @qed_spq_post(%struct.qed_hwfn* %187, %struct.qed_spq_entry* %188, i32* null)
  store i32 %189, i32* %13, align 4
  %190 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %191 = load i32, i32* @QED_MSG_RDMA, align 4
  %192 = load i32, i32* %13, align 4
  %193 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %190, i32 %191, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %192)
  %194 = load i32, i32* %13, align 4
  store i32 %194, i32* %5, align 4
  br label %195

195:                                              ; preds = %52, %47, %27
  %196 = load i32, i32* %5, align 4
  ret i32 %196
}

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i32) #1

declare dso_local i32 @memset(%struct.qed_sp_init_data*, i32, i32) #1

declare dso_local i32 @qed_sp_init_request(%struct.qed_hwfn*, %struct.qed_spq_entry**, i32, i32, %struct.qed_sp_init_data*) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*, i32) #1

declare dso_local i32 @SET_FIELD(i64, i32, i32) #1

declare dso_local i32 @GET_FIELD(i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @qed_rdma_copy_gids(%struct.qed_rdma_qp*, i32, i32) #1

declare dso_local i32 @qed_spq_post(%struct.qed_hwfn*, %struct.qed_spq_entry*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
