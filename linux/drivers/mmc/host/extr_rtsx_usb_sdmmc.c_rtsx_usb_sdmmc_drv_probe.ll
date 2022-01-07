; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_rtsx_usb_sdmmc.c_rtsx_usb_sdmmc_drv_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_rtsx_usb_sdmmc.c_rtsx_usb_sdmmc_drv_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.mmc_host = type { i32 }
%struct.rtsx_usb_sdmmc = type { i32, %struct.TYPE_7__, i32, i32, %struct.platform_device*, %struct.mmc_host*, %struct.rtsx_ucr* }
%struct.TYPE_7__ = type { i8*, i32, i32, i32 }
%struct.rtsx_ucr = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c": Realtek USB SD/MMC controller found\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@LED_OFF = common dso_local global i32 0, align 4
@rtsx_usb_led_control = common dso_local global i32 0, align 4
@rtsx_usb_update_led = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rtsx_usb_sdmmc_drv_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtsx_usb_sdmmc_drv_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.mmc_host*, align 8
  %5 = alloca %struct.rtsx_usb_sdmmc*, align 8
  %6 = alloca %struct.rtsx_ucr*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @to_usb_interface(i32 %10)
  %12 = call %struct.rtsx_ucr* @usb_get_intfdata(i32 %11)
  store %struct.rtsx_ucr* %12, %struct.rtsx_ucr** %6, align 8
  %13 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %6, align 8
  %14 = icmp ne %struct.rtsx_ucr* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENXIO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %55

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = call i32 @dev_dbg(%struct.TYPE_6__* %20, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = call %struct.mmc_host* @mmc_alloc_host(i32 64, %struct.TYPE_6__* %23)
  store %struct.mmc_host* %24, %struct.mmc_host** %4, align 8
  %25 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %26 = icmp ne %struct.mmc_host* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %18
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %55

30:                                               ; preds = %18
  %31 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %32 = call %struct.rtsx_usb_sdmmc* @mmc_priv(%struct.mmc_host* %31)
  store %struct.rtsx_usb_sdmmc* %32, %struct.rtsx_usb_sdmmc** %5, align 8
  %33 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %6, align 8
  %34 = load %struct.rtsx_usb_sdmmc*, %struct.rtsx_usb_sdmmc** %5, align 8
  %35 = getelementptr inbounds %struct.rtsx_usb_sdmmc, %struct.rtsx_usb_sdmmc* %34, i32 0, i32 6
  store %struct.rtsx_ucr* %33, %struct.rtsx_ucr** %35, align 8
  %36 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %37 = load %struct.rtsx_usb_sdmmc*, %struct.rtsx_usb_sdmmc** %5, align 8
  %38 = getelementptr inbounds %struct.rtsx_usb_sdmmc, %struct.rtsx_usb_sdmmc* %37, i32 0, i32 5
  store %struct.mmc_host* %36, %struct.mmc_host** %38, align 8
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = load %struct.rtsx_usb_sdmmc*, %struct.rtsx_usb_sdmmc** %5, align 8
  %41 = getelementptr inbounds %struct.rtsx_usb_sdmmc, %struct.rtsx_usb_sdmmc* %40, i32 0, i32 4
  store %struct.platform_device* %39, %struct.platform_device** %41, align 8
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = load %struct.rtsx_usb_sdmmc*, %struct.rtsx_usb_sdmmc** %5, align 8
  %44 = call i32 @platform_set_drvdata(%struct.platform_device* %42, %struct.rtsx_usb_sdmmc* %43)
  %45 = load %struct.rtsx_usb_sdmmc*, %struct.rtsx_usb_sdmmc** %5, align 8
  %46 = getelementptr inbounds %struct.rtsx_usb_sdmmc, %struct.rtsx_usb_sdmmc* %45, i32 0, i32 3
  %47 = call i32 @mutex_init(i32* %46)
  %48 = load %struct.rtsx_usb_sdmmc*, %struct.rtsx_usb_sdmmc** %5, align 8
  %49 = call i32 @rtsx_usb_init_host(%struct.rtsx_usb_sdmmc* %48)
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = call i32 @pm_runtime_enable(%struct.TYPE_6__* %51)
  %53 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %54 = call i32 @mmc_add_host(%struct.mmc_host* %53)
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %30, %27, %15
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local %struct.rtsx_ucr* @usb_get_intfdata(i32) #1

declare dso_local i32 @to_usb_interface(i32) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_6__*, i8*) #1

declare dso_local %struct.mmc_host* @mmc_alloc_host(i32, %struct.TYPE_6__*) #1

declare dso_local %struct.rtsx_usb_sdmmc* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.rtsx_usb_sdmmc*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @rtsx_usb_init_host(%struct.rtsx_usb_sdmmc*) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_6__*) #1

declare dso_local i32 @mmc_add_host(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
