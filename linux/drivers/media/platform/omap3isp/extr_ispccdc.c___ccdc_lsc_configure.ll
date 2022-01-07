; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccdc.c___ccdc_lsc_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccdc.c___ccdc_lsc_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_ccdc_device = type { i32 }
%struct.ispccdc_lsc_config_req = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Discard LSC configuration\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isp_ccdc_device*, %struct.ispccdc_lsc_config_req*)* @__ccdc_lsc_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ccdc_lsc_configure(%struct.isp_ccdc_device* %0, %struct.ispccdc_lsc_config_req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.isp_ccdc_device*, align 8
  %5 = alloca %struct.ispccdc_lsc_config_req*, align 8
  store %struct.isp_ccdc_device* %0, %struct.isp_ccdc_device** %4, align 8
  store %struct.ispccdc_lsc_config_req* %1, %struct.ispccdc_lsc_config_req** %5, align 8
  %6 = load %struct.ispccdc_lsc_config_req*, %struct.ispccdc_lsc_config_req** %5, align 8
  %7 = getelementptr inbounds %struct.ispccdc_lsc_config_req, %struct.ispccdc_lsc_config_req* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %43

13:                                               ; preds = %2
  %14 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %4, align 8
  %15 = load %struct.ispccdc_lsc_config_req*, %struct.ispccdc_lsc_config_req** %5, align 8
  %16 = getelementptr inbounds %struct.ispccdc_lsc_config_req, %struct.ispccdc_lsc_config_req* %15, i32 0, i32 1
  %17 = call i64 @ccdc_lsc_validate_config(%struct.isp_ccdc_device* %14, i32* %16)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %13
  %20 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %4, align 8
  %21 = call i32 @to_device(%struct.isp_ccdc_device* %20)
  %22 = call i32 @dev_dbg(i32 %21, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %43

25:                                               ; preds = %13
  %26 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %4, align 8
  %27 = call i64 @ccdc_lsc_busy(%struct.isp_ccdc_device* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, i32* @EBUSY, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %43

32:                                               ; preds = %25
  %33 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %4, align 8
  %34 = load %struct.ispccdc_lsc_config_req*, %struct.ispccdc_lsc_config_req** %5, align 8
  %35 = getelementptr inbounds %struct.ispccdc_lsc_config_req, %struct.ispccdc_lsc_config_req* %34, i32 0, i32 1
  %36 = call i32 @ccdc_lsc_setup_regs(%struct.isp_ccdc_device* %33, i32* %35)
  %37 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %4, align 8
  %38 = load %struct.ispccdc_lsc_config_req*, %struct.ispccdc_lsc_config_req** %5, align 8
  %39 = getelementptr inbounds %struct.ispccdc_lsc_config_req, %struct.ispccdc_lsc_config_req* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ccdc_lsc_program_table(%struct.isp_ccdc_device* %37, i32 %41)
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %32, %29, %19, %10
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i64 @ccdc_lsc_validate_config(%struct.isp_ccdc_device*, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @to_device(%struct.isp_ccdc_device*) #1

declare dso_local i64 @ccdc_lsc_busy(%struct.isp_ccdc_device*) #1

declare dso_local i32 @ccdc_lsc_setup_regs(%struct.isp_ccdc_device*, i32*) #1

declare dso_local i32 @ccdc_lsc_program_table(%struct.isp_ccdc_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
