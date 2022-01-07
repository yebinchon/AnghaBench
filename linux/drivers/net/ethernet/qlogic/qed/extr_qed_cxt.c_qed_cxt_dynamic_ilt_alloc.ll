; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_cxt.c_qed_cxt_dynamic_ilt_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_cxt.c_qed_cxt_dynamic_ilt_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32, %struct.TYPE_14__*, i32, %struct.TYPE_10__* }
%struct.TYPE_14__ = type { i64, i32, %struct.TYPE_13__*, %struct.qed_ilt_client_cfg* }
%struct.TYPE_13__ = type { i32, i32, i8* }
%struct.qed_ilt_client_cfg = type { %struct.TYPE_8__, %struct.qed_ilt_cli_blk* }
%struct.TYPE_8__ = type { i64 }
%struct.qed_ilt_cli_blk = type { i64, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.qed_ptt = type { i32 }
%union.type1_task_context = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }

@ILT_CLI_CDUC = common dso_local global i64 0, align 8
@CDUC_BLK = common dso_local global i64 0, align 8
@ILT_CLI_TSDM = common dso_local global i64 0, align 8
@SRQ_CXT_SIZE = common dso_local global i64 0, align 8
@SRQ_BLK = common dso_local global i64 0, align 8
@ILT_CLI_CDUT = common dso_local global i64 0, align 8
@QED_CXT_ROCE_TID_SEG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"-EINVALID elem type = %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"QED_TIME_OUT on ptt acquire - dynamic allocation\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TDIF_TASK_CONTEXT_REF_TAG_MASK = common dso_local global i32 0, align 4
@PSWRQ2_REG_ILT_MEMORY = common dso_local global i64 0, align 8
@ILT_REG_SIZE_IN_BYTES = common dso_local global i64 0, align 8
@ILT_ENTRY_IN_REGS = common dso_local global i64 0, align 8
@ILT_ENTRY_VALID = common dso_local global i32 0, align 4
@ILT_ENTRY_PHY_ADDR = common dso_local global i32 0, align 4
@PRS_REG_ROCE_DEST_QP_MAX_PF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_cxt_dynamic_ilt_alloc(%struct.qed_hwfn* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.qed_ilt_client_cfg*, align 8
  %15 = alloca %struct.qed_ilt_cli_blk*, align 8
  %16 = alloca %struct.qed_ptt*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32*, align 8
  %23 = alloca %union.type1_task_context*, align 8
  %24 = alloca i64, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %20, align 4
  %25 = load i32, i32* %6, align 4
  switch i32 %25, label %71 [
    i32 130, label %26
    i32 129, label %41
    i32 128, label %55
  ]

26:                                               ; preds = %3
  %27 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %28 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %27, i32 0, i32 1
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 3
  %31 = load %struct.qed_ilt_client_cfg*, %struct.qed_ilt_client_cfg** %30, align 8
  %32 = load i64, i64* @ILT_CLI_CDUC, align 8
  %33 = getelementptr inbounds %struct.qed_ilt_client_cfg, %struct.qed_ilt_client_cfg* %31, i64 %32
  store %struct.qed_ilt_client_cfg* %33, %struct.qed_ilt_client_cfg** %14, align 8
  %34 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %35 = call i64 @CONN_CXT_SIZE(%struct.qed_hwfn* %34)
  store i64 %35, i64* %10, align 8
  %36 = load %struct.qed_ilt_client_cfg*, %struct.qed_ilt_client_cfg** %14, align 8
  %37 = getelementptr inbounds %struct.qed_ilt_client_cfg, %struct.qed_ilt_client_cfg* %36, i32 0, i32 1
  %38 = load %struct.qed_ilt_cli_blk*, %struct.qed_ilt_cli_blk** %37, align 8
  %39 = load i64, i64* @CDUC_BLK, align 8
  %40 = getelementptr inbounds %struct.qed_ilt_cli_blk, %struct.qed_ilt_cli_blk* %38, i64 %39
  store %struct.qed_ilt_cli_blk* %40, %struct.qed_ilt_cli_blk** %15, align 8
  br label %77

41:                                               ; preds = %3
  %42 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %43 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %42, i32 0, i32 1
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 3
  %46 = load %struct.qed_ilt_client_cfg*, %struct.qed_ilt_client_cfg** %45, align 8
  %47 = load i64, i64* @ILT_CLI_TSDM, align 8
  %48 = getelementptr inbounds %struct.qed_ilt_client_cfg, %struct.qed_ilt_client_cfg* %46, i64 %47
  store %struct.qed_ilt_client_cfg* %48, %struct.qed_ilt_client_cfg** %14, align 8
  %49 = load i64, i64* @SRQ_CXT_SIZE, align 8
  store i64 %49, i64* %10, align 8
  %50 = load %struct.qed_ilt_client_cfg*, %struct.qed_ilt_client_cfg** %14, align 8
  %51 = getelementptr inbounds %struct.qed_ilt_client_cfg, %struct.qed_ilt_client_cfg* %50, i32 0, i32 1
  %52 = load %struct.qed_ilt_cli_blk*, %struct.qed_ilt_cli_blk** %51, align 8
  %53 = load i64, i64* @SRQ_BLK, align 8
  %54 = getelementptr inbounds %struct.qed_ilt_cli_blk, %struct.qed_ilt_cli_blk* %52, i64 %53
  store %struct.qed_ilt_cli_blk* %54, %struct.qed_ilt_cli_blk** %15, align 8
  br label %77

55:                                               ; preds = %3
  %56 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %57 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %56, i32 0, i32 1
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 3
  %60 = load %struct.qed_ilt_client_cfg*, %struct.qed_ilt_client_cfg** %59, align 8
  %61 = load i64, i64* @ILT_CLI_CDUT, align 8
  %62 = getelementptr inbounds %struct.qed_ilt_client_cfg, %struct.qed_ilt_client_cfg* %60, i64 %61
  store %struct.qed_ilt_client_cfg* %62, %struct.qed_ilt_client_cfg** %14, align 8
  %63 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %64 = call i64 @TYPE1_TASK_CXT_SIZE(%struct.qed_hwfn* %63)
  store i64 %64, i64* %10, align 8
  %65 = load %struct.qed_ilt_client_cfg*, %struct.qed_ilt_client_cfg** %14, align 8
  %66 = getelementptr inbounds %struct.qed_ilt_client_cfg, %struct.qed_ilt_client_cfg* %65, i32 0, i32 1
  %67 = load %struct.qed_ilt_cli_blk*, %struct.qed_ilt_cli_blk** %66, align 8
  %68 = load i32, i32* @QED_CXT_ROCE_TID_SEG, align 4
  %69 = call i64 @CDUT_SEG_BLK(i32 %68)
  %70 = getelementptr inbounds %struct.qed_ilt_cli_blk, %struct.qed_ilt_cli_blk* %67, i64 %69
  store %struct.qed_ilt_cli_blk* %70, %struct.qed_ilt_cli_blk** %15, align 8
  br label %77

71:                                               ; preds = %3
  %72 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %73 = load i32, i32* %6, align 4
  %74 = call i32 (%struct.qed_hwfn*, i8*, ...) @DP_NOTICE(%struct.qed_hwfn* %72, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %4, align 4
  br label %271

77:                                               ; preds = %55, %41, %26
  %78 = load %struct.qed_ilt_client_cfg*, %struct.qed_ilt_client_cfg** %14, align 8
  %79 = getelementptr inbounds %struct.qed_ilt_client_cfg, %struct.qed_ilt_client_cfg* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %11, align 8
  %82 = load i64, i64* %11, align 8
  %83 = call i64 @ILT_PAGE_IN_BYTES(i64 %82)
  %84 = load i64, i64* %10, align 8
  %85 = udiv i64 %83, %84
  store i64 %85, i64* %12, align 8
  %86 = load %struct.qed_ilt_cli_blk*, %struct.qed_ilt_cli_blk** %15, align 8
  %87 = getelementptr inbounds %struct.qed_ilt_cli_blk, %struct.qed_ilt_cli_blk* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %7, align 8
  %90 = load i64, i64* %12, align 8
  %91 = udiv i64 %89, %90
  %92 = add i64 %88, %91
  store i64 %92, i64* %13, align 8
  %93 = load i64, i64* %13, align 8
  %94 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %95 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %94, i32 0, i32 1
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = sub i64 %93, %98
  store i64 %99, i64* %9, align 8
  %100 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %101 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %100, i32 0, i32 1
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 1
  %104 = call i32 @mutex_lock(i32* %103)
  %105 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %106 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %105, i32 0, i32 1
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 2
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %108, align 8
  %110 = load i64, i64* %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 2
  %113 = load i8*, i8** %112, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %115, label %116

115:                                              ; preds = %77
  br label %264

116:                                              ; preds = %77
  %117 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %118 = call %struct.qed_ptt* @qed_ptt_acquire(%struct.qed_hwfn* %117)
  store %struct.qed_ptt* %118, %struct.qed_ptt** %16, align 8
  %119 = load %struct.qed_ptt*, %struct.qed_ptt** %16, align 8
  %120 = icmp ne %struct.qed_ptt* %119, null
  br i1 %120, label %126, label %121

121:                                              ; preds = %116
  %122 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %123 = call i32 (%struct.qed_hwfn*, i8*, ...) @DP_NOTICE(%struct.qed_hwfn* %122, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %124 = load i32, i32* @EBUSY, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %20, align 4
  br label %264

126:                                              ; preds = %116
  %127 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %128 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %127, i32 0, i32 3
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  %133 = load %struct.qed_ilt_cli_blk*, %struct.qed_ilt_cli_blk** %15, align 8
  %134 = getelementptr inbounds %struct.qed_ilt_cli_blk, %struct.qed_ilt_cli_blk* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @GFP_KERNEL, align 4
  %137 = call i8* @dma_alloc_coherent(i32* %132, i32 %135, i32* %17, i32 %136)
  store i8* %137, i8** %19, align 8
  %138 = load i8*, i8** %19, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %143, label %140

140:                                              ; preds = %126
  %141 = load i32, i32* @ENOMEM, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %20, align 4
  br label %260

143:                                              ; preds = %126
  %144 = load i32, i32* %6, align 4
  %145 = icmp eq i32 %144, 128
  br i1 %145, label %146, label %171

146:                                              ; preds = %143
  %147 = load i8*, i8** %19, align 8
  %148 = bitcast i8* %147 to i32*
  store i32* %148, i32** %22, align 8
  store i64 0, i64* %21, align 8
  br label %149

149:                                              ; preds = %167, %146
  %150 = load i64, i64* %21, align 8
  %151 = load i64, i64* %12, align 8
  %152 = icmp ult i64 %150, %151
  br i1 %152, label %153, label %170

153:                                              ; preds = %149
  %154 = load i32*, i32** %22, align 8
  %155 = bitcast i32* %154 to %union.type1_task_context*
  store %union.type1_task_context* %155, %union.type1_task_context** %23, align 8
  %156 = load %union.type1_task_context*, %union.type1_task_context** %23, align 8
  %157 = bitcast %union.type1_task_context* %156 to %struct.TYPE_12__*
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i32, i32* @TDIF_TASK_CONTEXT_REF_TAG_MASK, align 4
  %162 = call i32 @SET_FIELD(i64 %160, i32 %161, i32 15)
  %163 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %164 = call i64 @TYPE1_TASK_CXT_SIZE(%struct.qed_hwfn* %163)
  %165 = load i32*, i32** %22, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 %164
  store i32* %166, i32** %22, align 8
  br label %167

167:                                              ; preds = %153
  %168 = load i64, i64* %21, align 8
  %169 = add i64 %168, 1
  store i64 %169, i64* %21, align 8
  br label %149

170:                                              ; preds = %149
  br label %171

171:                                              ; preds = %170, %143
  %172 = load i8*, i8** %19, align 8
  %173 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %174 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %173, i32 0, i32 1
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 2
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %176, align 8
  %178 = load i64, i64* %9, align 8
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 2
  store i8* %172, i8** %180, align 8
  %181 = load i32, i32* %17, align 4
  %182 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %183 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %182, i32 0, i32 1
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 2
  %186 = load %struct.TYPE_13__*, %struct.TYPE_13__** %185, align 8
  %187 = load i64, i64* %9, align 8
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i32 0, i32 0
  store i32 %181, i32* %189, align 8
  %190 = load %struct.qed_ilt_cli_blk*, %struct.qed_ilt_cli_blk** %15, align 8
  %191 = getelementptr inbounds %struct.qed_ilt_cli_blk, %struct.qed_ilt_cli_blk* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %194 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %193, i32 0, i32 1
  %195 = load %struct.TYPE_14__*, %struct.TYPE_14__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i32 0, i32 2
  %197 = load %struct.TYPE_13__*, %struct.TYPE_13__** %196, align 8
  %198 = load i64, i64* %9, align 8
  %199 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %199, i32 0, i32 1
  store i32 %192, i32* %200, align 4
  %201 = load i64, i64* @PSWRQ2_REG_ILT_MEMORY, align 8
  %202 = load i64, i64* %13, align 8
  %203 = load i64, i64* @ILT_REG_SIZE_IN_BYTES, align 8
  %204 = mul i64 %202, %203
  %205 = load i64, i64* @ILT_ENTRY_IN_REGS, align 8
  %206 = mul i64 %204, %205
  %207 = add i64 %201, %206
  store i64 %207, i64* %8, align 8
  store i64 0, i64* %18, align 8
  %208 = load i64, i64* %18, align 8
  %209 = load i32, i32* @ILT_ENTRY_VALID, align 4
  %210 = call i32 @SET_FIELD(i64 %208, i32 %209, i32 1)
  %211 = load i64, i64* %18, align 8
  %212 = load i32, i32* @ILT_ENTRY_PHY_ADDR, align 4
  %213 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %214 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %213, i32 0, i32 1
  %215 = load %struct.TYPE_14__*, %struct.TYPE_14__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %215, i32 0, i32 2
  %217 = load %struct.TYPE_13__*, %struct.TYPE_13__** %216, align 8
  %218 = load i64, i64* %9, align 8
  %219 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %217, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = ashr i32 %221, 12
  %223 = call i32 @SET_FIELD(i64 %211, i32 %212, i32 %222)
  %224 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %225 = load %struct.qed_ptt*, %struct.qed_ptt** %16, align 8
  %226 = ptrtoint i64* %18 to i64
  %227 = load i64, i64* %8, align 8
  %228 = call i32 @qed_dmae_host2grc(%struct.qed_hwfn* %224, %struct.qed_ptt* %225, i64 %226, i64 %227, i32 1, i32* null)
  %229 = load i32, i32* %6, align 4
  %230 = icmp eq i32 %229, 130
  br i1 %230, label %231, label %259

231:                                              ; preds = %171
  %232 = load i64, i64* %7, align 8
  %233 = load i64, i64* %12, align 8
  %234 = udiv i64 %232, %233
  %235 = add i64 1, %234
  %236 = load i64, i64* %12, align 8
  %237 = mul i64 %235, %236
  store i64 %237, i64* %24, align 8
  %238 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %239 = load %struct.qed_ptt*, %struct.qed_ptt** %16, align 8
  %240 = load i32, i32* @PRS_REG_ROCE_DEST_QP_MAX_PF, align 4
  %241 = load i64, i64* %24, align 8
  %242 = sub i64 %241, 1
  %243 = trunc i64 %242 to i32
  %244 = call i32 @qed_wr(%struct.qed_hwfn* %238, %struct.qed_ptt* %239, i32 %240, i32 %243)
  %245 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %246 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %258, label %249

249:                                              ; preds = %231
  %250 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %251 = load %struct.qed_ptt*, %struct.qed_ptt** %16, align 8
  %252 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %253 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %252, i32 0, i32 2
  %254 = load i32, i32* %253, align 8
  %255 = call i32 @qed_wr(%struct.qed_hwfn* %250, %struct.qed_ptt* %251, i32 %254, i32 1)
  %256 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %257 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %256, i32 0, i32 0
  store i32 1, i32* %257, align 8
  br label %258

258:                                              ; preds = %249, %231
  br label %259

259:                                              ; preds = %258, %171
  br label %260

260:                                              ; preds = %259, %140
  %261 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %262 = load %struct.qed_ptt*, %struct.qed_ptt** %16, align 8
  %263 = call i32 @qed_ptt_release(%struct.qed_hwfn* %261, %struct.qed_ptt* %262)
  br label %264

264:                                              ; preds = %260, %121, %115
  %265 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %266 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %265, i32 0, i32 1
  %267 = load %struct.TYPE_14__*, %struct.TYPE_14__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %267, i32 0, i32 1
  %269 = call i32 @mutex_unlock(i32* %268)
  %270 = load i32, i32* %20, align 4
  store i32 %270, i32* %4, align 4
  br label %271

271:                                              ; preds = %264, %71
  %272 = load i32, i32* %4, align 4
  ret i32 %272
}

declare dso_local i64 @CONN_CXT_SIZE(%struct.qed_hwfn*) #1

declare dso_local i64 @TYPE1_TASK_CXT_SIZE(%struct.qed_hwfn*) #1

declare dso_local i64 @CDUT_SEG_BLK(i32) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*, ...) #1

declare dso_local i64 @ILT_PAGE_IN_BYTES(i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.qed_ptt* @qed_ptt_acquire(%struct.qed_hwfn*) #1

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @SET_FIELD(i64, i32, i32) #1

declare dso_local i32 @qed_dmae_host2grc(%struct.qed_hwfn*, %struct.qed_ptt*, i64, i64, i32, i32*) #1

declare dso_local i32 @qed_wr(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32) #1

declare dso_local i32 @qed_ptt_release(%struct.qed_hwfn*, %struct.qed_ptt*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
