; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_grc_dump_static_debug.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_grc_dump_static_debug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_defs = type { i64*, i32, i32 }
%struct.qed_hwfn = type { %struct.dbg_tools_data }
%struct.dbg_tools_data = type { i64, i64* }
%struct.qed_ptt = type { i32 }
%struct.dbg_bus_block = type { i32 }

@DBG_REG_DBG_BLOCK_ON = common dso_local global i32 0, align 4
@MAX_BLOCK_ID = common dso_local global i64 0, align 8
@s_block_defs = common dso_local global %struct.block_defs** null, align 8
@MAX_DBG_BUS_CLIENTS = common dso_local global i64 0, align 8
@DBG_BUS_FRAME_MODE_8HW_0ST = common dso_local global i32 0, align 4
@DBG_REG_DEBUG_TARGET = common dso_local global i32 0, align 4
@DBG_BUS_TARGET_ID_INT_BUF = common dso_local global i32 0, align 4
@DBG_REG_FULL_MODE = common dso_local global i32 0, align 4
@STATIC_DEBUG_LINE_DWORDS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"STATIC\00", align 1
@DBG_REG_CALENDAR_OUT_DATA = common dso_local global i32 0, align 4
@SPLIT_TYPE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.qed_hwfn*, %struct.qed_ptt*, i64*, i32)* @qed_grc_dump_static_debug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @qed_grc_dump_static_debug(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, i64* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.qed_hwfn*, align 8
  %7 = alloca %struct.qed_ptt*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dbg_tools_data*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.block_defs*, align 8
  %15 = alloca %struct.block_defs*, align 8
  %16 = alloca %struct.dbg_bus_block*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %6, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %21 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %22 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %21, i32 0, i32 0
  store %struct.dbg_tools_data* %22, %struct.dbg_tools_data** %10, align 8
  store i64 0, i64* %13, align 8
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %4
  %26 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %27 = load %struct.qed_ptt*, %struct.qed_ptt** %7, align 8
  %28 = load i32, i32* @DBG_REG_DBG_BLOCK_ON, align 4
  %29 = call i64 @qed_rd(%struct.qed_hwfn* %26, %struct.qed_ptt* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i64 0, i64* %5, align 8
  br label %221

32:                                               ; preds = %25, %4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %86

35:                                               ; preds = %32
  store i64 0, i64* %11, align 8
  br label %36

36:                                               ; preds = %63, %35
  %37 = load i64, i64* %11, align 8
  %38 = load i64, i64* @MAX_BLOCK_ID, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %66

40:                                               ; preds = %36
  %41 = load %struct.block_defs**, %struct.block_defs*** @s_block_defs, align 8
  %42 = load i64, i64* %11, align 8
  %43 = getelementptr inbounds %struct.block_defs*, %struct.block_defs** %41, i64 %42
  %44 = load %struct.block_defs*, %struct.block_defs** %43, align 8
  store %struct.block_defs* %44, %struct.block_defs** %14, align 8
  %45 = load %struct.block_defs*, %struct.block_defs** %14, align 8
  %46 = getelementptr inbounds %struct.block_defs, %struct.block_defs* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %10, align 8
  %49 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds i64, i64* %47, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @MAX_DBG_BUS_CLIENTS, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %40
  %56 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %57 = load %struct.qed_ptt*, %struct.qed_ptt** %7, align 8
  %58 = load %struct.block_defs*, %struct.block_defs** %14, align 8
  %59 = getelementptr inbounds %struct.block_defs, %struct.block_defs* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @qed_wr(%struct.qed_hwfn* %56, %struct.qed_ptt* %57, i32 %60, i32 0)
  br label %62

62:                                               ; preds = %55, %40
  br label %63

63:                                               ; preds = %62
  %64 = load i64, i64* %11, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %11, align 8
  br label %36

66:                                               ; preds = %36
  %67 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %68 = load %struct.qed_ptt*, %struct.qed_ptt** %7, align 8
  %69 = call i32 @qed_bus_reset_dbg_block(%struct.qed_hwfn* %67, %struct.qed_ptt* %68)
  %70 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %71 = load %struct.qed_ptt*, %struct.qed_ptt** %7, align 8
  %72 = load i32, i32* @DBG_BUS_FRAME_MODE_8HW_0ST, align 4
  %73 = call i32 @qed_bus_set_framing_mode(%struct.qed_hwfn* %70, %struct.qed_ptt* %71, i32 %72)
  %74 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %75 = load %struct.qed_ptt*, %struct.qed_ptt** %7, align 8
  %76 = load i32, i32* @DBG_REG_DEBUG_TARGET, align 4
  %77 = load i32, i32* @DBG_BUS_TARGET_ID_INT_BUF, align 4
  %78 = call i32 @qed_wr(%struct.qed_hwfn* %74, %struct.qed_ptt* %75, i32 %76, i32 %77)
  %79 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %80 = load %struct.qed_ptt*, %struct.qed_ptt** %7, align 8
  %81 = load i32, i32* @DBG_REG_FULL_MODE, align 4
  %82 = call i32 @qed_wr(%struct.qed_hwfn* %79, %struct.qed_ptt* %80, i32 %81, i32 1)
  %83 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %84 = load %struct.qed_ptt*, %struct.qed_ptt** %7, align 8
  %85 = call i32 @qed_bus_enable_dbg_block(%struct.qed_hwfn* %83, %struct.qed_ptt* %84, i32 1)
  br label %86

86:                                               ; preds = %66, %32
  store i64 0, i64* %11, align 8
  br label %87

87:                                               ; preds = %206, %86
  %88 = load i64, i64* %11, align 8
  %89 = load i64, i64* @MAX_BLOCK_ID, align 8
  %90 = icmp ult i64 %88, %89
  br i1 %90, label %91, label %209

91:                                               ; preds = %87
  %92 = load %struct.block_defs**, %struct.block_defs*** @s_block_defs, align 8
  %93 = load i64, i64* %11, align 8
  %94 = getelementptr inbounds %struct.block_defs*, %struct.block_defs** %92, i64 %93
  %95 = load %struct.block_defs*, %struct.block_defs** %94, align 8
  store %struct.block_defs* %95, %struct.block_defs** %15, align 8
  %96 = load %struct.block_defs*, %struct.block_defs** %15, align 8
  %97 = getelementptr inbounds %struct.block_defs, %struct.block_defs* %96, i32 0, i32 0
  %98 = load i64*, i64** %97, align 8
  %99 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %10, align 8
  %100 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds i64, i64* %98, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @MAX_DBG_BUS_CLIENTS, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %91
  br label %206

107:                                              ; preds = %91
  %108 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %109 = load i64, i64* %11, align 8
  %110 = trunc i64 %109 to i32
  %111 = call %struct.dbg_bus_block* @get_dbg_bus_block_desc(%struct.qed_hwfn* %108, i32 %110)
  store %struct.dbg_bus_block* %111, %struct.dbg_bus_block** %16, align 8
  %112 = load %struct.dbg_bus_block*, %struct.dbg_bus_block** %16, align 8
  %113 = call i64 @NUM_DBG_LINES(%struct.dbg_bus_block* %112)
  %114 = load i64, i64* @STATIC_DEBUG_LINE_DWORDS, align 8
  %115 = mul i64 %113, %114
  store i64 %115, i64* %17, align 8
  %116 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %117 = load i64*, i64** %8, align 8
  %118 = load i64, i64* %13, align 8
  %119 = getelementptr inbounds i64, i64* %117, i64 %118
  %120 = load i32, i32* %9, align 4
  %121 = load %struct.block_defs*, %struct.block_defs** %15, align 8
  %122 = getelementptr inbounds %struct.block_defs, %struct.block_defs* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load i64, i64* %17, align 8
  %125 = call i64 @qed_grc_dump_mem_hdr(%struct.qed_hwfn* %116, i64* %119, i32 %120, i32 %123, i32 0, i64 %124, i32 32, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 0, i32 0)
  %126 = load i64, i64* %13, align 8
  %127 = add i64 %126, %125
  store i64 %127, i64* %13, align 8
  %128 = load i32, i32* %9, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %134, label %130

130:                                              ; preds = %107
  %131 = load i64, i64* %17, align 8
  %132 = load i64, i64* %13, align 8
  %133 = add i64 %132, %131
  store i64 %133, i64* %13, align 8
  br label %206

134:                                              ; preds = %107
  %135 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %10, align 8
  %136 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %135, i32 0, i32 1
  %137 = load i64*, i64** %136, align 8
  %138 = load i64, i64* %11, align 8
  %139 = getelementptr inbounds i64, i64* %137, i64 %138
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %152

142:                                              ; preds = %134
  %143 = load i64*, i64** %8, align 8
  %144 = load i64, i64* %13, align 8
  %145 = getelementptr inbounds i64, i64* %143, i64 %144
  %146 = load i64, i64* %17, align 8
  %147 = call i32 @DWORDS_TO_BYTES(i64 %146)
  %148 = call i32 @memset(i64* %145, i32 0, i32 %147)
  %149 = load i64, i64* %17, align 8
  %150 = load i64, i64* %13, align 8
  %151 = add i64 %150, %149
  store i64 %151, i64* %13, align 8
  br label %206

152:                                              ; preds = %134
  %153 = load %struct.block_defs*, %struct.block_defs** %15, align 8
  %154 = getelementptr inbounds %struct.block_defs, %struct.block_defs* %153, i32 0, i32 0
  %155 = load i64*, i64** %154, align 8
  %156 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %10, align 8
  %157 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = getelementptr inbounds i64, i64* %155, i64 %158
  %160 = load i64, i64* %159, align 8
  store i64 %160, i64* %20, align 8
  %161 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %162 = load %struct.qed_ptt*, %struct.qed_ptt** %7, align 8
  %163 = load i64, i64* %20, align 8
  %164 = call i32 @BIT(i64 %163)
  %165 = call i32 @qed_bus_enable_clients(%struct.qed_hwfn* %161, %struct.qed_ptt* %162, i32 %164)
  %166 = load i32, i32* @DBG_REG_CALENDAR_OUT_DATA, align 4
  %167 = call i64 @BYTES_TO_DWORDS(i32 %166)
  store i64 %167, i64* %18, align 8
  %168 = load i64, i64* @STATIC_DEBUG_LINE_DWORDS, align 8
  store i64 %168, i64* %19, align 8
  store i64 0, i64* %12, align 8
  br label %169

169:                                              ; preds = %193, %152
  %170 = load i64, i64* %12, align 8
  %171 = load %struct.dbg_bus_block*, %struct.dbg_bus_block** %16, align 8
  %172 = call i64 @NUM_DBG_LINES(%struct.dbg_bus_block* %171)
  %173 = icmp ult i64 %170, %172
  br i1 %173, label %174, label %196

174:                                              ; preds = %169
  %175 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %176 = load %struct.qed_ptt*, %struct.qed_ptt** %7, align 8
  %177 = load i64, i64* %11, align 8
  %178 = trunc i64 %177 to i32
  %179 = load i64, i64* %12, align 8
  %180 = call i32 @qed_config_dbg_line(%struct.qed_hwfn* %175, %struct.qed_ptt* %176, i32 %178, i64 %179, i32 15, i32 0, i32 0, i32 0)
  %181 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %182 = load %struct.qed_ptt*, %struct.qed_ptt** %7, align 8
  %183 = load i64*, i64** %8, align 8
  %184 = load i64, i64* %13, align 8
  %185 = getelementptr inbounds i64, i64* %183, i64 %184
  %186 = load i32, i32* %9, align 4
  %187 = load i64, i64* %18, align 8
  %188 = load i64, i64* %19, align 8
  %189 = load i32, i32* @SPLIT_TYPE_NONE, align 4
  %190 = call i64 @qed_grc_dump_addr_range(%struct.qed_hwfn* %181, %struct.qed_ptt* %182, i64* %185, i32 %186, i64 %187, i64 %188, i32 1, i32 %189, i32 0)
  %191 = load i64, i64* %13, align 8
  %192 = add i64 %191, %190
  store i64 %192, i64* %13, align 8
  br label %193

193:                                              ; preds = %174
  %194 = load i64, i64* %12, align 8
  %195 = add i64 %194, 1
  store i64 %195, i64* %12, align 8
  br label %169

196:                                              ; preds = %169
  %197 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %198 = load %struct.qed_ptt*, %struct.qed_ptt** %7, align 8
  %199 = call i32 @qed_bus_enable_clients(%struct.qed_hwfn* %197, %struct.qed_ptt* %198, i32 0)
  %200 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %201 = load %struct.qed_ptt*, %struct.qed_ptt** %7, align 8
  %202 = load %struct.block_defs*, %struct.block_defs** %15, align 8
  %203 = getelementptr inbounds %struct.block_defs, %struct.block_defs* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 8
  %205 = call i32 @qed_wr(%struct.qed_hwfn* %200, %struct.qed_ptt* %201, i32 %204, i32 0)
  br label %206

206:                                              ; preds = %196, %142, %130, %106
  %207 = load i64, i64* %11, align 8
  %208 = add i64 %207, 1
  store i64 %208, i64* %11, align 8
  br label %87

209:                                              ; preds = %87
  %210 = load i32, i32* %9, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %219

212:                                              ; preds = %209
  %213 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %214 = load %struct.qed_ptt*, %struct.qed_ptt** %7, align 8
  %215 = call i32 @qed_bus_enable_dbg_block(%struct.qed_hwfn* %213, %struct.qed_ptt* %214, i32 0)
  %216 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %217 = load %struct.qed_ptt*, %struct.qed_ptt** %7, align 8
  %218 = call i32 @qed_bus_enable_clients(%struct.qed_hwfn* %216, %struct.qed_ptt* %217, i32 0)
  br label %219

219:                                              ; preds = %212, %209
  %220 = load i64, i64* %13, align 8
  store i64 %220, i64* %5, align 8
  br label %221

221:                                              ; preds = %219, %31
  %222 = load i64, i64* %5, align 8
  ret i64 %222
}

declare dso_local i64 @qed_rd(%struct.qed_hwfn*, %struct.qed_ptt*, i32) #1

declare dso_local i32 @qed_wr(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32) #1

declare dso_local i32 @qed_bus_reset_dbg_block(%struct.qed_hwfn*, %struct.qed_ptt*) #1

declare dso_local i32 @qed_bus_set_framing_mode(%struct.qed_hwfn*, %struct.qed_ptt*, i32) #1

declare dso_local i32 @qed_bus_enable_dbg_block(%struct.qed_hwfn*, %struct.qed_ptt*, i32) #1

declare dso_local %struct.dbg_bus_block* @get_dbg_bus_block_desc(%struct.qed_hwfn*, i32) #1

declare dso_local i64 @NUM_DBG_LINES(%struct.dbg_bus_block*) #1

declare dso_local i64 @qed_grc_dump_mem_hdr(%struct.qed_hwfn*, i64*, i32, i32, i32, i64, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @DWORDS_TO_BYTES(i64) #1

declare dso_local i32 @qed_bus_enable_clients(%struct.qed_hwfn*, %struct.qed_ptt*, i32) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i64 @BYTES_TO_DWORDS(i32) #1

declare dso_local i32 @qed_config_dbg_line(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i64, i32, i32, i32, i32) #1

declare dso_local i64 @qed_grc_dump_addr_range(%struct.qed_hwfn*, %struct.qed_ptt*, i64*, i32, i64, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
