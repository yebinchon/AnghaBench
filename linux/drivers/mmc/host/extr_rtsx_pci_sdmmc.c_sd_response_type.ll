; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_rtsx_pci_sdmmc.c_sd_response_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_rtsx_pci_sdmmc.c_sd_response_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_command = type { i32 }

@SD_RSP_TYPE_R0 = common dso_local global i32 0, align 4
@SD_RSP_TYPE_R1 = common dso_local global i32 0, align 4
@SD_NO_CHECK_CRC7 = common dso_local global i32 0, align 4
@SD_RSP_TYPE_R1b = common dso_local global i32 0, align 4
@SD_RSP_TYPE_R2 = common dso_local global i32 0, align 4
@SD_RSP_TYPE_R3 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_command*)* @sd_response_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_response_type(%struct.mmc_command* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mmc_command*, align 8
  store %struct.mmc_command* %0, %struct.mmc_command** %3, align 8
  %4 = load %struct.mmc_command*, %struct.mmc_command** %3, align 8
  %5 = call i32 @mmc_resp_type(%struct.mmc_command* %4)
  switch i32 %5, label %20 [
    i32 133, label %6
    i32 132, label %8
    i32 130, label %10
    i32 131, label %14
    i32 129, label %16
    i32 128, label %18
  ]

6:                                                ; preds = %1
  %7 = load i32, i32* @SD_RSP_TYPE_R0, align 4
  store i32 %7, i32* %2, align 4
  br label %23

8:                                                ; preds = %1
  %9 = load i32, i32* @SD_RSP_TYPE_R1, align 4
  store i32 %9, i32* %2, align 4
  br label %23

10:                                               ; preds = %1
  %11 = load i32, i32* @SD_RSP_TYPE_R1, align 4
  %12 = load i32, i32* @SD_NO_CHECK_CRC7, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %2, align 4
  br label %23

14:                                               ; preds = %1
  %15 = load i32, i32* @SD_RSP_TYPE_R1b, align 4
  store i32 %15, i32* %2, align 4
  br label %23

16:                                               ; preds = %1
  %17 = load i32, i32* @SD_RSP_TYPE_R2, align 4
  store i32 %17, i32* %2, align 4
  br label %23

18:                                               ; preds = %1
  %19 = load i32, i32* @SD_RSP_TYPE_R3, align 4
  store i32 %19, i32* %2, align 4
  br label %23

20:                                               ; preds = %1
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %20, %18, %16, %14, %10, %8, %6
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @mmc_resp_type(%struct.mmc_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
