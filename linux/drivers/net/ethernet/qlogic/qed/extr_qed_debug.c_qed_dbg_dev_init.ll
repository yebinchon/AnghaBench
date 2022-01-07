; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_dbg_dev_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_dbg_dev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32, %struct.dbg_tools_data }
%struct.dbg_tools_data = type { i32, i64, i32*, i32, i32, i32, i32, i32 }
%struct.qed_ptt = type { i32 }

@DBG_STATUS_OK = common dso_local global i32 0, align 4
@CHIP_K2 = common dso_local global i64 0, align 8
@MODE_K2 = common dso_local global i64 0, align 8
@MAX_NUM_VFS_K2 = common dso_local global i32 0, align 4
@MAX_NUM_PFS_K2 = common dso_local global i32 0, align 4
@CHIP_BB = common dso_local global i64 0, align 8
@MODE_BB = common dso_local global i64 0, align 8
@MAX_NUM_VFS_BB = common dso_local global i32 0, align 4
@MAX_NUM_PFS_BB = common dso_local global i32 0, align 4
@DBG_STATUS_UNKNOWN_CHIP = common dso_local global i32 0, align 4
@PLATFORM_ASIC = common dso_local global i32 0, align 4
@MODE_ASIC = common dso_local global i64 0, align 8
@MISC_REG_PORT_MODE = common dso_local global i32 0, align 4
@MODE_PORTS_PER_ENG_1 = common dso_local global i64 0, align 8
@MODE_PORTS_PER_ENG_2 = common dso_local global i64 0, align 8
@MODE_PORTS_PER_ENG_4 = common dso_local global i64 0, align 8
@CNIG_REG_NW_PORT_MODE_BB = common dso_local global i32 0, align 4
@MODE_100G = common dso_local global i64 0, align 8
@u32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_ptt*)* @qed_dbg_dev_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_dbg_dev_init(%struct.qed_hwfn* %0, %struct.qed_ptt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_ptt*, align 8
  %6 = alloca %struct.dbg_tools_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %5, align 8
  %9 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %10 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %9, i32 0, i32 1
  store %struct.dbg_tools_data* %10, %struct.dbg_tools_data** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %6, align 8
  %12 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @DBG_STATUS_OK, align 4
  store i32 %16, i32* %3, align 4
  br label %171

17:                                               ; preds = %2
  %18 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %19 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @QED_IS_K2(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %17
  %24 = load i64, i64* @CHIP_K2, align 8
  %25 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %6, align 8
  %26 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %25, i32 0, i32 1
  store i64 %24, i64* %26, align 8
  %27 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %6, align 8
  %28 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* @MODE_K2, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  store i32 1, i32* %31, align 4
  %32 = load i32, i32* @MAX_NUM_VFS_K2, align 4
  %33 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %6, align 8
  %34 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %33, i32 0, i32 7
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* @MAX_NUM_PFS_K2, align 4
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* @MAX_NUM_PFS_K2, align 4
  %37 = sdiv i32 %36, 2
  store i32 %37, i32* %8, align 4
  br label %61

38:                                               ; preds = %17
  %39 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %40 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @QED_IS_BB_B0(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %58

44:                                               ; preds = %38
  %45 = load i64, i64* @CHIP_BB, align 8
  %46 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %6, align 8
  %47 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  %48 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %6, align 8
  %49 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* @MODE_BB, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  store i32 1, i32* %52, align 4
  %53 = load i32, i32* @MAX_NUM_VFS_BB, align 4
  %54 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %6, align 8
  %55 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %54, i32 0, i32 7
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* @MAX_NUM_PFS_BB, align 4
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* @MAX_NUM_PFS_BB, align 4
  store i32 %57, i32* %8, align 4
  br label %60

58:                                               ; preds = %38
  %59 = load i32, i32* @DBG_STATUS_UNKNOWN_CHIP, align 4
  store i32 %59, i32* %3, align 4
  br label %171

60:                                               ; preds = %44
  br label %61

61:                                               ; preds = %60, %23
  %62 = load i32, i32* @PLATFORM_ASIC, align 4
  %63 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %6, align 8
  %64 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %63, i32 0, i32 6
  store i32 %62, i32* %64, align 4
  %65 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %6, align 8
  %66 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* @MODE_ASIC, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  store i32 1, i32* %69, align 4
  %70 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %71 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %72 = load i32, i32* @MISC_REG_PORT_MODE, align 4
  %73 = call i32 @qed_rd(%struct.qed_hwfn* %70, %struct.qed_ptt* %71, i32 %72)
  switch i32 %73, label %92 [
    i32 0, label %74
    i32 1, label %80
    i32 2, label %86
  ]

74:                                               ; preds = %61
  %75 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %6, align 8
  %76 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = load i64, i64* @MODE_PORTS_PER_ENG_1, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  store i32 1, i32* %79, align 4
  br label %92

80:                                               ; preds = %61
  %81 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %6, align 8
  %82 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = load i64, i64* @MODE_PORTS_PER_ENG_2, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  store i32 1, i32* %85, align 4
  br label %92

86:                                               ; preds = %61
  %87 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %6, align 8
  %88 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = load i64, i64* @MODE_PORTS_PER_ENG_4, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  store i32 1, i32* %91, align 4
  br label %92

92:                                               ; preds = %61, %86, %80, %74
  %93 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %6, align 8
  %94 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @CHIP_BB, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %110

98:                                               ; preds = %92
  %99 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %100 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %101 = load i32, i32* @CNIG_REG_NW_PORT_MODE_BB, align 4
  %102 = call i32 @qed_rd(%struct.qed_hwfn* %99, %struct.qed_ptt* %100, i32 %101)
  %103 = icmp eq i32 %102, 2
  br i1 %103, label %104, label %110

104:                                              ; preds = %98
  %105 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %6, align 8
  %106 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %105, i32 0, i32 2
  %107 = load i32*, i32** %106, align 8
  %108 = load i64, i64* @MODE_100G, align 8
  %109 = getelementptr inbounds i32, i32* %107, i64 %108
  store i32 1, i32* %109, align 4
  br label %110

110:                                              ; preds = %104, %98, %92
  %111 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %6, align 8
  %112 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %111, i32 0, i32 2
  %113 = load i32*, i32** %112, align 8
  %114 = load i64, i64* @MODE_PORTS_PER_ENG_1, align 8
  %115 = getelementptr inbounds i32, i32* %113, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %126, label %118

118:                                              ; preds = %110
  %119 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %6, align 8
  %120 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %119, i32 0, i32 2
  %121 = load i32*, i32** %120, align 8
  %122 = load i64, i64* @MODE_100G, align 8
  %123 = getelementptr inbounds i32, i32* %121, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %118, %110
  %127 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %6, align 8
  %128 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %127, i32 0, i32 3
  store i32 1, i32* %128, align 8
  br label %153

129:                                              ; preds = %118
  %130 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %6, align 8
  %131 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %130, i32 0, i32 2
  %132 = load i32*, i32** %131, align 8
  %133 = load i64, i64* @MODE_PORTS_PER_ENG_2, align 8
  %134 = getelementptr inbounds i32, i32* %132, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %129
  %138 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %6, align 8
  %139 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %138, i32 0, i32 3
  store i32 2, i32* %139, align 8
  br label %152

140:                                              ; preds = %129
  %141 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %6, align 8
  %142 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %141, i32 0, i32 2
  %143 = load i32*, i32** %142, align 8
  %144 = load i64, i64* @MODE_PORTS_PER_ENG_4, align 8
  %145 = getelementptr inbounds i32, i32* %143, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %140
  %149 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %6, align 8
  %150 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %149, i32 0, i32 3
  store i32 4, i32* %150, align 8
  br label %151

151:                                              ; preds = %148, %140
  br label %152

152:                                              ; preds = %151, %137
  br label %153

153:                                              ; preds = %152, %126
  %154 = load i32, i32* @u32, align 4
  %155 = load i32, i32* %7, align 4
  %156 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %6, align 8
  %157 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 8
  %159 = sdiv i32 %155, %158
  %160 = load i32, i32* %8, align 4
  %161 = call i32 @min_t(i32 %154, i32 %159, i32 %160)
  %162 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %6, align 8
  %163 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %162, i32 0, i32 5
  store i32 %161, i32* %163, align 8
  %164 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %165 = call i32 @qed_dbg_grc_init_params(%struct.qed_hwfn* %164)
  %166 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %6, align 8
  %167 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %166, i32 0, i32 4
  store i32 1, i32* %167, align 4
  %168 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %6, align 8
  %169 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %168, i32 0, i32 0
  store i32 1, i32* %169, align 8
  %170 = load i32, i32* @DBG_STATUS_OK, align 4
  store i32 %170, i32* %3, align 4
  br label %171

171:                                              ; preds = %153, %58, %15
  %172 = load i32, i32* %3, align 4
  ret i32 %172
}

declare dso_local i64 @QED_IS_K2(i32) #1

declare dso_local i64 @QED_IS_BB_B0(i32) #1

declare dso_local i32 @qed_rd(%struct.qed_hwfn*, %struct.qed_ptt*, i32) #1

declare dso_local i32 @min_t(i32, i32, i32) #1

declare dso_local i32 @qed_dbg_grc_init_params(%struct.qed_hwfn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
