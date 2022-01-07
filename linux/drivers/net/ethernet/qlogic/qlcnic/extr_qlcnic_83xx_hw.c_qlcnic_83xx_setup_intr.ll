; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_setup_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_setup_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32, %struct.TYPE_3__*, %struct.qlcnic_hardware_context*, i8*, i8* }
%struct.TYPE_3__ = type { i32 }
%struct.qlcnic_hardware_context = type { i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64, i32 }

@QLCNIC_TSS_RSS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@QLCNIC_MSIX_ENABLED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@QLCNIC_SINGLE_RING = common dso_local global i8* null, align 8
@QLC_MAX_LEGACY_FUNC_SUPP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [85 x i8] c"PCI function number 8 and higher are not supported with legacy interrupt, func 0x%x\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@QLCNIC_INTRPT_MSIX = common dso_local global i32 0, align 4
@QLCNIC_INTRPT_INTX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_83xx_setup_intr(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca %struct.qlcnic_hardware_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  %8 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %8, i32 0, i32 2
  %10 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %9, align 8
  store %struct.qlcnic_hardware_context* %10, %struct.qlcnic_hardware_context** %4, align 8
  %11 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %12 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @QLCNIC_TSS_RSS, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %1
  %18 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %19 = call i32 @qlcnic_setup_tss_rss_intr(%struct.qlcnic_adapter* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %158

24:                                               ; preds = %17
  %25 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %4, align 8
  %26 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %7, align 4
  br label %66

28:                                               ; preds = %1
  %29 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %30 = call i32 @qlcnic_83xx_calculate_msix_vector(%struct.qlcnic_adapter* %29)
  store i32 %30, i32* %7, align 4
  %31 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @qlcnic_enable_msix(%struct.qlcnic_adapter* %31, i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %28
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %2, align 4
  br label %158

40:                                               ; preds = %28
  %41 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %42 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @QLCNIC_MSIX_ENABLED, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %4, align 8
  %49 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %7, align 4
  br label %65

51:                                               ; preds = %40
  %52 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %53 = call i64 @qlcnic_sriov_vf_check(%struct.qlcnic_adapter* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %158

58:                                               ; preds = %51
  store i32 1, i32* %7, align 4
  %59 = load i8*, i8** @QLCNIC_SINGLE_RING, align 8
  %60 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %61 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %60, i32 0, i32 4
  store i8* %59, i8** %61, align 8
  %62 = load i8*, i8** @QLCNIC_SINGLE_RING, align 8
  %63 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %64 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %63, i32 0, i32 3
  store i8* %62, i8** %64, align 8
  br label %65

65:                                               ; preds = %58, %47
  br label %66

66:                                               ; preds = %65, %24
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @array_size(i32 %67, i32 4)
  %69 = call %struct.TYPE_4__* @vzalloc(i32 %68)
  %70 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %4, align 8
  %71 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %70, i32 0, i32 2
  store %struct.TYPE_4__* %69, %struct.TYPE_4__** %71, align 8
  %72 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %4, align 8
  %73 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %72, i32 0, i32 2
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = icmp ne %struct.TYPE_4__* %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %66
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %2, align 4
  br label %158

79:                                               ; preds = %66
  %80 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %81 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @QLCNIC_MSIX_ENABLED, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %108, label %86

86:                                               ; preds = %79
  %87 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %88 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %87, i32 0, i32 2
  %89 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %88, align 8
  %90 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @QLC_MAX_LEGACY_FUNC_SUPP, align 8
  %93 = icmp sge i64 %91, %92
  br i1 %93, label %94, label %105

94:                                               ; preds = %86
  %95 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %96 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %95, i32 0, i32 1
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %4, align 8
  %100 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @dev_err(i32* %98, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0), i64 %101)
  %103 = load i32, i32* @EOPNOTSUPP, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %2, align 4
  br label %158

105:                                              ; preds = %86
  %106 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %107 = call i32 @qlcnic_83xx_enable_legacy(%struct.qlcnic_adapter* %106)
  br label %108

108:                                              ; preds = %105, %79
  store i32 0, i32* %6, align 4
  br label %109

109:                                              ; preds = %154, %108
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* %7, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %157

113:                                              ; preds = %109
  %114 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %115 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @QLCNIC_MSIX_ENABLED, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %113
  %121 = load i32, i32* @QLCNIC_INTRPT_MSIX, align 4
  %122 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %4, align 8
  %123 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %122, i32 0, i32 2
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = load i32, i32* %6, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 2
  store i32 %121, i32* %128, align 8
  br label %138

129:                                              ; preds = %113
  %130 = load i32, i32* @QLCNIC_INTRPT_INTX, align 4
  %131 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %4, align 8
  %132 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %131, i32 0, i32 2
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %132, align 8
  %134 = load i32, i32* %6, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 2
  store i32 %130, i32* %137, align 8
  br label %138

138:                                              ; preds = %129, %120
  %139 = load i32, i32* %6, align 4
  %140 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %4, align 8
  %141 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %140, i32 0, i32 2
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %141, align 8
  %143 = load i32, i32* %6, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  store i32 %139, i32* %146, align 8
  %147 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %4, align 8
  %148 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %147, i32 0, i32 2
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %148, align 8
  %150 = load i32, i32* %6, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 1
  store i64 0, i64* %153, align 8
  br label %154

154:                                              ; preds = %138
  %155 = load i32, i32* %6, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %6, align 4
  br label %109

157:                                              ; preds = %109
  store i32 0, i32* %2, align 4
  br label %158

158:                                              ; preds = %157, %94, %76, %55, %38, %22
  %159 = load i32, i32* %2, align 4
  ret i32 %159
}

declare dso_local i32 @qlcnic_setup_tss_rss_intr(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_83xx_calculate_msix_vector(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_enable_msix(%struct.qlcnic_adapter*, i32) #1

declare dso_local i64 @qlcnic_sriov_vf_check(%struct.qlcnic_adapter*) #1

declare dso_local %struct.TYPE_4__* @vzalloc(i32) #1

declare dso_local i32 @array_size(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

declare dso_local i32 @qlcnic_83xx_enable_legacy(%struct.qlcnic_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
