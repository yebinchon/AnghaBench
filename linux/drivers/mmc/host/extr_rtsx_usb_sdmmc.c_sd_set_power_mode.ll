; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_rtsx_usb_sdmmc.c_sd_set_power_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_rtsx_usb_sdmmc.c_sd_set_power_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_usb_sdmmc = type { i8 }

@MMC_POWER_OFF = common dso_local global i8 0, align 1
@MMC_POWER_ON = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_usb_sdmmc*, i8)* @sd_set_power_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_set_power_mode(%struct.rtsx_usb_sdmmc* %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtsx_usb_sdmmc*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store %struct.rtsx_usb_sdmmc* %0, %struct.rtsx_usb_sdmmc** %4, align 8
  store i8 %1, i8* %5, align 1
  %7 = load i8, i8* %5, align 1
  %8 = zext i8 %7 to i32
  %9 = load i8, i8* @MMC_POWER_OFF, align 1
  %10 = zext i8 %9 to i32
  %11 = icmp ne i32 %8, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i8, i8* @MMC_POWER_ON, align 1
  store i8 %13, i8* %5, align 1
  br label %14

14:                                               ; preds = %12, %2
  %15 = load i8, i8* %5, align 1
  %16 = zext i8 %15 to i32
  %17 = load %struct.rtsx_usb_sdmmc*, %struct.rtsx_usb_sdmmc** %4, align 8
  %18 = getelementptr inbounds %struct.rtsx_usb_sdmmc, %struct.rtsx_usb_sdmmc* %17, i32 0, i32 0
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp eq i32 %16, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %50

23:                                               ; preds = %14
  %24 = load i8, i8* %5, align 1
  %25 = zext i8 %24 to i32
  %26 = load i8, i8* @MMC_POWER_OFF, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load %struct.rtsx_usb_sdmmc*, %struct.rtsx_usb_sdmmc** %4, align 8
  %31 = call i32 @sd_power_off(%struct.rtsx_usb_sdmmc* %30)
  store i32 %31, i32* %6, align 4
  %32 = load %struct.rtsx_usb_sdmmc*, %struct.rtsx_usb_sdmmc** %4, align 8
  %33 = call i32 @sdmmc_dev(%struct.rtsx_usb_sdmmc* %32)
  %34 = call i32 @pm_runtime_put_noidle(i32 %33)
  br label %41

35:                                               ; preds = %23
  %36 = load %struct.rtsx_usb_sdmmc*, %struct.rtsx_usb_sdmmc** %4, align 8
  %37 = call i32 @sdmmc_dev(%struct.rtsx_usb_sdmmc* %36)
  %38 = call i32 @pm_runtime_get_noresume(i32 %37)
  %39 = load %struct.rtsx_usb_sdmmc*, %struct.rtsx_usb_sdmmc** %4, align 8
  %40 = call i32 @sd_power_on(%struct.rtsx_usb_sdmmc* %39)
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %35, %29
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %41
  %45 = load i8, i8* %5, align 1
  %46 = load %struct.rtsx_usb_sdmmc*, %struct.rtsx_usb_sdmmc** %4, align 8
  %47 = getelementptr inbounds %struct.rtsx_usb_sdmmc, %struct.rtsx_usb_sdmmc* %46, i32 0, i32 0
  store i8 %45, i8* %47, align 1
  br label %48

48:                                               ; preds = %44, %41
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %48, %22
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @sd_power_off(%struct.rtsx_usb_sdmmc*) #1

declare dso_local i32 @pm_runtime_put_noidle(i32) #1

declare dso_local i32 @sdmmc_dev(%struct.rtsx_usb_sdmmc*) #1

declare dso_local i32 @pm_runtime_get_noresume(i32) #1

declare dso_local i32 @sd_power_on(%struct.rtsx_usb_sdmmc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
