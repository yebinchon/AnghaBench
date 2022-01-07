; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_parse_mcp_trace_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_parse_mcp_trace_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.mcp_trace = type { i64, i32, i32, i32 }
%struct.dbg_tools_user_data = type { i32* }

@.str = private unnamed_addr constant [14 x i8] c"global_params\00", align 1
@DBG_STATUS_MCP_TRACE_BAD_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"mcp_trace_data\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@MFW_TRACE_SIGNATURE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"mcp_trace_meta\00", align 1
@DBG_STATUS_MCP_TRACE_NO_META = common dso_local global i32 0, align 4
@DBG_STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, i32*, i8*, i32*, i32)* @qed_parse_mcp_trace_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_parse_mcp_trace_dump(%struct.qed_hwfn* %0, i32* %1, i8* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.qed_hwfn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.mcp_trace*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca %struct.dbg_tools_user_data*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %28 = load i32*, i32** %10, align 8
  store i32 0, i32* %28, align 4
  %29 = load i32*, i32** %8, align 8
  %30 = call i32 @qed_read_section_hdr(i32* %29, i8** %12, i32* %22)
  %31 = load i32*, i32** %8, align 8
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  store i32* %33, i32** %8, align 8
  %34 = load i8*, i8** %12, align 8
  %35 = call i64 @strcmp(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %5
  %38 = load i32, i32* @DBG_STATUS_MCP_TRACE_BAD_DATA, align 4
  store i32 %38, i32* %6, align 4
  br label %190

39:                                               ; preds = %5
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* %22, align 4
  %42 = load i8*, i8** %9, align 8
  %43 = call i32 @qed_print_section_params(i32* %40, i32 %41, i8* %42, i32* %19)
  %44 = load i32*, i32** %8, align 8
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  store i32* %46, i32** %8, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @qed_read_section_hdr(i32* %47, i8** %12, i32* %22)
  %49 = load i32*, i32** %8, align 8
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  store i32* %51, i32** %8, align 8
  %52 = load i8*, i8** %12, align 8
  %53 = call i64 @strcmp(i8* %52, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %39
  %56 = load i32, i32* %22, align 4
  %57 = icmp ne i32 %56, 1
  br i1 %57, label %58, label %60

58:                                               ; preds = %55, %39
  %59 = load i32, i32* @DBG_STATUS_MCP_TRACE_BAD_DATA, align 4
  store i32 %59, i32* %6, align 4
  br label %190

60:                                               ; preds = %55
  %61 = load i32*, i32** %8, align 8
  %62 = call i32 @qed_read_param(i32* %61, i8** %13, i8** %14, i32* %21)
  %63 = load i32*, i32** %8, align 8
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  store i32* %65, i32** %8, align 8
  %66 = load i8*, i8** %13, align 8
  %67 = call i64 @strcmp(i8* %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %60
  %70 = load i32, i32* @DBG_STATUS_MCP_TRACE_BAD_DATA, align 4
  store i32 %70, i32* %6, align 4
  br label %190

71:                                               ; preds = %60
  %72 = load i32, i32* %21, align 4
  store i32 %72, i32* %16, align 4
  %73 = load i32*, i32** %8, align 8
  %74 = bitcast i32* %73 to %struct.mcp_trace*
  store %struct.mcp_trace* %74, %struct.mcp_trace** %23, align 8
  %75 = load %struct.mcp_trace*, %struct.mcp_trace** %23, align 8
  %76 = getelementptr inbounds %struct.mcp_trace, %struct.mcp_trace* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @MFW_TRACE_SIGNATURE, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %85, label %80

80:                                               ; preds = %71
  %81 = load %struct.mcp_trace*, %struct.mcp_trace** %23, align 8
  %82 = getelementptr inbounds %struct.mcp_trace, %struct.mcp_trace* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %80, %71
  %86 = load i32, i32* @DBG_STATUS_MCP_TRACE_BAD_DATA, align 4
  store i32 %86, i32* %6, align 4
  br label %190

87:                                               ; preds = %80
  %88 = load i32*, i32** %8, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 24
  store i32* %89, i32** %26, align 8
  %90 = load %struct.mcp_trace*, %struct.mcp_trace** %23, align 8
  %91 = getelementptr inbounds %struct.mcp_trace, %struct.mcp_trace* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  store i32 %92, i32* %18, align 4
  %93 = load %struct.mcp_trace*, %struct.mcp_trace** %23, align 8
  %94 = getelementptr inbounds %struct.mcp_trace, %struct.mcp_trace* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* %18, align 4
  %97 = load %struct.mcp_trace*, %struct.mcp_trace** %23, align 8
  %98 = getelementptr inbounds %struct.mcp_trace, %struct.mcp_trace* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @qed_cyclic_sub(i32 %95, i32 %96, i32 %99)
  store i32 %100, i32* %15, align 4
  %101 = load i32, i32* %16, align 4
  %102 = load i32*, i32** %8, align 8
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  store i32* %104, i32** %8, align 8
  %105 = load i32*, i32** %8, align 8
  %106 = call i32 @qed_read_section_hdr(i32* %105, i8** %12, i32* %22)
  %107 = load i32*, i32** %8, align 8
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds i32, i32* %107, i64 %108
  store i32* %109, i32** %8, align 8
  %110 = load i8*, i8** %12, align 8
  %111 = call i64 @strcmp(i8* %110, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %87
  %114 = load i32, i32* @DBG_STATUS_MCP_TRACE_BAD_DATA, align 4
  store i32 %114, i32* %6, align 4
  br label %190

115:                                              ; preds = %87
  %116 = load i32*, i32** %8, align 8
  %117 = call i32 @qed_read_param(i32* %116, i8** %13, i8** %14, i32* %21)
  %118 = load i32*, i32** %8, align 8
  %119 = sext i32 %117 to i64
  %120 = getelementptr inbounds i32, i32* %118, i64 %119
  store i32* %120, i32** %8, align 8
  %121 = load i8*, i8** %13, align 8
  %122 = call i64 @strcmp(i8* %121, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %115
  %125 = load i32, i32* @DBG_STATUS_MCP_TRACE_BAD_DATA, align 4
  store i32 %125, i32* %6, align 4
  br label %190

126:                                              ; preds = %115
  %127 = load i32, i32* %21, align 4
  store i32 %127, i32* %17, align 4
  %128 = load i32, i32* %17, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %143, label %130

130:                                              ; preds = %126
  %131 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %132 = call %struct.dbg_tools_user_data* @qed_dbg_get_user_data(%struct.qed_hwfn* %131)
  store %struct.dbg_tools_user_data* %132, %struct.dbg_tools_user_data** %27, align 8
  %133 = load %struct.dbg_tools_user_data*, %struct.dbg_tools_user_data** %27, align 8
  %134 = getelementptr inbounds %struct.dbg_tools_user_data, %struct.dbg_tools_user_data* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = icmp ne i32* %135, null
  br i1 %136, label %139, label %137

137:                                              ; preds = %130
  %138 = load i32, i32* @DBG_STATUS_MCP_TRACE_NO_META, align 4
  store i32 %138, i32* %6, align 4
  br label %190

139:                                              ; preds = %130
  %140 = load %struct.dbg_tools_user_data*, %struct.dbg_tools_user_data** %27, align 8
  %141 = getelementptr inbounds %struct.dbg_tools_user_data, %struct.dbg_tools_user_data* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  store i32* %142, i32** %25, align 8
  br label %145

143:                                              ; preds = %126
  %144 = load i32*, i32** %8, align 8
  store i32* %144, i32** %25, align 8
  br label %145

145:                                              ; preds = %143, %139
  %146 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %147 = load i32*, i32** %25, align 8
  %148 = call i32 @qed_mcp_trace_alloc_meta_data(%struct.qed_hwfn* %146, i32* %147)
  store i32 %148, i32* %24, align 4
  %149 = load i32, i32* %24, align 4
  %150 = load i32, i32* @DBG_STATUS_OK, align 4
  %151 = icmp ne i32 %149, %150
  br i1 %151, label %152, label %154

152:                                              ; preds = %145
  %153 = load i32, i32* %24, align 4
  store i32 %153, i32* %6, align 4
  br label %190

154:                                              ; preds = %145
  %155 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %156 = load i32*, i32** %26, align 8
  %157 = load %struct.mcp_trace*, %struct.mcp_trace** %23, align 8
  %158 = getelementptr inbounds %struct.mcp_trace, %struct.mcp_trace* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* %18, align 4
  %161 = load i32, i32* %15, align 4
  %162 = load i8*, i8** %9, align 8
  %163 = icmp ne i8* %162, null
  br i1 %163, label %164, label %169

164:                                              ; preds = %154
  %165 = load i8*, i8** %9, align 8
  %166 = load i32, i32* %19, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i8, i8* %165, i64 %167
  br label %170

169:                                              ; preds = %154
  br label %170

170:                                              ; preds = %169, %164
  %171 = phi i8* [ %168, %164 ], [ null, %169 ]
  %172 = call i32 @qed_parse_mcp_trace_buf(%struct.qed_hwfn* %155, i32* %156, i32 %159, i32 %160, i32 %161, i8* %171, i32* %20)
  store i32 %172, i32* %24, align 4
  %173 = load i32, i32* %24, align 4
  %174 = load i32, i32* @DBG_STATUS_OK, align 4
  %175 = icmp ne i32 %173, %174
  br i1 %175, label %176, label %178

176:                                              ; preds = %170
  %177 = load i32, i32* %24, align 4
  store i32 %177, i32* %6, align 4
  br label %190

178:                                              ; preds = %170
  %179 = load i32, i32* %11, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %178
  %182 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %183 = call i32 @qed_mcp_trace_free_meta_data(%struct.qed_hwfn* %182)
  br label %184

184:                                              ; preds = %181, %178
  %185 = load i32, i32* %19, align 4
  %186 = load i32, i32* %20, align 4
  %187 = add nsw i32 %185, %186
  %188 = load i32*, i32** %10, align 8
  store i32 %187, i32* %188, align 4
  %189 = load i32, i32* @DBG_STATUS_OK, align 4
  store i32 %189, i32* %6, align 4
  br label %190

190:                                              ; preds = %184, %176, %152, %137, %124, %113, %85, %69, %58, %37
  %191 = load i32, i32* %6, align 4
  ret i32 %191
}

declare dso_local i32 @qed_read_section_hdr(i32*, i8**, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @qed_print_section_params(i32*, i32, i8*, i32*) #1

declare dso_local i32 @qed_read_param(i32*, i8**, i8**, i32*) #1

declare dso_local i32 @qed_cyclic_sub(i32, i32, i32) #1

declare dso_local %struct.dbg_tools_user_data* @qed_dbg_get_user_data(%struct.qed_hwfn*) #1

declare dso_local i32 @qed_mcp_trace_alloc_meta_data(%struct.qed_hwfn*, i32*) #1

declare dso_local i32 @qed_parse_mcp_trace_buf(%struct.qed_hwfn*, i32*, i32, i32, i32, i8*, i32*) #1

declare dso_local i32 @qed_mcp_trace_free_meta_data(%struct.qed_hwfn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
