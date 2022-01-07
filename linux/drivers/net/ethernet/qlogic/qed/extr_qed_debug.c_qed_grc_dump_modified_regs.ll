; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_grc_dump_modified_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_grc_dump_modified_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.storm_defs = type { i64, i64 }
%struct.qed_hwfn = type { %struct.dbg_tools_data }
%struct.dbg_tools_data = type { i64* }
%struct.qed_ptt = type { i32 }
%struct.dbg_attn_reg = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SPLIT_TYPE_NONE = common dso_local global i32 0, align 4
@MAX_BLOCK_ID = common dso_local global i64 0, align 8
@ATTN_TYPE_PARITY = common dso_local global i32 0, align 4
@DBG_MODE_HDR_EVAL_MODE = common dso_local global i32 0, align 4
@DBG_MODE_HDR_MODES_BUF_OFFSET = common dso_local global i32 0, align 4
@DBG_ATTN_REG_STS_ADDRESS = common dso_local global i32 0, align 4
@MAX_DBG_STORMS = common dso_local global i64 0, align 8
@s_storm_defs = common dso_local global %struct.storm_defs* null, align 8
@SEM_FAST_REG_STALLED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.qed_hwfn*, %struct.qed_ptt*, i64*, i32)* @qed_grc_dump_modified_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @qed_grc_dump_modified_regs(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, i64* %2, i32 %3) #0 {
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca %struct.qed_ptt*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dbg_tools_data*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.dbg_attn_reg*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.dbg_attn_reg*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca %struct.storm_defs*, align 8
  %22 = alloca i64, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %5, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 %3, i32* %8, align 4
  %23 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %24 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %23, i32 0, i32 0
  store %struct.dbg_tools_data* %24, %struct.dbg_tools_data** %9, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %25 = load i64*, i64** %7, align 8
  %26 = load i32, i32* @SPLIT_TYPE_NONE, align 4
  %27 = call i64 @qed_grc_dump_regs_hdr(i64* %25, i32 0, i64 0, i32 %26, i32 0, i32* null, i32* null)
  %28 = load i64, i64* %11, align 8
  %29 = add i64 %28, %27
  store i64 %29, i64* %11, align 8
  store i64 0, i64* %10, align 8
  br label %30

30:                                               ; preds = %117, %4
  %31 = load i64, i64* %10, align 8
  %32 = load i64, i64* @MAX_BLOCK_ID, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %120

34:                                               ; preds = %30
  %35 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %9, align 8
  %36 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = load i64, i64* %10, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %34
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  br label %117

46:                                               ; preds = %42, %34
  %47 = load i64, i64* %10, align 8
  %48 = trunc i64 %47 to i32
  %49 = load i32, i32* @ATTN_TYPE_PARITY, align 4
  %50 = call %struct.dbg_attn_reg* @qed_get_block_attn_regs(i32 %48, i32 %49, i64* %16)
  store %struct.dbg_attn_reg* %50, %struct.dbg_attn_reg** %13, align 8
  store i64 0, i64* %15, align 8
  br label %51

51:                                               ; preds = %113, %46
  %52 = load i64, i64* %15, align 8
  %53 = load i64, i64* %16, align 8
  %54 = icmp ult i64 %52, %53
  br i1 %54, label %55, label %116

55:                                               ; preds = %51
  %56 = load %struct.dbg_attn_reg*, %struct.dbg_attn_reg** %13, align 8
  %57 = load i64, i64* %15, align 8
  %58 = getelementptr inbounds %struct.dbg_attn_reg, %struct.dbg_attn_reg* %56, i64 %57
  store %struct.dbg_attn_reg* %58, %struct.dbg_attn_reg** %17, align 8
  %59 = load %struct.dbg_attn_reg*, %struct.dbg_attn_reg** %17, align 8
  %60 = getelementptr inbounds %struct.dbg_attn_reg, %struct.dbg_attn_reg* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @DBG_MODE_HDR_EVAL_MODE, align 4
  %64 = call i64 @GET_FIELD(i32 %62, i32 %63)
  %65 = icmp sgt i64 %64, 0
  %66 = zext i1 %65 to i32
  store i32 %66, i32* %19, align 4
  %67 = load %struct.dbg_attn_reg*, %struct.dbg_attn_reg** %17, align 8
  %68 = getelementptr inbounds %struct.dbg_attn_reg, %struct.dbg_attn_reg* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @DBG_MODE_HDR_MODES_BUF_OFFSET, align 4
  %72 = call i64 @GET_FIELD(i32 %70, i32 %71)
  store i64 %72, i64* %18, align 8
  %73 = load i32, i32* %19, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %55
  %76 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %77 = call i32 @qed_is_mode_match(%struct.qed_hwfn* %76, i64* %18)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %75
  br label %113

80:                                               ; preds = %75, %55
  %81 = load %struct.dbg_attn_reg*, %struct.dbg_attn_reg** %17, align 8
  %82 = getelementptr inbounds %struct.dbg_attn_reg, %struct.dbg_attn_reg* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %20, align 8
  %84 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %85 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %86 = load i64*, i64** %7, align 8
  %87 = load i64, i64* %11, align 8
  %88 = getelementptr inbounds i64, i64* %86, i64 %87
  %89 = load i32, i32* %8, align 4
  %90 = load i64, i64* %20, align 8
  %91 = load i32, i32* @SPLIT_TYPE_NONE, align 4
  %92 = call i64 @qed_grc_dump_reg_entry(%struct.qed_hwfn* %84, %struct.qed_ptt* %85, i64* %88, i32 %89, i64 %90, i32 1, i32 0, i32 %91, i32 0)
  %93 = load i64, i64* %11, align 8
  %94 = add i64 %93, %92
  store i64 %94, i64* %11, align 8
  %95 = load %struct.dbg_attn_reg*, %struct.dbg_attn_reg** %17, align 8
  %96 = getelementptr inbounds %struct.dbg_attn_reg, %struct.dbg_attn_reg* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @DBG_ATTN_REG_STS_ADDRESS, align 4
  %99 = call i64 @GET_FIELD(i32 %97, i32 %98)
  store i64 %99, i64* %20, align 8
  %100 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %101 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %102 = load i64*, i64** %7, align 8
  %103 = load i64, i64* %11, align 8
  %104 = getelementptr inbounds i64, i64* %102, i64 %103
  %105 = load i32, i32* %8, align 4
  %106 = load i64, i64* %20, align 8
  %107 = load i32, i32* @SPLIT_TYPE_NONE, align 4
  %108 = call i64 @qed_grc_dump_reg_entry(%struct.qed_hwfn* %100, %struct.qed_ptt* %101, i64* %104, i32 %105, i64 %106, i32 1, i32 0, i32 %107, i32 0)
  %109 = load i64, i64* %11, align 8
  %110 = add i64 %109, %108
  store i64 %110, i64* %11, align 8
  %111 = load i64, i64* %12, align 8
  %112 = add i64 %111, 2
  store i64 %112, i64* %12, align 8
  br label %113

113:                                              ; preds = %80, %79
  %114 = load i64, i64* %15, align 8
  %115 = add i64 %114, 1
  store i64 %115, i64* %15, align 8
  br label %51

116:                                              ; preds = %51
  br label %117

117:                                              ; preds = %116, %45
  %118 = load i64, i64* %10, align 8
  %119 = add i64 %118, 1
  store i64 %119, i64* %10, align 8
  br label %30

120:                                              ; preds = %30
  store i64 0, i64* %14, align 8
  br label %121

121:                                              ; preds = %164, %120
  %122 = load i64, i64* %14, align 8
  %123 = load i64, i64* @MAX_DBG_STORMS, align 8
  %124 = icmp ult i64 %122, %123
  br i1 %124, label %125, label %167

125:                                              ; preds = %121
  %126 = load %struct.storm_defs*, %struct.storm_defs** @s_storm_defs, align 8
  %127 = load i64, i64* %14, align 8
  %128 = getelementptr inbounds %struct.storm_defs, %struct.storm_defs* %126, i64 %127
  store %struct.storm_defs* %128, %struct.storm_defs** %21, align 8
  %129 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %9, align 8
  %130 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %129, i32 0, i32 0
  %131 = load i64*, i64** %130, align 8
  %132 = load %struct.storm_defs*, %struct.storm_defs** %21, align 8
  %133 = getelementptr inbounds %struct.storm_defs, %struct.storm_defs* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = getelementptr inbounds i64, i64* %131, i64 %134
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %125
  %139 = load i32, i32* %8, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %138
  br label %164

142:                                              ; preds = %138, %125
  %143 = load %struct.storm_defs*, %struct.storm_defs** @s_storm_defs, align 8
  %144 = load i64, i64* %14, align 8
  %145 = getelementptr inbounds %struct.storm_defs, %struct.storm_defs* %143, i64 %144
  %146 = getelementptr inbounds %struct.storm_defs, %struct.storm_defs* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @SEM_FAST_REG_STALLED, align 8
  %149 = add nsw i64 %147, %148
  %150 = call i64 @BYTES_TO_DWORDS(i64 %149)
  store i64 %150, i64* %22, align 8
  %151 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %152 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %153 = load i64*, i64** %7, align 8
  %154 = load i64, i64* %11, align 8
  %155 = getelementptr inbounds i64, i64* %153, i64 %154
  %156 = load i32, i32* %8, align 4
  %157 = load i64, i64* %22, align 8
  %158 = load i32, i32* @SPLIT_TYPE_NONE, align 4
  %159 = call i64 @qed_grc_dump_reg_entry(%struct.qed_hwfn* %151, %struct.qed_ptt* %152, i64* %155, i32 %156, i64 %157, i32 1, i32 0, i32 %158, i32 0)
  %160 = load i64, i64* %11, align 8
  %161 = add i64 %160, %159
  store i64 %161, i64* %11, align 8
  %162 = load i64, i64* %12, align 8
  %163 = add i64 %162, 1
  store i64 %163, i64* %12, align 8
  br label %164

164:                                              ; preds = %142, %141
  %165 = load i64, i64* %14, align 8
  %166 = add i64 %165, 1
  store i64 %166, i64* %14, align 8
  br label %121

167:                                              ; preds = %121
  %168 = load i32, i32* %8, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %167
  %171 = load i64*, i64** %7, align 8
  %172 = load i64, i64* %12, align 8
  %173 = load i32, i32* @SPLIT_TYPE_NONE, align 4
  %174 = call i64 @qed_grc_dump_regs_hdr(i64* %171, i32 1, i64 %172, i32 %173, i32 0, i32* null, i32* null)
  br label %175

175:                                              ; preds = %170, %167
  %176 = load i64, i64* %11, align 8
  ret i64 %176
}

declare dso_local i64 @qed_grc_dump_regs_hdr(i64*, i32, i64, i32, i32, i32*, i32*) #1

declare dso_local %struct.dbg_attn_reg* @qed_get_block_attn_regs(i32, i32, i64*) #1

declare dso_local i64 @GET_FIELD(i32, i32) #1

declare dso_local i32 @qed_is_mode_match(%struct.qed_hwfn*, i64*) #1

declare dso_local i64 @qed_grc_dump_reg_entry(%struct.qed_hwfn*, %struct.qed_ptt*, i64*, i32, i64, i32, i32, i32, i32) #1

declare dso_local i64 @BYTES_TO_DWORDS(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
