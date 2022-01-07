; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccdc.c_omap3isp_ccdc_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccdc.c_omap3isp_ccdc_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_ccdc_device = type { i64 }

@ISP_PIPELINE_STREAM_STOPPED = common dso_local global i64 0, align 8
@IRQ0STATUS_CCDC_VD1_IRQ = common dso_local global i32 0, align 4
@IRQ0STATUS_CCDC_VD0_IRQ = common dso_local global i32 0, align 4
@IRQ0STATUS_HS_VS_IRQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap3isp_ccdc_isr(%struct.isp_ccdc_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.isp_ccdc_device*, align 8
  %5 = alloca i32, align 4
  store %struct.isp_ccdc_device* %0, %struct.isp_ccdc_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %4, align 8
  %7 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @ISP_PIPELINE_STREAM_STOPPED, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %40

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @IRQ0STATUS_CCDC_VD1_IRQ, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %4, align 8
  %19 = call i32 @ccdc_vd1_isr(%struct.isp_ccdc_device* %18)
  br label %20

20:                                               ; preds = %17, %12
  %21 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @ccdc_lsc_isr(%struct.isp_ccdc_device* %21, i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @IRQ0STATUS_CCDC_VD0_IRQ, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %4, align 8
  %30 = call i32 @ccdc_vd0_isr(%struct.isp_ccdc_device* %29)
  br label %31

31:                                               ; preds = %28, %20
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @IRQ0STATUS_HS_VS_IRQ, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %4, align 8
  %38 = call i32 @ccdc_hs_vs_isr(%struct.isp_ccdc_device* %37)
  br label %39

39:                                               ; preds = %36, %31
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %11
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @ccdc_vd1_isr(%struct.isp_ccdc_device*) #1

declare dso_local i32 @ccdc_lsc_isr(%struct.isp_ccdc_device*, i32) #1

declare dso_local i32 @ccdc_vd0_isr(%struct.isp_ccdc_device*) #1

declare dso_local i32 @ccdc_hs_vs_isr(%struct.isp_ccdc_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
