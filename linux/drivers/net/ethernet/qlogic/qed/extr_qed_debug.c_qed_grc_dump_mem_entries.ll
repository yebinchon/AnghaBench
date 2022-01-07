; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_grc_dump_mem_entries.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_grc_dump_mem_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i8 }
%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }
%struct.dbg_array = type { i64, i32* }
%struct.dbg_dump_cond_hdr = type { i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.dbg_dump_mem = type { i32, i32 }

@MEM_DUMP_ENTRY_SIZE_DWORDS = common dso_local global i64 0, align 8
@DBG_MODE_HDR_EVAL_MODE = common dso_local global i32 0, align 4
@DBG_MODE_HDR_MODES_BUF_OFFSET = common dso_local global i32 0, align 4
@DBG_DUMP_MEM_MEM_GROUP_ID = common dso_local global i32 0, align 4
@MEM_GROUPS_NUM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"Invalid mem_group_id\0A\00", align 1
@DBG_DUMP_MEM_ADDRESS = common dso_local global i32 0, align 4
@DBG_DUMP_MEM_LENGTH = common dso_local global i32 0, align 4
@DBG_DUMP_MEM_WIDE_BUS = common dso_local global i32 0, align 4
@MEM_GROUP_CONN_CFC_MEM = common dso_local global i64 0, align 8
@MAX_LCIDS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"Invalid CCFC connection memory size\0A\00", align 1
@DBG_GRC_PARAM_NUM_LCIDS = common dso_local global i32 0, align 4
@MEM_GROUP_TASK_CFC_MEM = common dso_local global i64 0, align 8
@MAX_LTIDS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"Invalid TCFC task memory size\0A\00", align 1
@DBG_GRC_PARAM_NUM_LTIDS = common dso_local global i32 0, align 4
@s_block_defs = common dso_local global %struct.TYPE_6__** null, align 8
@s_storm_defs = common dso_local global %struct.TYPE_5__* null, align 8
@s_mem_group_names = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.qed_hwfn*, %struct.qed_ptt*, i64, i32*, i64*, i32)* @qed_grc_dump_mem_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @qed_grc_dump_mem_entries(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, i64 %2, i32* %3, i64* %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.dbg_array, align 8
  %9 = alloca %struct.qed_hwfn*, align 8
  %10 = alloca %struct.qed_ptt*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.dbg_dump_cond_hdr*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.dbg_dump_mem*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i8, align 1
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = bitcast %struct.dbg_array* %8 to { i64, i32* }*
  %31 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %30, i32 0, i32 0
  store i64 %2, i64* %31, align 8
  %32 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %30, i32 0, i32 1
  store i32* %3, i32** %32, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %9, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %10, align 8
  store i64* %4, i64** %11, align 8
  store i32 %5, i32* %12, align 4
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  store i32 1, i32* %16, align 4
  br label %33

33:                                               ; preds = %221, %72, %6
  %34 = load i64, i64* %15, align 8
  %35 = getelementptr inbounds %struct.dbg_array, %struct.dbg_array* %8, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ult i64 %34, %36
  br i1 %37, label %38, label %222

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.dbg_array, %struct.dbg_array* %8, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* %15, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %15, align 8
  %43 = getelementptr inbounds i32, i32* %40, i64 %41
  %44 = bitcast i32* %43 to %struct.dbg_dump_cond_hdr*
  store %struct.dbg_dump_cond_hdr* %44, %struct.dbg_dump_cond_hdr** %17, align 8
  %45 = load %struct.dbg_dump_cond_hdr*, %struct.dbg_dump_cond_hdr** %17, align 8
  %46 = getelementptr inbounds %struct.dbg_dump_cond_hdr, %struct.dbg_dump_cond_hdr* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @MEM_DUMP_ENTRY_SIZE_DWORDS, align 8
  %49 = udiv i64 %47, %48
  store i64 %49, i64* %19, align 8
  %50 = load %struct.dbg_dump_cond_hdr*, %struct.dbg_dump_cond_hdr** %17, align 8
  %51 = getelementptr inbounds %struct.dbg_dump_cond_hdr, %struct.dbg_dump_cond_hdr* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @DBG_MODE_HDR_EVAL_MODE, align 4
  %55 = call i8* @GET_FIELD(i32 %53, i32 %54)
  %56 = icmp ugt i8* %55, null
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %20, align 4
  %58 = load i32, i32* %20, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %38
  %61 = load %struct.dbg_dump_cond_hdr*, %struct.dbg_dump_cond_hdr** %17, align 8
  %62 = getelementptr inbounds %struct.dbg_dump_cond_hdr, %struct.dbg_dump_cond_hdr* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @DBG_MODE_HDR_MODES_BUF_OFFSET, align 4
  %66 = call i8* @GET_FIELD(i32 %64, i32 %65)
  store i8* %66, i8** %18, align 8
  %67 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %68 = call i32 @qed_is_mode_match(%struct.qed_hwfn* %67, i8** %18)
  store i32 %68, i32* %16, align 4
  br label %69

69:                                               ; preds = %60, %38
  %70 = load i32, i32* %16, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %69
  %73 = load %struct.dbg_dump_cond_hdr*, %struct.dbg_dump_cond_hdr** %17, align 8
  %74 = getelementptr inbounds %struct.dbg_dump_cond_hdr, %struct.dbg_dump_cond_hdr* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %15, align 8
  %77 = add i64 %76, %75
  store i64 %77, i64* %15, align 8
  br label %33

78:                                               ; preds = %69
  store i64 0, i64* %13, align 8
  br label %79

79:                                               ; preds = %215, %78
  %80 = load i64, i64* %13, align 8
  %81 = load i64, i64* %19, align 8
  %82 = icmp ult i64 %80, %81
  br i1 %82, label %83, label %221

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.dbg_array, %struct.dbg_array* %8, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load i64, i64* %15, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  %88 = bitcast i32* %87 to %struct.dbg_dump_mem*
  store %struct.dbg_dump_mem* %88, %struct.dbg_dump_mem** %21, align 8
  %89 = load %struct.dbg_dump_mem*, %struct.dbg_dump_mem** %21, align 8
  %90 = getelementptr inbounds %struct.dbg_dump_mem, %struct.dbg_dump_mem* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @DBG_DUMP_MEM_MEM_GROUP_ID, align 4
  %93 = call i8* @GET_FIELD(i32 %91, i32 %92)
  %94 = ptrtoint i8* %93 to i64
  store i64 %94, i64* %22, align 8
  store i32 0, i32* %23, align 4
  store i8 97, i8* %26, align 1
  %95 = load i64, i64* %22, align 8
  %96 = load i64, i64* @MEM_GROUPS_NUM, align 8
  %97 = icmp uge i64 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %83
  %99 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %100 = call i32 @DP_NOTICE(%struct.qed_hwfn* %99, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %7, align 8
  br label %224

101:                                              ; preds = %83
  %102 = load %struct.dbg_dump_cond_hdr*, %struct.dbg_dump_cond_hdr** %17, align 8
  %103 = getelementptr inbounds %struct.dbg_dump_cond_hdr, %struct.dbg_dump_cond_hdr* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %27, align 4
  %106 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %107 = load i32, i32* %27, align 4
  %108 = load i64, i64* %22, align 8
  %109 = call i32 @qed_grc_is_mem_included(%struct.qed_hwfn* %106, i32 %107, i64 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %101
  br label %215

112:                                              ; preds = %101
  %113 = load %struct.dbg_dump_mem*, %struct.dbg_dump_mem** %21, align 8
  %114 = getelementptr inbounds %struct.dbg_dump_mem, %struct.dbg_dump_mem* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @DBG_DUMP_MEM_ADDRESS, align 4
  %117 = call i8* @GET_FIELD(i32 %115, i32 %116)
  %118 = ptrtoint i8* %117 to i64
  store i64 %118, i64* %28, align 8
  %119 = load %struct.dbg_dump_mem*, %struct.dbg_dump_mem** %21, align 8
  %120 = getelementptr inbounds %struct.dbg_dump_mem, %struct.dbg_dump_mem* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @DBG_DUMP_MEM_LENGTH, align 4
  %123 = call i8* @GET_FIELD(i32 %121, i32 %122)
  %124 = ptrtoint i8* %123 to i64
  store i64 %124, i64* %29, align 8
  %125 = load %struct.dbg_dump_mem*, %struct.dbg_dump_mem** %21, align 8
  %126 = getelementptr inbounds %struct.dbg_dump_mem, %struct.dbg_dump_mem* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @DBG_DUMP_MEM_WIDE_BUS, align 4
  %129 = call i8* @GET_FIELD(i32 %127, i32 %128)
  %130 = ptrtoint i8* %129 to i32
  store i32 %130, i32* %24, align 4
  %131 = load i64, i64* %22, align 8
  %132 = load i64, i64* @MEM_GROUP_CONN_CFC_MEM, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %151

134:                                              ; preds = %112
  %135 = load i64, i64* %29, align 8
  %136 = load i64, i64* @MAX_LCIDS, align 8
  %137 = urem i64 %135, %136
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %134
  %140 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %141 = call i32 @DP_NOTICE(%struct.qed_hwfn* %140, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  store i64 0, i64* %7, align 8
  br label %224

142:                                              ; preds = %134
  %143 = load i32, i32* @DBG_GRC_PARAM_NUM_LCIDS, align 4
  store i32 %143, i32* %25, align 4
  %144 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %145 = load i32, i32* %25, align 4
  %146 = call i64 @qed_grc_get_param(%struct.qed_hwfn* %144, i32 %145)
  %147 = load i64, i64* %29, align 8
  %148 = load i64, i64* @MAX_LCIDS, align 8
  %149 = udiv i64 %147, %148
  %150 = mul i64 %146, %149
  store i64 %150, i64* %29, align 8
  br label %173

151:                                              ; preds = %112
  %152 = load i64, i64* %22, align 8
  %153 = load i64, i64* @MEM_GROUP_TASK_CFC_MEM, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %172

155:                                              ; preds = %151
  %156 = load i64, i64* %29, align 8
  %157 = load i64, i64* @MAX_LTIDS, align 8
  %158 = urem i64 %156, %157
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %155
  %161 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %162 = call i32 @DP_NOTICE(%struct.qed_hwfn* %161, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  store i64 0, i64* %7, align 8
  br label %224

163:                                              ; preds = %155
  %164 = load i32, i32* @DBG_GRC_PARAM_NUM_LTIDS, align 4
  store i32 %164, i32* %25, align 4
  %165 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %166 = load i32, i32* %25, align 4
  %167 = call i64 @qed_grc_get_param(%struct.qed_hwfn* %165, i32 %166)
  %168 = load i64, i64* %29, align 8
  %169 = load i64, i64* @MAX_LTIDS, align 8
  %170 = udiv i64 %168, %169
  %171 = mul i64 %167, %170
  store i64 %171, i64* %29, align 8
  br label %172

172:                                              ; preds = %163, %151
  br label %173

173:                                              ; preds = %172, %142
  %174 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @s_block_defs, align 8
  %175 = load %struct.dbg_dump_cond_hdr*, %struct.dbg_dump_cond_hdr** %17, align 8
  %176 = getelementptr inbounds %struct.dbg_dump_cond_hdr, %struct.dbg_dump_cond_hdr* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %174, i64 %177
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %196

183:                                              ; preds = %173
  store i32 1, i32* %23, align 4
  %184 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_storm_defs, align 8
  %185 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @s_block_defs, align 8
  %186 = load %struct.dbg_dump_cond_hdr*, %struct.dbg_dump_cond_hdr** %17, align 8
  %187 = getelementptr inbounds %struct.dbg_dump_cond_hdr, %struct.dbg_dump_cond_hdr* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %185, i64 %188
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 0
  %195 = load i8, i8* %194, align 1
  store i8 %195, i8* %26, align 1
  br label %196

196:                                              ; preds = %183, %173
  %197 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %198 = load %struct.qed_ptt*, %struct.qed_ptt** %10, align 8
  %199 = load i64*, i64** %11, align 8
  %200 = load i64, i64* %14, align 8
  %201 = getelementptr inbounds i64, i64* %199, i64 %200
  %202 = load i32, i32* %12, align 4
  %203 = load i64, i64* %28, align 8
  %204 = load i64, i64* %29, align 8
  %205 = load i32, i32* %24, align 4
  %206 = load i32*, i32** @s_mem_group_names, align 8
  %207 = load i64, i64* %22, align 8
  %208 = getelementptr inbounds i32, i32* %206, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* %23, align 4
  %211 = load i8, i8* %26, align 1
  %212 = call i64 @qed_grc_dump_mem(%struct.qed_hwfn* %197, %struct.qed_ptt* %198, i64* %201, i32 %202, i32* null, i64 %203, i64 %204, i32 %205, i32 0, i32 0, i32 %209, i32 %210, i8 signext %211)
  %213 = load i64, i64* %14, align 8
  %214 = add i64 %213, %212
  store i64 %214, i64* %14, align 8
  br label %215

215:                                              ; preds = %196, %111
  %216 = load i64, i64* %13, align 8
  %217 = add i64 %216, 1
  store i64 %217, i64* %13, align 8
  %218 = load i64, i64* @MEM_DUMP_ENTRY_SIZE_DWORDS, align 8
  %219 = load i64, i64* %15, align 8
  %220 = add i64 %219, %218
  store i64 %220, i64* %15, align 8
  br label %79

221:                                              ; preds = %79
  br label %33

222:                                              ; preds = %33
  %223 = load i64, i64* %14, align 8
  store i64 %223, i64* %7, align 8
  br label %224

224:                                              ; preds = %222, %160, %139, %98
  %225 = load i64, i64* %7, align 8
  ret i64 %225
}

declare dso_local i8* @GET_FIELD(i32, i32) #1

declare dso_local i32 @qed_is_mode_match(%struct.qed_hwfn*, i8**) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*) #1

declare dso_local i32 @qed_grc_is_mem_included(%struct.qed_hwfn*, i32, i64) #1

declare dso_local i64 @qed_grc_get_param(%struct.qed_hwfn*, i32) #1

declare dso_local i64 @qed_grc_dump_mem(%struct.qed_hwfn*, %struct.qed_ptt*, i64*, i32, i32*, i64, i64, i32, i32, i32, i32, i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
