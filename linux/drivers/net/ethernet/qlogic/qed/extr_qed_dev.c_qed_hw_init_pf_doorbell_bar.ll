; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_hw_init_pf_doorbell_bar.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_hw_init_pf_doorbell_bar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32, i32, i32, %struct.TYPE_4__, i32, i64, i64, %struct.qed_hwfn* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.qed_ptt = type { i32 }

@BAR_ID_1 = common dso_local global i32 0, align 4
@PROTOCOLID_CORE = common dso_local global i32 0, align 4
@PROTOCOLID_ETH = common dso_local global i32 0, align 4
@QED_PF_DEMS_SIZE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"Doorbell BAR size 0x%x is too small (normal region is 0x%0x )\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@QED_MIN_PWM_REGION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [122 x i8] c"PWM region size 0x%0x is too small. Should be at least 0x%0x (Doorbell BAR size is 0x%x and normal region size is 0x%0x)\0A\00", align 1
@QED_ROCE_EDPM_MODE_ENABLE = common dso_local global i32 0, align 4
@QED_ROCE_EDPM_MODE_FORCE_ON = common dso_local global i32 0, align 4
@QED_ROCE_EDPM_MODE_DISABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [113 x i8] c"doorbell bar: normal_region_size=%d, pwm_region_size=%d, dpi_size=%d, dpi_count=%d, roce_edpm=%s, page_size=%lu\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.5 = private unnamed_addr constant [77 x i8] c"Failed to allocate enough DPIs. Allocated %d but the current minimum is %d.\0A\00", align 1
@DORQ_REG_PF_ICID_BIT_SHIFT_NORM = common dso_local global i32 0, align 4
@DORQ_REG_PF_MIN_ADDR_REG1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_ptt*)* @qed_hw_init_pf_doorbell_bar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_hw_init_pf_doorbell_bar(%struct.qed_hwfn* %0, %struct.qed_ptt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_ptt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %5, align 8
  store i32 1, i32* %11, align 4
  store i32 0, i32* %14, align 4
  %16 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %17 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %18 = load i32, i32* @BAR_ID_1, align 4
  %19 = call i32 @qed_hw_bar_size(%struct.qed_hwfn* %16, %struct.qed_ptt* %17, i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %21 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %20, i32 0, i32 7
  %22 = load %struct.qed_hwfn*, %struct.qed_hwfn** %21, align 8
  %23 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp sgt i32 %24, 1
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i32, i32* %10, align 4
  %28 = sdiv i32 %27, 2
  store i32 %28, i32* %10, align 4
  br label %29

29:                                               ; preds = %26, %2
  %30 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %31 = load i32, i32* @PROTOCOLID_CORE, align 4
  %32 = call i32 @qed_cxt_get_proto_cid_start(%struct.qed_hwfn* %30, i32 %31)
  %33 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %34 = load i32, i32* @PROTOCOLID_CORE, align 4
  %35 = call i32 @qed_cxt_get_proto_cid_count(%struct.qed_hwfn* %33, i32 %34, i32* null)
  %36 = add nsw i32 %32, %35
  %37 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %38 = load i32, i32* @PROTOCOLID_ETH, align 4
  %39 = call i32 @qed_cxt_get_proto_cid_count(%struct.qed_hwfn* %37, i32 %38, i32* null)
  %40 = add nsw i32 %36, %39
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* @QED_PF_DEMS_SIZE, align 4
  %42 = load i32, i32* %8, align 4
  %43 = mul nsw i32 %41, %42
  %44 = load i32, i32* @PAGE_SIZE, align 4
  %45 = call i32 @roundup(i32 %43, i32 %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = sdiv i32 %46, 4096
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %7, align 4
  %50 = sub nsw i32 %48, %49
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %29
  %55 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %56 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %55, i32 0, i32 7
  %57 = load %struct.qed_hwfn*, %struct.qed_hwfn** %56, align 8
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 (%struct.qed_hwfn*, i8*, i32, i32, ...) @DP_ERR(%struct.qed_hwfn* %57, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %59)
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %186

63:                                               ; preds = %29
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @QED_MIN_PWM_REGION, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %78

67:                                               ; preds = %63
  %68 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %69 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %68, i32 0, i32 7
  %70 = load %struct.qed_hwfn*, %struct.qed_hwfn** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @QED_MIN_PWM_REGION, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %7, align 4
  %75 = call i32 (%struct.qed_hwfn*, i8*, i32, i32, ...) @DP_ERR(%struct.qed_hwfn* %70, i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.1, i64 0, i64 0), i32 %71, i32 %72, i32 %73, i32 %74)
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %186

78:                                               ; preds = %63
  %79 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %80 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %12, align 4
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* @QED_ROCE_EDPM_MODE_ENABLE, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %91, label %87

87:                                               ; preds = %78
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* @QED_ROCE_EDPM_MODE_FORCE_ON, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %98

91:                                               ; preds = %87, %78
  %92 = call i32 (...) @num_present_cpus()
  store i32 %92, i32* %11, align 4
  %93 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %94 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* %11, align 4
  %97 = call i32 @qed_hw_init_dpi_size(%struct.qed_hwfn* %93, %struct.qed_ptt* %94, i32 %95, i32 %96)
  store i32 %97, i32* %14, align 4
  br label %98

98:                                               ; preds = %91, %87
  %99 = load i32, i32* %14, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %98
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* @QED_ROCE_EDPM_MODE_ENABLE, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %109, label %105

105:                                              ; preds = %101, %98
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* @QED_ROCE_EDPM_MODE_DISABLE, align 4
  %108 = icmp eq i32 %106, %107
  br label %109

109:                                              ; preds = %105, %101
  %110 = phi i1 [ true, %101 ], [ %108, %105 ]
  %111 = zext i1 %110 to i32
  store i32 %111, i32* %15, align 4
  %112 = load i32, i32* %15, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %119, label %114

114:                                              ; preds = %109
  %115 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %116 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %115, i32 0, i32 6
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %132

119:                                              ; preds = %114, %109
  store i32 1, i32* %11, align 4
  %120 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %121 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* %11, align 4
  %124 = call i32 @qed_hw_init_dpi_size(%struct.qed_hwfn* %120, %struct.qed_ptt* %121, i32 %122, i32 %123)
  store i32 %124, i32* %14, align 4
  %125 = load i32, i32* %15, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %119
  %128 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %129 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %130 = call i32 @qed_rdma_dpm_bar(%struct.qed_hwfn* %128, %struct.qed_ptt* %129)
  br label %131

131:                                              ; preds = %127, %119
  br label %132

132:                                              ; preds = %131, %114
  %133 = load i32, i32* %11, align 4
  %134 = sext i32 %133 to i64
  %135 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %136 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %135, i32 0, i32 5
  store i64 %134, i64* %136, align 8
  %137 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %138 = load i32, i32* %7, align 4
  %139 = load i32, i32* %6, align 4
  %140 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %141 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %144 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %147 = call i32 @qed_edpm_enabled(%struct.qed_hwfn* %146)
  %148 = icmp ne i32 %147, 0
  %149 = xor i1 %148, true
  %150 = zext i1 %149 to i64
  %151 = select i1 %149, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)
  %152 = load i32, i32* @PAGE_SIZE, align 4
  %153 = call i32 @DP_INFO(%struct.qed_hwfn* %137, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.2, i64 0, i64 0), i32 %138, i32 %139, i32 %142, i32 %145, i8* %151, i32 %152)
  %154 = load i32, i32* %14, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %169

156:                                              ; preds = %132
  %157 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %158 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %159 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %162 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %161, i32 0, i32 3
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = call i32 (%struct.qed_hwfn*, i8*, i32, i32, ...) @DP_ERR(%struct.qed_hwfn* %157, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.5, i64 0, i64 0), i32 %160, i32 %165)
  %167 = load i32, i32* @EINVAL, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %3, align 4
  br label %186

169:                                              ; preds = %132
  %170 = load i32, i32* %7, align 4
  %171 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %172 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %171, i32 0, i32 2
  store i32 %170, i32* %172, align 8
  %173 = load i32, i32* @QED_PF_DEMS_SIZE, align 4
  %174 = sdiv i32 %173, 4
  %175 = call i32 @ilog2(i32 %174)
  store i32 %175, i32* %13, align 4
  %176 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %177 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %178 = load i32, i32* @DORQ_REG_PF_ICID_BIT_SHIFT_NORM, align 4
  %179 = load i32, i32* %13, align 4
  %180 = call i32 @qed_wr(%struct.qed_hwfn* %176, %struct.qed_ptt* %177, i32 %178, i32 %179)
  %181 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %182 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %183 = load i32, i32* @DORQ_REG_PF_MIN_ADDR_REG1, align 4
  %184 = load i32, i32* %9, align 4
  %185 = call i32 @qed_wr(%struct.qed_hwfn* %181, %struct.qed_ptt* %182, i32 %183, i32 %184)
  store i32 0, i32* %3, align 4
  br label %186

186:                                              ; preds = %169, %156, %67, %54
  %187 = load i32, i32* %3, align 4
  ret i32 %187
}

declare dso_local i32 @qed_hw_bar_size(%struct.qed_hwfn*, %struct.qed_ptt*, i32) #1

declare dso_local i32 @qed_cxt_get_proto_cid_start(%struct.qed_hwfn*, i32) #1

declare dso_local i32 @qed_cxt_get_proto_cid_count(%struct.qed_hwfn*, i32, i32*) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i32 @DP_ERR(%struct.qed_hwfn*, i8*, i32, i32, ...) #1

declare dso_local i32 @num_present_cpus(...) #1

declare dso_local i32 @qed_hw_init_dpi_size(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32) #1

declare dso_local i32 @qed_rdma_dpm_bar(%struct.qed_hwfn*, %struct.qed_ptt*) #1

declare dso_local i32 @DP_INFO(%struct.qed_hwfn*, i8*, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @qed_edpm_enabled(%struct.qed_hwfn*) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @qed_wr(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
