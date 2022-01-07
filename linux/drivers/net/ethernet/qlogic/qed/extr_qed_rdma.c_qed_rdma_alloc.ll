; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_rdma.c_qed_rdma_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_rdma.c_qed_rdma_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32, %struct.qed_rdma_info* }
%struct.qed_rdma_info = type { i32, i32, i32, i8*, i8*, %struct.TYPE_2__, %struct.TYPE_2__, %struct.TYPE_2__, %struct.TYPE_2__, %struct.TYPE_2__, %struct.TYPE_2__, %struct.TYPE_2__, %struct.TYPE_2__, i8*, i8*, i32 }
%struct.TYPE_2__ = type { i8* }

@ENOMEM = common dso_local global i32 0, align 4
@QED_MSG_RDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Allocating RDMA\0A\00", align 1
@PROTOCOLID_IWARP = common dso_local global i32 0, align 4
@PROTOCOLID_ROCE = common dso_local global i32 0, align 4
@QED_L2_QUEUE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@RDMA_MAX_PDS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"PD\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Failed to allocate pd_map, rc = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"DPI\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"Failed to allocate DPI bitmap, rc = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"CQ\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"Failed to allocate cq bitmap, rc = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"Toggle\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"Failed to allocate toggle bits, rc = %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"MR\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"Failed to allocate itids bitmaps, rc = %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"CID\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"Failed to allocate cid bitmap, rc = %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"REAL_CID\00", align 1
@.str.14 = private unnamed_addr constant [45 x i8] c"Failed to allocate real cid bitmap, rc = %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"SRQ\00", align 1
@.str.16 = private unnamed_addr constant [40 x i8] c"Failed to allocate srq bitmap, rc = %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"Allocation successful\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*)* @qed_rdma_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_rdma_alloc(%struct.qed_hwfn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qed_hwfn*, align 8
  %4 = alloca %struct.qed_rdma_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %3, align 8
  %8 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %9 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %8, i32 0, i32 1
  %10 = load %struct.qed_rdma_info*, %struct.qed_rdma_info** %9, align 8
  store %struct.qed_rdma_info* %10, %struct.qed_rdma_info** %4, align 8
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %7, align 4
  %13 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %14 = load i32, i32* @QED_MSG_RDMA, align 4
  %15 = call i32 (%struct.qed_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.qed_hwfn* %13, i32 %14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %17 = call i64 @QED_IS_IWARP_PERSONALITY(%struct.qed_hwfn* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load i32, i32* @PROTOCOLID_IWARP, align 4
  %21 = load %struct.qed_rdma_info*, %struct.qed_rdma_info** %4, align 8
  %22 = getelementptr inbounds %struct.qed_rdma_info, %struct.qed_rdma_info* %21, i32 0, i32 15
  store i32 %20, i32* %22, align 8
  br label %27

23:                                               ; preds = %1
  %24 = load i32, i32* @PROTOCOLID_ROCE, align 4
  %25 = load %struct.qed_rdma_info*, %struct.qed_rdma_info** %4, align 8
  %26 = getelementptr inbounds %struct.qed_rdma_info, %struct.qed_rdma_info* %25, i32 0, i32 15
  store i32 %24, i32* %26, align 8
  br label %27

27:                                               ; preds = %23, %19
  %28 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %29 = load %struct.qed_rdma_info*, %struct.qed_rdma_info** %4, align 8
  %30 = getelementptr inbounds %struct.qed_rdma_info, %struct.qed_rdma_info* %29, i32 0, i32 15
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @qed_cxt_get_proto_cid_count(%struct.qed_hwfn* %28, i32 %31, i32* null)
  store i32 %32, i32* %5, align 4
  %33 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %34 = call i64 @QED_IS_IWARP_PERSONALITY(%struct.qed_hwfn* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %27
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.qed_rdma_info*, %struct.qed_rdma_info** %4, align 8
  %39 = getelementptr inbounds %struct.qed_rdma_info, %struct.qed_rdma_info* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  br label %45

40:                                               ; preds = %27
  %41 = load i32, i32* %5, align 4
  %42 = sdiv i32 %41, 2
  %43 = load %struct.qed_rdma_info*, %struct.qed_rdma_info** %4, align 8
  %44 = getelementptr inbounds %struct.qed_rdma_info, %struct.qed_rdma_info* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  br label %45

45:                                               ; preds = %40, %36
  %46 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %47 = load i32, i32* @PROTOCOLID_ROCE, align 4
  %48 = call i32 @qed_cxt_get_proto_tid_count(%struct.qed_hwfn* %46, i32 %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.qed_rdma_info*, %struct.qed_rdma_info** %4, align 8
  %51 = getelementptr inbounds %struct.qed_rdma_info, %struct.qed_rdma_info* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %53 = load i32, i32* @QED_L2_QUEUE, align 4
  %54 = call i64 @RESC_START(%struct.qed_hwfn* %52, i32 %53)
  %55 = inttoptr i64 %54 to i8*
  %56 = load %struct.qed_rdma_info*, %struct.qed_rdma_info** %4, align 8
  %57 = getelementptr inbounds %struct.qed_rdma_info, %struct.qed_rdma_info* %56, i32 0, i32 14
  store i8* %55, i8** %57, align 8
  %58 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %59 = load i32, i32* @QED_L2_QUEUE, align 4
  %60 = call i64 @RESC_NUM(%struct.qed_hwfn* %58, i32 %59)
  %61 = inttoptr i64 %60 to i8*
  %62 = load %struct.qed_rdma_info*, %struct.qed_rdma_info** %4, align 8
  %63 = getelementptr inbounds %struct.qed_rdma_info, %struct.qed_rdma_info* %62, i32 0, i32 13
  store i8* %61, i8** %63, align 8
  %64 = load i32, i32* @GFP_KERNEL, align 4
  %65 = call i8* @kzalloc(i32 1, i32 %64)
  %66 = load %struct.qed_rdma_info*, %struct.qed_rdma_info** %4, align 8
  %67 = getelementptr inbounds %struct.qed_rdma_info, %struct.qed_rdma_info* %66, i32 0, i32 3
  store i8* %65, i8** %67, align 8
  %68 = load %struct.qed_rdma_info*, %struct.qed_rdma_info** %4, align 8
  %69 = getelementptr inbounds %struct.qed_rdma_info, %struct.qed_rdma_info* %68, i32 0, i32 3
  %70 = load i8*, i8** %69, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %74, label %72

72:                                               ; preds = %45
  %73 = load i32, i32* %7, align 4
  store i32 %73, i32* %2, align 4
  br label %272

74:                                               ; preds = %45
  %75 = load i32, i32* @GFP_KERNEL, align 4
  %76 = call i8* @kzalloc(i32 1, i32 %75)
  %77 = load %struct.qed_rdma_info*, %struct.qed_rdma_info** %4, align 8
  %78 = getelementptr inbounds %struct.qed_rdma_info, %struct.qed_rdma_info* %77, i32 0, i32 4
  store i8* %76, i8** %78, align 8
  %79 = load %struct.qed_rdma_info*, %struct.qed_rdma_info** %4, align 8
  %80 = getelementptr inbounds %struct.qed_rdma_info, %struct.qed_rdma_info* %79, i32 0, i32 4
  %81 = load i8*, i8** %80, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %74
  br label %266

84:                                               ; preds = %74
  %85 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %86 = load %struct.qed_rdma_info*, %struct.qed_rdma_info** %4, align 8
  %87 = getelementptr inbounds %struct.qed_rdma_info, %struct.qed_rdma_info* %86, i32 0, i32 5
  %88 = load i32, i32* @RDMA_MAX_PDS, align 4
  %89 = call i32 @qed_rdma_bmap_alloc(%struct.qed_hwfn* %85, %struct.TYPE_2__* %87, i32 %88, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %84
  %93 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %94 = load i32, i32* @QED_MSG_RDMA, align 4
  %95 = load i32, i32* %7, align 4
  %96 = call i32 (%struct.qed_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.qed_hwfn* %93, i32 %94, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %95)
  br label %261

97:                                               ; preds = %84
  %98 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %99 = load %struct.qed_rdma_info*, %struct.qed_rdma_info** %4, align 8
  %100 = getelementptr inbounds %struct.qed_rdma_info, %struct.qed_rdma_info* %99, i32 0, i32 6
  %101 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %102 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @qed_rdma_bmap_alloc(%struct.qed_hwfn* %98, %struct.TYPE_2__* %100, i32 %103, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* %7, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %97
  %108 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %109 = load i32, i32* @QED_MSG_RDMA, align 4
  %110 = load i32, i32* %7, align 4
  %111 = call i32 (%struct.qed_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.qed_hwfn* %108, i32 %109, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %110)
  br label %255

112:                                              ; preds = %97
  %113 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %114 = load %struct.qed_rdma_info*, %struct.qed_rdma_info** %4, align 8
  %115 = getelementptr inbounds %struct.qed_rdma_info, %struct.qed_rdma_info* %114, i32 0, i32 7
  %116 = load i32, i32* %5, align 4
  %117 = call i32 @qed_rdma_bmap_alloc(%struct.qed_hwfn* %113, %struct.TYPE_2__* %115, i32 %116, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* %7, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %112
  %121 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %122 = load i32, i32* @QED_MSG_RDMA, align 4
  %123 = load i32, i32* %7, align 4
  %124 = call i32 (%struct.qed_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.qed_hwfn* %121, i32 %122, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 %123)
  br label %249

125:                                              ; preds = %112
  %126 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %127 = load %struct.qed_rdma_info*, %struct.qed_rdma_info** %4, align 8
  %128 = getelementptr inbounds %struct.qed_rdma_info, %struct.qed_rdma_info* %127, i32 0, i32 8
  %129 = load i32, i32* %5, align 4
  %130 = call i32 @qed_rdma_bmap_alloc(%struct.qed_hwfn* %126, %struct.TYPE_2__* %128, i32 %129, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  store i32 %130, i32* %7, align 4
  %131 = load i32, i32* %7, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %125
  %134 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %135 = load i32, i32* @QED_MSG_RDMA, align 4
  %136 = load i32, i32* %7, align 4
  %137 = call i32 (%struct.qed_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.qed_hwfn* %134, i32 %135, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i32 %136)
  br label %243

138:                                              ; preds = %125
  %139 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %140 = load %struct.qed_rdma_info*, %struct.qed_rdma_info** %4, align 8
  %141 = getelementptr inbounds %struct.qed_rdma_info, %struct.qed_rdma_info* %140, i32 0, i32 9
  %142 = load %struct.qed_rdma_info*, %struct.qed_rdma_info** %4, align 8
  %143 = getelementptr inbounds %struct.qed_rdma_info, %struct.qed_rdma_info* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @qed_rdma_bmap_alloc(%struct.qed_hwfn* %139, %struct.TYPE_2__* %141, i32 %144, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  store i32 %145, i32* %7, align 4
  %146 = load i32, i32* %7, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %138
  %149 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %150 = load i32, i32* @QED_MSG_RDMA, align 4
  %151 = load i32, i32* %7, align 4
  %152 = call i32 (%struct.qed_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.qed_hwfn* %149, i32 %150, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i64 0, i64 0), i32 %151)
  br label %237

153:                                              ; preds = %138
  %154 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %155 = load %struct.qed_rdma_info*, %struct.qed_rdma_info** %4, align 8
  %156 = getelementptr inbounds %struct.qed_rdma_info, %struct.qed_rdma_info* %155, i32 0, i32 10
  %157 = load i32, i32* %5, align 4
  %158 = call i32 @qed_rdma_bmap_alloc(%struct.qed_hwfn* %154, %struct.TYPE_2__* %156, i32 %157, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  store i32 %158, i32* %7, align 4
  %159 = load i32, i32* %7, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %153
  %162 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %163 = load i32, i32* @QED_MSG_RDMA, align 4
  %164 = load i32, i32* %7, align 4
  %165 = call i32 (%struct.qed_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.qed_hwfn* %162, i32 %163, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i64 0, i64 0), i32 %164)
  br label %231

166:                                              ; preds = %153
  %167 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %168 = load %struct.qed_rdma_info*, %struct.qed_rdma_info** %4, align 8
  %169 = getelementptr inbounds %struct.qed_rdma_info, %struct.qed_rdma_info* %168, i32 0, i32 11
  %170 = load i32, i32* %5, align 4
  %171 = call i32 @qed_rdma_bmap_alloc(%struct.qed_hwfn* %167, %struct.TYPE_2__* %169, i32 %170, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0))
  store i32 %171, i32* %7, align 4
  %172 = load i32, i32* %7, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %179

174:                                              ; preds = %166
  %175 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %176 = load i32, i32* @QED_MSG_RDMA, align 4
  %177 = load i32, i32* %7, align 4
  %178 = call i32 (%struct.qed_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.qed_hwfn* %175, i32 %176, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.14, i64 0, i64 0), i32 %177)
  br label %225

179:                                              ; preds = %166
  %180 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %181 = call i32 @qed_cxt_get_srq_count(%struct.qed_hwfn* %180)
  %182 = load %struct.qed_rdma_info*, %struct.qed_rdma_info** %4, align 8
  %183 = getelementptr inbounds %struct.qed_rdma_info, %struct.qed_rdma_info* %182, i32 0, i32 2
  store i32 %181, i32* %183, align 8
  %184 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %185 = load %struct.qed_rdma_info*, %struct.qed_rdma_info** %4, align 8
  %186 = getelementptr inbounds %struct.qed_rdma_info, %struct.qed_rdma_info* %185, i32 0, i32 12
  %187 = load %struct.qed_rdma_info*, %struct.qed_rdma_info** %4, align 8
  %188 = getelementptr inbounds %struct.qed_rdma_info, %struct.qed_rdma_info* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @qed_rdma_bmap_alloc(%struct.qed_hwfn* %184, %struct.TYPE_2__* %186, i32 %189, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0))
  store i32 %190, i32* %7, align 4
  %191 = load i32, i32* %7, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %198

193:                                              ; preds = %179
  %194 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %195 = load i32, i32* @QED_MSG_RDMA, align 4
  %196 = load i32, i32* %7, align 4
  %197 = call i32 (%struct.qed_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.qed_hwfn* %194, i32 %195, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.16, i64 0, i64 0), i32 %196)
  br label %219

198:                                              ; preds = %179
  %199 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %200 = call i64 @QED_IS_IWARP_PERSONALITY(%struct.qed_hwfn* %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %198
  %203 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %204 = call i32 @qed_iwarp_alloc(%struct.qed_hwfn* %203)
  store i32 %204, i32* %7, align 4
  br label %205

205:                                              ; preds = %202, %198
  %206 = load i32, i32* %7, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %205
  br label %213

209:                                              ; preds = %205
  %210 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %211 = load i32, i32* @QED_MSG_RDMA, align 4
  %212 = call i32 (%struct.qed_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.qed_hwfn* %210, i32 %211, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %272

213:                                              ; preds = %208
  %214 = load %struct.qed_rdma_info*, %struct.qed_rdma_info** %4, align 8
  %215 = getelementptr inbounds %struct.qed_rdma_info, %struct.qed_rdma_info* %214, i32 0, i32 12
  %216 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %215, i32 0, i32 0
  %217 = load i8*, i8** %216, align 8
  %218 = call i32 @kfree(i8* %217)
  br label %219

219:                                              ; preds = %213, %193
  %220 = load %struct.qed_rdma_info*, %struct.qed_rdma_info** %4, align 8
  %221 = getelementptr inbounds %struct.qed_rdma_info, %struct.qed_rdma_info* %220, i32 0, i32 11
  %222 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %221, i32 0, i32 0
  %223 = load i8*, i8** %222, align 8
  %224 = call i32 @kfree(i8* %223)
  br label %225

225:                                              ; preds = %219, %174
  %226 = load %struct.qed_rdma_info*, %struct.qed_rdma_info** %4, align 8
  %227 = getelementptr inbounds %struct.qed_rdma_info, %struct.qed_rdma_info* %226, i32 0, i32 10
  %228 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %227, i32 0, i32 0
  %229 = load i8*, i8** %228, align 8
  %230 = call i32 @kfree(i8* %229)
  br label %231

231:                                              ; preds = %225, %161
  %232 = load %struct.qed_rdma_info*, %struct.qed_rdma_info** %4, align 8
  %233 = getelementptr inbounds %struct.qed_rdma_info, %struct.qed_rdma_info* %232, i32 0, i32 9
  %234 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %233, i32 0, i32 0
  %235 = load i8*, i8** %234, align 8
  %236 = call i32 @kfree(i8* %235)
  br label %237

237:                                              ; preds = %231, %148
  %238 = load %struct.qed_rdma_info*, %struct.qed_rdma_info** %4, align 8
  %239 = getelementptr inbounds %struct.qed_rdma_info, %struct.qed_rdma_info* %238, i32 0, i32 8
  %240 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %239, i32 0, i32 0
  %241 = load i8*, i8** %240, align 8
  %242 = call i32 @kfree(i8* %241)
  br label %243

243:                                              ; preds = %237, %133
  %244 = load %struct.qed_rdma_info*, %struct.qed_rdma_info** %4, align 8
  %245 = getelementptr inbounds %struct.qed_rdma_info, %struct.qed_rdma_info* %244, i32 0, i32 7
  %246 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %245, i32 0, i32 0
  %247 = load i8*, i8** %246, align 8
  %248 = call i32 @kfree(i8* %247)
  br label %249

249:                                              ; preds = %243, %120
  %250 = load %struct.qed_rdma_info*, %struct.qed_rdma_info** %4, align 8
  %251 = getelementptr inbounds %struct.qed_rdma_info, %struct.qed_rdma_info* %250, i32 0, i32 6
  %252 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %251, i32 0, i32 0
  %253 = load i8*, i8** %252, align 8
  %254 = call i32 @kfree(i8* %253)
  br label %255

255:                                              ; preds = %249, %107
  %256 = load %struct.qed_rdma_info*, %struct.qed_rdma_info** %4, align 8
  %257 = getelementptr inbounds %struct.qed_rdma_info, %struct.qed_rdma_info* %256, i32 0, i32 5
  %258 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %257, i32 0, i32 0
  %259 = load i8*, i8** %258, align 8
  %260 = call i32 @kfree(i8* %259)
  br label %261

261:                                              ; preds = %255, %92
  %262 = load %struct.qed_rdma_info*, %struct.qed_rdma_info** %4, align 8
  %263 = getelementptr inbounds %struct.qed_rdma_info, %struct.qed_rdma_info* %262, i32 0, i32 4
  %264 = load i8*, i8** %263, align 8
  %265 = call i32 @kfree(i8* %264)
  br label %266

266:                                              ; preds = %261, %83
  %267 = load %struct.qed_rdma_info*, %struct.qed_rdma_info** %4, align 8
  %268 = getelementptr inbounds %struct.qed_rdma_info, %struct.qed_rdma_info* %267, i32 0, i32 3
  %269 = load i8*, i8** %268, align 8
  %270 = call i32 @kfree(i8* %269)
  %271 = load i32, i32* %7, align 4
  store i32 %271, i32* %2, align 4
  br label %272

272:                                              ; preds = %266, %209, %72
  %273 = load i32, i32* %2, align 4
  ret i32 %273
}

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, ...) #1

declare dso_local i64 @QED_IS_IWARP_PERSONALITY(%struct.qed_hwfn*) #1

declare dso_local i32 @qed_cxt_get_proto_cid_count(%struct.qed_hwfn*, i32, i32*) #1

declare dso_local i32 @qed_cxt_get_proto_tid_count(%struct.qed_hwfn*, i32) #1

declare dso_local i64 @RESC_START(%struct.qed_hwfn*, i32) #1

declare dso_local i64 @RESC_NUM(%struct.qed_hwfn*, i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @qed_rdma_bmap_alloc(%struct.qed_hwfn*, %struct.TYPE_2__*, i32, i8*) #1

declare dso_local i32 @qed_cxt_get_srq_count(%struct.qed_hwfn*) #1

declare dso_local i32 @qed_iwarp_alloc(%struct.qed_hwfn*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
