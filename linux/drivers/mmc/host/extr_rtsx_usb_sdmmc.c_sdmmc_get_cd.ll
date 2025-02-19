; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_rtsx_usb_sdmmc.c_sdmmc_get_cd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_rtsx_usb_sdmmc.c_sdmmc_get_cd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.rtsx_usb_sdmmc = type { i32, i64, %struct.rtsx_ucr* }
%struct.rtsx_ucr = type { i32 }

@ENOMEDIUM = common dso_local global i32 0, align 4
@SD_CD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*)* @sdmmc_get_cd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdmmc_get_cd(%struct.mmc_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.rtsx_usb_sdmmc*, align 8
  %5 = alloca %struct.rtsx_ucr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  %8 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %9 = call %struct.rtsx_usb_sdmmc* @mmc_priv(%struct.mmc_host* %8)
  store %struct.rtsx_usb_sdmmc* %9, %struct.rtsx_usb_sdmmc** %4, align 8
  %10 = load %struct.rtsx_usb_sdmmc*, %struct.rtsx_usb_sdmmc** %4, align 8
  %11 = getelementptr inbounds %struct.rtsx_usb_sdmmc, %struct.rtsx_usb_sdmmc* %10, i32 0, i32 2
  %12 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %11, align 8
  store %struct.rtsx_ucr* %12, %struct.rtsx_ucr** %5, align 8
  %13 = load %struct.rtsx_usb_sdmmc*, %struct.rtsx_usb_sdmmc** %4, align 8
  %14 = getelementptr inbounds %struct.rtsx_usb_sdmmc, %struct.rtsx_usb_sdmmc* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEDIUM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %44

20:                                               ; preds = %1
  %21 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %5, align 8
  %22 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %5, align 8
  %25 = call i32 @rtsx_usb_get_card_status(%struct.rtsx_ucr* %24, i32* %7)
  store i32 %25, i32* %6, align 4
  %26 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %5, align 8
  %27 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %26, i32 0, i32 0
  %28 = call i32 @mutex_unlock(i32* %27)
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  br label %41

32:                                               ; preds = %20
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @SD_CD, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load %struct.rtsx_usb_sdmmc*, %struct.rtsx_usb_sdmmc** %4, align 8
  %39 = getelementptr inbounds %struct.rtsx_usb_sdmmc, %struct.rtsx_usb_sdmmc* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  store i32 1, i32* %2, align 4
  br label %44

40:                                               ; preds = %32
  br label %41

41:                                               ; preds = %40, %31
  %42 = load %struct.rtsx_usb_sdmmc*, %struct.rtsx_usb_sdmmc** %4, align 8
  %43 = getelementptr inbounds %struct.rtsx_usb_sdmmc, %struct.rtsx_usb_sdmmc* %42, i32 0, i32 0
  store i32 0, i32* %43, align 8
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %41, %37, %17
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local %struct.rtsx_usb_sdmmc* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rtsx_usb_get_card_status(%struct.rtsx_ucr*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
