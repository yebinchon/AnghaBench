; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_rtsx_usb_sdmmc.c_sd_wait_data_idle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_rtsx_usb_sdmmc.c_sd_wait_data_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_usb_sdmmc = type { i32 }

@SD_DATA_STATE = common dso_local global i32 0, align 4
@SD_DATA_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtsx_usb_sdmmc*)* @sd_wait_data_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sd_wait_data_idle(%struct.rtsx_usb_sdmmc* %0) #0 {
  %2 = alloca %struct.rtsx_usb_sdmmc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rtsx_usb_sdmmc* %0, %struct.rtsx_usb_sdmmc** %2, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %22, %1
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 100
  br i1 %8, label %9, label %25

9:                                                ; preds = %6
  %10 = load %struct.rtsx_usb_sdmmc*, %struct.rtsx_usb_sdmmc** %2, align 8
  %11 = getelementptr inbounds %struct.rtsx_usb_sdmmc, %struct.rtsx_usb_sdmmc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @SD_DATA_STATE, align 4
  %14 = call i32 @rtsx_usb_ep0_read_register(i32 %12, i32 %13, i32* %5)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @SD_DATA_IDLE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %9
  br label %25

20:                                               ; preds = %9
  %21 = call i32 @usleep_range(i32 100, i32 1000)
  br label %22

22:                                               ; preds = %20
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %4, align 4
  br label %6

25:                                               ; preds = %19, %6
  ret void
}

declare dso_local i32 @rtsx_usb_ep0_read_register(i32, i32, i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
