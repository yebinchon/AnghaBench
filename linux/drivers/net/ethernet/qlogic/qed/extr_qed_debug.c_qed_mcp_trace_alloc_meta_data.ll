; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_mcp_trace_alloc_meta_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_mcp_trace_alloc_meta_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.dbg_tools_user_data = type { %struct.mcp_trace_meta }
%struct.mcp_trace_meta = type { i32, i64, i8**, i64, %struct.mcp_trace_format* }
%struct.mcp_trace_format = type { i64, i8* }

@NVM_MAGIC_VALUE = common dso_local global i64 0, align 8
@DBG_STATUS_INVALID_TRACE_SIGNATURE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@DBG_STATUS_VIRT_MEM_ALLOC_FAILED = common dso_local global i32 0, align 4
@MCP_TRACE_MAX_MODULE_LEN = common dso_local global i64 0, align 8
@MCP_TRACE_FORMAT_LEN_MASK = common dso_local global i64 0, align 8
@MCP_TRACE_FORMAT_LEN_SHIFT = common dso_local global i64 0, align 8
@DBG_STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, i64*)* @qed_mcp_trace_alloc_meta_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_mcp_trace_alloc_meta_data(%struct.qed_hwfn* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.dbg_tools_user_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.mcp_trace_meta*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.mcp_trace_format*, align 8
  %14 = alloca i64, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 0, i64* %7, align 8
  %15 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %16 = call %struct.dbg_tools_user_data* @qed_dbg_get_user_data(%struct.qed_hwfn* %15)
  store %struct.dbg_tools_user_data* %16, %struct.dbg_tools_user_data** %6, align 8
  %17 = load %struct.dbg_tools_user_data*, %struct.dbg_tools_user_data** %6, align 8
  %18 = getelementptr inbounds %struct.dbg_tools_user_data, %struct.dbg_tools_user_data* %17, i32 0, i32 0
  store %struct.mcp_trace_meta* %18, %struct.mcp_trace_meta** %10, align 8
  %19 = load i64*, i64** %5, align 8
  store i64* %19, i64** %11, align 8
  %20 = load %struct.mcp_trace_meta*, %struct.mcp_trace_meta** %10, align 8
  %21 = getelementptr inbounds %struct.mcp_trace_meta, %struct.mcp_trace_meta* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %26 = call i32 @qed_mcp_trace_free_meta_data(%struct.qed_hwfn* %25)
  br label %27

27:                                               ; preds = %24, %2
  %28 = load %struct.mcp_trace_meta*, %struct.mcp_trace_meta** %10, align 8
  %29 = call i32 @memset(%struct.mcp_trace_meta* %28, i32 0, i32 40)
  %30 = load i64*, i64** %11, align 8
  %31 = call i64 @qed_read_dword_from_buf(i64* %30, i64* %7)
  store i64 %31, i64* %8, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* @NVM_MAGIC_VALUE, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i32, i32* @DBG_STATUS_INVALID_TRACE_SIGNATURE, align 4
  store i32 %36, i32* %3, align 4
  br label %207

37:                                               ; preds = %27
  %38 = load i64*, i64** %11, align 8
  %39 = call i8* @qed_read_byte_from_buf(i64* %38, i64* %7)
  %40 = ptrtoint i8* %39 to i64
  %41 = load %struct.mcp_trace_meta*, %struct.mcp_trace_meta** %10, align 8
  %42 = getelementptr inbounds %struct.mcp_trace_meta, %struct.mcp_trace_meta* %41, i32 0, i32 1
  store i64 %40, i64* %42, align 8
  %43 = load %struct.mcp_trace_meta*, %struct.mcp_trace_meta** %10, align 8
  %44 = getelementptr inbounds %struct.mcp_trace_meta, %struct.mcp_trace_meta* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call i8* @kcalloc(i64 %45, i32 8, i32 %46)
  %48 = bitcast i8* %47 to i8**
  %49 = load %struct.mcp_trace_meta*, %struct.mcp_trace_meta** %10, align 8
  %50 = getelementptr inbounds %struct.mcp_trace_meta, %struct.mcp_trace_meta* %49, i32 0, i32 2
  store i8** %48, i8*** %50, align 8
  %51 = load %struct.mcp_trace_meta*, %struct.mcp_trace_meta** %10, align 8
  %52 = getelementptr inbounds %struct.mcp_trace_meta, %struct.mcp_trace_meta* %51, i32 0, i32 2
  %53 = load i8**, i8*** %52, align 8
  %54 = icmp ne i8** %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %37
  %56 = load i32, i32* @DBG_STATUS_VIRT_MEM_ALLOC_FAILED, align 4
  store i32 %56, i32* %3, align 4
  br label %207

57:                                               ; preds = %37
  store i64 0, i64* %9, align 8
  br label %58

58:                                               ; preds = %118, %57
  %59 = load i64, i64* %9, align 8
  %60 = load %struct.mcp_trace_meta*, %struct.mcp_trace_meta** %10, align 8
  %61 = getelementptr inbounds %struct.mcp_trace_meta, %struct.mcp_trace_meta* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp slt i64 %59, %62
  br i1 %63, label %64, label %121

64:                                               ; preds = %58
  %65 = load i64*, i64** %11, align 8
  %66 = call i8* @qed_read_byte_from_buf(i64* %65, i64* %7)
  %67 = ptrtoint i8* %66 to i64
  store i64 %67, i64* %12, align 8
  %68 = load i64, i64* %12, align 8
  %69 = load i32, i32* @GFP_KERNEL, align 4
  %70 = call i8* @kzalloc(i64 %68, i32 %69)
  %71 = load %struct.mcp_trace_meta*, %struct.mcp_trace_meta** %10, align 8
  %72 = getelementptr inbounds %struct.mcp_trace_meta, %struct.mcp_trace_meta* %71, i32 0, i32 2
  %73 = load i8**, i8*** %72, align 8
  %74 = load i64, i64* %9, align 8
  %75 = getelementptr inbounds i8*, i8** %73, i64 %74
  store i8* %70, i8** %75, align 8
  %76 = load %struct.mcp_trace_meta*, %struct.mcp_trace_meta** %10, align 8
  %77 = getelementptr inbounds %struct.mcp_trace_meta, %struct.mcp_trace_meta* %76, i32 0, i32 2
  %78 = load i8**, i8*** %77, align 8
  %79 = load i64, i64* %9, align 8
  %80 = getelementptr inbounds i8*, i8** %78, i64 %79
  %81 = load i8*, i8** %80, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %95, label %83

83:                                               ; preds = %64
  %84 = load i64, i64* %9, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i64, i64* %9, align 8
  %88 = sub nsw i64 %87, 1
  br label %90

89:                                               ; preds = %83
  br label %90

90:                                               ; preds = %89, %86
  %91 = phi i64 [ %88, %86 ], [ 0, %89 ]
  %92 = load %struct.mcp_trace_meta*, %struct.mcp_trace_meta** %10, align 8
  %93 = getelementptr inbounds %struct.mcp_trace_meta, %struct.mcp_trace_meta* %92, i32 0, i32 1
  store i64 %91, i64* %93, align 8
  %94 = load i32, i32* @DBG_STATUS_VIRT_MEM_ALLOC_FAILED, align 4
  store i32 %94, i32* %3, align 4
  br label %207

95:                                               ; preds = %64
  %96 = load i64*, i64** %11, align 8
  %97 = load i64, i64* %12, align 8
  %98 = load %struct.mcp_trace_meta*, %struct.mcp_trace_meta** %10, align 8
  %99 = getelementptr inbounds %struct.mcp_trace_meta, %struct.mcp_trace_meta* %98, i32 0, i32 2
  %100 = load i8**, i8*** %99, align 8
  %101 = load i64, i64* %9, align 8
  %102 = getelementptr inbounds i8*, i8** %100, i64 %101
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @qed_read_str_from_buf(i64* %96, i64* %7, i64 %97, i8* %103)
  %105 = load i64, i64* %12, align 8
  %106 = load i64, i64* @MCP_TRACE_MAX_MODULE_LEN, align 8
  %107 = icmp ugt i64 %105, %106
  br i1 %107, label %108, label %117

108:                                              ; preds = %95
  %109 = load %struct.mcp_trace_meta*, %struct.mcp_trace_meta** %10, align 8
  %110 = getelementptr inbounds %struct.mcp_trace_meta, %struct.mcp_trace_meta* %109, i32 0, i32 2
  %111 = load i8**, i8*** %110, align 8
  %112 = load i64, i64* %9, align 8
  %113 = getelementptr inbounds i8*, i8** %111, i64 %112
  %114 = load i8*, i8** %113, align 8
  %115 = load i64, i64* @MCP_TRACE_MAX_MODULE_LEN, align 8
  %116 = getelementptr inbounds i8, i8* %114, i64 %115
  store i8 0, i8* %116, align 1
  br label %117

117:                                              ; preds = %108, %95
  br label %118

118:                                              ; preds = %117
  %119 = load i64, i64* %9, align 8
  %120 = add nsw i64 %119, 1
  store i64 %120, i64* %9, align 8
  br label %58

121:                                              ; preds = %58
  %122 = load i64*, i64** %11, align 8
  %123 = call i64 @qed_read_dword_from_buf(i64* %122, i64* %7)
  store i64 %123, i64* %8, align 8
  %124 = load i64, i64* %8, align 8
  %125 = load i64, i64* @NVM_MAGIC_VALUE, align 8
  %126 = icmp ne i64 %124, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %121
  %128 = load i32, i32* @DBG_STATUS_INVALID_TRACE_SIGNATURE, align 4
  store i32 %128, i32* %3, align 4
  br label %207

129:                                              ; preds = %121
  %130 = load i64*, i64** %11, align 8
  %131 = call i64 @qed_read_dword_from_buf(i64* %130, i64* %7)
  %132 = load %struct.mcp_trace_meta*, %struct.mcp_trace_meta** %10, align 8
  %133 = getelementptr inbounds %struct.mcp_trace_meta, %struct.mcp_trace_meta* %132, i32 0, i32 3
  store i64 %131, i64* %133, align 8
  %134 = load %struct.mcp_trace_meta*, %struct.mcp_trace_meta** %10, align 8
  %135 = getelementptr inbounds %struct.mcp_trace_meta, %struct.mcp_trace_meta* %134, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = load i32, i32* @GFP_KERNEL, align 4
  %138 = call i8* @kcalloc(i64 %136, i32 16, i32 %137)
  %139 = bitcast i8* %138 to %struct.mcp_trace_format*
  %140 = load %struct.mcp_trace_meta*, %struct.mcp_trace_meta** %10, align 8
  %141 = getelementptr inbounds %struct.mcp_trace_meta, %struct.mcp_trace_meta* %140, i32 0, i32 4
  store %struct.mcp_trace_format* %139, %struct.mcp_trace_format** %141, align 8
  %142 = load %struct.mcp_trace_meta*, %struct.mcp_trace_meta** %10, align 8
  %143 = getelementptr inbounds %struct.mcp_trace_meta, %struct.mcp_trace_meta* %142, i32 0, i32 4
  %144 = load %struct.mcp_trace_format*, %struct.mcp_trace_format** %143, align 8
  %145 = icmp ne %struct.mcp_trace_format* %144, null
  br i1 %145, label %148, label %146

146:                                              ; preds = %129
  %147 = load i32, i32* @DBG_STATUS_VIRT_MEM_ALLOC_FAILED, align 4
  store i32 %147, i32* %3, align 4
  br label %207

148:                                              ; preds = %129
  store i64 0, i64* %9, align 8
  br label %149

149:                                              ; preds = %200, %148
  %150 = load i64, i64* %9, align 8
  %151 = load %struct.mcp_trace_meta*, %struct.mcp_trace_meta** %10, align 8
  %152 = getelementptr inbounds %struct.mcp_trace_meta, %struct.mcp_trace_meta* %151, i32 0, i32 3
  %153 = load i64, i64* %152, align 8
  %154 = icmp slt i64 %150, %153
  br i1 %154, label %155, label %203

155:                                              ; preds = %149
  %156 = load %struct.mcp_trace_meta*, %struct.mcp_trace_meta** %10, align 8
  %157 = getelementptr inbounds %struct.mcp_trace_meta, %struct.mcp_trace_meta* %156, i32 0, i32 4
  %158 = load %struct.mcp_trace_format*, %struct.mcp_trace_format** %157, align 8
  %159 = load i64, i64* %9, align 8
  %160 = getelementptr inbounds %struct.mcp_trace_format, %struct.mcp_trace_format* %158, i64 %159
  store %struct.mcp_trace_format* %160, %struct.mcp_trace_format** %13, align 8
  %161 = load i64*, i64** %11, align 8
  %162 = call i64 @qed_read_dword_from_buf(i64* %161, i64* %7)
  %163 = load %struct.mcp_trace_format*, %struct.mcp_trace_format** %13, align 8
  %164 = getelementptr inbounds %struct.mcp_trace_format, %struct.mcp_trace_format* %163, i32 0, i32 0
  store i64 %162, i64* %164, align 8
  %165 = load %struct.mcp_trace_format*, %struct.mcp_trace_format** %13, align 8
  %166 = getelementptr inbounds %struct.mcp_trace_format, %struct.mcp_trace_format* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @MCP_TRACE_FORMAT_LEN_MASK, align 8
  %169 = and i64 %167, %168
  %170 = load i64, i64* @MCP_TRACE_FORMAT_LEN_SHIFT, align 8
  %171 = lshr i64 %169, %170
  store i64 %171, i64* %14, align 8
  %172 = load i64, i64* %14, align 8
  %173 = load i32, i32* @GFP_KERNEL, align 4
  %174 = call i8* @kzalloc(i64 %172, i32 %173)
  %175 = load %struct.mcp_trace_format*, %struct.mcp_trace_format** %13, align 8
  %176 = getelementptr inbounds %struct.mcp_trace_format, %struct.mcp_trace_format* %175, i32 0, i32 1
  store i8* %174, i8** %176, align 8
  %177 = load %struct.mcp_trace_format*, %struct.mcp_trace_format** %13, align 8
  %178 = getelementptr inbounds %struct.mcp_trace_format, %struct.mcp_trace_format* %177, i32 0, i32 1
  %179 = load i8*, i8** %178, align 8
  %180 = icmp ne i8* %179, null
  br i1 %180, label %193, label %181

181:                                              ; preds = %155
  %182 = load i64, i64* %9, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %181
  %185 = load i64, i64* %9, align 8
  %186 = sub nsw i64 %185, 1
  br label %188

187:                                              ; preds = %181
  br label %188

188:                                              ; preds = %187, %184
  %189 = phi i64 [ %186, %184 ], [ 0, %187 ]
  %190 = load %struct.mcp_trace_meta*, %struct.mcp_trace_meta** %10, align 8
  %191 = getelementptr inbounds %struct.mcp_trace_meta, %struct.mcp_trace_meta* %190, i32 0, i32 3
  store i64 %189, i64* %191, align 8
  %192 = load i32, i32* @DBG_STATUS_VIRT_MEM_ALLOC_FAILED, align 4
  store i32 %192, i32* %3, align 4
  br label %207

193:                                              ; preds = %155
  %194 = load i64*, i64** %11, align 8
  %195 = load i64, i64* %14, align 8
  %196 = load %struct.mcp_trace_format*, %struct.mcp_trace_format** %13, align 8
  %197 = getelementptr inbounds %struct.mcp_trace_format, %struct.mcp_trace_format* %196, i32 0, i32 1
  %198 = load i8*, i8** %197, align 8
  %199 = call i32 @qed_read_str_from_buf(i64* %194, i64* %7, i64 %195, i8* %198)
  br label %200

200:                                              ; preds = %193
  %201 = load i64, i64* %9, align 8
  %202 = add nsw i64 %201, 1
  store i64 %202, i64* %9, align 8
  br label %149

203:                                              ; preds = %149
  %204 = load %struct.mcp_trace_meta*, %struct.mcp_trace_meta** %10, align 8
  %205 = getelementptr inbounds %struct.mcp_trace_meta, %struct.mcp_trace_meta* %204, i32 0, i32 0
  store i32 1, i32* %205, align 8
  %206 = load i32, i32* @DBG_STATUS_OK, align 4
  store i32 %206, i32* %3, align 4
  br label %207

207:                                              ; preds = %203, %188, %146, %127, %90, %55, %35
  %208 = load i32, i32* %3, align 4
  ret i32 %208
}

declare dso_local %struct.dbg_tools_user_data* @qed_dbg_get_user_data(%struct.qed_hwfn*) #1

declare dso_local i32 @qed_mcp_trace_free_meta_data(%struct.qed_hwfn*) #1

declare dso_local i32 @memset(%struct.mcp_trace_meta*, i32, i32) #1

declare dso_local i64 @qed_read_dword_from_buf(i64*, i64*) #1

declare dso_local i8* @qed_read_byte_from_buf(i64*, i64*) #1

declare dso_local i8* @kcalloc(i64, i32, i32) #1

declare dso_local i8* @kzalloc(i64, i32) #1

declare dso_local i32 @qed_read_str_from_buf(i64*, i64*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
