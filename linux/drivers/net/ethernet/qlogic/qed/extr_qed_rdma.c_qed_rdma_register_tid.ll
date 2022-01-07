; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_rdma.c_qed_rdma_register_tid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_rdma.c_qed_rdma_register_tid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_rdma_register_tid_in_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i64, i32, i32, i32, i32 }
%struct.qed_hwfn = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.rdma_register_tid_ramrod_data = type { %struct.TYPE_8__, i64, %struct.TYPE_8__, %struct.TYPE_8__, i32, i64, i32, i32, i8*, i64, i64 }
%struct.TYPE_8__ = type { i8*, i64 }
%struct.qed_sp_init_data = type { i32, i32 }
%struct.qed_spq_entry = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.rdma_register_tid_ramrod_data }

@QED_MSG_RDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"itid = %08x\0A\00", align 1
@QED_SPQ_MODE_EBLOCK = common dso_local global i32 0, align 4
@RDMA_RAMROD_REGISTER_MR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"rc = %d\0A\00", align 1
@RDMA_REGISTER_TID_RAMROD_DATA_TWO_LEVEL_PBL = common dso_local global i32 0, align 4
@RDMA_REGISTER_TID_RAMROD_DATA_ZERO_BASED = common dso_local global i32 0, align 4
@RDMA_REGISTER_TID_RAMROD_DATA_PHY_MR = common dso_local global i32 0, align 4
@RDMA_REGISTER_TID_RAMROD_DATA_PAGE_SIZE_LOG = common dso_local global i32 0, align 4
@RDMA_REGISTER_TID_RAMROD_DATA_REMOTE_READ = common dso_local global i32 0, align 4
@RDMA_REGISTER_TID_RAMROD_DATA_REMOTE_WRITE = common dso_local global i32 0, align 4
@RDMA_REGISTER_TID_RAMROD_DATA_REMOTE_ATOMIC = common dso_local global i32 0, align 4
@RDMA_REGISTER_TID_RAMROD_DATA_LOCAL_WRITE = common dso_local global i32 0, align 4
@RDMA_REGISTER_TID_RAMROD_DATA_LOCAL_READ = common dso_local global i32 0, align 4
@RDMA_REGISTER_TID_RAMROD_DATA_ENABLE_MW_BIND = common dso_local global i32 0, align 4
@RDMA_REGISTER_TID_RAMROD_DATA_PBL_PAGE_SIZE_LOG = common dso_local global i32 0, align 4
@RDMA_REGISTER_TID_RAMROD_DATA_DMA_MR = common dso_local global i32 0, align 4
@RDMA_TID_REGISTERED_MR = common dso_local global i32 0, align 4
@RDMA_TID_FMR = common dso_local global i32 0, align 4
@RDMA_TID_MW = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RDMA_REGISTER_TID_RAMROD_DATA_TID_TYPE = common dso_local global i32 0, align 4
@RDMA_REGISTER_TID_RAMROD_DATA_DIF_ON_HOST_FLG = common dso_local global i32 0, align 4
@RDMA_RETURN_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"fw_return_code = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Register TID, rc = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.qed_rdma_register_tid_in_params*)* @qed_rdma_register_tid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_rdma_register_tid(i8* %0, %struct.qed_rdma_register_tid_in_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.qed_rdma_register_tid_in_params*, align 8
  %6 = alloca %struct.qed_hwfn*, align 8
  %7 = alloca %struct.rdma_register_tid_ramrod_data*, align 8
  %8 = alloca %struct.qed_sp_init_data, align 4
  %9 = alloca %struct.qed_spq_entry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.qed_rdma_register_tid_in_params* %1, %struct.qed_rdma_register_tid_in_params** %5, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.qed_hwfn*
  store %struct.qed_hwfn* %14, %struct.qed_hwfn** %6, align 8
  %15 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %16 = load i32, i32* @QED_MSG_RDMA, align 4
  %17 = load %struct.qed_rdma_register_tid_in_params*, %struct.qed_rdma_register_tid_in_params** %5, align 8
  %18 = getelementptr inbounds %struct.qed_rdma_register_tid_in_params, %struct.qed_rdma_register_tid_in_params* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %15, i32 %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = call i32 @memset(%struct.qed_sp_init_data* %8, i32 0, i32 8)
  %22 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %23 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %8, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* @QED_SPQ_MODE_EBLOCK, align 4
  %28 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %8, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %30 = load i32, i32* @RDMA_RAMROD_REGISTER_MR, align 4
  %31 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %32 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @qed_sp_init_request(%struct.qed_hwfn* %29, %struct.qed_spq_entry** %9, i32 %30, i32 %35, %struct.qed_sp_init_data* %8)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %2
  %40 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %41 = load i32, i32* @QED_MSG_RDMA, align 4
  %42 = load i32, i32* %12, align 4
  %43 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %40, i32 %41, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* %12, align 4
  store i32 %44, i32* %3, align 4
  br label %322

45:                                               ; preds = %2
  %46 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %47 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %46, i32 0, i32 0
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.qed_rdma_register_tid_in_params*, %struct.qed_rdma_register_tid_in_params** %5, align 8
  %52 = getelementptr inbounds %struct.qed_rdma_register_tid_in_params, %struct.qed_rdma_register_tid_in_params* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = icmp slt i64 %50, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %45
  %57 = load %struct.qed_rdma_register_tid_in_params*, %struct.qed_rdma_register_tid_in_params** %5, align 8
  %58 = getelementptr inbounds %struct.qed_rdma_register_tid_in_params, %struct.qed_rdma_register_tid_in_params* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %62 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %61, i32 0, i32 0
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  store i64 %60, i64* %64, align 8
  br label %65

65:                                               ; preds = %56, %45
  %66 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %9, align 8
  %67 = getelementptr inbounds %struct.qed_spq_entry, %struct.qed_spq_entry* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  store %struct.rdma_register_tid_ramrod_data* %68, %struct.rdma_register_tid_ramrod_data** %7, align 8
  %69 = load %struct.rdma_register_tid_ramrod_data*, %struct.rdma_register_tid_ramrod_data** %7, align 8
  %70 = getelementptr inbounds %struct.rdma_register_tid_ramrod_data, %struct.rdma_register_tid_ramrod_data* %69, i32 0, i32 10
  store i64 0, i64* %70, align 8
  %71 = load %struct.rdma_register_tid_ramrod_data*, %struct.rdma_register_tid_ramrod_data** %7, align 8
  %72 = getelementptr inbounds %struct.rdma_register_tid_ramrod_data, %struct.rdma_register_tid_ramrod_data* %71, i32 0, i32 10
  %73 = load i64, i64* %72, align 8
  %74 = load i32, i32* @RDMA_REGISTER_TID_RAMROD_DATA_TWO_LEVEL_PBL, align 4
  %75 = load %struct.qed_rdma_register_tid_in_params*, %struct.qed_rdma_register_tid_in_params** %5, align 8
  %76 = getelementptr inbounds %struct.qed_rdma_register_tid_in_params, %struct.qed_rdma_register_tid_in_params* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @SET_FIELD(i64 %73, i32 %74, i32 %77)
  %79 = load %struct.rdma_register_tid_ramrod_data*, %struct.rdma_register_tid_ramrod_data** %7, align 8
  %80 = getelementptr inbounds %struct.rdma_register_tid_ramrod_data, %struct.rdma_register_tid_ramrod_data* %79, i32 0, i32 10
  %81 = load i64, i64* %80, align 8
  %82 = load i32, i32* @RDMA_REGISTER_TID_RAMROD_DATA_ZERO_BASED, align 4
  %83 = load %struct.qed_rdma_register_tid_in_params*, %struct.qed_rdma_register_tid_in_params** %5, align 8
  %84 = getelementptr inbounds %struct.qed_rdma_register_tid_in_params, %struct.qed_rdma_register_tid_in_params* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @SET_FIELD(i64 %81, i32 %82, i32 %85)
  %87 = load %struct.rdma_register_tid_ramrod_data*, %struct.rdma_register_tid_ramrod_data** %7, align 8
  %88 = getelementptr inbounds %struct.rdma_register_tid_ramrod_data, %struct.rdma_register_tid_ramrod_data* %87, i32 0, i32 10
  %89 = load i64, i64* %88, align 8
  %90 = load i32, i32* @RDMA_REGISTER_TID_RAMROD_DATA_PHY_MR, align 4
  %91 = load %struct.qed_rdma_register_tid_in_params*, %struct.qed_rdma_register_tid_in_params** %5, align 8
  %92 = getelementptr inbounds %struct.qed_rdma_register_tid_in_params, %struct.qed_rdma_register_tid_in_params* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @SET_FIELD(i64 %89, i32 %90, i32 %93)
  %95 = load %struct.qed_rdma_register_tid_in_params*, %struct.qed_rdma_register_tid_in_params** %5, align 8
  %96 = getelementptr inbounds %struct.qed_rdma_register_tid_in_params, %struct.qed_rdma_register_tid_in_params* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = icmp eq i32 %97, 130
  br i1 %98, label %114, label %99

99:                                               ; preds = %65
  %100 = load %struct.qed_rdma_register_tid_in_params*, %struct.qed_rdma_register_tid_in_params** %5, align 8
  %101 = getelementptr inbounds %struct.qed_rdma_register_tid_in_params, %struct.qed_rdma_register_tid_in_params* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %114, label %104

104:                                              ; preds = %99
  %105 = load %struct.rdma_register_tid_ramrod_data*, %struct.rdma_register_tid_ramrod_data** %7, align 8
  %106 = getelementptr inbounds %struct.rdma_register_tid_ramrod_data, %struct.rdma_register_tid_ramrod_data* %105, i32 0, i32 10
  %107 = load i64, i64* %106, align 8
  %108 = load i32, i32* @RDMA_REGISTER_TID_RAMROD_DATA_PAGE_SIZE_LOG, align 4
  %109 = load %struct.qed_rdma_register_tid_in_params*, %struct.qed_rdma_register_tid_in_params** %5, align 8
  %110 = getelementptr inbounds %struct.qed_rdma_register_tid_in_params, %struct.qed_rdma_register_tid_in_params* %109, i32 0, i32 6
  %111 = load i32, i32* %110, align 8
  %112 = sub nsw i32 %111, 12
  %113 = call i32 @SET_FIELD(i64 %107, i32 %108, i32 %112)
  br label %114

114:                                              ; preds = %104, %99, %65
  %115 = load %struct.rdma_register_tid_ramrod_data*, %struct.rdma_register_tid_ramrod_data** %7, align 8
  %116 = getelementptr inbounds %struct.rdma_register_tid_ramrod_data, %struct.rdma_register_tid_ramrod_data* %115, i32 0, i32 10
  %117 = load i64, i64* %116, align 8
  %118 = load i32, i32* @RDMA_REGISTER_TID_RAMROD_DATA_REMOTE_READ, align 4
  %119 = load %struct.qed_rdma_register_tid_in_params*, %struct.qed_rdma_register_tid_in_params** %5, align 8
  %120 = getelementptr inbounds %struct.qed_rdma_register_tid_in_params, %struct.qed_rdma_register_tid_in_params* %119, i32 0, i32 7
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @SET_FIELD(i64 %117, i32 %118, i32 %121)
  %123 = load %struct.rdma_register_tid_ramrod_data*, %struct.rdma_register_tid_ramrod_data** %7, align 8
  %124 = getelementptr inbounds %struct.rdma_register_tid_ramrod_data, %struct.rdma_register_tid_ramrod_data* %123, i32 0, i32 10
  %125 = load i64, i64* %124, align 8
  %126 = load i32, i32* @RDMA_REGISTER_TID_RAMROD_DATA_REMOTE_WRITE, align 4
  %127 = load %struct.qed_rdma_register_tid_in_params*, %struct.qed_rdma_register_tid_in_params** %5, align 8
  %128 = getelementptr inbounds %struct.qed_rdma_register_tid_in_params, %struct.qed_rdma_register_tid_in_params* %127, i32 0, i32 8
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @SET_FIELD(i64 %125, i32 %126, i32 %129)
  %131 = load %struct.rdma_register_tid_ramrod_data*, %struct.rdma_register_tid_ramrod_data** %7, align 8
  %132 = getelementptr inbounds %struct.rdma_register_tid_ramrod_data, %struct.rdma_register_tid_ramrod_data* %131, i32 0, i32 10
  %133 = load i64, i64* %132, align 8
  %134 = load i32, i32* @RDMA_REGISTER_TID_RAMROD_DATA_REMOTE_ATOMIC, align 4
  %135 = load %struct.qed_rdma_register_tid_in_params*, %struct.qed_rdma_register_tid_in_params** %5, align 8
  %136 = getelementptr inbounds %struct.qed_rdma_register_tid_in_params, %struct.qed_rdma_register_tid_in_params* %135, i32 0, i32 9
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @SET_FIELD(i64 %133, i32 %134, i32 %137)
  %139 = load %struct.rdma_register_tid_ramrod_data*, %struct.rdma_register_tid_ramrod_data** %7, align 8
  %140 = getelementptr inbounds %struct.rdma_register_tid_ramrod_data, %struct.rdma_register_tid_ramrod_data* %139, i32 0, i32 10
  %141 = load i64, i64* %140, align 8
  %142 = load i32, i32* @RDMA_REGISTER_TID_RAMROD_DATA_LOCAL_WRITE, align 4
  %143 = load %struct.qed_rdma_register_tid_in_params*, %struct.qed_rdma_register_tid_in_params** %5, align 8
  %144 = getelementptr inbounds %struct.qed_rdma_register_tid_in_params, %struct.qed_rdma_register_tid_in_params* %143, i32 0, i32 10
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @SET_FIELD(i64 %141, i32 %142, i32 %145)
  %147 = load %struct.rdma_register_tid_ramrod_data*, %struct.rdma_register_tid_ramrod_data** %7, align 8
  %148 = getelementptr inbounds %struct.rdma_register_tid_ramrod_data, %struct.rdma_register_tid_ramrod_data* %147, i32 0, i32 10
  %149 = load i64, i64* %148, align 8
  %150 = load i32, i32* @RDMA_REGISTER_TID_RAMROD_DATA_LOCAL_READ, align 4
  %151 = load %struct.qed_rdma_register_tid_in_params*, %struct.qed_rdma_register_tid_in_params** %5, align 8
  %152 = getelementptr inbounds %struct.qed_rdma_register_tid_in_params, %struct.qed_rdma_register_tid_in_params* %151, i32 0, i32 11
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @SET_FIELD(i64 %149, i32 %150, i32 %153)
  %155 = load %struct.rdma_register_tid_ramrod_data*, %struct.rdma_register_tid_ramrod_data** %7, align 8
  %156 = getelementptr inbounds %struct.rdma_register_tid_ramrod_data, %struct.rdma_register_tid_ramrod_data* %155, i32 0, i32 10
  %157 = load i64, i64* %156, align 8
  %158 = load i32, i32* @RDMA_REGISTER_TID_RAMROD_DATA_ENABLE_MW_BIND, align 4
  %159 = load %struct.qed_rdma_register_tid_in_params*, %struct.qed_rdma_register_tid_in_params** %5, align 8
  %160 = getelementptr inbounds %struct.qed_rdma_register_tid_in_params, %struct.qed_rdma_register_tid_in_params* %159, i32 0, i32 12
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @SET_FIELD(i64 %157, i32 %158, i32 %161)
  %163 = load %struct.rdma_register_tid_ramrod_data*, %struct.rdma_register_tid_ramrod_data** %7, align 8
  %164 = getelementptr inbounds %struct.rdma_register_tid_ramrod_data, %struct.rdma_register_tid_ramrod_data* %163, i32 0, i32 9
  %165 = load i64, i64* %164, align 8
  %166 = load i32, i32* @RDMA_REGISTER_TID_RAMROD_DATA_PBL_PAGE_SIZE_LOG, align 4
  %167 = load %struct.qed_rdma_register_tid_in_params*, %struct.qed_rdma_register_tid_in_params** %5, align 8
  %168 = getelementptr inbounds %struct.qed_rdma_register_tid_in_params, %struct.qed_rdma_register_tid_in_params* %167, i32 0, i32 13
  %169 = load i32, i32* %168, align 4
  %170 = sub nsw i32 %169, 12
  %171 = call i32 @SET_FIELD(i64 %165, i32 %166, i32 %170)
  %172 = load %struct.rdma_register_tid_ramrod_data*, %struct.rdma_register_tid_ramrod_data** %7, align 8
  %173 = getelementptr inbounds %struct.rdma_register_tid_ramrod_data, %struct.rdma_register_tid_ramrod_data* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = load i32, i32* @RDMA_REGISTER_TID_RAMROD_DATA_DMA_MR, align 4
  %176 = load %struct.qed_rdma_register_tid_in_params*, %struct.qed_rdma_register_tid_in_params** %5, align 8
  %177 = getelementptr inbounds %struct.qed_rdma_register_tid_in_params, %struct.qed_rdma_register_tid_in_params* %176, i32 0, i32 5
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @SET_FIELD(i64 %174, i32 %175, i32 %178)
  %180 = load %struct.qed_rdma_register_tid_in_params*, %struct.qed_rdma_register_tid_in_params** %5, align 8
  %181 = getelementptr inbounds %struct.qed_rdma_register_tid_in_params, %struct.qed_rdma_register_tid_in_params* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 8
  switch i32 %182, label %189 [
    i32 128, label %183
    i32 130, label %185
    i32 129, label %187
  ]

183:                                              ; preds = %114
  %184 = load i32, i32* @RDMA_TID_REGISTERED_MR, align 4
  store i32 %184, i32* %10, align 4
  br label %200

185:                                              ; preds = %114
  %186 = load i32, i32* @RDMA_TID_FMR, align 4
  store i32 %186, i32* %10, align 4
  br label %200

187:                                              ; preds = %114
  %188 = load i32, i32* @RDMA_TID_MW, align 4
  store i32 %188, i32* %10, align 4
  br label %200

189:                                              ; preds = %114
  %190 = load i32, i32* @EINVAL, align 4
  %191 = sub nsw i32 0, %190
  store i32 %191, i32* %12, align 4
  %192 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %193 = load i32, i32* @QED_MSG_RDMA, align 4
  %194 = load i32, i32* %12, align 4
  %195 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %192, i32 %193, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %194)
  %196 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %197 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %9, align 8
  %198 = call i32 @qed_sp_destroy_request(%struct.qed_hwfn* %196, %struct.qed_spq_entry* %197)
  %199 = load i32, i32* %12, align 4
  store i32 %199, i32* %3, align 4
  br label %322

200:                                              ; preds = %187, %185, %183
  %201 = load %struct.rdma_register_tid_ramrod_data*, %struct.rdma_register_tid_ramrod_data** %7, align 8
  %202 = getelementptr inbounds %struct.rdma_register_tid_ramrod_data, %struct.rdma_register_tid_ramrod_data* %201, i32 0, i32 9
  %203 = load i64, i64* %202, align 8
  %204 = load i32, i32* @RDMA_REGISTER_TID_RAMROD_DATA_TID_TYPE, align 4
  %205 = load i32, i32* %10, align 4
  %206 = call i32 @SET_FIELD(i64 %203, i32 %204, i32 %205)
  %207 = load %struct.qed_rdma_register_tid_in_params*, %struct.qed_rdma_register_tid_in_params** %5, align 8
  %208 = getelementptr inbounds %struct.qed_rdma_register_tid_in_params, %struct.qed_rdma_register_tid_in_params* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = sext i32 %209 to i64
  %211 = call i8* @cpu_to_le32(i64 %210)
  %212 = load %struct.rdma_register_tid_ramrod_data*, %struct.rdma_register_tid_ramrod_data** %7, align 8
  %213 = getelementptr inbounds %struct.rdma_register_tid_ramrod_data, %struct.rdma_register_tid_ramrod_data* %212, i32 0, i32 8
  store i8* %211, i8** %213, align 8
  %214 = load %struct.qed_rdma_register_tid_in_params*, %struct.qed_rdma_register_tid_in_params** %5, align 8
  %215 = getelementptr inbounds %struct.qed_rdma_register_tid_in_params, %struct.qed_rdma_register_tid_in_params* %214, i32 0, i32 21
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.rdma_register_tid_ramrod_data*, %struct.rdma_register_tid_ramrod_data** %7, align 8
  %218 = getelementptr inbounds %struct.rdma_register_tid_ramrod_data, %struct.rdma_register_tid_ramrod_data* %217, i32 0, i32 7
  store i32 %216, i32* %218, align 4
  %219 = load %struct.qed_rdma_register_tid_in_params*, %struct.qed_rdma_register_tid_in_params** %5, align 8
  %220 = getelementptr inbounds %struct.qed_rdma_register_tid_in_params, %struct.qed_rdma_register_tid_in_params* %219, i32 0, i32 20
  %221 = load i32, i32* %220, align 8
  %222 = call i32 @cpu_to_le16(i32 %221)
  %223 = load %struct.rdma_register_tid_ramrod_data*, %struct.rdma_register_tid_ramrod_data** %7, align 8
  %224 = getelementptr inbounds %struct.rdma_register_tid_ramrod_data, %struct.rdma_register_tid_ramrod_data* %223, i32 0, i32 6
  store i32 %222, i32* %224, align 8
  %225 = load %struct.qed_rdma_register_tid_in_params*, %struct.qed_rdma_register_tid_in_params** %5, align 8
  %226 = getelementptr inbounds %struct.qed_rdma_register_tid_in_params, %struct.qed_rdma_register_tid_in_params* %225, i32 0, i32 14
  %227 = load i32, i32* %226, align 8
  %228 = ashr i32 %227, 32
  %229 = sext i32 %228 to i64
  %230 = load %struct.rdma_register_tid_ramrod_data*, %struct.rdma_register_tid_ramrod_data** %7, align 8
  %231 = getelementptr inbounds %struct.rdma_register_tid_ramrod_data, %struct.rdma_register_tid_ramrod_data* %230, i32 0, i32 5
  store i64 %229, i64* %231, align 8
  %232 = load %struct.qed_rdma_register_tid_in_params*, %struct.qed_rdma_register_tid_in_params** %5, align 8
  %233 = getelementptr inbounds %struct.qed_rdma_register_tid_in_params, %struct.qed_rdma_register_tid_in_params* %232, i32 0, i32 14
  %234 = load i32, i32* %233, align 8
  %235 = call i32 @DMA_LO_LE(i32 %234)
  %236 = load %struct.rdma_register_tid_ramrod_data*, %struct.rdma_register_tid_ramrod_data** %7, align 8
  %237 = getelementptr inbounds %struct.rdma_register_tid_ramrod_data, %struct.rdma_register_tid_ramrod_data* %236, i32 0, i32 4
  store i32 %235, i32* %237, align 8
  %238 = load %struct.qed_rdma_register_tid_in_params*, %struct.qed_rdma_register_tid_in_params** %5, align 8
  %239 = getelementptr inbounds %struct.qed_rdma_register_tid_in_params, %struct.qed_rdma_register_tid_in_params* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 8
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %253

242:                                              ; preds = %200
  %243 = load %struct.rdma_register_tid_ramrod_data*, %struct.rdma_register_tid_ramrod_data** %7, align 8
  %244 = getelementptr inbounds %struct.rdma_register_tid_ramrod_data, %struct.rdma_register_tid_ramrod_data* %243, i32 0, i32 3
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 1
  store i64 0, i64* %245, align 8
  %246 = load %struct.qed_rdma_register_tid_in_params*, %struct.qed_rdma_register_tid_in_params** %5, align 8
  %247 = getelementptr inbounds %struct.qed_rdma_register_tid_in_params, %struct.qed_rdma_register_tid_in_params* %246, i32 0, i32 15
  %248 = load i64, i64* %247, align 8
  %249 = call i8* @cpu_to_le32(i64 %248)
  %250 = load %struct.rdma_register_tid_ramrod_data*, %struct.rdma_register_tid_ramrod_data** %7, align 8
  %251 = getelementptr inbounds %struct.rdma_register_tid_ramrod_data, %struct.rdma_register_tid_ramrod_data* %250, i32 0, i32 3
  %252 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %251, i32 0, i32 0
  store i8* %249, i8** %252, align 8
  br label %265

253:                                              ; preds = %200
  %254 = load %struct.rdma_register_tid_ramrod_data*, %struct.rdma_register_tid_ramrod_data** %7, align 8
  %255 = getelementptr inbounds %struct.rdma_register_tid_ramrod_data, %struct.rdma_register_tid_ramrod_data* %254, i32 0, i32 3
  %256 = load %struct.qed_rdma_register_tid_in_params*, %struct.qed_rdma_register_tid_in_params** %5, align 8
  %257 = getelementptr inbounds %struct.qed_rdma_register_tid_in_params, %struct.qed_rdma_register_tid_in_params* %256, i32 0, i32 19
  %258 = load i32, i32* %257, align 4
  %259 = bitcast %struct.TYPE_8__* %255 to { i8*, i64 }*
  %260 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %259, i32 0, i32 0
  %261 = load i8*, i8** %260, align 8
  %262 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %259, i32 0, i32 1
  %263 = load i64, i64* %262, align 8
  %264 = call i32 @DMA_REGPAIR_LE(i8* %261, i64 %263, i32 %258)
  br label %265

265:                                              ; preds = %253, %242
  %266 = load %struct.rdma_register_tid_ramrod_data*, %struct.rdma_register_tid_ramrod_data** %7, align 8
  %267 = getelementptr inbounds %struct.rdma_register_tid_ramrod_data, %struct.rdma_register_tid_ramrod_data* %266, i32 0, i32 2
  %268 = load %struct.qed_rdma_register_tid_in_params*, %struct.qed_rdma_register_tid_in_params** %5, align 8
  %269 = getelementptr inbounds %struct.qed_rdma_register_tid_in_params, %struct.qed_rdma_register_tid_in_params* %268, i32 0, i32 18
  %270 = load i32, i32* %269, align 8
  %271 = bitcast %struct.TYPE_8__* %267 to { i8*, i64 }*
  %272 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %271, i32 0, i32 0
  %273 = load i8*, i8** %272, align 8
  %274 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %271, i32 0, i32 1
  %275 = load i64, i64* %274, align 8
  %276 = call i32 @DMA_REGPAIR_LE(i8* %273, i64 %275, i32 %270)
  %277 = load %struct.qed_rdma_register_tid_in_params*, %struct.qed_rdma_register_tid_in_params** %5, align 8
  %278 = getelementptr inbounds %struct.qed_rdma_register_tid_in_params, %struct.qed_rdma_register_tid_in_params* %277, i32 0, i32 17
  %279 = load i64, i64* %278, align 8
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %298

281:                                              ; preds = %265
  %282 = load %struct.rdma_register_tid_ramrod_data*, %struct.rdma_register_tid_ramrod_data** %7, align 8
  %283 = getelementptr inbounds %struct.rdma_register_tid_ramrod_data, %struct.rdma_register_tid_ramrod_data* %282, i32 0, i32 1
  %284 = load i64, i64* %283, align 8
  %285 = load i32, i32* @RDMA_REGISTER_TID_RAMROD_DATA_DIF_ON_HOST_FLG, align 4
  %286 = call i32 @SET_FIELD(i64 %284, i32 %285, i32 1)
  %287 = load %struct.rdma_register_tid_ramrod_data*, %struct.rdma_register_tid_ramrod_data** %7, align 8
  %288 = getelementptr inbounds %struct.rdma_register_tid_ramrod_data, %struct.rdma_register_tid_ramrod_data* %287, i32 0, i32 0
  %289 = load %struct.qed_rdma_register_tid_in_params*, %struct.qed_rdma_register_tid_in_params** %5, align 8
  %290 = getelementptr inbounds %struct.qed_rdma_register_tid_in_params, %struct.qed_rdma_register_tid_in_params* %289, i32 0, i32 16
  %291 = load i32, i32* %290, align 8
  %292 = bitcast %struct.TYPE_8__* %288 to { i8*, i64 }*
  %293 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %292, i32 0, i32 0
  %294 = load i8*, i8** %293, align 8
  %295 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %292, i32 0, i32 1
  %296 = load i64, i64* %295, align 8
  %297 = call i32 @DMA_REGPAIR_LE(i8* %294, i64 %296, i32 %291)
  br label %298

298:                                              ; preds = %281, %265
  %299 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %300 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %9, align 8
  %301 = call i32 @qed_spq_post(%struct.qed_hwfn* %299, %struct.qed_spq_entry* %300, i64* %11)
  store i32 %301, i32* %12, align 4
  %302 = load i32, i32* %12, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %306

304:                                              ; preds = %298
  %305 = load i32, i32* %12, align 4
  store i32 %305, i32* %3, align 4
  br label %322

306:                                              ; preds = %298
  %307 = load i64, i64* %11, align 8
  %308 = load i64, i64* @RDMA_RETURN_OK, align 8
  %309 = icmp ne i64 %307, %308
  br i1 %309, label %310, label %316

310:                                              ; preds = %306
  %311 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %312 = load i64, i64* %11, align 8
  %313 = call i32 @DP_NOTICE(%struct.qed_hwfn* %311, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i64 %312)
  %314 = load i32, i32* @EINVAL, align 4
  %315 = sub nsw i32 0, %314
  store i32 %315, i32* %3, align 4
  br label %322

316:                                              ; preds = %306
  %317 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %318 = load i32, i32* @QED_MSG_RDMA, align 4
  %319 = load i32, i32* %12, align 4
  %320 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %317, i32 %318, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %319)
  %321 = load i32, i32* %12, align 4
  store i32 %321, i32* %3, align 4
  br label %322

322:                                              ; preds = %316, %310, %304, %189, %39
  %323 = load i32, i32* %3, align 4
  ret i32 %323
}

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i32) #1

declare dso_local i32 @memset(%struct.qed_sp_init_data*, i32, i32) #1

declare dso_local i32 @qed_sp_init_request(%struct.qed_hwfn*, %struct.qed_spq_entry**, i32, i32, %struct.qed_sp_init_data*) #1

declare dso_local i32 @SET_FIELD(i64, i32, i32) #1

declare dso_local i32 @qed_sp_destroy_request(%struct.qed_hwfn*, %struct.qed_spq_entry*) #1

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @DMA_LO_LE(i32) #1

declare dso_local i32 @DMA_REGPAIR_LE(i8*, i64, i32) #1

declare dso_local i32 @qed_spq_post(%struct.qed_hwfn*, %struct.qed_spq_entry*, i64*) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
