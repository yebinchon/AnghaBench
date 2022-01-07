; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isp.c_isp_initialize_modules.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isp.c_isp_initialize_modules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_device = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"CSI PHY initialization failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"CSI2 initialization failed\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"CCP2 initialization failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"CCDC initialization failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Preview initialization failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Resizer initialization failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Histogram initialization failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"H3A AEWB initialization failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"H3A AF initialization failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isp_device*)* @isp_initialize_modules to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isp_initialize_modules(%struct.isp_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.isp_device*, align 8
  %4 = alloca i32, align 4
  store %struct.isp_device* %0, %struct.isp_device** %3, align 8
  %5 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %6 = call i32 @omap3isp_csiphy_init(%struct.isp_device* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %11 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @dev_err(i32 %12, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %127

15:                                               ; preds = %1
  %16 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %17 = call i32 @omap3isp_csi2_init(%struct.isp_device* %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %22 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dev_err(i32 %23, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %123

25:                                               ; preds = %15
  %26 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %27 = call i32 @omap3isp_ccp2_init(%struct.isp_device* %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %25
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @EPROBE_DEFER, align 4
  %33 = sub nsw i32 0, %32
  %34 = icmp ne i32 %31, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %37 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %40

40:                                               ; preds = %35, %30
  br label %120

41:                                               ; preds = %25
  %42 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %43 = call i32 @omap3isp_ccdc_init(%struct.isp_device* %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %48 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @dev_err(i32 %49, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %117

51:                                               ; preds = %41
  %52 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %53 = call i32 @omap3isp_preview_init(%struct.isp_device* %52)
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %58 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @dev_err(i32 %59, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %114

61:                                               ; preds = %51
  %62 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %63 = call i32 @omap3isp_resizer_init(%struct.isp_device* %62)
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %68 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @dev_err(i32 %69, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  br label %111

71:                                               ; preds = %61
  %72 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %73 = call i32 @omap3isp_hist_init(%struct.isp_device* %72)
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %78 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @dev_err(i32 %79, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  br label %108

81:                                               ; preds = %71
  %82 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %83 = call i32 @omap3isp_h3a_aewb_init(%struct.isp_device* %82)
  store i32 %83, i32* %4, align 4
  %84 = load i32, i32* %4, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %81
  %87 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %88 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @dev_err(i32 %89, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  br label %105

91:                                               ; preds = %81
  %92 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %93 = call i32 @omap3isp_h3a_af_init(%struct.isp_device* %92)
  store i32 %93, i32* %4, align 4
  %94 = load i32, i32* %4, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %91
  %97 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %98 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @dev_err(i32 %99, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  br label %102

101:                                              ; preds = %91
  store i32 0, i32* %2, align 4
  br label %127

102:                                              ; preds = %96
  %103 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %104 = call i32 @omap3isp_h3a_aewb_cleanup(%struct.isp_device* %103)
  br label %105

105:                                              ; preds = %102, %86
  %106 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %107 = call i32 @omap3isp_hist_cleanup(%struct.isp_device* %106)
  br label %108

108:                                              ; preds = %105, %76
  %109 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %110 = call i32 @omap3isp_resizer_cleanup(%struct.isp_device* %109)
  br label %111

111:                                              ; preds = %108, %66
  %112 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %113 = call i32 @omap3isp_preview_cleanup(%struct.isp_device* %112)
  br label %114

114:                                              ; preds = %111, %56
  %115 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %116 = call i32 @omap3isp_ccdc_cleanup(%struct.isp_device* %115)
  br label %117

117:                                              ; preds = %114, %46
  %118 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %119 = call i32 @omap3isp_ccp2_cleanup(%struct.isp_device* %118)
  br label %120

120:                                              ; preds = %117, %40
  %121 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %122 = call i32 @omap3isp_csi2_cleanup(%struct.isp_device* %121)
  br label %123

123:                                              ; preds = %120, %20
  %124 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %125 = call i32 @omap3isp_csiphy_cleanup(%struct.isp_device* %124)
  %126 = load i32, i32* %4, align 4
  store i32 %126, i32* %2, align 4
  br label %127

127:                                              ; preds = %123, %101, %9
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local i32 @omap3isp_csiphy_init(%struct.isp_device*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @omap3isp_csi2_init(%struct.isp_device*) #1

declare dso_local i32 @omap3isp_ccp2_init(%struct.isp_device*) #1

declare dso_local i32 @omap3isp_ccdc_init(%struct.isp_device*) #1

declare dso_local i32 @omap3isp_preview_init(%struct.isp_device*) #1

declare dso_local i32 @omap3isp_resizer_init(%struct.isp_device*) #1

declare dso_local i32 @omap3isp_hist_init(%struct.isp_device*) #1

declare dso_local i32 @omap3isp_h3a_aewb_init(%struct.isp_device*) #1

declare dso_local i32 @omap3isp_h3a_af_init(%struct.isp_device*) #1

declare dso_local i32 @omap3isp_h3a_aewb_cleanup(%struct.isp_device*) #1

declare dso_local i32 @omap3isp_hist_cleanup(%struct.isp_device*) #1

declare dso_local i32 @omap3isp_resizer_cleanup(%struct.isp_device*) #1

declare dso_local i32 @omap3isp_preview_cleanup(%struct.isp_device*) #1

declare dso_local i32 @omap3isp_ccdc_cleanup(%struct.isp_device*) #1

declare dso_local i32 @omap3isp_ccp2_cleanup(%struct.isp_device*) #1

declare dso_local i32 @omap3isp_csi2_cleanup(%struct.isp_device*) #1

declare dso_local i32 @omap3isp_csiphy_cleanup(%struct.isp_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
