; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_rdma.c_qed_rdma_create_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_rdma.c_qed_rdma_create_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_rdma_qp = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_7__, i32 }
%struct.TYPE_8__ = type { i8*, i8* }
%struct.TYPE_7__ = type { i8*, i8* }
%struct.qed_rdma_create_qp_in_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32 }
%struct.qed_rdma_create_qp_out_params = type { i32, i32 }
%struct.qed_hwfn = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [86 x i8] c"qed roce create qp failed due to NULL entry (rdma_cxt=%p, in=%p, out=%p, roce_info=?\0A\00", align 1
@QED_MSG_RDMA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"qed rdma create qp called with qp_handle = %08x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [77 x i8] c"qed rdma create qp failed due to invalid statistics queue %d. maximum is %d\0A\00", align 1
@IWARP_SHARED_QUEUE_PAGE_SQ_PBL_MAX_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"Sq num pages: %d exceeds maximum\0A\00", align 1
@IWARP_SHARED_QUEUE_PAGE_RQ_PBL_MAX_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"Rq num pages: %d exceeds maximum\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@QED_ROCE_QP_STATE_RESET = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"Create QP, rc = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.qed_rdma_qp* (i8*, %struct.qed_rdma_create_qp_in_params*, %struct.qed_rdma_create_qp_out_params*)* @qed_rdma_create_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.qed_rdma_qp* @qed_rdma_create_qp(i8* %0, %struct.qed_rdma_create_qp_in_params* %1, %struct.qed_rdma_create_qp_out_params* %2) #0 {
  %4 = alloca %struct.qed_rdma_qp*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.qed_rdma_create_qp_in_params*, align 8
  %7 = alloca %struct.qed_rdma_create_qp_out_params*, align 8
  %8 = alloca %struct.qed_hwfn*, align 8
  %9 = alloca %struct.qed_rdma_qp*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.qed_rdma_create_qp_in_params* %1, %struct.qed_rdma_create_qp_in_params** %6, align 8
  store %struct.qed_rdma_create_qp_out_params* %2, %struct.qed_rdma_create_qp_out_params** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.qed_hwfn*
  store %struct.qed_hwfn* %13, %struct.qed_hwfn** %8, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %29

16:                                               ; preds = %3
  %17 = load %struct.qed_rdma_create_qp_in_params*, %struct.qed_rdma_create_qp_in_params** %6, align 8
  %18 = icmp ne %struct.qed_rdma_create_qp_in_params* %17, null
  br i1 %18, label %19, label %29

19:                                               ; preds = %16
  %20 = load %struct.qed_rdma_create_qp_out_params*, %struct.qed_rdma_create_qp_out_params** %7, align 8
  %21 = icmp ne %struct.qed_rdma_create_qp_out_params* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %24 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %23, i32 0, i32 1
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %22, %19, %16, %3
  %30 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %31 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = load %struct.qed_rdma_create_qp_in_params*, %struct.qed_rdma_create_qp_in_params** %6, align 8
  %35 = load %struct.qed_rdma_create_qp_out_params*, %struct.qed_rdma_create_qp_out_params** %7, align 8
  %36 = call i32 (i32, i8*, i8*, %struct.qed_rdma_create_qp_in_params*, ...) @DP_ERR(i32 %32, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i64 0, i64 0), i8* %33, %struct.qed_rdma_create_qp_in_params* %34, %struct.qed_rdma_create_qp_out_params* %35)
  store %struct.qed_rdma_qp* null, %struct.qed_rdma_qp** %4, align 8
  br label %272

37:                                               ; preds = %22
  %38 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %39 = load i32, i32* @QED_MSG_RDMA, align 4
  %40 = load %struct.qed_rdma_create_qp_in_params*, %struct.qed_rdma_create_qp_in_params** %6, align 8
  %41 = getelementptr inbounds %struct.qed_rdma_create_qp_in_params, %struct.qed_rdma_create_qp_in_params* %40, i32 0, i32 16
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.qed_rdma_create_qp_in_params*, %struct.qed_rdma_create_qp_in_params** %6, align 8
  %44 = getelementptr inbounds %struct.qed_rdma_create_qp_in_params, %struct.qed_rdma_create_qp_in_params* %43, i32 0, i32 15
  %45 = load i32, i32* %44, align 8
  %46 = call i32 (%struct.qed_hwfn*, i32, i8*, i32, ...) @DP_VERBOSE(%struct.qed_hwfn* %38, i32 %39, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %45)
  %47 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %48 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %47, i32 0, i32 1
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %10, align 4
  %54 = load %struct.qed_rdma_create_qp_in_params*, %struct.qed_rdma_create_qp_in_params** %6, align 8
  %55 = getelementptr inbounds %struct.qed_rdma_create_qp_in_params, %struct.qed_rdma_create_qp_in_params* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %10, align 4
  %58 = icmp sge i32 %56, %57
  br i1 %58, label %59, label %72

59:                                               ; preds = %37
  %60 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %61 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.qed_rdma_create_qp_in_params*, %struct.qed_rdma_create_qp_in_params** %6, align 8
  %64 = getelementptr inbounds %struct.qed_rdma_create_qp_in_params, %struct.qed_rdma_create_qp_in_params* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = inttoptr i64 %66 to i8*
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = inttoptr i64 %69 to %struct.qed_rdma_create_qp_in_params*
  %71 = call i32 (i32, i8*, i8*, %struct.qed_rdma_create_qp_in_params*, ...) @DP_ERR(i32 %62, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.2, i64 0, i64 0), i8* %67, %struct.qed_rdma_create_qp_in_params* %70)
  store %struct.qed_rdma_qp* null, %struct.qed_rdma_qp** %4, align 8
  br label %272

72:                                               ; preds = %37
  %73 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %74 = call i64 @QED_IS_IWARP_PERSONALITY(%struct.qed_hwfn* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %111

76:                                               ; preds = %72
  %77 = load %struct.qed_rdma_create_qp_in_params*, %struct.qed_rdma_create_qp_in_params** %6, align 8
  %78 = getelementptr inbounds %struct.qed_rdma_create_qp_in_params, %struct.qed_rdma_create_qp_in_params* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = mul i64 %80, 4
  %82 = load i32, i32* @IWARP_SHARED_QUEUE_PAGE_SQ_PBL_MAX_SIZE, align 4
  %83 = sext i32 %82 to i64
  %84 = icmp ugt i64 %81, %83
  br i1 %84, label %85, label %93

85:                                               ; preds = %76
  %86 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %87 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.qed_rdma_create_qp_in_params*, %struct.qed_rdma_create_qp_in_params** %6, align 8
  %90 = getelementptr inbounds %struct.qed_rdma_create_qp_in_params, %struct.qed_rdma_create_qp_in_params* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @DP_NOTICE(i32 %88, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %91)
  store %struct.qed_rdma_qp* null, %struct.qed_rdma_qp** %4, align 8
  br label %272

93:                                               ; preds = %76
  %94 = load %struct.qed_rdma_create_qp_in_params*, %struct.qed_rdma_create_qp_in_params** %6, align 8
  %95 = getelementptr inbounds %struct.qed_rdma_create_qp_in_params, %struct.qed_rdma_create_qp_in_params* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = sext i32 %96 to i64
  %98 = mul i64 %97, 4
  %99 = load i32, i32* @IWARP_SHARED_QUEUE_PAGE_RQ_PBL_MAX_SIZE, align 4
  %100 = sext i32 %99 to i64
  %101 = icmp ugt i64 %98, %100
  br i1 %101, label %102, label %110

102:                                              ; preds = %93
  %103 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %104 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.qed_rdma_create_qp_in_params*, %struct.qed_rdma_create_qp_in_params** %6, align 8
  %107 = getelementptr inbounds %struct.qed_rdma_create_qp_in_params, %struct.qed_rdma_create_qp_in_params* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @DP_NOTICE(i32 %105, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %108)
  store %struct.qed_rdma_qp* null, %struct.qed_rdma_qp** %4, align 8
  br label %272

110:                                              ; preds = %93
  br label %111

111:                                              ; preds = %110, %72
  %112 = load i32, i32* @GFP_KERNEL, align 4
  %113 = call %struct.qed_rdma_qp* @kzalloc(i32 120, i32 %112)
  store %struct.qed_rdma_qp* %113, %struct.qed_rdma_qp** %9, align 8
  %114 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %9, align 8
  %115 = icmp ne %struct.qed_rdma_qp* %114, null
  br i1 %115, label %117, label %116

116:                                              ; preds = %111
  store %struct.qed_rdma_qp* null, %struct.qed_rdma_qp** %4, align 8
  br label %272

117:                                              ; preds = %111
  %118 = load i32, i32* @QED_ROCE_QP_STATE_RESET, align 4
  %119 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %9, align 8
  %120 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %119, i32 0, i32 20
  store i32 %118, i32* %120, align 8
  %121 = load %struct.qed_rdma_create_qp_in_params*, %struct.qed_rdma_create_qp_in_params** %6, align 8
  %122 = getelementptr inbounds %struct.qed_rdma_create_qp_in_params, %struct.qed_rdma_create_qp_in_params* %121, i32 0, i32 16
  %123 = load i32, i32* %122, align 4
  %124 = call i8* @cpu_to_le32(i32 %123)
  %125 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %9, align 8
  %126 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %125, i32 0, i32 19
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 1
  store i8* %124, i8** %127, align 8
  %128 = load %struct.qed_rdma_create_qp_in_params*, %struct.qed_rdma_create_qp_in_params** %6, align 8
  %129 = getelementptr inbounds %struct.qed_rdma_create_qp_in_params, %struct.qed_rdma_create_qp_in_params* %128, i32 0, i32 15
  %130 = load i32, i32* %129, align 8
  %131 = call i8* @cpu_to_le32(i32 %130)
  %132 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %9, align 8
  %133 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %132, i32 0, i32 19
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  store i8* %131, i8** %134, align 8
  %135 = load %struct.qed_rdma_create_qp_in_params*, %struct.qed_rdma_create_qp_in_params** %6, align 8
  %136 = getelementptr inbounds %struct.qed_rdma_create_qp_in_params, %struct.qed_rdma_create_qp_in_params* %135, i32 0, i32 14
  %137 = load i32, i32* %136, align 4
  %138 = call i8* @cpu_to_le32(i32 %137)
  %139 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %9, align 8
  %140 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %139, i32 0, i32 18
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 1
  store i8* %138, i8** %141, align 8
  %142 = load %struct.qed_rdma_create_qp_in_params*, %struct.qed_rdma_create_qp_in_params** %6, align 8
  %143 = getelementptr inbounds %struct.qed_rdma_create_qp_in_params, %struct.qed_rdma_create_qp_in_params* %142, i32 0, i32 13
  %144 = load i32, i32* %143, align 8
  %145 = call i8* @cpu_to_le32(i32 %144)
  %146 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %9, align 8
  %147 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %146, i32 0, i32 18
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 0
  store i8* %145, i8** %148, align 8
  %149 = load %struct.qed_rdma_create_qp_in_params*, %struct.qed_rdma_create_qp_in_params** %6, align 8
  %150 = getelementptr inbounds %struct.qed_rdma_create_qp_in_params, %struct.qed_rdma_create_qp_in_params* %149, i32 0, i32 12
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %9, align 8
  %153 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %152, i32 0, i32 8
  store i64 %151, i64* %153, align 8
  %154 = load %struct.qed_rdma_create_qp_in_params*, %struct.qed_rdma_create_qp_in_params** %6, align 8
  %155 = getelementptr inbounds %struct.qed_rdma_create_qp_in_params, %struct.qed_rdma_create_qp_in_params* %154, i32 0, i32 11
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %9, align 8
  %158 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %157, i32 0, i32 17
  store i32 %156, i32* %158, align 8
  %159 = load %struct.qed_rdma_create_qp_in_params*, %struct.qed_rdma_create_qp_in_params** %6, align 8
  %160 = getelementptr inbounds %struct.qed_rdma_create_qp_in_params, %struct.qed_rdma_create_qp_in_params* %159, i32 0, i32 10
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %9, align 8
  %163 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %162, i32 0, i32 16
  store i32 %161, i32* %163, align 4
  %164 = load %struct.qed_rdma_create_qp_in_params*, %struct.qed_rdma_create_qp_in_params** %6, align 8
  %165 = getelementptr inbounds %struct.qed_rdma_create_qp_in_params, %struct.qed_rdma_create_qp_in_params* %164, i32 0, i32 9
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %9, align 8
  %168 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %167, i32 0, i32 15
  store i32 %166, i32* %168, align 8
  %169 = load %struct.qed_rdma_create_qp_in_params*, %struct.qed_rdma_create_qp_in_params** %6, align 8
  %170 = getelementptr inbounds %struct.qed_rdma_create_qp_in_params, %struct.qed_rdma_create_qp_in_params* %169, i32 0, i32 8
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %9, align 8
  %173 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %172, i32 0, i32 14
  store i32 %171, i32* %173, align 4
  %174 = load %struct.qed_rdma_create_qp_in_params*, %struct.qed_rdma_create_qp_in_params** %6, align 8
  %175 = getelementptr inbounds %struct.qed_rdma_create_qp_in_params, %struct.qed_rdma_create_qp_in_params* %174, i32 0, i32 7
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %9, align 8
  %178 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %177, i32 0, i32 13
  store i32 %176, i32* %178, align 8
  %179 = load %struct.qed_rdma_create_qp_in_params*, %struct.qed_rdma_create_qp_in_params** %6, align 8
  %180 = getelementptr inbounds %struct.qed_rdma_create_qp_in_params, %struct.qed_rdma_create_qp_in_params* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %9, align 8
  %183 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %182, i32 0, i32 0
  store i32 %181, i32* %183, align 8
  %184 = load %struct.qed_rdma_create_qp_in_params*, %struct.qed_rdma_create_qp_in_params** %6, align 8
  %185 = getelementptr inbounds %struct.qed_rdma_create_qp_in_params, %struct.qed_rdma_create_qp_in_params* %184, i32 0, i32 6
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %9, align 8
  %188 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %187, i32 0, i32 12
  store i32 %186, i32* %188, align 4
  %189 = load %struct.qed_rdma_create_qp_in_params*, %struct.qed_rdma_create_qp_in_params** %6, align 8
  %190 = getelementptr inbounds %struct.qed_rdma_create_qp_in_params, %struct.qed_rdma_create_qp_in_params* %189, i32 0, i32 5
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %9, align 8
  %193 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %192, i32 0, i32 11
  store i32 %191, i32* %193, align 8
  %194 = load %struct.qed_rdma_create_qp_in_params*, %struct.qed_rdma_create_qp_in_params** %6, align 8
  %195 = getelementptr inbounds %struct.qed_rdma_create_qp_in_params, %struct.qed_rdma_create_qp_in_params* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %9, align 8
  %198 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %197, i32 0, i32 1
  store i32 %196, i32* %198, align 4
  %199 = load %struct.qed_rdma_create_qp_in_params*, %struct.qed_rdma_create_qp_in_params** %6, align 8
  %200 = getelementptr inbounds %struct.qed_rdma_create_qp_in_params, %struct.qed_rdma_create_qp_in_params* %199, i32 0, i32 4
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %9, align 8
  %203 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %202, i32 0, i32 10
  store i32 %201, i32* %203, align 4
  %204 = load %struct.qed_rdma_create_qp_in_params*, %struct.qed_rdma_create_qp_in_params** %6, align 8
  %205 = getelementptr inbounds %struct.qed_rdma_create_qp_in_params, %struct.qed_rdma_create_qp_in_params* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %9, align 8
  %208 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %207, i32 0, i32 9
  store i32 %206, i32* %208, align 8
  %209 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %9, align 8
  %210 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %209, i32 0, i32 2
  store i32 0, i32* %210, align 8
  %211 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %9, align 8
  %212 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %211, i32 0, i32 3
  store i32 0, i32* %212, align 4
  %213 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %9, align 8
  %214 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %213, i32 0, i32 8
  %215 = load i64, i64* %214, align 8
  %216 = icmp ne i64 %215, 0
  %217 = zext i1 %216 to i64
  %218 = select i1 %216, i32 0, i32 1
  %219 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %9, align 8
  %220 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %219, i32 0, i32 4
  store i32 %218, i32* %220, align 8
  %221 = load %struct.qed_rdma_create_qp_in_params*, %struct.qed_rdma_create_qp_in_params** %6, align 8
  %222 = getelementptr inbounds %struct.qed_rdma_create_qp_in_params, %struct.qed_rdma_create_qp_in_params* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 8
  %224 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %9, align 8
  %225 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %224, i32 0, i32 7
  store i32 %223, i32* %225, align 4
  %226 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %227 = call i64 @QED_IS_IWARP_PERSONALITY(%struct.qed_hwfn* %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %239

229:                                              ; preds = %117
  %230 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %231 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %9, align 8
  %232 = load %struct.qed_rdma_create_qp_out_params*, %struct.qed_rdma_create_qp_out_params** %7, align 8
  %233 = call i32 @qed_iwarp_create_qp(%struct.qed_hwfn* %230, %struct.qed_rdma_qp* %231, %struct.qed_rdma_create_qp_out_params* %232)
  store i32 %233, i32* %11, align 4
  %234 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %9, align 8
  %235 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %234, i32 0, i32 6
  %236 = load i32, i32* %235, align 8
  %237 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %9, align 8
  %238 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %237, i32 0, i32 5
  store i32 %236, i32* %238, align 4
  br label %250

239:                                              ; preds = %117
  %240 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %241 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %9, align 8
  %242 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %241, i32 0, i32 6
  %243 = call i32 @qed_roce_alloc_cid(%struct.qed_hwfn* %240, i32* %242)
  store i32 %243, i32* %11, align 4
  %244 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %9, align 8
  %245 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %244, i32 0, i32 6
  %246 = load i32, i32* %245, align 8
  %247 = or i32 16711680, %246
  %248 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %9, align 8
  %249 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %248, i32 0, i32 5
  store i32 %247, i32* %249, align 4
  br label %250

250:                                              ; preds = %239, %229
  %251 = load i32, i32* %11, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %256

253:                                              ; preds = %250
  %254 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %9, align 8
  %255 = call i32 @kfree(%struct.qed_rdma_qp* %254)
  store %struct.qed_rdma_qp* null, %struct.qed_rdma_qp** %4, align 8
  br label %272

256:                                              ; preds = %250
  %257 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %9, align 8
  %258 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %257, i32 0, i32 6
  %259 = load i32, i32* %258, align 8
  %260 = load %struct.qed_rdma_create_qp_out_params*, %struct.qed_rdma_create_qp_out_params** %7, align 8
  %261 = getelementptr inbounds %struct.qed_rdma_create_qp_out_params, %struct.qed_rdma_create_qp_out_params* %260, i32 0, i32 0
  store i32 %259, i32* %261, align 4
  %262 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %9, align 8
  %263 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %262, i32 0, i32 5
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.qed_rdma_create_qp_out_params*, %struct.qed_rdma_create_qp_out_params** %7, align 8
  %266 = getelementptr inbounds %struct.qed_rdma_create_qp_out_params, %struct.qed_rdma_create_qp_out_params* %265, i32 0, i32 1
  store i32 %264, i32* %266, align 4
  %267 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %268 = load i32, i32* @QED_MSG_RDMA, align 4
  %269 = load i32, i32* %11, align 4
  %270 = call i32 (%struct.qed_hwfn*, i32, i8*, i32, ...) @DP_VERBOSE(%struct.qed_hwfn* %267, i32 %268, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %269)
  %271 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %9, align 8
  store %struct.qed_rdma_qp* %271, %struct.qed_rdma_qp** %4, align 8
  br label %272

272:                                              ; preds = %256, %253, %116, %102, %85, %59, %29
  %273 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %4, align 8
  ret %struct.qed_rdma_qp* %273
}

declare dso_local i32 @DP_ERR(i32, i8*, i8*, %struct.qed_rdma_create_qp_in_params*, ...) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i32, ...) #1

declare dso_local i64 @QED_IS_IWARP_PERSONALITY(%struct.qed_hwfn*) #1

declare dso_local i32 @DP_NOTICE(i32, i8*, i32) #1

declare dso_local %struct.qed_rdma_qp* @kzalloc(i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @qed_iwarp_create_qp(%struct.qed_hwfn*, %struct.qed_rdma_qp*, %struct.qed_rdma_create_qp_out_params*) #1

declare dso_local i32 @qed_roce_alloc_cid(%struct.qed_hwfn*, i32*) #1

declare dso_local i32 @kfree(%struct.qed_rdma_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
