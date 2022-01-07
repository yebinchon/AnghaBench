; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_idle_chk_dump_failure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_idle_chk_dump_failure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.qed_hwfn = type { %struct.dbg_tools_data }
%struct.dbg_tools_data = type { i32* }
%struct.qed_ptt = type { i32 }
%struct.dbg_idle_chk_rule = type { i64, i64, i64, i32 }
%struct.dbg_idle_chk_cond_reg = type { i32, i64, i32 }
%struct.dbg_idle_chk_info_reg = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.dbg_idle_chk_result_hdr = type { i64, i64, i32, i32, i32, i32, i8*, i8* }
%union.dbg_idle_chk_reg = type { %struct.dbg_idle_chk_cond_reg }
%struct.dbg_idle_chk_result_reg_hdr = type { i64, i64, i32, i32, i32, i32, i8*, i8* }

@s_dbg_arrays = common dso_local global %struct.TYPE_4__* null, align 8
@BIN_BUF_DBG_IDLE_CHK_REGS = common dso_local global i64 0, align 8
@IDLE_CHK_RESULT_HDR_DWORDS = common dso_local global i64 0, align 8
@IDLE_CHK_RESULT_REG_HDR_DWORDS = common dso_local global i32 0, align 4
@DBG_IDLE_CHK_RESULT_REG_HDR_IS_MEM = common dso_local global i32 0, align 4
@DBG_IDLE_CHK_RESULT_REG_HDR_REG_ID = common dso_local global i32 0, align 4
@DBG_IDLE_CHK_INFO_REG_BLOCK_ID = common dso_local global i32 0, align 4
@MAX_BLOCK_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Invalid block_id\0A\00", align 1
@DBG_MODE_HDR_EVAL_MODE = common dso_local global i32 0, align 4
@DBG_MODE_HDR_MODES_BUF_OFFSET = common dso_local global i32 0, align 4
@DBG_IDLE_CHK_INFO_REG_ADDRESS = common dso_local global i32 0, align 4
@DBG_IDLE_CHK_INFO_REG_WIDE_BUS = common dso_local global i32 0, align 4
@SPLIT_TYPE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_ptt*, i32*, i32, i8*, %struct.dbg_idle_chk_rule*, i8*, i32*)* @qed_idle_chk_dump_failure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_idle_chk_dump_failure(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, i32* %2, i32 %3, i8* %4, %struct.dbg_idle_chk_rule* %5, i8* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.qed_hwfn*, align 8
  %11 = alloca %struct.qed_ptt*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.dbg_idle_chk_rule*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.dbg_tools_data*, align 8
  %19 = alloca %struct.dbg_idle_chk_cond_reg*, align 8
  %20 = alloca %struct.dbg_idle_chk_info_reg*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.dbg_idle_chk_result_hdr*, align 8
  %25 = alloca %union.dbg_idle_chk_reg*, align 8
  %26 = alloca i64, align 8
  %27 = alloca %struct.dbg_idle_chk_cond_reg*, align 8
  %28 = alloca %struct.dbg_idle_chk_result_reg_hdr*, align 8
  %29 = alloca %struct.dbg_idle_chk_info_reg*, align 8
  %30 = alloca i32, align 4
  %31 = alloca %struct.dbg_idle_chk_result_reg_hdr*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i8*, align 8
  %36 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %10, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32 %3, i32* %13, align 4
  store i8* %4, i8** %14, align 8
  store %struct.dbg_idle_chk_rule* %5, %struct.dbg_idle_chk_rule** %15, align 8
  store i8* %6, i8** %16, align 8
  store i32* %7, i32** %17, align 8
  %37 = load %struct.qed_hwfn*, %struct.qed_hwfn** %10, align 8
  %38 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %37, i32 0, i32 0
  store %struct.dbg_tools_data* %38, %struct.dbg_tools_data** %18, align 8
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %39 = load i32*, i32** %12, align 8
  %40 = bitcast i32* %39 to %struct.dbg_idle_chk_result_hdr*
  store %struct.dbg_idle_chk_result_hdr* %40, %struct.dbg_idle_chk_result_hdr** %24, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @s_dbg_arrays, align 8
  %42 = load i64, i64* @BIN_BUF_DBG_IDLE_CHK_REGS, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to %union.dbg_idle_chk_reg*
  %47 = load %struct.dbg_idle_chk_rule*, %struct.dbg_idle_chk_rule** %15, align 8
  %48 = getelementptr inbounds %struct.dbg_idle_chk_rule, %struct.dbg_idle_chk_rule* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %union.dbg_idle_chk_reg, %union.dbg_idle_chk_reg* %46, i64 %49
  store %union.dbg_idle_chk_reg* %50, %union.dbg_idle_chk_reg** %25, align 8
  %51 = load %union.dbg_idle_chk_reg*, %union.dbg_idle_chk_reg** %25, align 8
  %52 = getelementptr inbounds %union.dbg_idle_chk_reg, %union.dbg_idle_chk_reg* %51, i64 0
  %53 = bitcast %union.dbg_idle_chk_reg* %52 to %struct.dbg_idle_chk_cond_reg*
  store %struct.dbg_idle_chk_cond_reg* %53, %struct.dbg_idle_chk_cond_reg** %19, align 8
  %54 = load %union.dbg_idle_chk_reg*, %union.dbg_idle_chk_reg** %25, align 8
  %55 = load %struct.dbg_idle_chk_rule*, %struct.dbg_idle_chk_rule** %15, align 8
  %56 = getelementptr inbounds %struct.dbg_idle_chk_rule, %struct.dbg_idle_chk_rule* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %union.dbg_idle_chk_reg, %union.dbg_idle_chk_reg* %54, i64 %57
  %59 = bitcast %union.dbg_idle_chk_reg* %58 to %struct.dbg_idle_chk_info_reg*
  store %struct.dbg_idle_chk_info_reg* %59, %struct.dbg_idle_chk_info_reg** %20, align 8
  %60 = load i32, i32* %13, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %82

62:                                               ; preds = %8
  %63 = load %struct.dbg_idle_chk_result_hdr*, %struct.dbg_idle_chk_result_hdr** %24, align 8
  %64 = bitcast %struct.dbg_idle_chk_result_hdr* %63 to %struct.dbg_idle_chk_result_reg_hdr*
  %65 = call i32 @memset(%struct.dbg_idle_chk_result_reg_hdr* %64, i32 0, i32 48)
  %66 = load i8*, i8** %14, align 8
  %67 = load %struct.dbg_idle_chk_result_hdr*, %struct.dbg_idle_chk_result_hdr** %24, align 8
  %68 = getelementptr inbounds %struct.dbg_idle_chk_result_hdr, %struct.dbg_idle_chk_result_hdr* %67, i32 0, i32 7
  store i8* %66, i8** %68, align 8
  %69 = load i8*, i8** %16, align 8
  %70 = load %struct.dbg_idle_chk_result_hdr*, %struct.dbg_idle_chk_result_hdr** %24, align 8
  %71 = getelementptr inbounds %struct.dbg_idle_chk_result_hdr, %struct.dbg_idle_chk_result_hdr* %70, i32 0, i32 6
  store i8* %69, i8** %71, align 8
  %72 = load %struct.dbg_idle_chk_rule*, %struct.dbg_idle_chk_rule** %15, align 8
  %73 = getelementptr inbounds %struct.dbg_idle_chk_rule, %struct.dbg_idle_chk_rule* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.dbg_idle_chk_result_hdr*, %struct.dbg_idle_chk_result_hdr** %24, align 8
  %76 = getelementptr inbounds %struct.dbg_idle_chk_result_hdr, %struct.dbg_idle_chk_result_hdr* %75, i32 0, i32 5
  store i32 %74, i32* %76, align 4
  %77 = load %struct.dbg_idle_chk_rule*, %struct.dbg_idle_chk_rule** %15, align 8
  %78 = getelementptr inbounds %struct.dbg_idle_chk_rule, %struct.dbg_idle_chk_rule* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.dbg_idle_chk_result_hdr*, %struct.dbg_idle_chk_result_hdr** %24, align 8
  %81 = getelementptr inbounds %struct.dbg_idle_chk_result_hdr, %struct.dbg_idle_chk_result_hdr* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  br label %82

82:                                               ; preds = %62, %8
  %83 = load i64, i64* @IDLE_CHK_RESULT_HDR_DWORDS, align 8
  %84 = load i32, i32* %23, align 4
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %85, %83
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %23, align 4
  store i64 0, i64* %26, align 8
  br label %88

88:                                               ; preds = %178, %82
  %89 = load i64, i64* %26, align 8
  %90 = load %struct.dbg_idle_chk_rule*, %struct.dbg_idle_chk_rule** %15, align 8
  %91 = getelementptr inbounds %struct.dbg_idle_chk_rule, %struct.dbg_idle_chk_rule* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp ult i64 %89, %92
  br i1 %93, label %94, label %181

94:                                               ; preds = %88
  %95 = load %struct.dbg_idle_chk_cond_reg*, %struct.dbg_idle_chk_cond_reg** %19, align 8
  %96 = load i64, i64* %26, align 8
  %97 = getelementptr inbounds %struct.dbg_idle_chk_cond_reg, %struct.dbg_idle_chk_cond_reg* %95, i64 %96
  store %struct.dbg_idle_chk_cond_reg* %97, %struct.dbg_idle_chk_cond_reg** %27, align 8
  %98 = load i32*, i32** %12, align 8
  %99 = load i32, i32* %23, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = bitcast i32* %101 to %struct.dbg_idle_chk_result_reg_hdr*
  store %struct.dbg_idle_chk_result_reg_hdr* %102, %struct.dbg_idle_chk_result_reg_hdr** %28, align 8
  %103 = load i32, i32* %13, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %113, label %105

105:                                              ; preds = %94
  %106 = load i32, i32* @IDLE_CHK_RESULT_REG_HDR_DWORDS, align 4
  %107 = load %struct.dbg_idle_chk_cond_reg*, %struct.dbg_idle_chk_cond_reg** %27, align 8
  %108 = getelementptr inbounds %struct.dbg_idle_chk_cond_reg, %struct.dbg_idle_chk_cond_reg* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = add nsw i32 %106, %109
  %111 = load i32, i32* %23, align 4
  %112 = add nsw i32 %111, %110
  store i32 %112, i32* %23, align 4
  br label %178

113:                                              ; preds = %94
  %114 = load i32, i32* @IDLE_CHK_RESULT_REG_HDR_DWORDS, align 4
  %115 = load i32, i32* %23, align 4
  %116 = add nsw i32 %115, %114
  store i32 %116, i32* %23, align 4
  %117 = load %struct.dbg_idle_chk_result_reg_hdr*, %struct.dbg_idle_chk_result_reg_hdr** %28, align 8
  %118 = call i32 @memset(%struct.dbg_idle_chk_result_reg_hdr* %117, i32 0, i32 48)
  %119 = load %struct.dbg_idle_chk_cond_reg*, %struct.dbg_idle_chk_cond_reg** %27, align 8
  %120 = getelementptr inbounds %struct.dbg_idle_chk_cond_reg, %struct.dbg_idle_chk_cond_reg* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.dbg_idle_chk_result_reg_hdr*, %struct.dbg_idle_chk_result_reg_hdr** %28, align 8
  %123 = getelementptr inbounds %struct.dbg_idle_chk_result_reg_hdr, %struct.dbg_idle_chk_result_reg_hdr* %122, i32 0, i32 1
  store i64 %121, i64* %123, align 8
  %124 = load %struct.dbg_idle_chk_cond_reg*, %struct.dbg_idle_chk_cond_reg** %27, align 8
  %125 = getelementptr inbounds %struct.dbg_idle_chk_cond_reg, %struct.dbg_idle_chk_cond_reg* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.dbg_idle_chk_result_reg_hdr*, %struct.dbg_idle_chk_result_reg_hdr** %28, align 8
  %128 = getelementptr inbounds %struct.dbg_idle_chk_result_reg_hdr, %struct.dbg_idle_chk_result_reg_hdr* %127, i32 0, i32 2
  store i32 %126, i32* %128, align 8
  %129 = load %struct.dbg_idle_chk_result_reg_hdr*, %struct.dbg_idle_chk_result_reg_hdr** %28, align 8
  %130 = getelementptr inbounds %struct.dbg_idle_chk_result_reg_hdr, %struct.dbg_idle_chk_result_reg_hdr* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @DBG_IDLE_CHK_RESULT_REG_HDR_IS_MEM, align 4
  %133 = load %struct.dbg_idle_chk_cond_reg*, %struct.dbg_idle_chk_cond_reg** %27, align 8
  %134 = getelementptr inbounds %struct.dbg_idle_chk_cond_reg, %struct.dbg_idle_chk_cond_reg* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = icmp sgt i32 %135, 1
  br i1 %136, label %142, label %137

137:                                              ; preds = %113
  %138 = load %struct.dbg_idle_chk_cond_reg*, %struct.dbg_idle_chk_cond_reg** %27, align 8
  %139 = getelementptr inbounds %struct.dbg_idle_chk_cond_reg, %struct.dbg_idle_chk_cond_reg* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = icmp sgt i64 %140, 0
  br label %142

142:                                              ; preds = %137, %113
  %143 = phi i1 [ true, %113 ], [ %141, %137 ]
  %144 = zext i1 %143 to i64
  %145 = select i1 %143, i32 1, i32 0
  %146 = sext i32 %145 to i64
  %147 = call i32 @SET_FIELD(i32 %131, i32 %132, i64 %146)
  %148 = load %struct.dbg_idle_chk_result_reg_hdr*, %struct.dbg_idle_chk_result_reg_hdr** %28, align 8
  %149 = getelementptr inbounds %struct.dbg_idle_chk_result_reg_hdr, %struct.dbg_idle_chk_result_reg_hdr* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @DBG_IDLE_CHK_RESULT_REG_HDR_REG_ID, align 4
  %152 = load i64, i64* %26, align 8
  %153 = call i32 @SET_FIELD(i32 %150, i32 %151, i64 %152)
  store i32 0, i32* %21, align 4
  br label %154

154:                                              ; preds = %170, %142
  %155 = load i32, i32* %21, align 4
  %156 = load %struct.dbg_idle_chk_result_reg_hdr*, %struct.dbg_idle_chk_result_reg_hdr** %28, align 8
  %157 = getelementptr inbounds %struct.dbg_idle_chk_result_reg_hdr, %struct.dbg_idle_chk_result_reg_hdr* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = icmp slt i32 %155, %158
  br i1 %159, label %160, label %177

160:                                              ; preds = %154
  %161 = load i32*, i32** %17, align 8
  %162 = load i32, i32* %22, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = load i32*, i32** %12, align 8
  %167 = load i32, i32* %23, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  store i32 %165, i32* %169, align 4
  br label %170

170:                                              ; preds = %160
  %171 = load i32, i32* %21, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %21, align 4
  %173 = load i32, i32* %22, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %22, align 4
  %175 = load i32, i32* %23, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %23, align 4
  br label %154

177:                                              ; preds = %154
  br label %178

178:                                              ; preds = %177, %105
  %179 = load i64, i64* %26, align 8
  %180 = add i64 %179, 1
  store i64 %180, i64* %26, align 8
  br label %88

181:                                              ; preds = %88
  store i64 0, i64* %26, align 8
  br label %182

182:                                              ; preds = %309, %181
  %183 = load i64, i64* %26, align 8
  %184 = load %struct.dbg_idle_chk_rule*, %struct.dbg_idle_chk_rule** %15, align 8
  %185 = getelementptr inbounds %struct.dbg_idle_chk_rule, %struct.dbg_idle_chk_rule* %184, i32 0, i32 2
  %186 = load i64, i64* %185, align 8
  %187 = icmp ult i64 %183, %186
  br i1 %187, label %188, label %312

188:                                              ; preds = %182
  %189 = load %struct.dbg_idle_chk_info_reg*, %struct.dbg_idle_chk_info_reg** %20, align 8
  %190 = load i64, i64* %26, align 8
  %191 = getelementptr inbounds %struct.dbg_idle_chk_info_reg, %struct.dbg_idle_chk_info_reg* %189, i64 %190
  store %struct.dbg_idle_chk_info_reg* %191, %struct.dbg_idle_chk_info_reg** %29, align 8
  %192 = load i32, i32* %13, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %202, label %194

194:                                              ; preds = %188
  %195 = load i32, i32* @IDLE_CHK_RESULT_REG_HDR_DWORDS, align 4
  %196 = load %struct.dbg_idle_chk_info_reg*, %struct.dbg_idle_chk_info_reg** %29, align 8
  %197 = getelementptr inbounds %struct.dbg_idle_chk_info_reg, %struct.dbg_idle_chk_info_reg* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = add nsw i32 %195, %198
  %200 = load i32, i32* %23, align 4
  %201 = add nsw i32 %200, %199
  store i32 %201, i32* %23, align 4
  br label %309

202:                                              ; preds = %188
  %203 = load %struct.dbg_idle_chk_info_reg*, %struct.dbg_idle_chk_info_reg** %29, align 8
  %204 = getelementptr inbounds %struct.dbg_idle_chk_info_reg, %struct.dbg_idle_chk_info_reg* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* @DBG_IDLE_CHK_INFO_REG_BLOCK_ID, align 4
  %207 = call i8* @GET_FIELD(i32 %205, i32 %206)
  %208 = ptrtoint i8* %207 to i32
  store i32 %208, i32* %30, align 4
  %209 = load i32, i32* %30, align 4
  %210 = load i32, i32* @MAX_BLOCK_ID, align 4
  %211 = icmp sge i32 %209, %210
  br i1 %211, label %212, label %215

212:                                              ; preds = %202
  %213 = load %struct.qed_hwfn*, %struct.qed_hwfn** %10, align 8
  %214 = call i32 @DP_NOTICE(%struct.qed_hwfn* %213, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %314

215:                                              ; preds = %202
  %216 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %18, align 8
  %217 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %216, i32 0, i32 0
  %218 = load i32*, i32** %217, align 8
  %219 = load i32, i32* %30, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %218, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %308, label %224

224:                                              ; preds = %215
  store i32 1, i32* %34, align 4
  %225 = load i32*, i32** %12, align 8
  %226 = load i32, i32* %23, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %225, i64 %227
  %229 = bitcast i32* %228 to %struct.dbg_idle_chk_result_reg_hdr*
  store %struct.dbg_idle_chk_result_reg_hdr* %229, %struct.dbg_idle_chk_result_reg_hdr** %31, align 8
  %230 = load %struct.dbg_idle_chk_info_reg*, %struct.dbg_idle_chk_info_reg** %29, align 8
  %231 = getelementptr inbounds %struct.dbg_idle_chk_info_reg, %struct.dbg_idle_chk_info_reg* %230, i32 0, i32 2
  %232 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* @DBG_MODE_HDR_EVAL_MODE, align 4
  %235 = call i8* @GET_FIELD(i32 %233, i32 %234)
  %236 = icmp ugt i8* %235, null
  %237 = zext i1 %236 to i32
  store i32 %237, i32* %33, align 4
  %238 = load i32, i32* %33, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %249

240:                                              ; preds = %224
  %241 = load %struct.dbg_idle_chk_info_reg*, %struct.dbg_idle_chk_info_reg** %29, align 8
  %242 = getelementptr inbounds %struct.dbg_idle_chk_info_reg, %struct.dbg_idle_chk_info_reg* %241, i32 0, i32 2
  %243 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* @DBG_MODE_HDR_MODES_BUF_OFFSET, align 4
  %246 = call i8* @GET_FIELD(i32 %244, i32 %245)
  store i8* %246, i8** %35, align 8
  %247 = load %struct.qed_hwfn*, %struct.qed_hwfn** %10, align 8
  %248 = call i32 @qed_is_mode_match(%struct.qed_hwfn* %247, i8** %35)
  store i32 %248, i32* %34, align 4
  br label %249

249:                                              ; preds = %240, %224
  %250 = load i32, i32* %34, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %253, label %252

252:                                              ; preds = %249
  br label %309

253:                                              ; preds = %249
  %254 = load %struct.dbg_idle_chk_info_reg*, %struct.dbg_idle_chk_info_reg** %29, align 8
  %255 = getelementptr inbounds %struct.dbg_idle_chk_info_reg, %struct.dbg_idle_chk_info_reg* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = load i32, i32* @DBG_IDLE_CHK_INFO_REG_ADDRESS, align 4
  %258 = call i8* @GET_FIELD(i32 %256, i32 %257)
  %259 = ptrtoint i8* %258 to i32
  store i32 %259, i32* %36, align 4
  %260 = load %struct.dbg_idle_chk_info_reg*, %struct.dbg_idle_chk_info_reg** %29, align 8
  %261 = getelementptr inbounds %struct.dbg_idle_chk_info_reg, %struct.dbg_idle_chk_info_reg* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = load i32, i32* @DBG_IDLE_CHK_INFO_REG_WIDE_BUS, align 4
  %264 = call i8* @GET_FIELD(i32 %262, i32 %263)
  %265 = ptrtoint i8* %264 to i32
  store i32 %265, i32* %32, align 4
  %266 = load i32, i32* @IDLE_CHK_RESULT_REG_HDR_DWORDS, align 4
  %267 = load i32, i32* %23, align 4
  %268 = add nsw i32 %267, %266
  store i32 %268, i32* %23, align 4
  %269 = load %struct.dbg_idle_chk_result_hdr*, %struct.dbg_idle_chk_result_hdr** %24, align 8
  %270 = getelementptr inbounds %struct.dbg_idle_chk_result_hdr, %struct.dbg_idle_chk_result_hdr* %269, i32 0, i32 4
  %271 = load i32, i32* %270, align 8
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %270, align 8
  %273 = load %struct.dbg_idle_chk_result_reg_hdr*, %struct.dbg_idle_chk_result_reg_hdr** %31, align 8
  %274 = call i32 @memset(%struct.dbg_idle_chk_result_reg_hdr* %273, i32 0, i32 48)
  %275 = load %struct.dbg_idle_chk_info_reg*, %struct.dbg_idle_chk_info_reg** %29, align 8
  %276 = getelementptr inbounds %struct.dbg_idle_chk_info_reg, %struct.dbg_idle_chk_info_reg* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 4
  %278 = load %struct.dbg_idle_chk_result_reg_hdr*, %struct.dbg_idle_chk_result_reg_hdr** %31, align 8
  %279 = getelementptr inbounds %struct.dbg_idle_chk_result_reg_hdr, %struct.dbg_idle_chk_result_reg_hdr* %278, i32 0, i32 2
  store i32 %277, i32* %279, align 8
  %280 = load %struct.dbg_idle_chk_result_reg_hdr*, %struct.dbg_idle_chk_result_reg_hdr** %31, align 8
  %281 = getelementptr inbounds %struct.dbg_idle_chk_result_reg_hdr, %struct.dbg_idle_chk_result_reg_hdr* %280, i32 0, i32 3
  %282 = load i32, i32* %281, align 4
  %283 = load i32, i32* @DBG_IDLE_CHK_RESULT_REG_HDR_REG_ID, align 4
  %284 = load %struct.dbg_idle_chk_rule*, %struct.dbg_idle_chk_rule** %15, align 8
  %285 = getelementptr inbounds %struct.dbg_idle_chk_rule, %struct.dbg_idle_chk_rule* %284, i32 0, i32 1
  %286 = load i64, i64* %285, align 8
  %287 = load i64, i64* %26, align 8
  %288 = add i64 %286, %287
  %289 = call i32 @SET_FIELD(i32 %282, i32 %283, i64 %288)
  %290 = load %struct.qed_hwfn*, %struct.qed_hwfn** %10, align 8
  %291 = load %struct.qed_ptt*, %struct.qed_ptt** %11, align 8
  %292 = load i32*, i32** %12, align 8
  %293 = load i32, i32* %23, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i32, i32* %292, i64 %294
  %296 = load i32, i32* %13, align 4
  %297 = load i32, i32* %36, align 4
  %298 = load %struct.dbg_idle_chk_info_reg*, %struct.dbg_idle_chk_info_reg** %29, align 8
  %299 = getelementptr inbounds %struct.dbg_idle_chk_info_reg, %struct.dbg_idle_chk_info_reg* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 4
  %301 = load i32, i32* %32, align 4
  %302 = load i32, i32* @SPLIT_TYPE_NONE, align 4
  %303 = call i64 @qed_grc_dump_addr_range(%struct.qed_hwfn* %290, %struct.qed_ptt* %291, i32* %295, i32 %296, i32 %297, i32 %300, i32 %301, i32 %302, i32 0)
  %304 = load i32, i32* %23, align 4
  %305 = sext i32 %304 to i64
  %306 = add nsw i64 %305, %303
  %307 = trunc i64 %306 to i32
  store i32 %307, i32* %23, align 4
  br label %308

308:                                              ; preds = %253, %215
  br label %309

309:                                              ; preds = %308, %252, %194
  %310 = load i64, i64* %26, align 8
  %311 = add i64 %310, 1
  store i64 %311, i64* %26, align 8
  br label %182

312:                                              ; preds = %182
  %313 = load i32, i32* %23, align 4
  store i32 %313, i32* %9, align 4
  br label %314

314:                                              ; preds = %312, %212
  %315 = load i32, i32* %9, align 4
  ret i32 %315
}

declare dso_local i32 @memset(%struct.dbg_idle_chk_result_reg_hdr*, i32, i32) #1

declare dso_local i32 @SET_FIELD(i32, i32, i64) #1

declare dso_local i8* @GET_FIELD(i32, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*) #1

declare dso_local i32 @qed_is_mode_match(%struct.qed_hwfn*, i8**) #1

declare dso_local i64 @qed_grc_dump_addr_range(%struct.qed_hwfn*, %struct.qed_ptt*, i32*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
