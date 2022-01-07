; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_iwarp.c_qed_iwarp_create_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_iwarp.c_qed_iwarp_create_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_14__*, %struct.TYPE_12__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.qed_rdma_qp = type { i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_11__, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.qed_rdma_create_qp_out_params = type { i32, i32, i32*, i32* }
%struct.iwarp_create_qp_ramrod_data = type { i8*, i8*, i8*, i8*, i8*, %struct.TYPE_10__, %struct.TYPE_9__, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i8*, i8* }
%struct.TYPE_9__ = type { i8*, i8* }
%struct.qed_sp_init_data = type { i32, i32, i32 }
%struct.qed_spq_entry = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.iwarp_create_qp_ramrod_data }

@IWARP_SHARED_QUEUE_PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IWARP_SHARED_QUEUE_PAGE_SQ_PBL_OFFSET = common dso_local global i32 0, align 4
@IWARP_SHARED_QUEUE_PAGE_RQ_PBL_OFFSET = common dso_local global i32 0, align 4
@QED_SPQ_MODE_EBLOCK = common dso_local global i32 0, align 4
@IWARP_RAMROD_CMD_ID_CREATE_QP = common dso_local global i32 0, align 4
@PROTOCOLID_IWARP = common dso_local global i32 0, align 4
@IWARP_CREATE_QP_RAMROD_DATA_FMR_AND_RESERVED_EN = common dso_local global i32 0, align 4
@IWARP_CREATE_QP_RAMROD_DATA_SIGNALED_COMP = common dso_local global i32 0, align 4
@IWARP_CREATE_QP_RAMROD_DATA_RDMA_RD_EN = common dso_local global i32 0, align 4
@IWARP_CREATE_QP_RAMROD_DATA_RDMA_WR_EN = common dso_local global i32 0, align 4
@IWARP_CREATE_QP_RAMROD_DATA_ATOMIC_EN = common dso_local global i32 0, align 4
@IWARP_CREATE_QP_RAMROD_DATA_SRQ_FLG = common dso_local global i32 0, align 4
@PQ_FLAGS_OFLD = common dso_local global i32 0, align 4
@PQ_FLAGS_ACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_iwarp_create_qp(%struct.qed_hwfn* %0, %struct.qed_rdma_qp* %1, %struct.qed_rdma_create_qp_out_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca %struct.qed_rdma_qp*, align 8
  %7 = alloca %struct.qed_rdma_create_qp_out_params*, align 8
  %8 = alloca %struct.iwarp_create_qp_ramrod_data*, align 8
  %9 = alloca %struct.qed_sp_init_data, align 4
  %10 = alloca %struct.qed_spq_entry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %5, align 8
  store %struct.qed_rdma_qp* %1, %struct.qed_rdma_qp** %6, align 8
  store %struct.qed_rdma_create_qp_out_params* %2, %struct.qed_rdma_create_qp_out_params** %7, align 8
  %14 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %15 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %14, i32 0, i32 0
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load i32, i32* @IWARP_SHARED_QUEUE_PAGE_SIZE, align 4
  %21 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %6, align 8
  %22 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %21, i32 0, i32 0
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i64 @dma_alloc_coherent(i32* %19, i32 %20, i32* %22, i32 %23)
  %25 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %6, align 8
  %26 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %25, i32 0, i32 6
  store i64 %24, i64* %26, align 8
  %27 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %6, align 8
  %28 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %27, i32 0, i32 6
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %3
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %266

34:                                               ; preds = %3
  %35 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %6, align 8
  %36 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %35, i32 0, i32 6
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i32*
  %39 = load i32, i32* @IWARP_SHARED_QUEUE_PAGE_SQ_PBL_OFFSET, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load %struct.qed_rdma_create_qp_out_params*, %struct.qed_rdma_create_qp_out_params** %7, align 8
  %43 = getelementptr inbounds %struct.qed_rdma_create_qp_out_params, %struct.qed_rdma_create_qp_out_params* %42, i32 0, i32 3
  store i32* %41, i32** %43, align 8
  %44 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %6, align 8
  %45 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @IWARP_SHARED_QUEUE_PAGE_SQ_PBL_OFFSET, align 4
  %48 = add nsw i32 %46, %47
  %49 = load %struct.qed_rdma_create_qp_out_params*, %struct.qed_rdma_create_qp_out_params** %7, align 8
  %50 = getelementptr inbounds %struct.qed_rdma_create_qp_out_params, %struct.qed_rdma_create_qp_out_params* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %6, align 8
  %52 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %51, i32 0, i32 6
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to i32*
  %55 = load i32, i32* @IWARP_SHARED_QUEUE_PAGE_RQ_PBL_OFFSET, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load %struct.qed_rdma_create_qp_out_params*, %struct.qed_rdma_create_qp_out_params** %7, align 8
  %59 = getelementptr inbounds %struct.qed_rdma_create_qp_out_params, %struct.qed_rdma_create_qp_out_params* %58, i32 0, i32 2
  store i32* %57, i32** %59, align 8
  %60 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %6, align 8
  %61 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @IWARP_SHARED_QUEUE_PAGE_RQ_PBL_OFFSET, align 4
  %64 = add nsw i32 %62, %63
  %65 = load %struct.qed_rdma_create_qp_out_params*, %struct.qed_rdma_create_qp_out_params** %7, align 8
  %66 = getelementptr inbounds %struct.qed_rdma_create_qp_out_params, %struct.qed_rdma_create_qp_out_params* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %68 = call i32 @qed_iwarp_alloc_cid(%struct.qed_hwfn* %67, i64* %12)
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %13, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %34
  br label %250

72:                                               ; preds = %34
  %73 = load i64, i64* %12, align 8
  %74 = trunc i64 %73 to i32
  %75 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %6, align 8
  %76 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = call i32 @memset(%struct.qed_sp_init_data* %9, i32 0, i32 12)
  %78 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %79 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %9, i32 0, i32 0
  store i32 %81, i32* %82, align 4
  %83 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %6, align 8
  %84 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %9, i32 0, i32 1
  store i32 %85, i32* %86, align 4
  %87 = load i32, i32* @QED_SPQ_MODE_EBLOCK, align 4
  %88 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %9, i32 0, i32 2
  store i32 %87, i32* %88, align 4
  %89 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %90 = load i32, i32* @IWARP_RAMROD_CMD_ID_CREATE_QP, align 4
  %91 = load i32, i32* @PROTOCOLID_IWARP, align 4
  %92 = call i32 @qed_sp_init_request(%struct.qed_hwfn* %89, %struct.qed_spq_entry** %10, i32 %90, i32 %91, %struct.qed_sp_init_data* %9)
  store i32 %92, i32* %13, align 4
  %93 = load i32, i32* %13, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %72
  br label %246

96:                                               ; preds = %72
  %97 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %10, align 8
  %98 = getelementptr inbounds %struct.qed_spq_entry, %struct.qed_spq_entry* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  store %struct.iwarp_create_qp_ramrod_data* %99, %struct.iwarp_create_qp_ramrod_data** %8, align 8
  %100 = load %struct.iwarp_create_qp_ramrod_data*, %struct.iwarp_create_qp_ramrod_data** %8, align 8
  %101 = getelementptr inbounds %struct.iwarp_create_qp_ramrod_data, %struct.iwarp_create_qp_ramrod_data* %100, i32 0, i32 10
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @IWARP_CREATE_QP_RAMROD_DATA_FMR_AND_RESERVED_EN, align 4
  %104 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %6, align 8
  %105 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %104, i32 0, i32 16
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @SET_FIELD(i32 %102, i32 %103, i32 %106)
  %108 = load %struct.iwarp_create_qp_ramrod_data*, %struct.iwarp_create_qp_ramrod_data** %8, align 8
  %109 = getelementptr inbounds %struct.iwarp_create_qp_ramrod_data, %struct.iwarp_create_qp_ramrod_data* %108, i32 0, i32 10
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @IWARP_CREATE_QP_RAMROD_DATA_SIGNALED_COMP, align 4
  %112 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %6, align 8
  %113 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %112, i32 0, i32 15
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @SET_FIELD(i32 %110, i32 %111, i32 %114)
  %116 = load %struct.iwarp_create_qp_ramrod_data*, %struct.iwarp_create_qp_ramrod_data** %8, align 8
  %117 = getelementptr inbounds %struct.iwarp_create_qp_ramrod_data, %struct.iwarp_create_qp_ramrod_data* %116, i32 0, i32 10
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @IWARP_CREATE_QP_RAMROD_DATA_RDMA_RD_EN, align 4
  %120 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %6, align 8
  %121 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %120, i32 0, i32 14
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @SET_FIELD(i32 %118, i32 %119, i32 %122)
  %124 = load %struct.iwarp_create_qp_ramrod_data*, %struct.iwarp_create_qp_ramrod_data** %8, align 8
  %125 = getelementptr inbounds %struct.iwarp_create_qp_ramrod_data, %struct.iwarp_create_qp_ramrod_data* %124, i32 0, i32 10
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @IWARP_CREATE_QP_RAMROD_DATA_RDMA_WR_EN, align 4
  %128 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %6, align 8
  %129 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %128, i32 0, i32 13
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @SET_FIELD(i32 %126, i32 %127, i32 %130)
  %132 = load %struct.iwarp_create_qp_ramrod_data*, %struct.iwarp_create_qp_ramrod_data** %8, align 8
  %133 = getelementptr inbounds %struct.iwarp_create_qp_ramrod_data, %struct.iwarp_create_qp_ramrod_data* %132, i32 0, i32 10
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @IWARP_CREATE_QP_RAMROD_DATA_ATOMIC_EN, align 4
  %136 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %6, align 8
  %137 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %136, i32 0, i32 12
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @SET_FIELD(i32 %134, i32 %135, i32 %138)
  %140 = load %struct.iwarp_create_qp_ramrod_data*, %struct.iwarp_create_qp_ramrod_data** %8, align 8
  %141 = getelementptr inbounds %struct.iwarp_create_qp_ramrod_data, %struct.iwarp_create_qp_ramrod_data* %140, i32 0, i32 10
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @IWARP_CREATE_QP_RAMROD_DATA_SRQ_FLG, align 4
  %144 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %6, align 8
  %145 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %144, i32 0, i32 11
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @SET_FIELD(i32 %142, i32 %143, i32 %146)
  %148 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %6, align 8
  %149 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %148, i32 0, i32 10
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.iwarp_create_qp_ramrod_data*, %struct.iwarp_create_qp_ramrod_data** %8, align 8
  %152 = getelementptr inbounds %struct.iwarp_create_qp_ramrod_data, %struct.iwarp_create_qp_ramrod_data* %151, i32 0, i32 9
  store i32 %150, i32* %152, align 8
  %153 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %6, align 8
  %154 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %153, i32 0, i32 9
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.iwarp_create_qp_ramrod_data*, %struct.iwarp_create_qp_ramrod_data** %8, align 8
  %157 = getelementptr inbounds %struct.iwarp_create_qp_ramrod_data, %struct.iwarp_create_qp_ramrod_data* %156, i32 0, i32 8
  store i32 %155, i32* %157, align 4
  %158 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %6, align 8
  %159 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %158, i32 0, i32 8
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.iwarp_create_qp_ramrod_data*, %struct.iwarp_create_qp_ramrod_data** %8, align 8
  %162 = getelementptr inbounds %struct.iwarp_create_qp_ramrod_data, %struct.iwarp_create_qp_ramrod_data* %161, i32 0, i32 7
  store i32 %160, i32* %162, align 8
  %163 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %6, align 8
  %164 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = call i8* @cpu_to_le16(i32 %165)
  %167 = load %struct.iwarp_create_qp_ramrod_data*, %struct.iwarp_create_qp_ramrod_data** %8, align 8
  %168 = getelementptr inbounds %struct.iwarp_create_qp_ramrod_data, %struct.iwarp_create_qp_ramrod_data* %167, i32 0, i32 6
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 1
  store i8* %166, i8** %169, align 8
  %170 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %171 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = call i8* @cpu_to_le16(i32 %173)
  %175 = load %struct.iwarp_create_qp_ramrod_data*, %struct.iwarp_create_qp_ramrod_data** %8, align 8
  %176 = getelementptr inbounds %struct.iwarp_create_qp_ramrod_data, %struct.iwarp_create_qp_ramrod_data* %175, i32 0, i32 6
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 0
  store i8* %174, i8** %177, align 8
  %178 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %6, align 8
  %179 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %178, i32 0, i32 7
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = call i8* @cpu_to_le32(i32 %181)
  %183 = load %struct.iwarp_create_qp_ramrod_data*, %struct.iwarp_create_qp_ramrod_data** %8, align 8
  %184 = getelementptr inbounds %struct.iwarp_create_qp_ramrod_data, %struct.iwarp_create_qp_ramrod_data* %183, i32 0, i32 5
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 1
  store i8* %182, i8** %185, align 8
  %186 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %6, align 8
  %187 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %186, i32 0, i32 7
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = call i8* @cpu_to_le32(i32 %189)
  %191 = load %struct.iwarp_create_qp_ramrod_data*, %struct.iwarp_create_qp_ramrod_data** %8, align 8
  %192 = getelementptr inbounds %struct.iwarp_create_qp_ramrod_data, %struct.iwarp_create_qp_ramrod_data* %191, i32 0, i32 5
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 0
  store i8* %190, i8** %193, align 8
  %194 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %195 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = shl i32 %197, 16
  %199 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %6, align 8
  %200 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 4
  %202 = or i32 %198, %201
  %203 = call i8* @cpu_to_le32(i32 %202)
  %204 = load %struct.iwarp_create_qp_ramrod_data*, %struct.iwarp_create_qp_ramrod_data** %8, align 8
  %205 = getelementptr inbounds %struct.iwarp_create_qp_ramrod_data, %struct.iwarp_create_qp_ramrod_data* %204, i32 0, i32 4
  store i8* %203, i8** %205, align 8
  %206 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %207 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = shl i32 %209, 16
  %211 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %6, align 8
  %212 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %211, i32 0, i32 4
  %213 = load i32, i32* %212, align 8
  %214 = or i32 %210, %213
  %215 = call i8* @cpu_to_le32(i32 %214)
  %216 = load %struct.iwarp_create_qp_ramrod_data*, %struct.iwarp_create_qp_ramrod_data** %8, align 8
  %217 = getelementptr inbounds %struct.iwarp_create_qp_ramrod_data, %struct.iwarp_create_qp_ramrod_data* %216, i32 0, i32 3
  store i8* %215, i8** %217, align 8
  %218 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %6, align 8
  %219 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %218, i32 0, i32 5
  %220 = load i32, i32* %219, align 4
  %221 = call i8* @cpu_to_le16(i32 %220)
  %222 = load %struct.iwarp_create_qp_ramrod_data*, %struct.iwarp_create_qp_ramrod_data** %8, align 8
  %223 = getelementptr inbounds %struct.iwarp_create_qp_ramrod_data, %struct.iwarp_create_qp_ramrod_data* %222, i32 0, i32 2
  store i8* %221, i8** %223, align 8
  %224 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %225 = load i32, i32* @PQ_FLAGS_OFLD, align 4
  %226 = call i32 @qed_get_cm_pq_idx(%struct.qed_hwfn* %224, i32 %225)
  store i32 %226, i32* %11, align 4
  %227 = load i32, i32* %11, align 4
  %228 = call i8* @cpu_to_le16(i32 %227)
  %229 = load %struct.iwarp_create_qp_ramrod_data*, %struct.iwarp_create_qp_ramrod_data** %8, align 8
  %230 = getelementptr inbounds %struct.iwarp_create_qp_ramrod_data, %struct.iwarp_create_qp_ramrod_data* %229, i32 0, i32 1
  store i8* %228, i8** %230, align 8
  %231 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %232 = load i32, i32* @PQ_FLAGS_ACK, align 4
  %233 = call i32 @qed_get_cm_pq_idx(%struct.qed_hwfn* %231, i32 %232)
  store i32 %233, i32* %11, align 4
  %234 = load i32, i32* %11, align 4
  %235 = call i8* @cpu_to_le16(i32 %234)
  %236 = load %struct.iwarp_create_qp_ramrod_data*, %struct.iwarp_create_qp_ramrod_data** %8, align 8
  %237 = getelementptr inbounds %struct.iwarp_create_qp_ramrod_data, %struct.iwarp_create_qp_ramrod_data* %236, i32 0, i32 0
  store i8* %235, i8** %237, align 8
  %238 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %239 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %10, align 8
  %240 = call i32 @qed_spq_post(%struct.qed_hwfn* %238, %struct.qed_spq_entry* %239, i32* null)
  store i32 %240, i32* %13, align 4
  %241 = load i32, i32* %13, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %96
  br label %246

244:                                              ; preds = %96
  %245 = load i32, i32* %13, align 4
  store i32 %245, i32* %4, align 4
  br label %266

246:                                              ; preds = %243, %95
  %247 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %248 = load i64, i64* %12, align 8
  %249 = call i32 @qed_iwarp_cid_cleaned(%struct.qed_hwfn* %247, i64 %248)
  br label %250

250:                                              ; preds = %246, %71
  %251 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %252 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %251, i32 0, i32 0
  %253 = load %struct.TYPE_14__*, %struct.TYPE_14__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %253, i32 0, i32 0
  %255 = load %struct.TYPE_13__*, %struct.TYPE_13__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %255, i32 0, i32 0
  %257 = load i32, i32* @IWARP_SHARED_QUEUE_PAGE_SIZE, align 4
  %258 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %6, align 8
  %259 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %258, i32 0, i32 6
  %260 = load i64, i64* %259, align 8
  %261 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %6, align 8
  %262 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = call i32 @dma_free_coherent(i32* %256, i32 %257, i64 %260, i32 %263)
  %265 = load i32, i32* %13, align 4
  store i32 %265, i32* %4, align 4
  br label %266

266:                                              ; preds = %250, %244, %31
  %267 = load i32, i32* %4, align 4
  ret i32 %267
}

declare dso_local i64 @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @qed_iwarp_alloc_cid(%struct.qed_hwfn*, i64*) #1

declare dso_local i32 @memset(%struct.qed_sp_init_data*, i32, i32) #1

declare dso_local i32 @qed_sp_init_request(%struct.qed_hwfn*, %struct.qed_spq_entry**, i32, i32, %struct.qed_sp_init_data*) #1

declare dso_local i32 @SET_FIELD(i32, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @qed_get_cm_pq_idx(%struct.qed_hwfn*, i32) #1

declare dso_local i32 @qed_spq_post(%struct.qed_hwfn*, %struct.qed_spq_entry*, i32*) #1

declare dso_local i32 @qed_iwarp_cid_cleaned(%struct.qed_hwfn*, i64) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
