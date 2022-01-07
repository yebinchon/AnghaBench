; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_cxt.c_qed_tm_init_pf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_cxt.c_qed_tm_init_pf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32, %struct.TYPE_4__*, %struct.qed_cxt_mngr* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.qed_cxt_mngr = type { i32 }
%struct.qed_tm_iids = type { i32, i32, i32, i32* }

@TM_CFG_NUM_IDS = common dso_local global i32 0, align 4
@TM_CFG_PRE_SCAN_OFFSET = common dso_local global i32 0, align 4
@TM_CFG_PARENT_PF = common dso_local global i32 0, align 4
@TM_CFG_CID_PRE_SCAN_ROWS = common dso_local global i32 0, align 4
@TM_REG_CONFIG_CONN_MEM_RT_OFFSET = common dso_local global i32 0, align 4
@TM_REG_PF_ENABLE_CONN_RT_OFFSET = common dso_local global i32 0, align 4
@TM_CFG_TID_OFFSET = common dso_local global i32 0, align 4
@TM_CFG_TID_PRE_SCAN_ROWS = common dso_local global i32 0, align 4
@TM_REG_CONFIG_TASK_MEM_RT_OFFSET = common dso_local global i32 0, align 4
@NUM_TASK_PF_SEGMENTS = common dso_local global i32 0, align 4
@TM_REG_PF_ENABLE_TASK_RT_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*)* @qed_tm_init_pf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_tm_init_pf(%struct.qed_hwfn* %0) #0 {
  %2 = alloca %struct.qed_hwfn*, align 8
  %3 = alloca %struct.qed_cxt_mngr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.qed_tm_iids, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %2, align 8
  %10 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %11 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %10, i32 0, i32 2
  %12 = load %struct.qed_cxt_mngr*, %struct.qed_cxt_mngr** %11, align 8
  store %struct.qed_cxt_mngr* %12, %struct.qed_cxt_mngr** %3, align 8
  store i32 0, i32* %4, align 4
  %13 = call i32 @memset(%struct.qed_tm_iids* %7, i32 0, i32 24)
  %14 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %15 = load %struct.qed_cxt_mngr*, %struct.qed_cxt_mngr** %3, align 8
  %16 = call i32 @qed_cxt_tm_iids(%struct.qed_hwfn* %14, %struct.qed_cxt_mngr* %15, %struct.qed_tm_iids* %7)
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %60, %1
  %18 = load i32, i32* %9, align 4
  %19 = load %struct.qed_cxt_mngr*, %struct.qed_cxt_mngr** %3, align 8
  %20 = getelementptr inbounds %struct.qed_cxt_mngr, %struct.qed_cxt_mngr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %63

23:                                               ; preds = %17
  store i32 0, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @TM_CFG_NUM_IDS, align 4
  %26 = getelementptr inbounds %struct.qed_tm_iids, %struct.qed_tm_iids* %7, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @SET_FIELD(i32 %24, i32 %25, i32 %27)
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @TM_CFG_PRE_SCAN_OFFSET, align 4
  %31 = call i32 @SET_FIELD(i32 %29, i32 %30, i32 0)
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @TM_CFG_PARENT_PF, align 4
  %34 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %35 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @SET_FIELD(i32 %32, i32 %33, i32 %36)
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @TM_CFG_CID_PRE_SCAN_ROWS, align 4
  %40 = call i32 @SET_FIELD(i32 %38, i32 %39, i32 0)
  %41 = load i32, i32* @TM_REG_CONFIG_CONN_MEM_RT_OFFSET, align 4
  %42 = sext i32 %41 to i64
  %43 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %44 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %43, i32 0, i32 1
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %49, %50
  %52 = sext i32 %51 to i64
  %53 = mul i64 1, %52
  %54 = add i64 %42, %53
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %6, align 4
  %56 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @STORE_RT_REG_AGG(%struct.qed_hwfn* %56, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %23
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %9, align 4
  br label %17

63:                                               ; preds = %17
  store i32 0, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @TM_CFG_NUM_IDS, align 4
  %66 = getelementptr inbounds %struct.qed_tm_iids, %struct.qed_tm_iids* %7, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @SET_FIELD(i32 %64, i32 %65, i32 %67)
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @TM_CFG_PRE_SCAN_OFFSET, align 4
  %71 = call i32 @SET_FIELD(i32 %69, i32 %70, i32 0)
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @TM_CFG_PARENT_PF, align 4
  %74 = call i32 @SET_FIELD(i32 %72, i32 %73, i32 0)
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @TM_CFG_CID_PRE_SCAN_ROWS, align 4
  %77 = call i32 @SET_FIELD(i32 %75, i32 %76, i32 0)
  %78 = load i32, i32* @TM_REG_CONFIG_CONN_MEM_RT_OFFSET, align 4
  %79 = sext i32 %78 to i64
  %80 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %81 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %80, i32 0, i32 1
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = call i32 @NUM_OF_VFS(%struct.TYPE_4__* %82)
  %84 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %85 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = add nsw i32 %83, %86
  %88 = sext i32 %87 to i64
  %89 = mul i64 1, %88
  %90 = add i64 %79, %89
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %6, align 4
  %92 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @STORE_RT_REG_AGG(%struct.qed_hwfn* %92, i32 %93, i32 %94)
  %96 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %97 = load i32, i32* @TM_REG_PF_ENABLE_CONN_RT_OFFSET, align 4
  %98 = getelementptr inbounds %struct.qed_tm_iids, %struct.qed_tm_iids* %7, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  %101 = zext i1 %100 to i64
  %102 = select i1 %100, i32 1, i32 0
  %103 = call i32 @STORE_RT_REG(%struct.qed_hwfn* %96, i32 %97, i32 %102)
  %104 = getelementptr inbounds %struct.qed_tm_iids, %struct.qed_tm_iids* %7, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  store i32 %105, i32* %5, align 4
  store i32 0, i32* %9, align 4
  br label %106

106:                                              ; preds = %153, %63
  %107 = load i32, i32* %9, align 4
  %108 = load %struct.qed_cxt_mngr*, %struct.qed_cxt_mngr** %3, align 8
  %109 = getelementptr inbounds %struct.qed_cxt_mngr, %struct.qed_cxt_mngr* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = icmp slt i32 %107, %110
  br i1 %111, label %112, label %156

112:                                              ; preds = %106
  store i32 0, i32* %8, align 4
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* @TM_CFG_NUM_IDS, align 4
  %115 = getelementptr inbounds %struct.qed_tm_iids, %struct.qed_tm_iids* %7, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @SET_FIELD(i32 %113, i32 %114, i32 %116)
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* @TM_CFG_PRE_SCAN_OFFSET, align 4
  %120 = call i32 @SET_FIELD(i32 %118, i32 %119, i32 0)
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* @TM_CFG_PARENT_PF, align 4
  %123 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %124 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @SET_FIELD(i32 %121, i32 %122, i32 %125)
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* @TM_CFG_TID_OFFSET, align 4
  %129 = load i32, i32* %5, align 4
  %130 = call i32 @SET_FIELD(i32 %127, i32 %128, i32 %129)
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* @TM_CFG_TID_PRE_SCAN_ROWS, align 4
  %133 = call i32 @SET_FIELD(i32 %131, i32 %132, i32 0)
  %134 = load i32, i32* @TM_REG_CONFIG_TASK_MEM_RT_OFFSET, align 4
  %135 = sext i32 %134 to i64
  %136 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %137 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %136, i32 0, i32 1
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %9, align 4
  %144 = add nsw i32 %142, %143
  %145 = sext i32 %144 to i64
  %146 = mul i64 1, %145
  %147 = add i64 %135, %146
  %148 = trunc i64 %147 to i32
  store i32 %148, i32* %6, align 4
  %149 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %150 = load i32, i32* %6, align 4
  %151 = load i32, i32* %8, align 4
  %152 = call i32 @STORE_RT_REG_AGG(%struct.qed_hwfn* %149, i32 %150, i32 %151)
  br label %153

153:                                              ; preds = %112
  %154 = load i32, i32* %9, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %9, align 4
  br label %106

156:                                              ; preds = %106
  %157 = getelementptr inbounds %struct.qed_tm_iids, %struct.qed_tm_iids* %7, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  store i32 %158, i32* %5, align 4
  store i32 0, i32* %9, align 4
  br label %159

159:                                              ; preds = %231, %156
  %160 = load i32, i32* %9, align 4
  %161 = load i32, i32* @NUM_TASK_PF_SEGMENTS, align 4
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %163, label %234

163:                                              ; preds = %159
  store i32 0, i32* %8, align 4
  %164 = load i32, i32* %8, align 4
  %165 = load i32, i32* @TM_CFG_NUM_IDS, align 4
  %166 = getelementptr inbounds %struct.qed_tm_iids, %struct.qed_tm_iids* %7, i32 0, i32 3
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* %9, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @SET_FIELD(i32 %164, i32 %165, i32 %171)
  %173 = load i32, i32* %8, align 4
  %174 = load i32, i32* @TM_CFG_PRE_SCAN_OFFSET, align 4
  %175 = call i32 @SET_FIELD(i32 %173, i32 %174, i32 0)
  %176 = load i32, i32* %8, align 4
  %177 = load i32, i32* @TM_CFG_PARENT_PF, align 4
  %178 = call i32 @SET_FIELD(i32 %176, i32 %177, i32 0)
  %179 = load i32, i32* %8, align 4
  %180 = load i32, i32* @TM_CFG_TID_OFFSET, align 4
  %181 = load i32, i32* %5, align 4
  %182 = call i32 @SET_FIELD(i32 %179, i32 %180, i32 %181)
  %183 = load i32, i32* %8, align 4
  %184 = load i32, i32* @TM_CFG_TID_PRE_SCAN_ROWS, align 4
  %185 = call i32 @SET_FIELD(i32 %183, i32 %184, i32 0)
  %186 = load i32, i32* @TM_REG_CONFIG_TASK_MEM_RT_OFFSET, align 4
  %187 = sext i32 %186 to i64
  %188 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %189 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %188, i32 0, i32 1
  %190 = load %struct.TYPE_4__*, %struct.TYPE_4__** %189, align 8
  %191 = call i32 @NUM_OF_VFS(%struct.TYPE_4__* %190)
  %192 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %193 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @NUM_TASK_PF_SEGMENTS, align 4
  %196 = mul nsw i32 %194, %195
  %197 = add nsw i32 %191, %196
  %198 = load i32, i32* %9, align 4
  %199 = add nsw i32 %197, %198
  %200 = sext i32 %199 to i64
  %201 = mul i64 1, %200
  %202 = add i64 %187, %201
  %203 = trunc i64 %202 to i32
  store i32 %203, i32* %6, align 4
  %204 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %205 = load i32, i32* %6, align 4
  %206 = load i32, i32* %8, align 4
  %207 = call i32 @STORE_RT_REG_AGG(%struct.qed_hwfn* %204, i32 %205, i32 %206)
  %208 = getelementptr inbounds %struct.qed_tm_iids, %struct.qed_tm_iids* %7, i32 0, i32 3
  %209 = load i32*, i32** %208, align 8
  %210 = load i32, i32* %9, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %163
  %216 = load i32, i32* %9, align 4
  %217 = call i32 @BIT(i32 %216)
  br label %219

218:                                              ; preds = %163
  br label %219

219:                                              ; preds = %218, %215
  %220 = phi i32 [ %217, %215 ], [ 0, %218 ]
  %221 = load i32, i32* %4, align 4
  %222 = or i32 %221, %220
  store i32 %222, i32* %4, align 4
  %223 = getelementptr inbounds %struct.qed_tm_iids, %struct.qed_tm_iids* %7, i32 0, i32 3
  %224 = load i32*, i32** %223, align 8
  %225 = load i32, i32* %9, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %224, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* %5, align 4
  %230 = add nsw i32 %229, %228
  store i32 %230, i32* %5, align 4
  br label %231

231:                                              ; preds = %219
  %232 = load i32, i32* %9, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %9, align 4
  br label %159

234:                                              ; preds = %159
  %235 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %236 = call i64 @QED_IS_RDMA_PERSONALITY(%struct.qed_hwfn* %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %239

238:                                              ; preds = %234
  store i32 0, i32* %4, align 4
  br label %239

239:                                              ; preds = %238, %234
  %240 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %241 = load i32, i32* @TM_REG_PF_ENABLE_TASK_RT_OFFSET, align 4
  %242 = load i32, i32* %4, align 4
  %243 = call i32 @STORE_RT_REG(%struct.qed_hwfn* %240, i32 %241, i32 %242)
  ret void
}

declare dso_local i32 @memset(%struct.qed_tm_iids*, i32, i32) #1

declare dso_local i32 @qed_cxt_tm_iids(%struct.qed_hwfn*, %struct.qed_cxt_mngr*, %struct.qed_tm_iids*) #1

declare dso_local i32 @SET_FIELD(i32, i32, i32) #1

declare dso_local i32 @STORE_RT_REG_AGG(%struct.qed_hwfn*, i32, i32) #1

declare dso_local i32 @NUM_OF_VFS(%struct.TYPE_4__*) #1

declare dso_local i32 @STORE_RT_REG(%struct.qed_hwfn*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @QED_IS_RDMA_PERSONALITY(%struct.qed_hwfn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
