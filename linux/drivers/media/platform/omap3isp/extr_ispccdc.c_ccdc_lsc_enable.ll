; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccdc.c_ccdc_lsc_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccdc.c_ccdc_lsc_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_ccdc_device = type { %struct.ispccdc_lsc }
%struct.ispccdc_lsc = type { i64, i32, i32, %struct.TYPE_2__*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@LSC_STATE_STOPPED = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@OMAP3_ISP_SBL_CCDC_LSC_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isp_ccdc_device*)* @ccdc_lsc_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccdc_lsc_enable(%struct.isp_ccdc_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.isp_ccdc_device*, align 8
  %4 = alloca %struct.ispccdc_lsc*, align 8
  store %struct.isp_ccdc_device* %0, %struct.isp_ccdc_device** %3, align 8
  %5 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %3, align 8
  %6 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %5, i32 0, i32 0
  store %struct.ispccdc_lsc* %6, %struct.ispccdc_lsc** %4, align 8
  %7 = load %struct.ispccdc_lsc*, %struct.ispccdc_lsc** %4, align 8
  %8 = getelementptr inbounds %struct.ispccdc_lsc, %struct.ispccdc_lsc* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @LSC_STATE_STOPPED, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %71

15:                                               ; preds = %1
  %16 = load %struct.ispccdc_lsc*, %struct.ispccdc_lsc** %4, align 8
  %17 = getelementptr inbounds %struct.ispccdc_lsc, %struct.ispccdc_lsc* %16, i32 0, i32 4
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = icmp ne %struct.TYPE_2__* %18, null
  br i1 %19, label %20, label %30

20:                                               ; preds = %15
  %21 = load %struct.ispccdc_lsc*, %struct.ispccdc_lsc** %4, align 8
  %22 = getelementptr inbounds %struct.ispccdc_lsc, %struct.ispccdc_lsc* %21, i32 0, i32 4
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.ispccdc_lsc*, %struct.ispccdc_lsc** %4, align 8
  %26 = getelementptr inbounds %struct.ispccdc_lsc, %struct.ispccdc_lsc* %25, i32 0, i32 2
  %27 = call i32 @list_add_tail(i32* %24, i32* %26)
  %28 = load %struct.ispccdc_lsc*, %struct.ispccdc_lsc** %4, align 8
  %29 = getelementptr inbounds %struct.ispccdc_lsc, %struct.ispccdc_lsc* %28, i32 0, i32 4
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %29, align 8
  br label %30

30:                                               ; preds = %20, %15
  %31 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %3, align 8
  %32 = load %struct.ispccdc_lsc*, %struct.ispccdc_lsc** %4, align 8
  %33 = getelementptr inbounds %struct.ispccdc_lsc, %struct.ispccdc_lsc* %32, i32 0, i32 3
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = call i64 @__ccdc_lsc_configure(%struct.isp_ccdc_device* %31, %struct.TYPE_2__* %34)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %30
  %38 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %3, align 8
  %39 = call i32 @to_isp_device(%struct.isp_ccdc_device* %38)
  %40 = load i32, i32* @OMAP3_ISP_SBL_CCDC_LSC_READ, align 4
  %41 = call i32 @omap3isp_sbl_disable(i32 %39, i32 %40)
  %42 = load %struct.ispccdc_lsc*, %struct.ispccdc_lsc** %4, align 8
  %43 = getelementptr inbounds %struct.ispccdc_lsc, %struct.ispccdc_lsc* %42, i32 0, i32 3
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load %struct.ispccdc_lsc*, %struct.ispccdc_lsc** %4, align 8
  %47 = getelementptr inbounds %struct.ispccdc_lsc, %struct.ispccdc_lsc* %46, i32 0, i32 2
  %48 = call i32 @list_add_tail(i32* %45, i32* %47)
  %49 = load %struct.ispccdc_lsc*, %struct.ispccdc_lsc** %4, align 8
  %50 = getelementptr inbounds %struct.ispccdc_lsc, %struct.ispccdc_lsc* %49, i32 0, i32 3
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %50, align 8
  br label %61

51:                                               ; preds = %30
  %52 = load %struct.ispccdc_lsc*, %struct.ispccdc_lsc** %4, align 8
  %53 = getelementptr inbounds %struct.ispccdc_lsc, %struct.ispccdc_lsc* %52, i32 0, i32 3
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load %struct.ispccdc_lsc*, %struct.ispccdc_lsc** %4, align 8
  %56 = getelementptr inbounds %struct.ispccdc_lsc, %struct.ispccdc_lsc* %55, i32 0, i32 4
  store %struct.TYPE_2__* %54, %struct.TYPE_2__** %56, align 8
  %57 = load %struct.ispccdc_lsc*, %struct.ispccdc_lsc** %4, align 8
  %58 = getelementptr inbounds %struct.ispccdc_lsc, %struct.ispccdc_lsc* %57, i32 0, i32 3
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %58, align 8
  %59 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %3, align 8
  %60 = call i32 @__ccdc_lsc_enable(%struct.isp_ccdc_device* %59, i32 1)
  br label %61

61:                                               ; preds = %51, %37
  %62 = load %struct.ispccdc_lsc*, %struct.ispccdc_lsc** %4, align 8
  %63 = getelementptr inbounds %struct.ispccdc_lsc, %struct.ispccdc_lsc* %62, i32 0, i32 2
  %64 = call i32 @list_empty(i32* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %61
  %67 = load %struct.ispccdc_lsc*, %struct.ispccdc_lsc** %4, align 8
  %68 = getelementptr inbounds %struct.ispccdc_lsc, %struct.ispccdc_lsc* %67, i32 0, i32 1
  %69 = call i32 @schedule_work(i32* %68)
  br label %70

70:                                               ; preds = %66, %61
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %70, %12
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i64 @__ccdc_lsc_configure(%struct.isp_ccdc_device*, %struct.TYPE_2__*) #1

declare dso_local i32 @omap3isp_sbl_disable(i32, i32) #1

declare dso_local i32 @to_isp_device(%struct.isp_ccdc_device*) #1

declare dso_local i32 @__ccdc_lsc_enable(%struct.isp_ccdc_device*, i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
