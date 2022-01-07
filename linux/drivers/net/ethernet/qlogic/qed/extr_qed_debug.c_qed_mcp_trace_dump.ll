; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_mcp_trace_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_mcp_trace_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }

@DBG_GRC_PARAM_NO_MCP = common dso_local global i32 0, align 4
@DBG_STATUS_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"dump-type\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"mcp-trace\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"MCP halt failed!\0A\00", align 1
@BYTES_IN_DWORD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"mcp_trace_data\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@SPLIT_TYPE_NONE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"Failed to resume MCP after halt!\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"mcp_trace_meta\00", align 1
@DBG_GRC_PARAM_MCP_TRACE_META_SIZE = common dso_local global i32 0, align 4
@DBG_STATUS_NVRAM_GET_IMAGE_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_ptt*, i32*, i32, i32*)* @qed_mcp_trace_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_mcp_trace_dump(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.qed_hwfn*, align 8
  %8 = alloca %struct.qed_ptt*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %7, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %22, align 4
  %23 = load i32*, i32** %11, align 8
  store i32 0, i32* %23, align 4
  %24 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %25 = load i32, i32* @DBG_GRC_PARAM_NO_MCP, align 4
  %26 = call i32 @qed_grc_get_param(%struct.qed_hwfn* %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %21, align 4
  %30 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %31 = load %struct.qed_ptt*, %struct.qed_ptt** %8, align 8
  %32 = call i32 @qed_mcp_trace_get_data_info(%struct.qed_hwfn* %30, %struct.qed_ptt* %31, i32* %12, i32* %13)
  store i32 %32, i32* %20, align 4
  %33 = load i32, i32* %20, align 4
  %34 = load i32, i32* @DBG_STATUS_OK, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %5
  %37 = load i32, i32* %20, align 4
  store i32 %37, i32* %6, align 4
  br label %205

38:                                               ; preds = %5
  %39 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %40 = load %struct.qed_ptt*, %struct.qed_ptt** %8, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = load i32, i32* %17, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @qed_dump_common_global_params(%struct.qed_hwfn* %39, %struct.qed_ptt* %40, i32* %44, i32 %45, i32 1)
  %47 = load i32, i32* %17, align 4
  %48 = add nsw i32 %47, %46
  store i32 %48, i32* %17, align 4
  %49 = load i32*, i32** %9, align 8
  %50 = load i32, i32* %17, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @qed_dump_str_param(i32* %52, i32 %53, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* %17, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* %17, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %75

59:                                               ; preds = %38
  %60 = load i32, i32* %21, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %59
  %63 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %64 = load %struct.qed_ptt*, %struct.qed_ptt** %8, align 8
  %65 = call i32 @qed_mcp_halt(%struct.qed_hwfn* %63, %struct.qed_ptt* %64)
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %22, align 4
  %69 = load i32, i32* %22, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %62
  %72 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %73 = call i32 @DP_NOTICE(%struct.qed_hwfn* %72, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %74

74:                                               ; preds = %71, %62
  br label %75

75:                                               ; preds = %74, %59, %38
  %76 = load i32, i32* %13, align 4
  %77 = sext i32 %76 to i64
  %78 = add i64 %77, 4
  %79 = trunc i64 %78 to i32
  %80 = load i32, i32* @BYTES_IN_DWORD, align 4
  %81 = call i32 @DIV_ROUND_UP(i32 %79, i32 %80)
  store i32 %81, i32* %14, align 4
  %82 = load i32*, i32** %9, align 8
  %83 = load i32, i32* %17, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @qed_dump_section_hdr(i32* %85, i32 %86, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 1)
  %88 = load i32, i32* %17, align 4
  %89 = add nsw i32 %88, %87
  store i32 %89, i32* %17, align 4
  %90 = load i32*, i32** %9, align 8
  %91 = load i32, i32* %17, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* %14, align 4
  %96 = call i32 @qed_dump_num_param(i32* %93, i32 %94, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* %17, align 4
  %98 = add nsw i32 %97, %96
  store i32 %98, i32* %17, align 4
  %99 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %100 = load %struct.qed_ptt*, %struct.qed_ptt** %8, align 8
  %101 = load i32*, i32** %9, align 8
  %102 = load i32, i32* %17, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* %12, align 4
  %107 = call i32 @BYTES_TO_DWORDS(i32 %106)
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* @SPLIT_TYPE_NONE, align 4
  %110 = call i32 @qed_grc_dump_addr_range(%struct.qed_hwfn* %99, %struct.qed_ptt* %100, i32* %104, i32 %105, i32 %107, i32 %108, i32 0, i32 %109, i32 0)
  %111 = load i32, i32* %17, align 4
  %112 = add nsw i32 %111, %110
  store i32 %112, i32* %17, align 4
  %113 = load i32, i32* %22, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %75
  %116 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %117 = load %struct.qed_ptt*, %struct.qed_ptt** %8, align 8
  %118 = call i64 @qed_mcp_resume(%struct.qed_hwfn* %116, %struct.qed_ptt* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %115
  %121 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %122 = call i32 @DP_NOTICE(%struct.qed_hwfn* %121, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  br label %123

123:                                              ; preds = %120, %115, %75
  %124 = load i32*, i32** %9, align 8
  %125 = load i32, i32* %17, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %10, align 4
  %129 = call i32 @qed_dump_section_hdr(i32* %127, i32 %128, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 1)
  %130 = load i32, i32* %17, align 4
  %131 = add nsw i32 %130, %129
  store i32 %131, i32* %17, align 4
  %132 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %133 = load i32, i32* @DBG_GRC_PARAM_MCP_TRACE_META_SIZE, align 4
  %134 = call i32 @qed_grc_get_param(%struct.qed_hwfn* %132, i32 %133)
  store i32 %134, i32* %19, align 4
  %135 = load i32, i32* %19, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %123
  %138 = load i32, i32* %10, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %155

140:                                              ; preds = %137, %123
  %141 = load i32, i32* %21, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %155

143:                                              ; preds = %140
  %144 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %145 = load %struct.qed_ptt*, %struct.qed_ptt** %8, align 8
  %146 = load i32, i32* %13, align 4
  %147 = call i32 @qed_mcp_trace_get_meta_info(%struct.qed_hwfn* %144, %struct.qed_ptt* %145, i32 %146, i32* %16, i32* %18, i32* %19)
  store i32 %147, i32* %20, align 4
  %148 = load i32, i32* %20, align 4
  %149 = load i32, i32* @DBG_STATUS_OK, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %154

151:                                              ; preds = %143
  %152 = load i32, i32* %19, align 4
  %153 = call i32 @BYTES_TO_DWORDS(i32 %152)
  store i32 %153, i32* %15, align 4
  br label %154

154:                                              ; preds = %151, %143
  br label %155

155:                                              ; preds = %154, %140, %137
  %156 = load i32*, i32** %9, align 8
  %157 = load i32, i32* %17, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  %160 = load i32, i32* %10, align 4
  %161 = load i32, i32* %15, align 4
  %162 = call i32 @qed_dump_num_param(i32* %159, i32 %160, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %161)
  %163 = load i32, i32* %17, align 4
  %164 = add nsw i32 %163, %162
  store i32 %164, i32* %17, align 4
  %165 = load i32, i32* %10, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %180

167:                                              ; preds = %155
  %168 = load i32, i32* %15, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %180

170:                                              ; preds = %167
  %171 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %172 = load %struct.qed_ptt*, %struct.qed_ptt** %8, align 8
  %173 = load i32, i32* %18, align 4
  %174 = load i32, i32* %19, align 4
  %175 = load i32*, i32** %9, align 8
  %176 = load i32, i32* %17, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  %179 = call i32 @qed_mcp_trace_read_meta(%struct.qed_hwfn* %171, %struct.qed_ptt* %172, i32 %173, i32 %174, i32* %178)
  store i32 %179, i32* %20, align 4
  br label %180

180:                                              ; preds = %170, %167, %155
  %181 = load i32, i32* %20, align 4
  %182 = load i32, i32* @DBG_STATUS_OK, align 4
  %183 = icmp eq i32 %181, %182
  br i1 %183, label %184, label %188

184:                                              ; preds = %180
  %185 = load i32, i32* %15, align 4
  %186 = load i32, i32* %17, align 4
  %187 = add nsw i32 %186, %185
  store i32 %187, i32* %17, align 4
  br label %188

188:                                              ; preds = %184, %180
  %189 = load i32*, i32** %9, align 8
  %190 = load i32, i32* %17, align 4
  %191 = load i32, i32* %10, align 4
  %192 = call i32 @qed_dump_last_section(i32* %189, i32 %190, i32 %191)
  %193 = load i32, i32* %17, align 4
  %194 = add nsw i32 %193, %192
  store i32 %194, i32* %17, align 4
  %195 = load i32, i32* %17, align 4
  %196 = load i32*, i32** %11, align 8
  store i32 %195, i32* %196, align 4
  %197 = load i32, i32* %21, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %188
  %200 = load i32, i32* %20, align 4
  br label %203

201:                                              ; preds = %188
  %202 = load i32, i32* @DBG_STATUS_NVRAM_GET_IMAGE_FAILED, align 4
  br label %203

203:                                              ; preds = %201, %199
  %204 = phi i32 [ %200, %199 ], [ %202, %201 ]
  store i32 %204, i32* %6, align 4
  br label %205

205:                                              ; preds = %203, %36
  %206 = load i32, i32* %6, align 4
  ret i32 %206
}

declare dso_local i32 @qed_grc_get_param(%struct.qed_hwfn*, i32) #1

declare dso_local i32 @qed_mcp_trace_get_data_info(%struct.qed_hwfn*, %struct.qed_ptt*, i32*, i32*) #1

declare dso_local i32 @qed_dump_common_global_params(%struct.qed_hwfn*, %struct.qed_ptt*, i32*, i32, i32) #1

declare dso_local i32 @qed_dump_str_param(i32*, i32, i8*, i8*) #1

declare dso_local i32 @qed_mcp_halt(%struct.qed_hwfn*, %struct.qed_ptt*) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @qed_dump_section_hdr(i32*, i32, i8*, i32) #1

declare dso_local i32 @qed_dump_num_param(i32*, i32, i8*, i32) #1

declare dso_local i32 @qed_grc_dump_addr_range(%struct.qed_hwfn*, %struct.qed_ptt*, i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @BYTES_TO_DWORDS(i32) #1

declare dso_local i64 @qed_mcp_resume(%struct.qed_hwfn*, %struct.qed_ptt*) #1

declare dso_local i32 @qed_mcp_trace_get_meta_info(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @qed_mcp_trace_read_meta(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32, i32*) #1

declare dso_local i32 @qed_dump_last_section(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
