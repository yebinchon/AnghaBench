; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccdc.c_ccdc_set_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccdc.c_ccdc_set_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.isp_ccdc_device = type { i32, i32, i32 }
%struct.isp_device = type { i32 }

@OMAP3_ISP_SUBCLK_CCDC = common dso_local global i32 0, align 4
@OMAP3_ISP_IOMEM_CCDC = common dso_local global i32 0, align 4
@ISPCCDC_CFG = common dso_local global i32 0, align 4
@ISPCCDC_CFG_VDLC = common dso_local global i32 0, align 4
@CCDC_OUTPUT_MEMORY = common dso_local global i32 0, align 4
@OMAP3_ISP_SBL_CCDC_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @ccdc_set_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccdc_set_stream(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.isp_ccdc_device*, align 8
  %7 = alloca %struct.isp_device*, align 8
  %8 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %10 = call %struct.isp_ccdc_device* @v4l2_get_subdevdata(%struct.v4l2_subdev* %9)
  store %struct.isp_ccdc_device* %10, %struct.isp_ccdc_device** %6, align 8
  %11 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %6, align 8
  %12 = call %struct.isp_device* @to_isp_device(%struct.isp_ccdc_device* %11)
  store %struct.isp_device* %12, %struct.isp_device** %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %6, align 8
  %14 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 128
  br i1 %16, label %17, label %34

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %18, 128
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %108

21:                                               ; preds = %17
  %22 = load %struct.isp_device*, %struct.isp_device** %7, align 8
  %23 = load i32, i32* @OMAP3_ISP_SUBCLK_CCDC, align 4
  %24 = call i32 @omap3isp_subclk_enable(%struct.isp_device* %22, i32 %23)
  %25 = load %struct.isp_device*, %struct.isp_device** %7, align 8
  %26 = load i32, i32* @OMAP3_ISP_IOMEM_CCDC, align 4
  %27 = load i32, i32* @ISPCCDC_CFG, align 4
  %28 = load i32, i32* @ISPCCDC_CFG_VDLC, align 4
  %29 = call i32 @isp_reg_set(%struct.isp_device* %25, i32 %26, i32 %27, i32 %28)
  %30 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %6, align 8
  %31 = call i32 @ccdc_configure(%struct.isp_ccdc_device* %30)
  %32 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %6, align 8
  %33 = call i32 @ccdc_print_status(%struct.isp_ccdc_device* %32)
  br label %34

34:                                               ; preds = %21, %2
  %35 = load i32, i32* %5, align 4
  switch i32 %35, label %103 [
    i32 130, label %36
    i32 129, label %65
    i32 128, label %84
  ]

36:                                               ; preds = %34
  %37 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %6, align 8
  %38 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @CCDC_OUTPUT_MEMORY, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  %44 = load %struct.isp_device*, %struct.isp_device** %7, align 8
  %45 = load i32, i32* @OMAP3_ISP_SBL_CCDC_WRITE, align 4
  %46 = call i32 @omap3isp_sbl_enable(%struct.isp_device* %44, i32 %45)
  br label %47

47:                                               ; preds = %43, %36
  %48 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %6, align 8
  %49 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %47
  %53 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %6, align 8
  %54 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @CCDC_OUTPUT_MEMORY, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %52, %47
  %60 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %6, align 8
  %61 = call i32 @ccdc_enable(%struct.isp_ccdc_device* %60)
  br label %62

62:                                               ; preds = %59, %52
  %63 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %6, align 8
  %64 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %63, i32 0, i32 2
  store i32 0, i32* %64, align 4
  br label %103

65:                                               ; preds = %34
  %66 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %6, align 8
  %67 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @CCDC_OUTPUT_MEMORY, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %65
  %73 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %6, align 8
  %74 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 129
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load %struct.isp_device*, %struct.isp_device** %7, align 8
  %79 = load i32, i32* @OMAP3_ISP_SBL_CCDC_WRITE, align 4
  %80 = call i32 @omap3isp_sbl_enable(%struct.isp_device* %78, i32 %79)
  br label %81

81:                                               ; preds = %77, %72, %65
  %82 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %6, align 8
  %83 = call i32 @ccdc_enable(%struct.isp_ccdc_device* %82)
  br label %103

84:                                               ; preds = %34
  %85 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %6, align 8
  %86 = call i32 @ccdc_disable(%struct.isp_ccdc_device* %85)
  store i32 %86, i32* %8, align 4
  %87 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %6, align 8
  %88 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @CCDC_OUTPUT_MEMORY, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %84
  %94 = load %struct.isp_device*, %struct.isp_device** %7, align 8
  %95 = load i32, i32* @OMAP3_ISP_SBL_CCDC_WRITE, align 4
  %96 = call i32 @omap3isp_sbl_disable(%struct.isp_device* %94, i32 %95)
  br label %97

97:                                               ; preds = %93, %84
  %98 = load %struct.isp_device*, %struct.isp_device** %7, align 8
  %99 = load i32, i32* @OMAP3_ISP_SUBCLK_CCDC, align 4
  %100 = call i32 @omap3isp_subclk_disable(%struct.isp_device* %98, i32 %99)
  %101 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %6, align 8
  %102 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %101, i32 0, i32 2
  store i32 0, i32* %102, align 4
  br label %103

103:                                              ; preds = %34, %97, %81, %62
  %104 = load i32, i32* %5, align 4
  %105 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %6, align 8
  %106 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* %8, align 4
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %103, %20
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local %struct.isp_ccdc_device* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.isp_device* @to_isp_device(%struct.isp_ccdc_device*) #1

declare dso_local i32 @omap3isp_subclk_enable(%struct.isp_device*, i32) #1

declare dso_local i32 @isp_reg_set(%struct.isp_device*, i32, i32, i32) #1

declare dso_local i32 @ccdc_configure(%struct.isp_ccdc_device*) #1

declare dso_local i32 @ccdc_print_status(%struct.isp_ccdc_device*) #1

declare dso_local i32 @omap3isp_sbl_enable(%struct.isp_device*, i32) #1

declare dso_local i32 @ccdc_enable(%struct.isp_ccdc_device*) #1

declare dso_local i32 @ccdc_disable(%struct.isp_ccdc_device*) #1

declare dso_local i32 @omap3isp_sbl_disable(%struct.isp_device*, i32) #1

declare dso_local i32 @omap3isp_subclk_disable(%struct.isp_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
