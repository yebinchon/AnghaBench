; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isppreview.c_preview_config_input_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isppreview.c_preview_config_input_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_prev_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, %struct.prev_params* }
%struct.prev_params = type { i32 }
%struct.isp_format_info = type { i32, i32 }
%struct.isp_device = type { i32 }

@OMAP3_ISP_IOMEM_PREV = common dso_local global i32 0, align 4
@ISPPRV_PCR = common dso_local global i32 0, align 4
@ISPPRV_PCR_WIDTH = common dso_local global i32 0, align 4
@ISPPRV_PCR_CFAEN = common dso_local global i32 0, align 4
@ISPPRV_PCR_CFAFMT_MASK = common dso_local global i32 0, align 4
@ISPPRV_PCR_CFAFMT_BAYER = common dso_local global i32 0, align 4
@OMAP3ISP_PREV_CFA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp_prev_device*, %struct.isp_format_info*)* @preview_config_input_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @preview_config_input_format(%struct.isp_prev_device* %0, %struct.isp_format_info* %1) #0 {
  %3 = alloca %struct.isp_prev_device*, align 8
  %4 = alloca %struct.isp_format_info*, align 8
  %5 = alloca %struct.isp_device*, align 8
  %6 = alloca %struct.prev_params*, align 8
  store %struct.isp_prev_device* %0, %struct.isp_prev_device** %3, align 8
  store %struct.isp_format_info* %1, %struct.isp_format_info** %4, align 8
  %7 = load %struct.isp_prev_device*, %struct.isp_prev_device** %3, align 8
  %8 = call %struct.isp_device* @to_isp_device(%struct.isp_prev_device* %7)
  store %struct.isp_device* %8, %struct.isp_device** %5, align 8
  %9 = load %struct.isp_format_info*, %struct.isp_format_info** %4, align 8
  %10 = getelementptr inbounds %struct.isp_format_info, %struct.isp_format_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 8
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.isp_device*, %struct.isp_device** %5, align 8
  %15 = load i32, i32* @OMAP3_ISP_IOMEM_PREV, align 4
  %16 = load i32, i32* @ISPPRV_PCR, align 4
  %17 = load i32, i32* @ISPPRV_PCR_WIDTH, align 4
  %18 = call i32 @isp_reg_set(%struct.isp_device* %14, i32 %15, i32 %16, i32 %17)
  br label %25

19:                                               ; preds = %2
  %20 = load %struct.isp_device*, %struct.isp_device** %5, align 8
  %21 = load i32, i32* @OMAP3_ISP_IOMEM_PREV, align 4
  %22 = load i32, i32* @ISPPRV_PCR, align 4
  %23 = load i32, i32* @ISPPRV_PCR_WIDTH, align 4
  %24 = call i32 @isp_reg_clr(%struct.isp_device* %20, i32 %21, i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %19, %13
  %26 = load %struct.isp_format_info*, %struct.isp_format_info** %4, align 8
  %27 = getelementptr inbounds %struct.isp_format_info, %struct.isp_format_info* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %45 [
    i32 129, label %29
    i32 128, label %33
    i32 131, label %37
    i32 130, label %41
  ]

29:                                               ; preds = %25
  %30 = load %struct.isp_prev_device*, %struct.isp_prev_device** %3, align 8
  %31 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 0, i32* %32, align 8
  br label %51

33:                                               ; preds = %25
  %34 = load %struct.isp_prev_device*, %struct.isp_prev_device** %3, align 8
  %35 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  br label %51

37:                                               ; preds = %25
  %38 = load %struct.isp_prev_device*, %struct.isp_prev_device** %3, align 8
  %39 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32 2, i32* %40, align 8
  br label %51

41:                                               ; preds = %25
  %42 = load %struct.isp_prev_device*, %struct.isp_prev_device** %3, align 8
  %43 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32 3, i32* %44, align 8
  br label %51

45:                                               ; preds = %25
  %46 = load %struct.isp_device*, %struct.isp_device** %5, align 8
  %47 = load i32, i32* @OMAP3_ISP_IOMEM_PREV, align 4
  %48 = load i32, i32* @ISPPRV_PCR, align 4
  %49 = load i32, i32* @ISPPRV_PCR_CFAEN, align 4
  %50 = call i32 @isp_reg_clr(%struct.isp_device* %46, i32 %47, i32 %48, i32 %49)
  br label %87

51:                                               ; preds = %41, %37, %33, %29
  %52 = load %struct.isp_device*, %struct.isp_device** %5, align 8
  %53 = load i32, i32* @OMAP3_ISP_IOMEM_PREV, align 4
  %54 = load i32, i32* @ISPPRV_PCR, align 4
  %55 = load i32, i32* @ISPPRV_PCR_CFAEN, align 4
  %56 = call i32 @isp_reg_set(%struct.isp_device* %52, i32 %53, i32 %54, i32 %55)
  %57 = load %struct.isp_device*, %struct.isp_device** %5, align 8
  %58 = load i32, i32* @OMAP3_ISP_IOMEM_PREV, align 4
  %59 = load i32, i32* @ISPPRV_PCR, align 4
  %60 = load i32, i32* @ISPPRV_PCR_CFAFMT_MASK, align 4
  %61 = load i32, i32* @ISPPRV_PCR_CFAFMT_BAYER, align 4
  %62 = call i32 @isp_reg_clr_set(%struct.isp_device* %57, i32 %58, i32 %59, i32 %60, i32 %61)
  %63 = load %struct.isp_prev_device*, %struct.isp_prev_device** %3, align 8
  %64 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @OMAP3ISP_PREV_CFA, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %51
  %71 = load %struct.isp_prev_device*, %struct.isp_prev_device** %3, align 8
  %72 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 2
  %74 = load %struct.prev_params*, %struct.prev_params** %73, align 8
  %75 = getelementptr inbounds %struct.prev_params, %struct.prev_params* %74, i64 0
  br label %82

76:                                               ; preds = %51
  %77 = load %struct.isp_prev_device*, %struct.isp_prev_device** %3, align 8
  %78 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 2
  %80 = load %struct.prev_params*, %struct.prev_params** %79, align 8
  %81 = getelementptr inbounds %struct.prev_params, %struct.prev_params* %80, i64 1
  br label %82

82:                                               ; preds = %76, %70
  %83 = phi %struct.prev_params* [ %75, %70 ], [ %81, %76 ]
  store %struct.prev_params* %83, %struct.prev_params** %6, align 8
  %84 = load %struct.isp_prev_device*, %struct.isp_prev_device** %3, align 8
  %85 = load %struct.prev_params*, %struct.prev_params** %6, align 8
  %86 = call i32 @preview_config_cfa(%struct.isp_prev_device* %84, %struct.prev_params* %85)
  br label %87

87:                                               ; preds = %82, %45
  ret void
}

declare dso_local %struct.isp_device* @to_isp_device(%struct.isp_prev_device*) #1

declare dso_local i32 @isp_reg_set(%struct.isp_device*, i32, i32, i32) #1

declare dso_local i32 @isp_reg_clr(%struct.isp_device*, i32, i32, i32) #1

declare dso_local i32 @isp_reg_clr_set(%struct.isp_device*, i32, i32, i32, i32) #1

declare dso_local i32 @preview_config_cfa(%struct.isp_prev_device*, %struct.prev_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
