; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_grc_dump_addr_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_grc_dump_addr_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }
%struct.qed_hwfn = type { %struct.dbg_tools_data }
%struct.dbg_tools_data = type { i64, i64, i64, i64, %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32, i64 }
%struct.qed_ptt = type { i32 }

@s_platform_defs = common dso_local global %struct.TYPE_4__* null, align 8
@QED_MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Dumping %d registers...\0A\00", align 1
@SPLIT_TYPE_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"Failed reading from chip using DMAE, using GRC instead\0A\00", align 1
@PXP_PRETEND_CONCRETE_FID_PFID_SHIFT = common dso_local global i64 0, align 8
@PXP_PRETEND_CONCRETE_FID_VFVALID_SHIFT = common dso_local global i32 0, align 4
@PXP_PRETEND_CONCRETE_FID_VFID_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.qed_hwfn*, %struct.qed_ptt*, i64*, i32, i64, i64, i32, i32, i64)* @qed_grc_dump_addr_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @qed_grc_dump_addr_range(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, i64* %2, i32 %3, i64 %4, i64 %5, i32 %6, i32 %7, i64 %8) #0 {
  %10 = alloca i64, align 8
  %11 = alloca %struct.qed_hwfn*, align 8
  %12 = alloca %struct.qed_ptt*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca %struct.dbg_tools_data*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %11, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %12, align 8
  store i64* %2, i64** %13, align 8
  store i32 %3, i32* %14, align 4
  store i64 %4, i64* %15, align 8
  store i64 %5, i64* %16, align 8
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i64 %8, i64* %19, align 8
  %25 = load %struct.qed_hwfn*, %struct.qed_hwfn** %11, align 8
  %26 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %25, i32 0, i32 0
  store %struct.dbg_tools_data* %26, %struct.dbg_tools_data** %20, align 8
  store i64 0, i64* %21, align 8
  store i64 0, i64* %22, align 8
  store i64 0, i64* %23, align 8
  store i64 0, i64* %24, align 8
  %27 = load i32, i32* %14, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %9
  %30 = load i64, i64* %16, align 8
  store i64 %30, i64* %10, align 8
  br label %193

31:                                               ; preds = %9
  %32 = load i64, i64* %16, align 8
  %33 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %20, align 8
  %34 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, %32
  store i64 %36, i64* %34, align 8
  %37 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %20, align 8
  %38 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @s_platform_defs, align 8
  %41 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %20, align 8
  %42 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp sge i64 %39, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %31
  %49 = load %struct.qed_hwfn*, %struct.qed_hwfn** %11, align 8
  %50 = load i32, i32* @QED_MSG_DEBUG, align 4
  %51 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %20, align 8
  %52 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 (%struct.qed_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.qed_hwfn* %49, i32 %50, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %53)
  %55 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %20, align 8
  %56 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %55, i32 0, i32 0
  store i64 0, i64* %56, align 8
  br label %57

57:                                               ; preds = %48, %31
  %58 = load i32, i32* %18, align 4
  switch i32 %58, label %82 [
    i32 130, label %59
    i32 131, label %61
    i32 129, label %63
    i32 128, label %80
  ]

59:                                               ; preds = %57
  %60 = load i64, i64* %19, align 8
  store i64 %60, i64* %21, align 8
  br label %83

61:                                               ; preds = %57
  %62 = load i64, i64* %19, align 8
  store i64 %62, i64* %22, align 8
  br label %83

63:                                               ; preds = %57
  %64 = load i64, i64* %19, align 8
  %65 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %20, align 8
  %66 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = sdiv i64 %64, %67
  store i64 %68, i64* %21, align 8
  %69 = load i64, i64* %21, align 8
  %70 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %20, align 8
  %71 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %19, align 8
  %74 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %20, align 8
  %75 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = srem i64 %73, %76
  %78 = mul nsw i64 %72, %77
  %79 = add nsw i64 %69, %78
  store i64 %79, i64* %22, align 8
  br label %83

80:                                               ; preds = %57
  %81 = load i64, i64* %19, align 8
  store i64 %81, i64* %23, align 8
  br label %83

82:                                               ; preds = %57
  br label %83

83:                                               ; preds = %82, %80, %63, %61, %59
  %84 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %20, align 8
  %85 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %84, i32 0, i32 5
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %124

88:                                               ; preds = %83
  %89 = load i32, i32* %18, align 4
  %90 = load i32, i32* @SPLIT_TYPE_NONE, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %124

92:                                               ; preds = %88
  %93 = load i64, i64* %16, align 8
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** @s_platform_defs, align 8
  %95 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %20, align 8
  %96 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp sge i64 %93, %100
  br i1 %101, label %105, label %102

102:                                              ; preds = %92
  %103 = load i32, i32* %17, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %124

105:                                              ; preds = %102, %92
  %106 = load %struct.qed_hwfn*, %struct.qed_hwfn** %11, align 8
  %107 = load %struct.qed_ptt*, %struct.qed_ptt** %12, align 8
  %108 = load i64, i64* %15, align 8
  %109 = call i32 @DWORDS_TO_BYTES(i64 %108)
  %110 = load i64*, i64** %13, align 8
  %111 = ptrtoint i64* %110 to i64
  %112 = trunc i64 %111 to i32
  %113 = load i64, i64* %16, align 8
  %114 = call i32 @qed_dmae_grc2host(%struct.qed_hwfn* %106, %struct.qed_ptt* %107, i32 %109, i32 %112, i64 %113, i32* null)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %105
  %117 = load i64, i64* %16, align 8
  store i64 %117, i64* %10, align 8
  br label %193

118:                                              ; preds = %105
  %119 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %20, align 8
  %120 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %119, i32 0, i32 5
  store i64 0, i64* %120, align 8
  %121 = load %struct.qed_hwfn*, %struct.qed_hwfn** %11, align 8
  %122 = load i32, i32* @QED_MSG_DEBUG, align 4
  %123 = call i32 (%struct.qed_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.qed_hwfn* %121, i32 %122, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  br label %124

124:                                              ; preds = %118, %102, %88, %83
  %125 = load i32, i32* %18, align 4
  %126 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %20, align 8
  %127 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %126, i32 0, i32 4
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp ne i32 %125, %129
  br i1 %130, label %138, label %131

131:                                              ; preds = %124
  %132 = load i64, i64* %19, align 8
  %133 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %20, align 8
  %134 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %133, i32 0, i32 4
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %132, %136
  br i1 %137, label %138, label %185

138:                                              ; preds = %131, %124
  %139 = load i32, i32* %18, align 4
  switch i32 %139, label %173 [
    i32 130, label %140
    i32 131, label %145
    i32 129, label %153
    i32 128, label %162
  ]

140:                                              ; preds = %138
  %141 = load %struct.qed_hwfn*, %struct.qed_hwfn** %11, align 8
  %142 = load %struct.qed_ptt*, %struct.qed_ptt** %12, align 8
  %143 = load i64, i64* %21, align 8
  %144 = call i32 @qed_port_pretend(%struct.qed_hwfn* %141, %struct.qed_ptt* %142, i64 %143)
  br label %174

145:                                              ; preds = %138
  %146 = load i64, i64* %22, align 8
  %147 = load i64, i64* @PXP_PRETEND_CONCRETE_FID_PFID_SHIFT, align 8
  %148 = shl i64 %146, %147
  store i64 %148, i64* %24, align 8
  %149 = load %struct.qed_hwfn*, %struct.qed_hwfn** %11, align 8
  %150 = load %struct.qed_ptt*, %struct.qed_ptt** %12, align 8
  %151 = load i64, i64* %24, align 8
  %152 = call i32 @qed_fid_pretend(%struct.qed_hwfn* %149, %struct.qed_ptt* %150, i64 %151)
  br label %174

153:                                              ; preds = %138
  %154 = load i64, i64* %22, align 8
  %155 = load i64, i64* @PXP_PRETEND_CONCRETE_FID_PFID_SHIFT, align 8
  %156 = shl i64 %154, %155
  store i64 %156, i64* %24, align 8
  %157 = load %struct.qed_hwfn*, %struct.qed_hwfn** %11, align 8
  %158 = load %struct.qed_ptt*, %struct.qed_ptt** %12, align 8
  %159 = load i64, i64* %21, align 8
  %160 = load i64, i64* %24, align 8
  %161 = call i32 @qed_port_fid_pretend(%struct.qed_hwfn* %157, %struct.qed_ptt* %158, i64 %159, i64 %160)
  br label %174

162:                                              ; preds = %138
  %163 = load i32, i32* @PXP_PRETEND_CONCRETE_FID_VFVALID_SHIFT, align 4
  %164 = call i64 @BIT(i32 %163)
  %165 = load i64, i64* %23, align 8
  %166 = load i64, i64* @PXP_PRETEND_CONCRETE_FID_VFID_SHIFT, align 8
  %167 = shl i64 %165, %166
  %168 = or i64 %164, %167
  store i64 %168, i64* %24, align 8
  %169 = load %struct.qed_hwfn*, %struct.qed_hwfn** %11, align 8
  %170 = load %struct.qed_ptt*, %struct.qed_ptt** %12, align 8
  %171 = load i64, i64* %24, align 8
  %172 = call i32 @qed_fid_pretend(%struct.qed_hwfn* %169, %struct.qed_ptt* %170, i64 %171)
  br label %174

173:                                              ; preds = %138
  br label %174

174:                                              ; preds = %173, %162, %153, %145, %140
  %175 = load i32, i32* %18, align 4
  %176 = zext i32 %175 to i64
  %177 = trunc i64 %176 to i32
  %178 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %20, align 8
  %179 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %178, i32 0, i32 4
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 0
  store i32 %177, i32* %180, align 8
  %181 = load i64, i64* %19, align 8
  %182 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %20, align 8
  %183 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %182, i32 0, i32 4
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 1
  store i64 %181, i64* %184, align 8
  br label %185

185:                                              ; preds = %174, %131
  %186 = load %struct.qed_hwfn*, %struct.qed_hwfn** %11, align 8
  %187 = load %struct.qed_ptt*, %struct.qed_ptt** %12, align 8
  %188 = load i64*, i64** %13, align 8
  %189 = load i64, i64* %15, align 8
  %190 = load i64, i64* %16, align 8
  %191 = call i32 @qed_read_regs(%struct.qed_hwfn* %186, %struct.qed_ptt* %187, i64* %188, i64 %189, i64 %190)
  %192 = load i64, i64* %16, align 8
  store i64 %192, i64* %10, align 8
  br label %193

193:                                              ; preds = %185, %116, %29
  %194 = load i64, i64* %10, align 8
  ret i64 %194
}

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, ...) #1

declare dso_local i32 @qed_dmae_grc2host(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32, i64, i32*) #1

declare dso_local i32 @DWORDS_TO_BYTES(i64) #1

declare dso_local i32 @qed_port_pretend(%struct.qed_hwfn*, %struct.qed_ptt*, i64) #1

declare dso_local i32 @qed_fid_pretend(%struct.qed_hwfn*, %struct.qed_ptt*, i64) #1

declare dso_local i32 @qed_port_fid_pretend(%struct.qed_hwfn*, %struct.qed_ptt*, i64, i64) #1

declare dso_local i64 @BIT(i32) #1

declare dso_local i32 @qed_read_regs(%struct.qed_hwfn*, %struct.qed_ptt*, i64*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
