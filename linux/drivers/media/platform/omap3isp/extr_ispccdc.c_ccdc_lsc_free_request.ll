; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccdc.c_ccdc_lsc_free_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccdc.c_ccdc_lsc_free_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_ccdc_device = type { i32 }
%struct.ispccdc_lsc_config_req = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i64, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.isp_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp_ccdc_device*, %struct.ispccdc_lsc_config_req*)* @ccdc_lsc_free_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccdc_lsc_free_request(%struct.isp_ccdc_device* %0, %struct.ispccdc_lsc_config_req* %1) #0 {
  %3 = alloca %struct.isp_ccdc_device*, align 8
  %4 = alloca %struct.ispccdc_lsc_config_req*, align 8
  %5 = alloca %struct.isp_device*, align 8
  store %struct.isp_ccdc_device* %0, %struct.isp_ccdc_device** %3, align 8
  store %struct.ispccdc_lsc_config_req* %1, %struct.ispccdc_lsc_config_req** %4, align 8
  %6 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %3, align 8
  %7 = call %struct.isp_device* @to_isp_device(%struct.isp_ccdc_device* %6)
  store %struct.isp_device* %7, %struct.isp_device** %5, align 8
  %8 = load %struct.ispccdc_lsc_config_req*, %struct.ispccdc_lsc_config_req** %4, align 8
  %9 = icmp eq %struct.ispccdc_lsc_config_req* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %41

11:                                               ; preds = %2
  %12 = load %struct.ispccdc_lsc_config_req*, %struct.ispccdc_lsc_config_req** %4, align 8
  %13 = getelementptr inbounds %struct.ispccdc_lsc_config_req, %struct.ispccdc_lsc_config_req* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %38

17:                                               ; preds = %11
  %18 = load %struct.ispccdc_lsc_config_req*, %struct.ispccdc_lsc_config_req** %4, align 8
  %19 = getelementptr inbounds %struct.ispccdc_lsc_config_req, %struct.ispccdc_lsc_config_req* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  %21 = call i32 @sg_free_table(i32* %20)
  %22 = load %struct.isp_device*, %struct.isp_device** %5, align 8
  %23 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ispccdc_lsc_config_req*, %struct.ispccdc_lsc_config_req** %4, align 8
  %26 = getelementptr inbounds %struct.ispccdc_lsc_config_req, %struct.ispccdc_lsc_config_req* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.ispccdc_lsc_config_req*, %struct.ispccdc_lsc_config_req** %4, align 8
  %30 = getelementptr inbounds %struct.ispccdc_lsc_config_req, %struct.ispccdc_lsc_config_req* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.ispccdc_lsc_config_req*, %struct.ispccdc_lsc_config_req** %4, align 8
  %34 = getelementptr inbounds %struct.ispccdc_lsc_config_req, %struct.ispccdc_lsc_config_req* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @dma_free_coherent(i32 %24, i32 %28, i64 %32, i32 %36)
  br label %38

38:                                               ; preds = %17, %11
  %39 = load %struct.ispccdc_lsc_config_req*, %struct.ispccdc_lsc_config_req** %4, align 8
  %40 = call i32 @kfree(%struct.ispccdc_lsc_config_req* %39)
  br label %41

41:                                               ; preds = %38, %10
  ret void
}

declare dso_local %struct.isp_device* @to_isp_device(%struct.isp_ccdc_device*) #1

declare dso_local i32 @sg_free_table(i32*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i64, i32) #1

declare dso_local i32 @kfree(%struct.ispccdc_lsc_config_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
