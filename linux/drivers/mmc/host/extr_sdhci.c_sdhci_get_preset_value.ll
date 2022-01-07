; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_get_preset_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_get_preset_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32, i32 }

@SDHCI_PRESET_FOR_SDR12 = common dso_local global i32 0, align 4
@SDHCI_PRESET_FOR_SDR25 = common dso_local global i32 0, align 4
@SDHCI_PRESET_FOR_SDR50 = common dso_local global i32 0, align 4
@SDHCI_PRESET_FOR_SDR104 = common dso_local global i32 0, align 4
@SDHCI_PRESET_FOR_DDR50 = common dso_local global i32 0, align 4
@SDHCI_PRESET_FOR_HS400 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"%s: Invalid UHS-I mode selected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdhci_host*)* @sdhci_get_preset_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdhci_get_preset_value(%struct.sdhci_host* %0) #0 {
  %2 = alloca %struct.sdhci_host*, align 8
  %3 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %5 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %31 [
    i32 130, label %7
    i32 129, label %11
    i32 128, label %15
    i32 131, label %19
    i32 134, label %19
    i32 132, label %23
    i32 135, label %23
    i32 133, label %27
  ]

7:                                                ; preds = %1
  %8 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %9 = load i32, i32* @SDHCI_PRESET_FOR_SDR12, align 4
  %10 = call i32 @sdhci_readw(%struct.sdhci_host* %8, i32 %9)
  store i32 %10, i32* %3, align 4
  br label %40

11:                                               ; preds = %1
  %12 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %13 = load i32, i32* @SDHCI_PRESET_FOR_SDR25, align 4
  %14 = call i32 @sdhci_readw(%struct.sdhci_host* %12, i32 %13)
  store i32 %14, i32* %3, align 4
  br label %40

15:                                               ; preds = %1
  %16 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %17 = load i32, i32* @SDHCI_PRESET_FOR_SDR50, align 4
  %18 = call i32 @sdhci_readw(%struct.sdhci_host* %16, i32 %17)
  store i32 %18, i32* %3, align 4
  br label %40

19:                                               ; preds = %1, %1
  %20 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %21 = load i32, i32* @SDHCI_PRESET_FOR_SDR104, align 4
  %22 = call i32 @sdhci_readw(%struct.sdhci_host* %20, i32 %21)
  store i32 %22, i32* %3, align 4
  br label %40

23:                                               ; preds = %1, %1
  %24 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %25 = load i32, i32* @SDHCI_PRESET_FOR_DDR50, align 4
  %26 = call i32 @sdhci_readw(%struct.sdhci_host* %24, i32 %25)
  store i32 %26, i32* %3, align 4
  br label %40

27:                                               ; preds = %1
  %28 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %29 = load i32, i32* @SDHCI_PRESET_FOR_HS400, align 4
  %30 = call i32 @sdhci_readw(%struct.sdhci_host* %28, i32 %29)
  store i32 %30, i32* %3, align 4
  br label %40

31:                                               ; preds = %1
  %32 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %33 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @mmc_hostname(i32 %34)
  %36 = call i32 @pr_warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %38 = load i32, i32* @SDHCI_PRESET_FOR_SDR12, align 4
  %39 = call i32 @sdhci_readw(%struct.sdhci_host* %37, i32 %38)
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %31, %27, %23, %19, %15, %11, %7
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @sdhci_readw(%struct.sdhci_host*, i32) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @mmc_hostname(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
