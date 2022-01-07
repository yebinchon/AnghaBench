; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_rtsx_usb_sdmmc.c_sdmmc_execute_tuning.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_rtsx_usb_sdmmc.c_sdmmc_execute_tuning.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.rtsx_usb_sdmmc = type { i32, i64, %struct.rtsx_ucr* }
%struct.rtsx_ucr = type { i32 }

@ENOMEDIUM = common dso_local global i32 0, align 4
@MMC_SEND_TUNING_BLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*, i32)* @sdmmc_execute_tuning to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdmmc_execute_tuning(%struct.mmc_host* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mmc_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtsx_usb_sdmmc*, align 8
  %7 = alloca %struct.rtsx_ucr*, align 8
  %8 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %10 = call %struct.rtsx_usb_sdmmc* @mmc_priv(%struct.mmc_host* %9)
  store %struct.rtsx_usb_sdmmc* %10, %struct.rtsx_usb_sdmmc** %6, align 8
  %11 = load %struct.rtsx_usb_sdmmc*, %struct.rtsx_usb_sdmmc** %6, align 8
  %12 = getelementptr inbounds %struct.rtsx_usb_sdmmc, %struct.rtsx_usb_sdmmc* %11, i32 0, i32 2
  %13 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %12, align 8
  store %struct.rtsx_ucr* %13, %struct.rtsx_ucr** %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.rtsx_usb_sdmmc*, %struct.rtsx_usb_sdmmc** %6, align 8
  %15 = getelementptr inbounds %struct.rtsx_usb_sdmmc, %struct.rtsx_usb_sdmmc* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEDIUM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %38

21:                                               ; preds = %2
  %22 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %7, align 8
  %23 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %22, i32 0, i32 0
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.rtsx_usb_sdmmc*, %struct.rtsx_usb_sdmmc** %6, align 8
  %26 = getelementptr inbounds %struct.rtsx_usb_sdmmc, %struct.rtsx_usb_sdmmc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %21
  %30 = load %struct.rtsx_usb_sdmmc*, %struct.rtsx_usb_sdmmc** %6, align 8
  %31 = load i32, i32* @MMC_SEND_TUNING_BLOCK, align 4
  %32 = call i32 @sd_tuning_rx(%struct.rtsx_usb_sdmmc* %30, i32 %31)
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %29, %21
  %34 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %7, align 8
  %35 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %34, i32 0, i32 0
  %36 = call i32 @mutex_unlock(i32* %35)
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %33, %18
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.rtsx_usb_sdmmc* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sd_tuning_rx(%struct.rtsx_usb_sdmmc*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
