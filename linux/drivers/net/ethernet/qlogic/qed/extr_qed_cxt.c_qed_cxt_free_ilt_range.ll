; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_cxt.c_qed_cxt_free_ilt_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_cxt.c_qed_cxt_free_ilt_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_10__*, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__*, %struct.qed_ilt_client_cfg* }
%struct.TYPE_9__ = type { i64, i64, i32* }
%struct.qed_ilt_client_cfg = type { %struct.TYPE_6__, %struct.qed_ilt_cli_blk* }
%struct.TYPE_6__ = type { i32 }
%struct.qed_ilt_cli_blk = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.qed_ptt = type { i32 }

@ILT_CLI_CDUC = common dso_local global i64 0, align 8
@CDUC_BLK = common dso_local global i64 0, align 8
@ILT_CLI_TSDM = common dso_local global i64 0, align 8
@SRQ_CXT_SIZE = common dso_local global i32 0, align 4
@SRQ_BLK = common dso_local global i64 0, align 8
@ILT_CLI_CDUT = common dso_local global i64 0, align 8
@QED_CXT_ROCE_TID_SEG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"-EINVALID elem type = %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"QED_TIME_OUT on ptt acquire - dynamic allocation\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@PSWRQ2_REG_ILT_MEMORY = common dso_local global i32 0, align 4
@ILT_REG_SIZE_IN_BYTES = common dso_local global i32 0, align 4
@ILT_ENTRY_IN_REGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, i32, i32, i32)* @qed_cxt_free_ilt_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_cxt_free_ilt_range(%struct.qed_hwfn* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qed_hwfn*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.qed_ilt_client_cfg*, align 8
  %19 = alloca %struct.qed_ilt_cli_blk*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.qed_ptt*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* %20, align 4
  store i64 0, i64* %22, align 8
  %27 = load i32, i32* %7, align 4
  switch i32 %27, label %73 [
    i32 130, label %28
    i32 129, label %43
    i32 128, label %57
  ]

28:                                               ; preds = %4
  %29 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %30 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %29, i32 0, i32 0
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 2
  %33 = load %struct.qed_ilt_client_cfg*, %struct.qed_ilt_client_cfg** %32, align 8
  %34 = load i64, i64* @ILT_CLI_CDUC, align 8
  %35 = getelementptr inbounds %struct.qed_ilt_client_cfg, %struct.qed_ilt_client_cfg* %33, i64 %34
  store %struct.qed_ilt_client_cfg* %35, %struct.qed_ilt_client_cfg** %18, align 8
  %36 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %37 = call i32 @CONN_CXT_SIZE(%struct.qed_hwfn* %36)
  store i32 %37, i32* %15, align 4
  %38 = load %struct.qed_ilt_client_cfg*, %struct.qed_ilt_client_cfg** %18, align 8
  %39 = getelementptr inbounds %struct.qed_ilt_client_cfg, %struct.qed_ilt_client_cfg* %38, i32 0, i32 1
  %40 = load %struct.qed_ilt_cli_blk*, %struct.qed_ilt_cli_blk** %39, align 8
  %41 = load i64, i64* @CDUC_BLK, align 8
  %42 = getelementptr inbounds %struct.qed_ilt_cli_blk, %struct.qed_ilt_cli_blk* %40, i64 %41
  store %struct.qed_ilt_cli_blk* %42, %struct.qed_ilt_cli_blk** %19, align 8
  br label %79

43:                                               ; preds = %4
  %44 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %45 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %44, i32 0, i32 0
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 2
  %48 = load %struct.qed_ilt_client_cfg*, %struct.qed_ilt_client_cfg** %47, align 8
  %49 = load i64, i64* @ILT_CLI_TSDM, align 8
  %50 = getelementptr inbounds %struct.qed_ilt_client_cfg, %struct.qed_ilt_client_cfg* %48, i64 %49
  store %struct.qed_ilt_client_cfg* %50, %struct.qed_ilt_client_cfg** %18, align 8
  %51 = load i32, i32* @SRQ_CXT_SIZE, align 4
  store i32 %51, i32* %15, align 4
  %52 = load %struct.qed_ilt_client_cfg*, %struct.qed_ilt_client_cfg** %18, align 8
  %53 = getelementptr inbounds %struct.qed_ilt_client_cfg, %struct.qed_ilt_client_cfg* %52, i32 0, i32 1
  %54 = load %struct.qed_ilt_cli_blk*, %struct.qed_ilt_cli_blk** %53, align 8
  %55 = load i64, i64* @SRQ_BLK, align 8
  %56 = getelementptr inbounds %struct.qed_ilt_cli_blk, %struct.qed_ilt_cli_blk* %54, i64 %55
  store %struct.qed_ilt_cli_blk* %56, %struct.qed_ilt_cli_blk** %19, align 8
  br label %79

57:                                               ; preds = %4
  %58 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %59 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %58, i32 0, i32 0
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 2
  %62 = load %struct.qed_ilt_client_cfg*, %struct.qed_ilt_client_cfg** %61, align 8
  %63 = load i64, i64* @ILT_CLI_CDUT, align 8
  %64 = getelementptr inbounds %struct.qed_ilt_client_cfg, %struct.qed_ilt_client_cfg* %62, i64 %63
  store %struct.qed_ilt_client_cfg* %64, %struct.qed_ilt_client_cfg** %18, align 8
  %65 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %66 = call i32 @TYPE1_TASK_CXT_SIZE(%struct.qed_hwfn* %65)
  store i32 %66, i32* %15, align 4
  %67 = load %struct.qed_ilt_client_cfg*, %struct.qed_ilt_client_cfg** %18, align 8
  %68 = getelementptr inbounds %struct.qed_ilt_client_cfg, %struct.qed_ilt_client_cfg* %67, i32 0, i32 1
  %69 = load %struct.qed_ilt_cli_blk*, %struct.qed_ilt_cli_blk** %68, align 8
  %70 = load i32, i32* @QED_CXT_ROCE_TID_SEG, align 4
  %71 = call i64 @CDUT_SEG_BLK(i32 %70)
  %72 = getelementptr inbounds %struct.qed_ilt_cli_blk, %struct.qed_ilt_cli_blk* %69, i64 %71
  store %struct.qed_ilt_cli_blk* %72, %struct.qed_ilt_cli_blk** %19, align 8
  br label %79

73:                                               ; preds = %4
  %74 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %75 = load i32, i32* %7, align 4
  %76 = call i32 (%struct.qed_hwfn*, i8*, ...) @DP_NOTICE(%struct.qed_hwfn* %74, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %5, align 4
  br label %241

79:                                               ; preds = %57, %43, %28
  %80 = load %struct.qed_ilt_client_cfg*, %struct.qed_ilt_client_cfg** %18, align 8
  %81 = getelementptr inbounds %struct.qed_ilt_client_cfg, %struct.qed_ilt_client_cfg* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  store i32 %83, i32* %16, align 4
  %84 = load i32, i32* %16, align 4
  %85 = call i32 @ILT_PAGE_IN_BYTES(i32 %84)
  %86 = load i32, i32* %15, align 4
  %87 = sdiv i32 %85, %86
  store i32 %87, i32* %17, align 4
  %88 = load %struct.qed_ilt_cli_blk*, %struct.qed_ilt_cli_blk** %19, align 8
  %89 = getelementptr inbounds %struct.qed_ilt_cli_blk, %struct.qed_ilt_cli_blk* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %17, align 4
  %93 = sdiv i32 %91, %92
  %94 = add nsw i32 %90, %93
  store i32 %94, i32* %10, align 4
  %95 = load %struct.qed_ilt_cli_blk*, %struct.qed_ilt_cli_blk** %19, align 8
  %96 = getelementptr inbounds %struct.qed_ilt_cli_blk, %struct.qed_ilt_cli_blk* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %20, align 4
  %99 = load i32, i32* %17, align 4
  %100 = sdiv i32 %98, %99
  %101 = add nsw i32 %97, %100
  store i32 %101, i32* %11, align 4
  %102 = load i32, i32* %20, align 4
  %103 = add nsw i32 %102, 1
  %104 = load i32, i32* %17, align 4
  %105 = sdiv i32 %103, %104
  %106 = load i32, i32* %20, align 4
  %107 = load i32, i32* %17, align 4
  %108 = sdiv i32 %106, %107
  %109 = icmp ne i32 %105, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %79
  %111 = load i32, i32* %11, align 4
  %112 = add nsw i32 %111, -1
  store i32 %112, i32* %11, align 4
  br label %113

113:                                              ; preds = %110, %79
  %114 = load i32, i32* %10, align 4
  %115 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %116 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %115, i32 0, i32 0
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = sub nsw i32 %114, %119
  store i32 %120, i32* %12, align 4
  %121 = load i32, i32* %11, align 4
  %122 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %123 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %122, i32 0, i32 0
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = sub nsw i32 %121, %126
  store i32 %127, i32* %13, align 4
  %128 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %129 = call %struct.qed_ptt* @qed_ptt_acquire(%struct.qed_hwfn* %128)
  store %struct.qed_ptt* %129, %struct.qed_ptt** %21, align 8
  %130 = load %struct.qed_ptt*, %struct.qed_ptt** %21, align 8
  %131 = icmp ne %struct.qed_ptt* %130, null
  br i1 %131, label %137, label %132

132:                                              ; preds = %113
  %133 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %134 = call i32 (%struct.qed_hwfn*, i8*, ...) @DP_NOTICE(%struct.qed_hwfn* %133, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %135 = load i32, i32* @EBUSY, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %5, align 4
  br label %241

137:                                              ; preds = %113
  %138 = load i32, i32* %12, align 4
  store i32 %138, i32* %23, align 4
  br label %139

139:                                              ; preds = %234, %137
  %140 = load i32, i32* %23, align 4
  %141 = load i32, i32* %13, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %237

143:                                              ; preds = %139
  %144 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %145 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %144, i32 0, i32 0
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 1
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %147, align 8
  %149 = load i32, i32* %23, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 2
  %153 = load i32*, i32** %152, align 8
  %154 = icmp ne i32* %153, null
  br i1 %154, label %156, label %155

155:                                              ; preds = %143
  br label %234

156:                                              ; preds = %143
  %157 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %158 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %157, i32 0, i32 1
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 0
  %163 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %164 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %163, i32 0, i32 0
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 1
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %166, align 8
  %168 = load i32, i32* %23, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %174 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %173, i32 0, i32 0
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 1
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %176, align 8
  %178 = load i32, i32* %23, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 2
  %182 = load i32*, i32** %181, align 8
  %183 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %184 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %183, i32 0, i32 0
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 1
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** %186, align 8
  %188 = load i32, i32* %23, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = call i32 @dma_free_coherent(i32* %162, i64 %172, i32* %182, i64 %192)
  %194 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %195 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %194, i32 0, i32 0
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i32 0, i32 1
  %198 = load %struct.TYPE_9__*, %struct.TYPE_9__** %197, align 8
  %199 = load i32, i32* %23, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i32 0, i32 2
  store i32* null, i32** %202, align 8
  %203 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %204 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %203, i32 0, i32 0
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 1
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %206, align 8
  %208 = load i32, i32* %23, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 1
  store i64 0, i64* %211, align 8
  %212 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %213 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %212, i32 0, i32 0
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 1
  %216 = load %struct.TYPE_9__*, %struct.TYPE_9__** %215, align 8
  %217 = load i32, i32* %23, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 0
  store i64 0, i64* %220, align 8
  %221 = load i32, i32* @PSWRQ2_REG_ILT_MEMORY, align 4
  %222 = load i32, i32* %10, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %10, align 4
  %224 = load i32, i32* @ILT_REG_SIZE_IN_BYTES, align 4
  %225 = mul nsw i32 %222, %224
  %226 = load i32, i32* @ILT_ENTRY_IN_REGS, align 4
  %227 = mul nsw i32 %225, %226
  %228 = add nsw i32 %221, %227
  store i32 %228, i32* %14, align 4
  %229 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %230 = load %struct.qed_ptt*, %struct.qed_ptt** %21, align 8
  %231 = ptrtoint i64* %22 to i64
  %232 = load i32, i32* %14, align 4
  %233 = call i32 @qed_dmae_host2grc(%struct.qed_hwfn* %229, %struct.qed_ptt* %230, i64 %231, i32 %232, i32 2, i32* null)
  br label %234

234:                                              ; preds = %156, %155
  %235 = load i32, i32* %23, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %23, align 4
  br label %139

237:                                              ; preds = %139
  %238 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %239 = load %struct.qed_ptt*, %struct.qed_ptt** %21, align 8
  %240 = call i32 @qed_ptt_release(%struct.qed_hwfn* %238, %struct.qed_ptt* %239)
  store i32 0, i32* %5, align 4
  br label %241

241:                                              ; preds = %237, %132, %73
  %242 = load i32, i32* %5, align 4
  ret i32 %242
}

declare dso_local i32 @CONN_CXT_SIZE(%struct.qed_hwfn*) #1

declare dso_local i32 @TYPE1_TASK_CXT_SIZE(%struct.qed_hwfn*) #1

declare dso_local i64 @CDUT_SEG_BLK(i32) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*, ...) #1

declare dso_local i32 @ILT_PAGE_IN_BYTES(i32) #1

declare dso_local %struct.qed_ptt* @qed_ptt_acquire(%struct.qed_hwfn*) #1

declare dso_local i32 @dma_free_coherent(i32*, i64, i32*, i64) #1

declare dso_local i32 @qed_dmae_host2grc(%struct.qed_hwfn*, %struct.qed_ptt*, i64, i32, i32, i32*) #1

declare dso_local i32 @qed_ptt_release(%struct.qed_hwfn*, %struct.qed_ptt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
