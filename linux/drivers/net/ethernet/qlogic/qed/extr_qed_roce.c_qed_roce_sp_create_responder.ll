; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_roce.c_qed_roce_sp_create_responder.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_roce.c_qed_roce_sp_create_responder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_15__*, %struct.TYPE_13__*, %struct.TYPE_16__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.qed_rdma_qp = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, %struct.TYPE_11__, %struct.TYPE_19__, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.roce_create_qp_resp_ramrod_data = type { i32, i64, %struct.TYPE_12__, i8*, i32, i32, i32, i8*, i8*, i8*, i8*, %struct.TYPE_20__, %struct.TYPE_18__, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i64 }
%struct.TYPE_12__ = type { i8*, i8* }
%struct.TYPE_20__ = type { i8*, i8* }
%struct.TYPE_18__ = type { i8*, i8* }
%struct.qed_sp_init_data = type { i32, i32, i64 }
%struct.qed_spq_entry = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.roce_create_qp_resp_ramrod_data }

@QED_MSG_RDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"icid = %08x\0A\00", align 1
@RDMA_RING_PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [68 x i8] c"qed create responder failed: cannot allocate memory (irq). rc = %d\0A\00", align 1
@QED_SPQ_MODE_EBLOCK = common dso_local global i32 0, align 4
@ROCE_RAMROD_CREATE_QP = common dso_local global i32 0, align 4
@PROTOCOLID_ROCE = common dso_local global i32 0, align 4
@ROCE_CREATE_QP_RESP_RAMROD_DATA_ROCE_FLAVOR = common dso_local global i32 0, align 4
@ROCE_CREATE_QP_RESP_RAMROD_DATA_RDMA_RD_EN = common dso_local global i32 0, align 4
@ROCE_CREATE_QP_RESP_RAMROD_DATA_RDMA_WR_EN = common dso_local global i32 0, align 4
@ROCE_CREATE_QP_RESP_RAMROD_DATA_ATOMIC_EN = common dso_local global i32 0, align 4
@ROCE_CREATE_QP_RESP_RAMROD_DATA_E2E_FLOW_CONTROL_EN = common dso_local global i32 0, align 4
@ROCE_CREATE_QP_RESP_RAMROD_DATA_SRQ_FLG = common dso_local global i32 0, align 4
@ROCE_CREATE_QP_RESP_RAMROD_DATA_RESERVED_KEY_EN = common dso_local global i32 0, align 4
@ROCE_CREATE_QP_RESP_RAMROD_DATA_MIN_RNR_NAK_TIMER = common dso_local global i32 0, align 4
@QED_MSG_SP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"qp icid %u pqs: regular_latency %u low_latency %u\0A\00", align 1
@CM_TX_PQ_BASE = common dso_local global i32 0, align 4
@QED_RDMA_STATS_QUEUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"create responder - failed, rc = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_rdma_qp*)* @qed_roce_sp_create_responder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_roce_sp_create_responder(%struct.qed_hwfn* %0, %struct.qed_rdma_qp* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_rdma_qp*, align 8
  %6 = alloca %struct.roce_create_qp_resp_ramrod_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.qed_sp_init_data, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.qed_spq_entry*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.qed_rdma_qp* %1, %struct.qed_rdma_qp** %5, align 8
  %15 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %16 = load i32, i32* @QED_MSG_RDMA, align 4
  %17 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %18 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %17, i32 0, i32 22
  %19 = load i64, i64* %18, align 8
  %20 = call i32 (%struct.qed_hwfn*, i32, i8*, i64, ...) @DP_VERBOSE(%struct.qed_hwfn* %15, i32 %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %19)
  %21 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %22 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  %23 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %24 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %23, i32 0, i32 0
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load i32, i32* @RDMA_RING_PAGE_SIZE, align 4
  %30 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %31 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %30, i32 0, i32 20
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i32 @dma_alloc_coherent(i32* %28, i32 %29, i32* %31, i32 %32)
  %34 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %35 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %34, i32 0, i32 21
  store i32 %33, i32* %35, align 4
  %36 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %37 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %36, i32 0, i32 21
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %2
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %13, align 4
  %43 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %44 = load i32, i32* %13, align 4
  %45 = call i32 @DP_NOTICE(%struct.qed_hwfn* %43, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %13, align 4
  store i32 %46, i32* %3, align 4
  br label %400

47:                                               ; preds = %2
  %48 = call i32 @memset(%struct.qed_sp_init_data* %9, i32 0, i32 16)
  %49 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %50 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %49, i32 0, i32 22
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %9, i32 0, i32 2
  store i64 %51, i64* %52, align 8
  %53 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %54 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %9, i32 0, i32 0
  store i32 %56, i32* %57, align 8
  %58 = load i32, i32* @QED_SPQ_MODE_EBLOCK, align 4
  %59 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %9, i32 0, i32 1
  store i32 %58, i32* %59, align 4
  %60 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %61 = load i32, i32* @ROCE_RAMROD_CREATE_QP, align 4
  %62 = load i32, i32* @PROTOCOLID_ROCE, align 4
  %63 = call i32 @qed_sp_init_request(%struct.qed_hwfn* %60, %struct.qed_spq_entry** %11, i32 %61, i32 %62, %struct.qed_sp_init_data* %9)
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %13, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %47
  br label %377

67:                                               ; preds = %47
  %68 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %11, align 8
  %69 = getelementptr inbounds %struct.qed_spq_entry, %struct.qed_spq_entry* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 0
  store %struct.roce_create_qp_resp_ramrod_data* %70, %struct.roce_create_qp_resp_ramrod_data** %6, align 8
  %71 = load %struct.roce_create_qp_resp_ramrod_data*, %struct.roce_create_qp_resp_ramrod_data** %6, align 8
  %72 = getelementptr inbounds %struct.roce_create_qp_resp_ramrod_data, %struct.roce_create_qp_resp_ramrod_data* %71, i32 0, i32 27
  store i64 0, i64* %72, align 8
  %73 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %74 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %73, i32 0, i32 34
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @qed_roce_mode_to_flavor(i32 %75)
  store i32 %76, i32* %10, align 4
  %77 = load %struct.roce_create_qp_resp_ramrod_data*, %struct.roce_create_qp_resp_ramrod_data** %6, align 8
  %78 = getelementptr inbounds %struct.roce_create_qp_resp_ramrod_data, %struct.roce_create_qp_resp_ramrod_data* %77, i32 0, i32 27
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* @ROCE_CREATE_QP_RESP_RAMROD_DATA_ROCE_FLAVOR, align 4
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @SET_FIELD(i64 %79, i32 %80, i32 %81)
  %83 = load %struct.roce_create_qp_resp_ramrod_data*, %struct.roce_create_qp_resp_ramrod_data** %6, align 8
  %84 = getelementptr inbounds %struct.roce_create_qp_resp_ramrod_data, %struct.roce_create_qp_resp_ramrod_data* %83, i32 0, i32 27
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* @ROCE_CREATE_QP_RESP_RAMROD_DATA_RDMA_RD_EN, align 4
  %87 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %88 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @SET_FIELD(i64 %85, i32 %86, i32 %89)
  %91 = load %struct.roce_create_qp_resp_ramrod_data*, %struct.roce_create_qp_resp_ramrod_data** %6, align 8
  %92 = getelementptr inbounds %struct.roce_create_qp_resp_ramrod_data, %struct.roce_create_qp_resp_ramrod_data* %91, i32 0, i32 27
  %93 = load i64, i64* %92, align 8
  %94 = load i32, i32* @ROCE_CREATE_QP_RESP_RAMROD_DATA_RDMA_WR_EN, align 4
  %95 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %96 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @SET_FIELD(i64 %93, i32 %94, i32 %97)
  %99 = load %struct.roce_create_qp_resp_ramrod_data*, %struct.roce_create_qp_resp_ramrod_data** %6, align 8
  %100 = getelementptr inbounds %struct.roce_create_qp_resp_ramrod_data, %struct.roce_create_qp_resp_ramrod_data* %99, i32 0, i32 27
  %101 = load i64, i64* %100, align 8
  %102 = load i32, i32* @ROCE_CREATE_QP_RESP_RAMROD_DATA_ATOMIC_EN, align 4
  %103 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %104 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @SET_FIELD(i64 %101, i32 %102, i32 %105)
  %107 = load %struct.roce_create_qp_resp_ramrod_data*, %struct.roce_create_qp_resp_ramrod_data** %6, align 8
  %108 = getelementptr inbounds %struct.roce_create_qp_resp_ramrod_data, %struct.roce_create_qp_resp_ramrod_data* %107, i32 0, i32 27
  %109 = load i64, i64* %108, align 8
  %110 = load i32, i32* @ROCE_CREATE_QP_RESP_RAMROD_DATA_E2E_FLOW_CONTROL_EN, align 4
  %111 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %112 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @SET_FIELD(i64 %109, i32 %110, i32 %113)
  %115 = load %struct.roce_create_qp_resp_ramrod_data*, %struct.roce_create_qp_resp_ramrod_data** %6, align 8
  %116 = getelementptr inbounds %struct.roce_create_qp_resp_ramrod_data, %struct.roce_create_qp_resp_ramrod_data* %115, i32 0, i32 27
  %117 = load i64, i64* %116, align 8
  %118 = load i32, i32* @ROCE_CREATE_QP_RESP_RAMROD_DATA_SRQ_FLG, align 4
  %119 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %120 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @SET_FIELD(i64 %117, i32 %118, i32 %121)
  %123 = load %struct.roce_create_qp_resp_ramrod_data*, %struct.roce_create_qp_resp_ramrod_data** %6, align 8
  %124 = getelementptr inbounds %struct.roce_create_qp_resp_ramrod_data, %struct.roce_create_qp_resp_ramrod_data* %123, i32 0, i32 27
  %125 = load i64, i64* %124, align 8
  %126 = load i32, i32* @ROCE_CREATE_QP_RESP_RAMROD_DATA_RESERVED_KEY_EN, align 4
  %127 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %128 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %127, i32 0, i32 6
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @SET_FIELD(i64 %125, i32 %126, i32 %129)
  %131 = load %struct.roce_create_qp_resp_ramrod_data*, %struct.roce_create_qp_resp_ramrod_data** %6, align 8
  %132 = getelementptr inbounds %struct.roce_create_qp_resp_ramrod_data, %struct.roce_create_qp_resp_ramrod_data* %131, i32 0, i32 27
  %133 = load i64, i64* %132, align 8
  %134 = load i32, i32* @ROCE_CREATE_QP_RESP_RAMROD_DATA_MIN_RNR_NAK_TIMER, align 4
  %135 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %136 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %135, i32 0, i32 7
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @SET_FIELD(i64 %133, i32 %134, i32 %137)
  %139 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %140 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %139, i32 0, i32 33
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.roce_create_qp_resp_ramrod_data*, %struct.roce_create_qp_resp_ramrod_data** %6, align 8
  %143 = getelementptr inbounds %struct.roce_create_qp_resp_ramrod_data, %struct.roce_create_qp_resp_ramrod_data* %142, i32 0, i32 26
  store i32 %141, i32* %143, align 8
  %144 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %145 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %144, i32 0, i32 32
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.roce_create_qp_resp_ramrod_data*, %struct.roce_create_qp_resp_ramrod_data** %6, align 8
  %148 = getelementptr inbounds %struct.roce_create_qp_resp_ramrod_data, %struct.roce_create_qp_resp_ramrod_data* %147, i32 0, i32 25
  store i32 %146, i32* %148, align 4
  %149 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %150 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %149, i32 0, i32 31
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.roce_create_qp_resp_ramrod_data*, %struct.roce_create_qp_resp_ramrod_data** %6, align 8
  %153 = getelementptr inbounds %struct.roce_create_qp_resp_ramrod_data, %struct.roce_create_qp_resp_ramrod_data* %152, i32 0, i32 24
  store i32 %151, i32* %153, align 8
  %154 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %155 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.roce_create_qp_resp_ramrod_data*, %struct.roce_create_qp_resp_ramrod_data** %6, align 8
  %158 = getelementptr inbounds %struct.roce_create_qp_resp_ramrod_data, %struct.roce_create_qp_resp_ramrod_data* %157, i32 0, i32 0
  store i32 %156, i32* %158, align 8
  %159 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %160 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %159, i32 0, i32 8
  %161 = load i32, i32* %160, align 8
  %162 = call i8* @cpu_to_le16(i32 %161)
  %163 = load %struct.roce_create_qp_resp_ramrod_data*, %struct.roce_create_qp_resp_ramrod_data** %6, align 8
  %164 = getelementptr inbounds %struct.roce_create_qp_resp_ramrod_data, %struct.roce_create_qp_resp_ramrod_data* %163, i32 0, i32 23
  store i8* %162, i8** %164, align 8
  %165 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %166 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %165, i32 0, i32 9
  %167 = load i32, i32* %166, align 4
  %168 = call i8* @cpu_to_le32(i32 %167)
  %169 = load %struct.roce_create_qp_resp_ramrod_data*, %struct.roce_create_qp_resp_ramrod_data** %6, align 8
  %170 = getelementptr inbounds %struct.roce_create_qp_resp_ramrod_data, %struct.roce_create_qp_resp_ramrod_data* %169, i32 0, i32 22
  store i8* %168, i8** %170, align 8
  %171 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %172 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %171, i32 0, i32 10
  %173 = load i32, i32* %172, align 8
  %174 = call i8* @cpu_to_le32(i32 %173)
  %175 = load %struct.roce_create_qp_resp_ramrod_data*, %struct.roce_create_qp_resp_ramrod_data** %6, align 8
  %176 = getelementptr inbounds %struct.roce_create_qp_resp_ramrod_data, %struct.roce_create_qp_resp_ramrod_data* %175, i32 0, i32 21
  store i8* %174, i8** %176, align 8
  %177 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %178 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %177, i32 0, i32 11
  %179 = load i32, i32* %178, align 4
  %180 = call i8* @cpu_to_le16(i32 %179)
  %181 = load %struct.roce_create_qp_resp_ramrod_data*, %struct.roce_create_qp_resp_ramrod_data** %6, align 8
  %182 = getelementptr inbounds %struct.roce_create_qp_resp_ramrod_data, %struct.roce_create_qp_resp_ramrod_data* %181, i32 0, i32 20
  store i8* %180, i8** %182, align 8
  %183 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %184 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %183, i32 0, i32 12
  %185 = load i32, i32* %184, align 8
  %186 = call i8* @cpu_to_le32(i32 %185)
  %187 = load %struct.roce_create_qp_resp_ramrod_data*, %struct.roce_create_qp_resp_ramrod_data** %6, align 8
  %188 = getelementptr inbounds %struct.roce_create_qp_resp_ramrod_data, %struct.roce_create_qp_resp_ramrod_data* %187, i32 0, i32 19
  store i8* %186, i8** %188, align 8
  %189 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %190 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %189, i32 0, i32 13
  %191 = load i32, i32* %190, align 4
  %192 = call i8* @cpu_to_le16(i32 %191)
  %193 = load %struct.roce_create_qp_resp_ramrod_data*, %struct.roce_create_qp_resp_ramrod_data** %6, align 8
  %194 = getelementptr inbounds %struct.roce_create_qp_resp_ramrod_data, %struct.roce_create_qp_resp_ramrod_data* %193, i32 0, i32 18
  store i8* %192, i8** %194, align 8
  %195 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %196 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %195, i32 0, i32 14
  %197 = load i32, i32* %196, align 8
  %198 = call i8* @cpu_to_le16(i32 %197)
  %199 = load %struct.roce_create_qp_resp_ramrod_data*, %struct.roce_create_qp_resp_ramrod_data** %6, align 8
  %200 = getelementptr inbounds %struct.roce_create_qp_resp_ramrod_data, %struct.roce_create_qp_resp_ramrod_data* %199, i32 0, i32 17
  store i8* %198, i8** %200, align 8
  %201 = load %struct.roce_create_qp_resp_ramrod_data*, %struct.roce_create_qp_resp_ramrod_data** %6, align 8
  %202 = getelementptr inbounds %struct.roce_create_qp_resp_ramrod_data, %struct.roce_create_qp_resp_ramrod_data* %201, i32 0, i32 16
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %205 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %204, i32 0, i32 30
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @DMA_REGPAIR_LE(i32 %203, i32 %206)
  %208 = load %struct.roce_create_qp_resp_ramrod_data*, %struct.roce_create_qp_resp_ramrod_data** %6, align 8
  %209 = getelementptr inbounds %struct.roce_create_qp_resp_ramrod_data, %struct.roce_create_qp_resp_ramrod_data* %208, i32 0, i32 15
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %212 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %211, i32 0, i32 20
  %213 = load i32, i32* %212, align 8
  %214 = call i32 @DMA_REGPAIR_LE(i32 %210, i32 %213)
  %215 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %216 = load %struct.roce_create_qp_resp_ramrod_data*, %struct.roce_create_qp_resp_ramrod_data** %6, align 8
  %217 = getelementptr inbounds %struct.roce_create_qp_resp_ramrod_data, %struct.roce_create_qp_resp_ramrod_data* %216, i32 0, i32 14
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.roce_create_qp_resp_ramrod_data*, %struct.roce_create_qp_resp_ramrod_data** %6, align 8
  %220 = getelementptr inbounds %struct.roce_create_qp_resp_ramrod_data, %struct.roce_create_qp_resp_ramrod_data* %219, i32 0, i32 13
  %221 = load i32, i32* %220, align 8
  %222 = call i32 @qed_rdma_copy_gids(%struct.qed_rdma_qp* %215, i32 %218, i32 %221)
  %223 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %224 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %223, i32 0, i32 29
  %225 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = call i8* @cpu_to_le32(i32 %226)
  %228 = load %struct.roce_create_qp_resp_ramrod_data*, %struct.roce_create_qp_resp_ramrod_data** %6, align 8
  %229 = getelementptr inbounds %struct.roce_create_qp_resp_ramrod_data, %struct.roce_create_qp_resp_ramrod_data* %228, i32 0, i32 12
  %230 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %229, i32 0, i32 1
  store i8* %227, i8** %230, align 8
  %231 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %232 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %231, i32 0, i32 29
  %233 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = call i8* @cpu_to_le32(i32 %234)
  %236 = load %struct.roce_create_qp_resp_ramrod_data*, %struct.roce_create_qp_resp_ramrod_data** %6, align 8
  %237 = getelementptr inbounds %struct.roce_create_qp_resp_ramrod_data, %struct.roce_create_qp_resp_ramrod_data* %236, i32 0, i32 12
  %238 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %237, i32 0, i32 0
  store i8* %235, i8** %238, align 8
  %239 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %240 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %239, i32 0, i32 28
  %241 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = call i8* @cpu_to_le32(i32 %242)
  %244 = load %struct.roce_create_qp_resp_ramrod_data*, %struct.roce_create_qp_resp_ramrod_data** %6, align 8
  %245 = getelementptr inbounds %struct.roce_create_qp_resp_ramrod_data, %struct.roce_create_qp_resp_ramrod_data* %244, i32 0, i32 11
  %246 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %245, i32 0, i32 1
  store i8* %243, i8** %246, align 8
  %247 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %248 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %247, i32 0, i32 28
  %249 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = call i8* @cpu_to_le32(i32 %250)
  %252 = load %struct.roce_create_qp_resp_ramrod_data*, %struct.roce_create_qp_resp_ramrod_data** %6, align 8
  %253 = getelementptr inbounds %struct.roce_create_qp_resp_ramrod_data, %struct.roce_create_qp_resp_ramrod_data* %252, i32 0, i32 11
  %254 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %253, i32 0, i32 0
  store i8* %251, i8** %254, align 8
  %255 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %256 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %255, i32 0, i32 2
  %257 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = shl i32 %258, 16
  %260 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %261 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %260, i32 0, i32 15
  %262 = load i32, i32* %261, align 4
  %263 = or i32 %259, %262
  %264 = call i8* @cpu_to_le32(i32 %263)
  %265 = load %struct.roce_create_qp_resp_ramrod_data*, %struct.roce_create_qp_resp_ramrod_data** %6, align 8
  %266 = getelementptr inbounds %struct.roce_create_qp_resp_ramrod_data, %struct.roce_create_qp_resp_ramrod_data* %265, i32 0, i32 10
  store i8* %264, i8** %266, align 8
  %267 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %268 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %269 = call i32 @qed_roce_get_qp_tc(%struct.qed_hwfn* %267, %struct.qed_rdma_qp* %268)
  store i32 %269, i32* %14, align 4
  %270 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %271 = load i32, i32* %14, align 4
  %272 = call i32 @qed_get_cm_pq_idx_ofld_mtc(%struct.qed_hwfn* %270, i32 %271)
  store i32 %272, i32* %7, align 4
  %273 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %274 = load i32, i32* %14, align 4
  %275 = call i32 @qed_get_cm_pq_idx_llt_mtc(%struct.qed_hwfn* %273, i32 %274)
  store i32 %275, i32* %8, align 4
  %276 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %277 = load i32, i32* @QED_MSG_SP, align 4
  %278 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %279 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %278, i32 0, i32 22
  %280 = load i64, i64* %279, align 8
  %281 = load i32, i32* %7, align 4
  %282 = load i32, i32* @CM_TX_PQ_BASE, align 4
  %283 = sub nsw i32 %281, %282
  %284 = load i32, i32* %8, align 4
  %285 = load i32, i32* @CM_TX_PQ_BASE, align 4
  %286 = sub nsw i32 %284, %285
  %287 = call i32 (%struct.qed_hwfn*, i32, i8*, i64, ...) @DP_VERBOSE(%struct.qed_hwfn* %276, i32 %277, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i64 %280, i32 %283, i32 %286)
  %288 = load i32, i32* %7, align 4
  %289 = call i8* @cpu_to_le16(i32 %288)
  %290 = load %struct.roce_create_qp_resp_ramrod_data*, %struct.roce_create_qp_resp_ramrod_data** %6, align 8
  %291 = getelementptr inbounds %struct.roce_create_qp_resp_ramrod_data, %struct.roce_create_qp_resp_ramrod_data* %290, i32 0, i32 9
  store i8* %289, i8** %291, align 8
  %292 = load i32, i32* %8, align 4
  %293 = call i8* @cpu_to_le16(i32 %292)
  %294 = load %struct.roce_create_qp_resp_ramrod_data*, %struct.roce_create_qp_resp_ramrod_data** %6, align 8
  %295 = getelementptr inbounds %struct.roce_create_qp_resp_ramrod_data, %struct.roce_create_qp_resp_ramrod_data* %294, i32 0, i32 8
  store i8* %293, i8** %295, align 8
  %296 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %297 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %296, i32 0, i32 16
  %298 = load i32, i32* %297, align 8
  %299 = call i8* @cpu_to_le16(i32 %298)
  %300 = load %struct.roce_create_qp_resp_ramrod_data*, %struct.roce_create_qp_resp_ramrod_data** %6, align 8
  %301 = getelementptr inbounds %struct.roce_create_qp_resp_ramrod_data, %struct.roce_create_qp_resp_ramrod_data* %300, i32 0, i32 7
  store i8* %299, i8** %301, align 8
  %302 = load %struct.roce_create_qp_resp_ramrod_data*, %struct.roce_create_qp_resp_ramrod_data** %6, align 8
  %303 = getelementptr inbounds %struct.roce_create_qp_resp_ramrod_data, %struct.roce_create_qp_resp_ramrod_data* %302, i32 0, i32 6
  %304 = load i32, i32* %303, align 8
  %305 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %306 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %305, i32 0, i32 27
  %307 = load i32, i32* %306, align 8
  %308 = call i32 @qed_rdma_set_fw_mac(i32 %304, i32 %307)
  %309 = load %struct.roce_create_qp_resp_ramrod_data*, %struct.roce_create_qp_resp_ramrod_data** %6, align 8
  %310 = getelementptr inbounds %struct.roce_create_qp_resp_ramrod_data, %struct.roce_create_qp_resp_ramrod_data* %309, i32 0, i32 5
  %311 = load i32, i32* %310, align 4
  %312 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %313 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %312, i32 0, i32 26
  %314 = load i32, i32* %313, align 4
  %315 = call i32 @qed_rdma_set_fw_mac(i32 %311, i32 %314)
  %316 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %317 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %316, i32 0, i32 25
  %318 = load i32, i32* %317, align 8
  %319 = load %struct.roce_create_qp_resp_ramrod_data*, %struct.roce_create_qp_resp_ramrod_data** %6, align 8
  %320 = getelementptr inbounds %struct.roce_create_qp_resp_ramrod_data, %struct.roce_create_qp_resp_ramrod_data* %319, i32 0, i32 4
  store i32 %318, i32* %320, align 8
  %321 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %322 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %321, i32 0, i32 17
  %323 = load i32, i32* %322, align 4
  %324 = call i8* @cpu_to_le16(i32 %323)
  %325 = load %struct.roce_create_qp_resp_ramrod_data*, %struct.roce_create_qp_resp_ramrod_data** %6, align 8
  %326 = getelementptr inbounds %struct.roce_create_qp_resp_ramrod_data, %struct.roce_create_qp_resp_ramrod_data* %325, i32 0, i32 3
  store i8* %324, i8** %326, align 8
  %327 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %328 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %327, i32 0, i32 18
  %329 = load i32, i32* %328, align 8
  %330 = call i8* @cpu_to_le16(i32 %329)
  %331 = load %struct.roce_create_qp_resp_ramrod_data*, %struct.roce_create_qp_resp_ramrod_data** %6, align 8
  %332 = getelementptr inbounds %struct.roce_create_qp_resp_ramrod_data, %struct.roce_create_qp_resp_ramrod_data* %331, i32 0, i32 2
  %333 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %332, i32 0, i32 1
  store i8* %330, i8** %333, align 8
  %334 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %335 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %334, i32 0, i32 2
  %336 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 8
  %338 = call i8* @cpu_to_le16(i32 %337)
  %339 = load %struct.roce_create_qp_resp_ramrod_data*, %struct.roce_create_qp_resp_ramrod_data** %6, align 8
  %340 = getelementptr inbounds %struct.roce_create_qp_resp_ramrod_data, %struct.roce_create_qp_resp_ramrod_data* %339, i32 0, i32 2
  %341 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %340, i32 0, i32 0
  store i8* %338, i8** %341, align 8
  %342 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %343 = load i32, i32* @QED_RDMA_STATS_QUEUE, align 4
  %344 = call i64 @RESC_START(%struct.qed_hwfn* %342, i32 %343)
  %345 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %346 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %345, i32 0, i32 24
  %347 = load i64, i64* %346, align 8
  %348 = add nsw i64 %344, %347
  %349 = load %struct.roce_create_qp_resp_ramrod_data*, %struct.roce_create_qp_resp_ramrod_data** %6, align 8
  %350 = getelementptr inbounds %struct.roce_create_qp_resp_ramrod_data, %struct.roce_create_qp_resp_ramrod_data* %349, i32 0, i32 1
  store i64 %348, i64* %350, align 8
  %351 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %352 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %11, align 8
  %353 = call i32 @qed_spq_post(%struct.qed_hwfn* %351, %struct.qed_spq_entry* %352, i32* null)
  store i32 %353, i32* %13, align 4
  %354 = load i32, i32* %13, align 4
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %357

356:                                              ; preds = %67
  br label %377

357:                                              ; preds = %67
  %358 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %359 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %358, i32 0, i32 19
  store i32 1, i32* %359, align 4
  %360 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %361 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %360, i32 0, i32 23
  store i64 0, i64* %361, align 8
  %362 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %363 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %362, i32 0, i32 1
  %364 = load %struct.TYPE_13__*, %struct.TYPE_13__** %363, align 8
  %365 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 4
  store i32 %366, i32* %12, align 4
  %367 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %368 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %369 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %368, i32 0, i32 22
  %370 = load i64, i64* %369, align 8
  %371 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %372 = load i32, i32* %12, align 4
  %373 = call i64 @qed_cxt_get_proto_cid_start(%struct.qed_hwfn* %371, i32 %372)
  %374 = sub nsw i64 %370, %373
  %375 = call i32 @qed_roce_set_real_cid(%struct.qed_hwfn* %367, i64 %374)
  %376 = load i32, i32* %13, align 4
  store i32 %376, i32* %3, align 4
  br label %400

377:                                              ; preds = %356, %66
  %378 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %379 = load i32, i32* %13, align 4
  %380 = call i32 @DP_NOTICE(%struct.qed_hwfn* %378, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %379)
  %381 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %382 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %381, i32 0, i32 0
  %383 = load %struct.TYPE_15__*, %struct.TYPE_15__** %382, align 8
  %384 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %383, i32 0, i32 0
  %385 = load %struct.TYPE_14__*, %struct.TYPE_14__** %384, align 8
  %386 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %385, i32 0, i32 0
  %387 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %388 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %387, i32 0, i32 0
  %389 = load i32, i32* %388, align 8
  %390 = load i32, i32* @RDMA_RING_PAGE_SIZE, align 4
  %391 = mul nsw i32 %389, %390
  %392 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %393 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %392, i32 0, i32 21
  %394 = load i32, i32* %393, align 4
  %395 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %396 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %395, i32 0, i32 20
  %397 = load i32, i32* %396, align 8
  %398 = call i32 @dma_free_coherent(i32* %386, i32 %391, i32 %394, i32 %397)
  %399 = load i32, i32* %13, align 4
  store i32 %399, i32* %3, align 4
  br label %400

400:                                              ; preds = %377, %357, %40
  %401 = load i32, i32* %3, align 4
  ret i32 %401
}

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i64, ...) #1

declare dso_local i32 @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*, i32) #1

declare dso_local i32 @memset(%struct.qed_sp_init_data*, i32, i32) #1

declare dso_local i32 @qed_sp_init_request(%struct.qed_hwfn*, %struct.qed_spq_entry**, i32, i32, %struct.qed_sp_init_data*) #1

declare dso_local i32 @qed_roce_mode_to_flavor(i32) #1

declare dso_local i32 @SET_FIELD(i64, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @DMA_REGPAIR_LE(i32, i32) #1

declare dso_local i32 @qed_rdma_copy_gids(%struct.qed_rdma_qp*, i32, i32) #1

declare dso_local i32 @qed_roce_get_qp_tc(%struct.qed_hwfn*, %struct.qed_rdma_qp*) #1

declare dso_local i32 @qed_get_cm_pq_idx_ofld_mtc(%struct.qed_hwfn*, i32) #1

declare dso_local i32 @qed_get_cm_pq_idx_llt_mtc(%struct.qed_hwfn*, i32) #1

declare dso_local i32 @qed_rdma_set_fw_mac(i32, i32) #1

declare dso_local i64 @RESC_START(%struct.qed_hwfn*, i32) #1

declare dso_local i32 @qed_spq_post(%struct.qed_hwfn*, %struct.qed_spq_entry*, i32*) #1

declare dso_local i32 @qed_roce_set_real_cid(%struct.qed_hwfn*, i64) #1

declare dso_local i64 @qed_cxt_get_proto_cid_start(%struct.qed_hwfn*, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
