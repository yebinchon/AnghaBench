; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_cxt.c_qed_cxt_mngr_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_cxt.c_qed_cxt_mngr_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.qed_cxt_mngr*, %struct.TYPE_10__* }
%struct.qed_cxt_mngr = type { i32, i32, i32*, %struct.qed_ilt_client_cfg* }
%struct.qed_ilt_client_cfg = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i8* }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CDUC = common dso_local global i32 0, align 4
@FIRST_ILT = common dso_local global i32 0, align 4
@ILT_CLI_CDUC = common dso_local global i64 0, align 8
@LAST_ILT = common dso_local global i32 0, align 4
@P_SIZE = common dso_local global i32 0, align 4
@QM = common dso_local global i32 0, align 4
@ILT_CLI_QM = common dso_local global i64 0, align 8
@TM = common dso_local global i32 0, align 4
@ILT_CLI_TM = common dso_local global i64 0, align 8
@SRC = common dso_local global i32 0, align 4
@ILT_CLI_SRC = common dso_local global i64 0, align 8
@CDUT = common dso_local global i32 0, align 4
@ILT_CLI_CDUT = common dso_local global i64 0, align 8
@TSDM = common dso_local global i32 0, align 4
@ILT_CLI_TSDM = common dso_local global i64 0, align 8
@ILT_CLI_MAX = common dso_local global i64 0, align 8
@ILT_DEFAULT_HW_P_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_cxt_mngr_alloc(%struct.qed_hwfn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qed_hwfn*, align 8
  %4 = alloca %struct.qed_ilt_client_cfg*, align 8
  %5 = alloca %struct.qed_cxt_mngr*, align 8
  %6 = alloca i64, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %3, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.qed_cxt_mngr* @kzalloc(i32 24, i32 %7)
  store %struct.qed_cxt_mngr* %8, %struct.qed_cxt_mngr** %5, align 8
  %9 = load %struct.qed_cxt_mngr*, %struct.qed_cxt_mngr** %5, align 8
  %10 = icmp ne %struct.qed_cxt_mngr* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %214

14:                                               ; preds = %1
  %15 = load %struct.qed_cxt_mngr*, %struct.qed_cxt_mngr** %5, align 8
  %16 = getelementptr inbounds %struct.qed_cxt_mngr, %struct.qed_cxt_mngr* %15, i32 0, i32 3
  %17 = load %struct.qed_ilt_client_cfg*, %struct.qed_ilt_client_cfg** %16, align 8
  store %struct.qed_ilt_client_cfg* %17, %struct.qed_ilt_client_cfg** %4, align 8
  %18 = load i32, i32* @CDUC, align 4
  %19 = load i32, i32* @FIRST_ILT, align 4
  %20 = call i8* @ILT_CFG_REG(i32 %18, i32 %19)
  %21 = load %struct.qed_ilt_client_cfg*, %struct.qed_ilt_client_cfg** %4, align 8
  %22 = load i64, i64* @ILT_CLI_CDUC, align 8
  %23 = getelementptr inbounds %struct.qed_ilt_client_cfg, %struct.qed_ilt_client_cfg* %21, i64 %22
  %24 = getelementptr inbounds %struct.qed_ilt_client_cfg, %struct.qed_ilt_client_cfg* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  store i8* %20, i8** %25, align 8
  %26 = load i32, i32* @CDUC, align 4
  %27 = load i32, i32* @LAST_ILT, align 4
  %28 = call i8* @ILT_CFG_REG(i32 %26, i32 %27)
  %29 = load %struct.qed_ilt_client_cfg*, %struct.qed_ilt_client_cfg** %4, align 8
  %30 = load i64, i64* @ILT_CLI_CDUC, align 8
  %31 = getelementptr inbounds %struct.qed_ilt_client_cfg, %struct.qed_ilt_client_cfg* %29, i64 %30
  %32 = getelementptr inbounds %struct.qed_ilt_client_cfg, %struct.qed_ilt_client_cfg* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  store i8* %28, i8** %33, align 8
  %34 = load i32, i32* @CDUC, align 4
  %35 = load i32, i32* @P_SIZE, align 4
  %36 = call i8* @ILT_CFG_REG(i32 %34, i32 %35)
  %37 = load %struct.qed_ilt_client_cfg*, %struct.qed_ilt_client_cfg** %4, align 8
  %38 = load i64, i64* @ILT_CLI_CDUC, align 8
  %39 = getelementptr inbounds %struct.qed_ilt_client_cfg, %struct.qed_ilt_client_cfg* %37, i64 %38
  %40 = getelementptr inbounds %struct.qed_ilt_client_cfg, %struct.qed_ilt_client_cfg* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  store i8* %36, i8** %41, align 8
  %42 = load i32, i32* @QM, align 4
  %43 = load i32, i32* @FIRST_ILT, align 4
  %44 = call i8* @ILT_CFG_REG(i32 %42, i32 %43)
  %45 = load %struct.qed_ilt_client_cfg*, %struct.qed_ilt_client_cfg** %4, align 8
  %46 = load i64, i64* @ILT_CLI_QM, align 8
  %47 = getelementptr inbounds %struct.qed_ilt_client_cfg, %struct.qed_ilt_client_cfg* %45, i64 %46
  %48 = getelementptr inbounds %struct.qed_ilt_client_cfg, %struct.qed_ilt_client_cfg* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  store i8* %44, i8** %49, align 8
  %50 = load i32, i32* @QM, align 4
  %51 = load i32, i32* @LAST_ILT, align 4
  %52 = call i8* @ILT_CFG_REG(i32 %50, i32 %51)
  %53 = load %struct.qed_ilt_client_cfg*, %struct.qed_ilt_client_cfg** %4, align 8
  %54 = load i64, i64* @ILT_CLI_QM, align 8
  %55 = getelementptr inbounds %struct.qed_ilt_client_cfg, %struct.qed_ilt_client_cfg* %53, i64 %54
  %56 = getelementptr inbounds %struct.qed_ilt_client_cfg, %struct.qed_ilt_client_cfg* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  store i8* %52, i8** %57, align 8
  %58 = load i32, i32* @QM, align 4
  %59 = load i32, i32* @P_SIZE, align 4
  %60 = call i8* @ILT_CFG_REG(i32 %58, i32 %59)
  %61 = load %struct.qed_ilt_client_cfg*, %struct.qed_ilt_client_cfg** %4, align 8
  %62 = load i64, i64* @ILT_CLI_QM, align 8
  %63 = getelementptr inbounds %struct.qed_ilt_client_cfg, %struct.qed_ilt_client_cfg* %61, i64 %62
  %64 = getelementptr inbounds %struct.qed_ilt_client_cfg, %struct.qed_ilt_client_cfg* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  store i8* %60, i8** %65, align 8
  %66 = load i32, i32* @TM, align 4
  %67 = load i32, i32* @FIRST_ILT, align 4
  %68 = call i8* @ILT_CFG_REG(i32 %66, i32 %67)
  %69 = load %struct.qed_ilt_client_cfg*, %struct.qed_ilt_client_cfg** %4, align 8
  %70 = load i64, i64* @ILT_CLI_TM, align 8
  %71 = getelementptr inbounds %struct.qed_ilt_client_cfg, %struct.qed_ilt_client_cfg* %69, i64 %70
  %72 = getelementptr inbounds %struct.qed_ilt_client_cfg, %struct.qed_ilt_client_cfg* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  store i8* %68, i8** %73, align 8
  %74 = load i32, i32* @TM, align 4
  %75 = load i32, i32* @LAST_ILT, align 4
  %76 = call i8* @ILT_CFG_REG(i32 %74, i32 %75)
  %77 = load %struct.qed_ilt_client_cfg*, %struct.qed_ilt_client_cfg** %4, align 8
  %78 = load i64, i64* @ILT_CLI_TM, align 8
  %79 = getelementptr inbounds %struct.qed_ilt_client_cfg, %struct.qed_ilt_client_cfg* %77, i64 %78
  %80 = getelementptr inbounds %struct.qed_ilt_client_cfg, %struct.qed_ilt_client_cfg* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  store i8* %76, i8** %81, align 8
  %82 = load i32, i32* @TM, align 4
  %83 = load i32, i32* @P_SIZE, align 4
  %84 = call i8* @ILT_CFG_REG(i32 %82, i32 %83)
  %85 = load %struct.qed_ilt_client_cfg*, %struct.qed_ilt_client_cfg** %4, align 8
  %86 = load i64, i64* @ILT_CLI_TM, align 8
  %87 = getelementptr inbounds %struct.qed_ilt_client_cfg, %struct.qed_ilt_client_cfg* %85, i64 %86
  %88 = getelementptr inbounds %struct.qed_ilt_client_cfg, %struct.qed_ilt_client_cfg* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  store i8* %84, i8** %89, align 8
  %90 = load i32, i32* @SRC, align 4
  %91 = load i32, i32* @FIRST_ILT, align 4
  %92 = call i8* @ILT_CFG_REG(i32 %90, i32 %91)
  %93 = load %struct.qed_ilt_client_cfg*, %struct.qed_ilt_client_cfg** %4, align 8
  %94 = load i64, i64* @ILT_CLI_SRC, align 8
  %95 = getelementptr inbounds %struct.qed_ilt_client_cfg, %struct.qed_ilt_client_cfg* %93, i64 %94
  %96 = getelementptr inbounds %struct.qed_ilt_client_cfg, %struct.qed_ilt_client_cfg* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  store i8* %92, i8** %97, align 8
  %98 = load i32, i32* @SRC, align 4
  %99 = load i32, i32* @LAST_ILT, align 4
  %100 = call i8* @ILT_CFG_REG(i32 %98, i32 %99)
  %101 = load %struct.qed_ilt_client_cfg*, %struct.qed_ilt_client_cfg** %4, align 8
  %102 = load i64, i64* @ILT_CLI_SRC, align 8
  %103 = getelementptr inbounds %struct.qed_ilt_client_cfg, %struct.qed_ilt_client_cfg* %101, i64 %102
  %104 = getelementptr inbounds %struct.qed_ilt_client_cfg, %struct.qed_ilt_client_cfg* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  store i8* %100, i8** %105, align 8
  %106 = load i32, i32* @SRC, align 4
  %107 = load i32, i32* @P_SIZE, align 4
  %108 = call i8* @ILT_CFG_REG(i32 %106, i32 %107)
  %109 = load %struct.qed_ilt_client_cfg*, %struct.qed_ilt_client_cfg** %4, align 8
  %110 = load i64, i64* @ILT_CLI_SRC, align 8
  %111 = getelementptr inbounds %struct.qed_ilt_client_cfg, %struct.qed_ilt_client_cfg* %109, i64 %110
  %112 = getelementptr inbounds %struct.qed_ilt_client_cfg, %struct.qed_ilt_client_cfg* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 1
  store i8* %108, i8** %113, align 8
  %114 = load i32, i32* @CDUT, align 4
  %115 = load i32, i32* @FIRST_ILT, align 4
  %116 = call i8* @ILT_CFG_REG(i32 %114, i32 %115)
  %117 = load %struct.qed_ilt_client_cfg*, %struct.qed_ilt_client_cfg** %4, align 8
  %118 = load i64, i64* @ILT_CLI_CDUT, align 8
  %119 = getelementptr inbounds %struct.qed_ilt_client_cfg, %struct.qed_ilt_client_cfg* %117, i64 %118
  %120 = getelementptr inbounds %struct.qed_ilt_client_cfg, %struct.qed_ilt_client_cfg* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  store i8* %116, i8** %121, align 8
  %122 = load i32, i32* @CDUT, align 4
  %123 = load i32, i32* @LAST_ILT, align 4
  %124 = call i8* @ILT_CFG_REG(i32 %122, i32 %123)
  %125 = load %struct.qed_ilt_client_cfg*, %struct.qed_ilt_client_cfg** %4, align 8
  %126 = load i64, i64* @ILT_CLI_CDUT, align 8
  %127 = getelementptr inbounds %struct.qed_ilt_client_cfg, %struct.qed_ilt_client_cfg* %125, i64 %126
  %128 = getelementptr inbounds %struct.qed_ilt_client_cfg, %struct.qed_ilt_client_cfg* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  store i8* %124, i8** %129, align 8
  %130 = load i32, i32* @CDUT, align 4
  %131 = load i32, i32* @P_SIZE, align 4
  %132 = call i8* @ILT_CFG_REG(i32 %130, i32 %131)
  %133 = load %struct.qed_ilt_client_cfg*, %struct.qed_ilt_client_cfg** %4, align 8
  %134 = load i64, i64* @ILT_CLI_CDUT, align 8
  %135 = getelementptr inbounds %struct.qed_ilt_client_cfg, %struct.qed_ilt_client_cfg* %133, i64 %134
  %136 = getelementptr inbounds %struct.qed_ilt_client_cfg, %struct.qed_ilt_client_cfg* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 1
  store i8* %132, i8** %137, align 8
  %138 = load i32, i32* @TSDM, align 4
  %139 = load i32, i32* @FIRST_ILT, align 4
  %140 = call i8* @ILT_CFG_REG(i32 %138, i32 %139)
  %141 = load %struct.qed_ilt_client_cfg*, %struct.qed_ilt_client_cfg** %4, align 8
  %142 = load i64, i64* @ILT_CLI_TSDM, align 8
  %143 = getelementptr inbounds %struct.qed_ilt_client_cfg, %struct.qed_ilt_client_cfg* %141, i64 %142
  %144 = getelementptr inbounds %struct.qed_ilt_client_cfg, %struct.qed_ilt_client_cfg* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  store i8* %140, i8** %145, align 8
  %146 = load i32, i32* @TSDM, align 4
  %147 = load i32, i32* @LAST_ILT, align 4
  %148 = call i8* @ILT_CFG_REG(i32 %146, i32 %147)
  %149 = load %struct.qed_ilt_client_cfg*, %struct.qed_ilt_client_cfg** %4, align 8
  %150 = load i64, i64* @ILT_CLI_TSDM, align 8
  %151 = getelementptr inbounds %struct.qed_ilt_client_cfg, %struct.qed_ilt_client_cfg* %149, i64 %150
  %152 = getelementptr inbounds %struct.qed_ilt_client_cfg, %struct.qed_ilt_client_cfg* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 0
  store i8* %148, i8** %153, align 8
  %154 = load i32, i32* @TSDM, align 4
  %155 = load i32, i32* @P_SIZE, align 4
  %156 = call i8* @ILT_CFG_REG(i32 %154, i32 %155)
  %157 = load %struct.qed_ilt_client_cfg*, %struct.qed_ilt_client_cfg** %4, align 8
  %158 = load i64, i64* @ILT_CLI_TSDM, align 8
  %159 = getelementptr inbounds %struct.qed_ilt_client_cfg, %struct.qed_ilt_client_cfg* %157, i64 %158
  %160 = getelementptr inbounds %struct.qed_ilt_client_cfg, %struct.qed_ilt_client_cfg* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 1
  store i8* %156, i8** %161, align 8
  store i64 0, i64* %6, align 8
  br label %162

162:                                              ; preds = %175, %14
  %163 = load i64, i64* %6, align 8
  %164 = load i64, i64* @ILT_CLI_MAX, align 8
  %165 = icmp ult i64 %163, %164
  br i1 %165, label %166, label %178

166:                                              ; preds = %162
  %167 = load i32, i32* @ILT_DEFAULT_HW_P_SIZE, align 4
  %168 = load %struct.qed_cxt_mngr*, %struct.qed_cxt_mngr** %5, align 8
  %169 = getelementptr inbounds %struct.qed_cxt_mngr, %struct.qed_cxt_mngr* %168, i32 0, i32 3
  %170 = load %struct.qed_ilt_client_cfg*, %struct.qed_ilt_client_cfg** %169, align 8
  %171 = load i64, i64* %6, align 8
  %172 = getelementptr inbounds %struct.qed_ilt_client_cfg, %struct.qed_ilt_client_cfg* %170, i64 %171
  %173 = getelementptr inbounds %struct.qed_ilt_client_cfg, %struct.qed_ilt_client_cfg* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 0
  store i32 %167, i32* %174, align 8
  br label %175

175:                                              ; preds = %166
  %176 = load i64, i64* %6, align 8
  %177 = add i64 %176, 1
  store i64 %177, i64* %6, align 8
  br label %162

178:                                              ; preds = %162
  %179 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %180 = call i32 @TYPE0_TASK_CXT_SIZE(%struct.qed_hwfn* %179)
  %181 = load %struct.qed_cxt_mngr*, %struct.qed_cxt_mngr** %5, align 8
  %182 = getelementptr inbounds %struct.qed_cxt_mngr, %struct.qed_cxt_mngr* %181, i32 0, i32 2
  %183 = load i32*, i32** %182, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 0
  store i32 %180, i32* %184, align 4
  %185 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %186 = call i32 @TYPE1_TASK_CXT_SIZE(%struct.qed_hwfn* %185)
  %187 = load %struct.qed_cxt_mngr*, %struct.qed_cxt_mngr** %5, align 8
  %188 = getelementptr inbounds %struct.qed_cxt_mngr, %struct.qed_cxt_mngr* %187, i32 0, i32 2
  %189 = load i32*, i32** %188, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 1
  store i32 %186, i32* %190, align 4
  %191 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %192 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %191, i32 0, i32 1
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 0
  %195 = load %struct.TYPE_9__*, %struct.TYPE_9__** %194, align 8
  %196 = icmp ne %struct.TYPE_9__* %195, null
  br i1 %196, label %197, label %207

197:                                              ; preds = %178
  %198 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %199 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %198, i32 0, i32 1
  %200 = load %struct.TYPE_10__*, %struct.TYPE_10__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i32 0, i32 0
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.qed_cxt_mngr*, %struct.qed_cxt_mngr** %5, align 8
  %206 = getelementptr inbounds %struct.qed_cxt_mngr, %struct.qed_cxt_mngr* %205, i32 0, i32 1
  store i32 %204, i32* %206, align 4
  br label %207

207:                                              ; preds = %197, %178
  %208 = load %struct.qed_cxt_mngr*, %struct.qed_cxt_mngr** %5, align 8
  %209 = getelementptr inbounds %struct.qed_cxt_mngr, %struct.qed_cxt_mngr* %208, i32 0, i32 0
  %210 = call i32 @mutex_init(i32* %209)
  %211 = load %struct.qed_cxt_mngr*, %struct.qed_cxt_mngr** %5, align 8
  %212 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %213 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %212, i32 0, i32 0
  store %struct.qed_cxt_mngr* %211, %struct.qed_cxt_mngr** %213, align 8
  store i32 0, i32* %2, align 4
  br label %214

214:                                              ; preds = %207, %11
  %215 = load i32, i32* %2, align 4
  ret i32 %215
}

declare dso_local %struct.qed_cxt_mngr* @kzalloc(i32, i32) #1

declare dso_local i8* @ILT_CFG_REG(i32, i32) #1

declare dso_local i32 @TYPE0_TASK_CXT_SIZE(%struct.qed_hwfn*) #1

declare dso_local i32 @TYPE1_TASK_CXT_SIZE(%struct.qed_hwfn*) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
