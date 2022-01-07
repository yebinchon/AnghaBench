; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_alcor.c_alcor_signal_voltage_switch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_alcor.c_alcor_signal_voltage_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_ios = type { i32 }
%struct.alcor_sdmmc_host = type { i32 }

@AU6601_OPT = common dso_local global i32 0, align 4
@AU6601_OPT_SD_18V = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*, %struct.mmc_ios*)* @alcor_signal_voltage_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alcor_signal_voltage_switch(%struct.mmc_host* %0, %struct.mmc_ios* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_ios*, align 8
  %5 = alloca %struct.alcor_sdmmc_host*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_ios* %1, %struct.mmc_ios** %4, align 8
  %6 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %7 = call %struct.alcor_sdmmc_host* @mmc_priv(%struct.mmc_host* %6)
  store %struct.alcor_sdmmc_host* %7, %struct.alcor_sdmmc_host** %5, align 8
  %8 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %5, align 8
  %9 = getelementptr inbounds %struct.alcor_sdmmc_host, %struct.alcor_sdmmc_host* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %12 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %24 [
    i32 128, label %14
    i32 129, label %19
  ]

14:                                               ; preds = %2
  %15 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %5, align 8
  %16 = load i32, i32* @AU6601_OPT, align 4
  %17 = load i32, i32* @AU6601_OPT_SD_18V, align 4
  %18 = call i32 @alcor_rmw8(%struct.alcor_sdmmc_host* %15, i32 %16, i32 %17, i32 0)
  br label %25

19:                                               ; preds = %2
  %20 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %5, align 8
  %21 = load i32, i32* @AU6601_OPT, align 4
  %22 = load i32, i32* @AU6601_OPT_SD_18V, align 4
  %23 = call i32 @alcor_rmw8(%struct.alcor_sdmmc_host* %20, i32 %21, i32 0, i32 %22)
  br label %25

24:                                               ; preds = %2
  br label %25

25:                                               ; preds = %24, %19, %14
  %26 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %5, align 8
  %27 = getelementptr inbounds %struct.alcor_sdmmc_host, %struct.alcor_sdmmc_host* %26, i32 0, i32 0
  %28 = call i32 @mutex_unlock(i32* %27)
  ret i32 0
}

declare dso_local %struct.alcor_sdmmc_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @alcor_rmw8(%struct.alcor_sdmmc_host*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
