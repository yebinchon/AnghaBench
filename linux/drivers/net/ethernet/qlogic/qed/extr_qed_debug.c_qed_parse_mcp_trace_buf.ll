; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_parse_mcp_trace_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_parse_mcp_trace_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.dbg_tools_user_data = type { %struct.mcp_trace_meta }
%struct.mcp_trace_meta = type { i64, i8**, %struct.mcp_trace_format*, i32 }
%struct.mcp_trace_format = type { i64, i8* }

@DBG_STATUS_MCP_TRACE_BAD_DATA = common dso_local global i32 0, align 4
@DBG_STATUS_OK = common dso_local global i32 0, align 4
@MFW_TRACE_ENTRY_SIZE = common dso_local global i64 0, align 8
@MFW_TRACE_EVENTID_MASK = common dso_local global i64 0, align 8
@MFW_TRACE_PRM_SIZE_MASK = common dso_local global i64 0, align 8
@MFW_TRACE_PRM_SIZE_SHIFT = common dso_local global i64 0, align 8
@MCP_TRACE_FORMAT_P1_SIZE_MASK = common dso_local global i64 0, align 8
@MCP_TRACE_FORMAT_P1_SIZE_SHIFT = common dso_local global i64 0, align 8
@MCP_TRACE_FORMAT_MAX_PARAMS = common dso_local global i64 0, align 8
@MCP_TRACE_FORMAT_PARAM_WIDTH = common dso_local global i64 0, align 8
@MCP_TRACE_FORMAT_LEVEL_MASK = common dso_local global i32 0, align 4
@MCP_TRACE_FORMAT_LEVEL_SHIFT = common dso_local global i32 0, align 4
@MCP_TRACE_FORMAT_MODULE_MASK = common dso_local global i32 0, align 4
@MCP_TRACE_FORMAT_MODULE_SHIFT = common dso_local global i32 0, align 4
@s_mcp_trace_level_str = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [10 x i8] c"%s %-8s: \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, i64*, i64, i64, i64, i8*, i64*)* @qed_parse_mcp_trace_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_parse_mcp_trace_buf(%struct.qed_hwfn* %0, i64* %1, i64 %2, i64 %3, i64 %4, i8* %5, i64* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.qed_hwfn*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca %struct.dbg_tools_user_data*, align 8
  %17 = alloca %struct.mcp_trace_meta*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.mcp_trace_format*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca [3 x i64], align 16
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %9, align 8
  store i64* %1, i64** %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i8* %5, i8** %14, align 8
  store i64* %6, i64** %15, align 8
  %30 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %31 = call %struct.dbg_tools_user_data* @qed_dbg_get_user_data(%struct.qed_hwfn* %30)
  store %struct.dbg_tools_user_data* %31, %struct.dbg_tools_user_data** %16, align 8
  %32 = load %struct.dbg_tools_user_data*, %struct.dbg_tools_user_data** %16, align 8
  %33 = getelementptr inbounds %struct.dbg_tools_user_data, %struct.dbg_tools_user_data* %32, i32 0, i32 0
  store %struct.mcp_trace_meta* %33, %struct.mcp_trace_meta** %17, align 8
  %34 = load i64*, i64** %15, align 8
  store i64 0, i64* %34, align 8
  %35 = load %struct.mcp_trace_meta*, %struct.mcp_trace_meta** %17, align 8
  %36 = getelementptr inbounds %struct.mcp_trace_meta, %struct.mcp_trace_meta* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %7
  %40 = load i32, i32* @DBG_STATUS_MCP_TRACE_BAD_DATA, align 4
  store i32 %40, i32* %8, align 4
  br label %208

41:                                               ; preds = %7
  %42 = load i32, i32* @DBG_STATUS_OK, align 4
  store i32 %42, i32* %20, align 4
  br label %43

43:                                               ; preds = %165, %80, %41
  %44 = load i64, i64* %13, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %203

46:                                               ; preds = %43
  %47 = bitcast [3 x i64]* %24 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %47, i8 0, i64 24, i1 false)
  %48 = load i64, i64* %13, align 8
  %49 = load i64, i64* @MFW_TRACE_ENTRY_SIZE, align 8
  %50 = icmp slt i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* @DBG_STATUS_MCP_TRACE_BAD_DATA, align 4
  store i32 %52, i32* %8, align 4
  br label %208

53:                                               ; preds = %46
  %54 = load i64*, i64** %10, align 8
  %55 = load i64, i64* %11, align 8
  %56 = load i64, i64* @MFW_TRACE_ENTRY_SIZE, align 8
  %57 = call i64 @qed_read_from_cyclic_buf(i64* %54, i64* %12, i64 %55, i64 %56)
  store i64 %57, i64* %25, align 8
  %58 = load i64, i64* @MFW_TRACE_ENTRY_SIZE, align 8
  %59 = load i64, i64* %13, align 8
  %60 = sub nsw i64 %59, %58
  store i64 %60, i64* %13, align 8
  %61 = load i64, i64* %25, align 8
  %62 = load i64, i64* @MFW_TRACE_EVENTID_MASK, align 8
  %63 = and i64 %61, %62
  store i64 %63, i64* %26, align 8
  %64 = load i64, i64* %26, align 8
  %65 = load %struct.mcp_trace_meta*, %struct.mcp_trace_meta** %17, align 8
  %66 = getelementptr inbounds %struct.mcp_trace_meta, %struct.mcp_trace_meta* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp sge i64 %64, %67
  br i1 %68, label %69, label %88

69:                                               ; preds = %53
  %70 = load i64, i64* %25, align 8
  %71 = load i64, i64* @MFW_TRACE_PRM_SIZE_MASK, align 8
  %72 = and i64 %70, %71
  %73 = load i64, i64* @MFW_TRACE_PRM_SIZE_SHIFT, align 8
  %74 = ashr i64 %72, %73
  store i64 %74, i64* %28, align 8
  %75 = load i64, i64* %13, align 8
  %76 = load i64, i64* %28, align 8
  %77 = icmp slt i64 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %69
  %79 = load i32, i32* @DBG_STATUS_MCP_TRACE_BAD_DATA, align 4
  store i32 %79, i32* %8, align 4
  br label %208

80:                                               ; preds = %69
  %81 = load i64, i64* %12, align 8
  %82 = load i64, i64* %28, align 8
  %83 = load i64, i64* %11, align 8
  %84 = call i64 @qed_cyclic_add(i64 %81, i64 %82, i64 %83)
  store i64 %84, i64* %12, align 8
  %85 = load i64, i64* %28, align 8
  %86 = load i64, i64* %13, align 8
  %87 = sub nsw i64 %86, %85
  store i64 %87, i64* %13, align 8
  br label %43

88:                                               ; preds = %53
  %89 = load %struct.mcp_trace_meta*, %struct.mcp_trace_meta** %17, align 8
  %90 = getelementptr inbounds %struct.mcp_trace_meta, %struct.mcp_trace_meta* %89, i32 0, i32 2
  %91 = load %struct.mcp_trace_format*, %struct.mcp_trace_format** %90, align 8
  %92 = load i64, i64* %26, align 8
  %93 = getelementptr inbounds %struct.mcp_trace_format, %struct.mcp_trace_format* %91, i64 %92
  store %struct.mcp_trace_format* %93, %struct.mcp_trace_format** %21, align 8
  store i64 0, i64* %27, align 8
  %94 = load i64, i64* @MCP_TRACE_FORMAT_P1_SIZE_MASK, align 8
  store i64 %94, i64* %18, align 8
  %95 = load i64, i64* @MCP_TRACE_FORMAT_P1_SIZE_SHIFT, align 8
  store i64 %95, i64* %19, align 8
  br label %96

96:                                               ; preds = %131, %88
  %97 = load i64, i64* %27, align 8
  %98 = load i64, i64* @MCP_TRACE_FORMAT_MAX_PARAMS, align 8
  %99 = icmp slt i64 %97, %98
  br i1 %99, label %100, label %140

100:                                              ; preds = %96
  %101 = load %struct.mcp_trace_format*, %struct.mcp_trace_format** %21, align 8
  %102 = getelementptr inbounds %struct.mcp_trace_format, %struct.mcp_trace_format* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* %18, align 8
  %105 = and i64 %103, %104
  %106 = load i64, i64* %19, align 8
  %107 = ashr i64 %105, %106
  store i64 %107, i64* %29, align 8
  %108 = load i64, i64* %29, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %100
  br label %140

111:                                              ; preds = %100
  %112 = load i64, i64* %29, align 8
  %113 = icmp eq i64 %112, 3
  br i1 %113, label %114, label %115

114:                                              ; preds = %111
  store i64 4, i64* %29, align 8
  br label %115

115:                                              ; preds = %114, %111
  %116 = load i64, i64* %13, align 8
  %117 = load i64, i64* %29, align 8
  %118 = icmp slt i64 %116, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %115
  %120 = load i32, i32* @DBG_STATUS_MCP_TRACE_BAD_DATA, align 4
  store i32 %120, i32* %8, align 4
  br label %208

121:                                              ; preds = %115
  %122 = load i64*, i64** %10, align 8
  %123 = load i64, i64* %11, align 8
  %124 = load i64, i64* %29, align 8
  %125 = call i64 @qed_read_from_cyclic_buf(i64* %122, i64* %12, i64 %123, i64 %124)
  %126 = load i64, i64* %27, align 8
  %127 = getelementptr inbounds [3 x i64], [3 x i64]* %24, i64 0, i64 %126
  store i64 %125, i64* %127, align 8
  %128 = load i64, i64* %29, align 8
  %129 = load i64, i64* %13, align 8
  %130 = sub nsw i64 %129, %128
  store i64 %130, i64* %13, align 8
  br label %131

131:                                              ; preds = %121
  %132 = load i64, i64* %27, align 8
  %133 = add nsw i64 %132, 1
  store i64 %133, i64* %27, align 8
  %134 = load i64, i64* @MCP_TRACE_FORMAT_PARAM_WIDTH, align 8
  %135 = load i64, i64* %18, align 8
  %136 = shl i64 %135, %134
  store i64 %136, i64* %18, align 8
  %137 = load i64, i64* @MCP_TRACE_FORMAT_PARAM_WIDTH, align 8
  %138 = load i64, i64* %19, align 8
  %139 = add nsw i64 %138, %137
  store i64 %139, i64* %19, align 8
  br label %96

140:                                              ; preds = %110, %96
  %141 = load %struct.mcp_trace_format*, %struct.mcp_trace_format** %21, align 8
  %142 = getelementptr inbounds %struct.mcp_trace_format, %struct.mcp_trace_format* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i32, i32* @MCP_TRACE_FORMAT_LEVEL_MASK, align 4
  %145 = sext i32 %144 to i64
  %146 = and i64 %143, %145
  %147 = load i32, i32* @MCP_TRACE_FORMAT_LEVEL_SHIFT, align 4
  %148 = zext i32 %147 to i64
  %149 = ashr i64 %146, %148
  store i64 %149, i64* %22, align 8
  %150 = load %struct.mcp_trace_format*, %struct.mcp_trace_format** %21, align 8
  %151 = getelementptr inbounds %struct.mcp_trace_format, %struct.mcp_trace_format* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i32, i32* @MCP_TRACE_FORMAT_MODULE_MASK, align 4
  %154 = sext i32 %153 to i64
  %155 = and i64 %152, %154
  %156 = load i32, i32* @MCP_TRACE_FORMAT_MODULE_SHIFT, align 4
  %157 = zext i32 %156 to i64
  %158 = ashr i64 %155, %157
  store i64 %158, i64* %23, align 8
  %159 = load i64, i64* %22, align 8
  %160 = load i8**, i8*** @s_mcp_trace_level_str, align 8
  %161 = call i64 @ARRAY_SIZE(i8** %160)
  %162 = icmp sge i64 %159, %161
  br i1 %162, label %163, label %165

163:                                              ; preds = %140
  %164 = load i32, i32* @DBG_STATUS_MCP_TRACE_BAD_DATA, align 4
  store i32 %164, i32* %8, align 4
  br label %208

165:                                              ; preds = %140
  %166 = load i8*, i8** %14, align 8
  %167 = load i64*, i64** %15, align 8
  %168 = load i64, i64* %167, align 8
  %169 = call i32 @qed_get_buf_ptr(i8* %166, i64 %168)
  %170 = load i8**, i8*** @s_mcp_trace_level_str, align 8
  %171 = load i64, i64* %22, align 8
  %172 = getelementptr inbounds i8*, i8** %170, i64 %171
  %173 = load i8*, i8** %172, align 8
  %174 = ptrtoint i8* %173 to i64
  %175 = load %struct.mcp_trace_meta*, %struct.mcp_trace_meta** %17, align 8
  %176 = getelementptr inbounds %struct.mcp_trace_meta, %struct.mcp_trace_meta* %175, i32 0, i32 1
  %177 = load i8**, i8*** %176, align 8
  %178 = load i64, i64* %23, align 8
  %179 = getelementptr inbounds i8*, i8** %177, i64 %178
  %180 = load i8*, i8** %179, align 8
  %181 = ptrtoint i8* %180 to i64
  %182 = call i64 (i32, i8*, i64, i64, ...) @sprintf(i32 %169, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %174, i64 %181)
  %183 = load i64*, i64** %15, align 8
  %184 = load i64, i64* %183, align 8
  %185 = add nsw i64 %184, %182
  store i64 %185, i64* %183, align 8
  %186 = load i8*, i8** %14, align 8
  %187 = load i64*, i64** %15, align 8
  %188 = load i64, i64* %187, align 8
  %189 = call i32 @qed_get_buf_ptr(i8* %186, i64 %188)
  %190 = load %struct.mcp_trace_format*, %struct.mcp_trace_format** %21, align 8
  %191 = getelementptr inbounds %struct.mcp_trace_format, %struct.mcp_trace_format* %190, i32 0, i32 1
  %192 = load i8*, i8** %191, align 8
  %193 = getelementptr inbounds [3 x i64], [3 x i64]* %24, i64 0, i64 0
  %194 = load i64, i64* %193, align 16
  %195 = getelementptr inbounds [3 x i64], [3 x i64]* %24, i64 0, i64 1
  %196 = load i64, i64* %195, align 8
  %197 = getelementptr inbounds [3 x i64], [3 x i64]* %24, i64 0, i64 2
  %198 = load i64, i64* %197, align 16
  %199 = call i64 (i32, i8*, i64, i64, ...) @sprintf(i32 %189, i8* %192, i64 %194, i64 %196, i64 %198)
  %200 = load i64*, i64** %15, align 8
  %201 = load i64, i64* %200, align 8
  %202 = add nsw i64 %201, %199
  store i64 %202, i64* %200, align 8
  br label %43

203:                                              ; preds = %43
  %204 = load i64*, i64** %15, align 8
  %205 = load i64, i64* %204, align 8
  %206 = add nsw i64 %205, 1
  store i64 %206, i64* %204, align 8
  %207 = load i32, i32* %20, align 4
  store i32 %207, i32* %8, align 4
  br label %208

208:                                              ; preds = %203, %163, %119, %78, %51, %39
  %209 = load i32, i32* %8, align 4
  ret i32 %209
}

declare dso_local %struct.dbg_tools_user_data* @qed_dbg_get_user_data(%struct.qed_hwfn*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @qed_read_from_cyclic_buf(i64*, i64*, i64, i64) #1

declare dso_local i64 @qed_cyclic_add(i64, i64, i64) #1

declare dso_local i64 @ARRAY_SIZE(i8**) #1

declare dso_local i64 @sprintf(i32, i8*, i64, i64, ...) #1

declare dso_local i32 @qed_get_buf_ptr(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
