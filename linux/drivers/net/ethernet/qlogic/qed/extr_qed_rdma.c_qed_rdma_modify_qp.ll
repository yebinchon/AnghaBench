; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_rdma.c_qed_rdma_modify_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_rdma.c_qed_rdma_modify_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_rdma_qp = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qed_rdma_modify_qp_in_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i64, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qed_hwfn = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@QED_MSG_RDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"icid = %08x params->new_state=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"rc = %d\0A\00", align 1
@QED_RDMA_MODIFY_QP_VALID_RDMA_OPS_EN = common dso_local global i32 0, align 4
@QED_ROCE_MODIFY_QP_VALID_ROCE_MODE = common dso_local global i32 0, align 4
@QED_ROCE_MODIFY_QP_VALID_PKEY = common dso_local global i32 0, align 4
@QED_ROCE_MODIFY_QP_VALID_E2E_FLOW_CONTROL_EN = common dso_local global i32 0, align 4
@QED_ROCE_MODIFY_QP_VALID_DEST_QP = common dso_local global i32 0, align 4
@QED_ROCE_MODIFY_QP_VALID_ADDRESS_VECTOR = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@QED_ROCE_MODIFY_QP_VALID_RQ_PSN = common dso_local global i32 0, align 4
@QED_ROCE_MODIFY_QP_VALID_SQ_PSN = common dso_local global i32 0, align 4
@QED_RDMA_MODIFY_QP_VALID_MAX_RD_ATOMIC_REQ = common dso_local global i32 0, align 4
@QED_RDMA_MODIFY_QP_VALID_MAX_RD_ATOMIC_RESP = common dso_local global i32 0, align 4
@QED_ROCE_MODIFY_QP_VALID_ACK_TIMEOUT = common dso_local global i32 0, align 4
@QED_ROCE_MODIFY_QP_VALID_RETRY_CNT = common dso_local global i32 0, align 4
@QED_ROCE_MODIFY_QP_VALID_RNR_RETRY_CNT = common dso_local global i32 0, align 4
@QED_ROCE_MODIFY_QP_VALID_MIN_RNR_NAK_TIMER = common dso_local global i32 0, align 4
@QED_RDMA_MODIFY_QP_VALID_NEW_STATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"qp->cur_state=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Modify QP, rc = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.qed_rdma_qp*, %struct.qed_rdma_modify_qp_in_params*)* @qed_rdma_modify_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_rdma_modify_qp(i8* %0, %struct.qed_rdma_qp* %1, %struct.qed_rdma_modify_qp_in_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.qed_rdma_qp*, align 8
  %7 = alloca %struct.qed_rdma_modify_qp_in_params*, align 8
  %8 = alloca %struct.qed_hwfn*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.qed_rdma_qp* %1, %struct.qed_rdma_qp** %6, align 8
  store %struct.qed_rdma_modify_qp_in_params* %2, %struct.qed_rdma_modify_qp_in_params** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.qed_hwfn*
  store %struct.qed_hwfn* %13, %struct.qed_hwfn** %8, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %15 = load i32, i32* @QED_MSG_RDMA, align 4
  %16 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %6, align 8
  %17 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %16, i32 0, i32 28
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.qed_rdma_modify_qp_in_params*, %struct.qed_rdma_modify_qp_in_params** %7, align 8
  %20 = getelementptr inbounds %struct.qed_rdma_modify_qp_in_params, %struct.qed_rdma_modify_qp_in_params* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 (%struct.qed_hwfn*, i32, i8*, i32, ...) @DP_VERBOSE(%struct.qed_hwfn* %14, i32 %15, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %21)
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %3
  %26 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %27 = load i32, i32* @QED_MSG_RDMA, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call i32 (%struct.qed_hwfn*, i32, i8*, i32, ...) @DP_VERBOSE(%struct.qed_hwfn* %26, i32 %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %10, align 4
  store i32 %30, i32* %4, align 4
  br label %348

31:                                               ; preds = %3
  %32 = load %struct.qed_rdma_modify_qp_in_params*, %struct.qed_rdma_modify_qp_in_params** %7, align 8
  %33 = getelementptr inbounds %struct.qed_rdma_modify_qp_in_params, %struct.qed_rdma_modify_qp_in_params* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @QED_RDMA_MODIFY_QP_VALID_RDMA_OPS_EN, align 4
  %36 = call i64 @GET_FIELD(i32 %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %31
  %39 = load %struct.qed_rdma_modify_qp_in_params*, %struct.qed_rdma_modify_qp_in_params** %7, align 8
  %40 = getelementptr inbounds %struct.qed_rdma_modify_qp_in_params, %struct.qed_rdma_modify_qp_in_params* %39, i32 0, i32 28
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %6, align 8
  %43 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %42, i32 0, i32 27
  store i32 %41, i32* %43, align 4
  %44 = load %struct.qed_rdma_modify_qp_in_params*, %struct.qed_rdma_modify_qp_in_params** %7, align 8
  %45 = getelementptr inbounds %struct.qed_rdma_modify_qp_in_params, %struct.qed_rdma_modify_qp_in_params* %44, i32 0, i32 27
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %6, align 8
  %48 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %47, i32 0, i32 26
  store i32 %46, i32* %48, align 8
  %49 = load %struct.qed_rdma_modify_qp_in_params*, %struct.qed_rdma_modify_qp_in_params** %7, align 8
  %50 = getelementptr inbounds %struct.qed_rdma_modify_qp_in_params, %struct.qed_rdma_modify_qp_in_params* %49, i32 0, i32 26
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %6, align 8
  %53 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %52, i32 0, i32 25
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %38, %31
  %55 = load %struct.qed_rdma_modify_qp_in_params*, %struct.qed_rdma_modify_qp_in_params** %7, align 8
  %56 = getelementptr inbounds %struct.qed_rdma_modify_qp_in_params, %struct.qed_rdma_modify_qp_in_params* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @QED_ROCE_MODIFY_QP_VALID_ROCE_MODE, align 4
  %59 = call i64 @GET_FIELD(i32 %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %54
  %62 = load %struct.qed_rdma_modify_qp_in_params*, %struct.qed_rdma_modify_qp_in_params** %7, align 8
  %63 = getelementptr inbounds %struct.qed_rdma_modify_qp_in_params, %struct.qed_rdma_modify_qp_in_params* %62, i32 0, i32 25
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %6, align 8
  %66 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %65, i32 0, i32 24
  store i32 %64, i32* %66, align 8
  br label %67

67:                                               ; preds = %61, %54
  %68 = load %struct.qed_rdma_modify_qp_in_params*, %struct.qed_rdma_modify_qp_in_params** %7, align 8
  %69 = getelementptr inbounds %struct.qed_rdma_modify_qp_in_params, %struct.qed_rdma_modify_qp_in_params* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @QED_ROCE_MODIFY_QP_VALID_PKEY, align 4
  %72 = call i64 @GET_FIELD(i32 %70, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %67
  %75 = load %struct.qed_rdma_modify_qp_in_params*, %struct.qed_rdma_modify_qp_in_params** %7, align 8
  %76 = getelementptr inbounds %struct.qed_rdma_modify_qp_in_params, %struct.qed_rdma_modify_qp_in_params* %75, i32 0, i32 24
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %6, align 8
  %79 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %78, i32 0, i32 23
  store i32 %77, i32* %79, align 4
  br label %80

80:                                               ; preds = %74, %67
  %81 = load %struct.qed_rdma_modify_qp_in_params*, %struct.qed_rdma_modify_qp_in_params** %7, align 8
  %82 = getelementptr inbounds %struct.qed_rdma_modify_qp_in_params, %struct.qed_rdma_modify_qp_in_params* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @QED_ROCE_MODIFY_QP_VALID_E2E_FLOW_CONTROL_EN, align 4
  %85 = call i64 @GET_FIELD(i32 %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %80
  %88 = load %struct.qed_rdma_modify_qp_in_params*, %struct.qed_rdma_modify_qp_in_params** %7, align 8
  %89 = getelementptr inbounds %struct.qed_rdma_modify_qp_in_params, %struct.qed_rdma_modify_qp_in_params* %88, i32 0, i32 23
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %6, align 8
  %92 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %91, i32 0, i32 22
  store i32 %90, i32* %92, align 8
  br label %93

93:                                               ; preds = %87, %80
  %94 = load %struct.qed_rdma_modify_qp_in_params*, %struct.qed_rdma_modify_qp_in_params** %7, align 8
  %95 = getelementptr inbounds %struct.qed_rdma_modify_qp_in_params, %struct.qed_rdma_modify_qp_in_params* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @QED_ROCE_MODIFY_QP_VALID_DEST_QP, align 4
  %98 = call i64 @GET_FIELD(i32 %96, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %93
  %101 = load %struct.qed_rdma_modify_qp_in_params*, %struct.qed_rdma_modify_qp_in_params** %7, align 8
  %102 = getelementptr inbounds %struct.qed_rdma_modify_qp_in_params, %struct.qed_rdma_modify_qp_in_params* %101, i32 0, i32 22
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %6, align 8
  %105 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %104, i32 0, i32 21
  store i32 %103, i32* %105, align 4
  br label %106

106:                                              ; preds = %100, %93
  %107 = load %struct.qed_rdma_modify_qp_in_params*, %struct.qed_rdma_modify_qp_in_params** %7, align 8
  %108 = getelementptr inbounds %struct.qed_rdma_modify_qp_in_params, %struct.qed_rdma_modify_qp_in_params* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @QED_ROCE_MODIFY_QP_VALID_ADDRESS_VECTOR, align 4
  %111 = call i64 @GET_FIELD(i32 %109, i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %192

113:                                              ; preds = %106
  %114 = load %struct.qed_rdma_modify_qp_in_params*, %struct.qed_rdma_modify_qp_in_params** %7, align 8
  %115 = getelementptr inbounds %struct.qed_rdma_modify_qp_in_params, %struct.qed_rdma_modify_qp_in_params* %114, i32 0, i32 21
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %6, align 8
  %118 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %117, i32 0, i32 20
  store i32 %116, i32* %118, align 8
  %119 = load %struct.qed_rdma_modify_qp_in_params*, %struct.qed_rdma_modify_qp_in_params** %7, align 8
  %120 = getelementptr inbounds %struct.qed_rdma_modify_qp_in_params, %struct.qed_rdma_modify_qp_in_params* %119, i32 0, i32 20
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %6, align 8
  %123 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %122, i32 0, i32 19
  store i32 %121, i32* %123, align 4
  %124 = load %struct.qed_rdma_modify_qp_in_params*, %struct.qed_rdma_modify_qp_in_params** %7, align 8
  %125 = getelementptr inbounds %struct.qed_rdma_modify_qp_in_params, %struct.qed_rdma_modify_qp_in_params* %124, i32 0, i32 19
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %6, align 8
  %128 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %127, i32 0, i32 18
  store i32 %126, i32* %128, align 8
  %129 = load %struct.qed_rdma_modify_qp_in_params*, %struct.qed_rdma_modify_qp_in_params** %7, align 8
  %130 = getelementptr inbounds %struct.qed_rdma_modify_qp_in_params, %struct.qed_rdma_modify_qp_in_params* %129, i32 0, i32 18
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %6, align 8
  %133 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %132, i32 0, i32 17
  store i32 %131, i32* %133, align 4
  %134 = load %struct.qed_rdma_modify_qp_in_params*, %struct.qed_rdma_modify_qp_in_params** %7, align 8
  %135 = getelementptr inbounds %struct.qed_rdma_modify_qp_in_params, %struct.qed_rdma_modify_qp_in_params* %134, i32 0, i32 17
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %6, align 8
  %138 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %137, i32 0, i32 16
  store i32 %136, i32* %138, align 8
  %139 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %6, align 8
  %140 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %139, i32 0, i32 15
  store i64 0, i64* %140, align 8
  %141 = load %struct.qed_rdma_modify_qp_in_params*, %struct.qed_rdma_modify_qp_in_params** %7, align 8
  %142 = getelementptr inbounds %struct.qed_rdma_modify_qp_in_params, %struct.qed_rdma_modify_qp_in_params* %141, i32 0, i32 16
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %6, align 8
  %145 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %144, i32 0, i32 14
  store i32 %143, i32* %145, align 8
  %146 = load %struct.qed_rdma_modify_qp_in_params*, %struct.qed_rdma_modify_qp_in_params** %7, align 8
  %147 = getelementptr inbounds %struct.qed_rdma_modify_qp_in_params, %struct.qed_rdma_modify_qp_in_params* %146, i32 0, i32 15
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %6, align 8
  %150 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %149, i32 0, i32 13
  store i32 %148, i32* %150, align 4
  %151 = load %struct.qed_rdma_modify_qp_in_params*, %struct.qed_rdma_modify_qp_in_params** %7, align 8
  %152 = getelementptr inbounds %struct.qed_rdma_modify_qp_in_params, %struct.qed_rdma_modify_qp_in_params* %151, i32 0, i32 14
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %6, align 8
  %155 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %154, i32 0, i32 12
  store i32 %153, i32* %155, align 8
  %156 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %6, align 8
  %157 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %156, i32 0, i32 11
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 0
  %160 = load %struct.qed_rdma_modify_qp_in_params*, %struct.qed_rdma_modify_qp_in_params** %7, align 8
  %161 = getelementptr inbounds %struct.qed_rdma_modify_qp_in_params, %struct.qed_rdma_modify_qp_in_params* %160, i32 0, i32 13
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 0
  %164 = load i32, i32* @ETH_ALEN, align 4
  %165 = call i32 @memcpy(i32* %159, i32* %163, i32 %164)
  %166 = load %struct.qed_rdma_modify_qp_in_params*, %struct.qed_rdma_modify_qp_in_params** %7, align 8
  %167 = getelementptr inbounds %struct.qed_rdma_modify_qp_in_params, %struct.qed_rdma_modify_qp_in_params* %166, i32 0, i32 12
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %181

170:                                              ; preds = %113
  %171 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %6, align 8
  %172 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %171, i32 0, i32 10
  %173 = load i32*, i32** %172, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 0
  %175 = load %struct.qed_rdma_modify_qp_in_params*, %struct.qed_rdma_modify_qp_in_params** %7, align 8
  %176 = getelementptr inbounds %struct.qed_rdma_modify_qp_in_params, %struct.qed_rdma_modify_qp_in_params* %175, i32 0, i32 11
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 0
  %179 = load i32, i32* @ETH_ALEN, align 4
  %180 = call i32 @memcpy(i32* %174, i32* %178, i32 %179)
  br label %191

181:                                              ; preds = %113
  %182 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %6, align 8
  %183 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %182, i32 0, i32 10
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 0
  %186 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %187 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 0
  %189 = load i32, i32* @ETH_ALEN, align 4
  %190 = call i32 @memcpy(i32* %185, i32* %188, i32 %189)
  br label %191

191:                                              ; preds = %181, %170
  br label %192

192:                                              ; preds = %191, %106
  %193 = load %struct.qed_rdma_modify_qp_in_params*, %struct.qed_rdma_modify_qp_in_params** %7, align 8
  %194 = getelementptr inbounds %struct.qed_rdma_modify_qp_in_params, %struct.qed_rdma_modify_qp_in_params* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* @QED_ROCE_MODIFY_QP_VALID_RQ_PSN, align 4
  %197 = call i64 @GET_FIELD(i32 %195, i32 %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %205

199:                                              ; preds = %192
  %200 = load %struct.qed_rdma_modify_qp_in_params*, %struct.qed_rdma_modify_qp_in_params** %7, align 8
  %201 = getelementptr inbounds %struct.qed_rdma_modify_qp_in_params, %struct.qed_rdma_modify_qp_in_params* %200, i32 0, i32 10
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %6, align 8
  %204 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %203, i32 0, i32 9
  store i32 %202, i32* %204, align 4
  br label %205

205:                                              ; preds = %199, %192
  %206 = load %struct.qed_rdma_modify_qp_in_params*, %struct.qed_rdma_modify_qp_in_params** %7, align 8
  %207 = getelementptr inbounds %struct.qed_rdma_modify_qp_in_params, %struct.qed_rdma_modify_qp_in_params* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* @QED_ROCE_MODIFY_QP_VALID_SQ_PSN, align 4
  %210 = call i64 @GET_FIELD(i32 %208, i32 %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %218

212:                                              ; preds = %205
  %213 = load %struct.qed_rdma_modify_qp_in_params*, %struct.qed_rdma_modify_qp_in_params** %7, align 8
  %214 = getelementptr inbounds %struct.qed_rdma_modify_qp_in_params, %struct.qed_rdma_modify_qp_in_params* %213, i32 0, i32 9
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %6, align 8
  %217 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %216, i32 0, i32 8
  store i32 %215, i32* %217, align 8
  br label %218

218:                                              ; preds = %212, %205
  %219 = load %struct.qed_rdma_modify_qp_in_params*, %struct.qed_rdma_modify_qp_in_params** %7, align 8
  %220 = getelementptr inbounds %struct.qed_rdma_modify_qp_in_params, %struct.qed_rdma_modify_qp_in_params* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* @QED_RDMA_MODIFY_QP_VALID_MAX_RD_ATOMIC_REQ, align 4
  %223 = call i64 @GET_FIELD(i32 %221, i32 %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %231

225:                                              ; preds = %218
  %226 = load %struct.qed_rdma_modify_qp_in_params*, %struct.qed_rdma_modify_qp_in_params** %7, align 8
  %227 = getelementptr inbounds %struct.qed_rdma_modify_qp_in_params, %struct.qed_rdma_modify_qp_in_params* %226, i32 0, i32 8
  %228 = load i32, i32* %227, align 8
  %229 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %6, align 8
  %230 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %229, i32 0, i32 7
  store i32 %228, i32* %230, align 4
  br label %231

231:                                              ; preds = %225, %218
  %232 = load %struct.qed_rdma_modify_qp_in_params*, %struct.qed_rdma_modify_qp_in_params** %7, align 8
  %233 = getelementptr inbounds %struct.qed_rdma_modify_qp_in_params, %struct.qed_rdma_modify_qp_in_params* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* @QED_RDMA_MODIFY_QP_VALID_MAX_RD_ATOMIC_RESP, align 4
  %236 = call i64 @GET_FIELD(i32 %234, i32 %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %244

238:                                              ; preds = %231
  %239 = load %struct.qed_rdma_modify_qp_in_params*, %struct.qed_rdma_modify_qp_in_params** %7, align 8
  %240 = getelementptr inbounds %struct.qed_rdma_modify_qp_in_params, %struct.qed_rdma_modify_qp_in_params* %239, i32 0, i32 7
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %6, align 8
  %243 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %242, i32 0, i32 6
  store i32 %241, i32* %243, align 8
  br label %244

244:                                              ; preds = %238, %231
  %245 = load %struct.qed_rdma_modify_qp_in_params*, %struct.qed_rdma_modify_qp_in_params** %7, align 8
  %246 = getelementptr inbounds %struct.qed_rdma_modify_qp_in_params, %struct.qed_rdma_modify_qp_in_params* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* @QED_ROCE_MODIFY_QP_VALID_ACK_TIMEOUT, align 4
  %249 = call i64 @GET_FIELD(i32 %247, i32 %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %257

251:                                              ; preds = %244
  %252 = load %struct.qed_rdma_modify_qp_in_params*, %struct.qed_rdma_modify_qp_in_params** %7, align 8
  %253 = getelementptr inbounds %struct.qed_rdma_modify_qp_in_params, %struct.qed_rdma_modify_qp_in_params* %252, i32 0, i32 6
  %254 = load i32, i32* %253, align 8
  %255 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %6, align 8
  %256 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %255, i32 0, i32 5
  store i32 %254, i32* %256, align 4
  br label %257

257:                                              ; preds = %251, %244
  %258 = load %struct.qed_rdma_modify_qp_in_params*, %struct.qed_rdma_modify_qp_in_params** %7, align 8
  %259 = getelementptr inbounds %struct.qed_rdma_modify_qp_in_params, %struct.qed_rdma_modify_qp_in_params* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* @QED_ROCE_MODIFY_QP_VALID_RETRY_CNT, align 4
  %262 = call i64 @GET_FIELD(i32 %260, i32 %261)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %270

264:                                              ; preds = %257
  %265 = load %struct.qed_rdma_modify_qp_in_params*, %struct.qed_rdma_modify_qp_in_params** %7, align 8
  %266 = getelementptr inbounds %struct.qed_rdma_modify_qp_in_params, %struct.qed_rdma_modify_qp_in_params* %265, i32 0, i32 5
  %267 = load i32, i32* %266, align 4
  %268 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %6, align 8
  %269 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %268, i32 0, i32 4
  store i32 %267, i32* %269, align 8
  br label %270

270:                                              ; preds = %264, %257
  %271 = load %struct.qed_rdma_modify_qp_in_params*, %struct.qed_rdma_modify_qp_in_params** %7, align 8
  %272 = getelementptr inbounds %struct.qed_rdma_modify_qp_in_params, %struct.qed_rdma_modify_qp_in_params* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = load i32, i32* @QED_ROCE_MODIFY_QP_VALID_RNR_RETRY_CNT, align 4
  %275 = call i64 @GET_FIELD(i32 %273, i32 %274)
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %283

277:                                              ; preds = %270
  %278 = load %struct.qed_rdma_modify_qp_in_params*, %struct.qed_rdma_modify_qp_in_params** %7, align 8
  %279 = getelementptr inbounds %struct.qed_rdma_modify_qp_in_params, %struct.qed_rdma_modify_qp_in_params* %278, i32 0, i32 4
  %280 = load i32, i32* %279, align 8
  %281 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %6, align 8
  %282 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %281, i32 0, i32 3
  store i32 %280, i32* %282, align 4
  br label %283

283:                                              ; preds = %277, %270
  %284 = load %struct.qed_rdma_modify_qp_in_params*, %struct.qed_rdma_modify_qp_in_params** %7, align 8
  %285 = getelementptr inbounds %struct.qed_rdma_modify_qp_in_params, %struct.qed_rdma_modify_qp_in_params* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = load i32, i32* @QED_ROCE_MODIFY_QP_VALID_MIN_RNR_NAK_TIMER, align 4
  %288 = call i64 @GET_FIELD(i32 %286, i32 %287)
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %296

290:                                              ; preds = %283
  %291 = load %struct.qed_rdma_modify_qp_in_params*, %struct.qed_rdma_modify_qp_in_params** %7, align 8
  %292 = getelementptr inbounds %struct.qed_rdma_modify_qp_in_params, %struct.qed_rdma_modify_qp_in_params* %291, i32 0, i32 3
  %293 = load i32, i32* %292, align 4
  %294 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %6, align 8
  %295 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %294, i32 0, i32 2
  store i32 %293, i32* %295, align 8
  br label %296

296:                                              ; preds = %290, %283
  %297 = load %struct.qed_rdma_modify_qp_in_params*, %struct.qed_rdma_modify_qp_in_params** %7, align 8
  %298 = getelementptr inbounds %struct.qed_rdma_modify_qp_in_params, %struct.qed_rdma_modify_qp_in_params* %297, i32 0, i32 2
  %299 = load i32, i32* %298, align 8
  %300 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %6, align 8
  %301 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %300, i32 0, i32 1
  store i32 %299, i32* %301, align 4
  %302 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %6, align 8
  %303 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  store i32 %304, i32* %9, align 4
  %305 = load %struct.qed_rdma_modify_qp_in_params*, %struct.qed_rdma_modify_qp_in_params** %7, align 8
  %306 = getelementptr inbounds %struct.qed_rdma_modify_qp_in_params, %struct.qed_rdma_modify_qp_in_params* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 4
  %308 = load i32, i32* @QED_RDMA_MODIFY_QP_VALID_NEW_STATE, align 4
  %309 = call i64 @GET_FIELD(i32 %307, i32 %308)
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %311, label %323

311:                                              ; preds = %296
  %312 = load %struct.qed_rdma_modify_qp_in_params*, %struct.qed_rdma_modify_qp_in_params** %7, align 8
  %313 = getelementptr inbounds %struct.qed_rdma_modify_qp_in_params, %struct.qed_rdma_modify_qp_in_params* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %6, align 8
  %316 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %315, i32 0, i32 0
  store i32 %314, i32* %316, align 8
  %317 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %318 = load i32, i32* @QED_MSG_RDMA, align 4
  %319 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %6, align 8
  %320 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = call i32 (%struct.qed_hwfn*, i32, i8*, i32, ...) @DP_VERBOSE(%struct.qed_hwfn* %317, i32 %318, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %321)
  br label %323

323:                                              ; preds = %311, %296
  %324 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %325 = call i64 @QED_IS_IWARP_PERSONALITY(%struct.qed_hwfn* %324)
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %327, label %336

327:                                              ; preds = %323
  %328 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %6, align 8
  %329 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 8
  %331 = call i32 @qed_roce2iwarp_state(i32 %330)
  store i32 %331, i32* %11, align 4
  %332 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %333 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %6, align 8
  %334 = load i32, i32* %11, align 4
  %335 = call i32 @qed_iwarp_modify_qp(%struct.qed_hwfn* %332, %struct.qed_rdma_qp* %333, i32 %334, i32 0)
  store i32 %335, i32* %10, align 4
  br label %342

336:                                              ; preds = %323
  %337 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %338 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %6, align 8
  %339 = load i32, i32* %9, align 4
  %340 = load %struct.qed_rdma_modify_qp_in_params*, %struct.qed_rdma_modify_qp_in_params** %7, align 8
  %341 = call i32 @qed_roce_modify_qp(%struct.qed_hwfn* %337, %struct.qed_rdma_qp* %338, i32 %339, %struct.qed_rdma_modify_qp_in_params* %340)
  store i32 %341, i32* %10, align 4
  br label %342

342:                                              ; preds = %336, %327
  %343 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %344 = load i32, i32* @QED_MSG_RDMA, align 4
  %345 = load i32, i32* %10, align 4
  %346 = call i32 (%struct.qed_hwfn*, i32, i8*, i32, ...) @DP_VERBOSE(%struct.qed_hwfn* %343, i32 %344, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %345)
  %347 = load i32, i32* %10, align 4
  store i32 %347, i32* %4, align 4
  br label %348

348:                                              ; preds = %342, %25
  %349 = load i32, i32* %4, align 4
  ret i32 %349
}

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i32, ...) #1

declare dso_local i64 @GET_FIELD(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @QED_IS_IWARP_PERSONALITY(%struct.qed_hwfn*) #1

declare dso_local i32 @qed_roce2iwarp_state(i32) #1

declare dso_local i32 @qed_iwarp_modify_qp(%struct.qed_hwfn*, %struct.qed_rdma_qp*, i32, i32) #1

declare dso_local i32 @qed_roce_modify_qp(%struct.qed_hwfn*, %struct.qed_rdma_qp*, i32, %struct.qed_rdma_modify_qp_in_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
