; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-omap.c_sdhci_omap_enable_iov.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-omap.c_sdhci_omap_enable_iov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_omap_host = type { %struct.sdhci_host* }
%struct.sdhci_host = type { %struct.mmc_host* }
%struct.mmc_host = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"vqmmc set voltage failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdhci_omap_host*, i32)* @sdhci_omap_enable_iov to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdhci_omap_enable_iov(%struct.sdhci_omap_host* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sdhci_omap_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sdhci_host*, align 8
  %8 = alloca %struct.mmc_host*, align 8
  store %struct.sdhci_omap_host* %0, %struct.sdhci_omap_host** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %4, align 8
  %10 = getelementptr inbounds %struct.sdhci_omap_host, %struct.sdhci_omap_host* %9, i32 0, i32 0
  %11 = load %struct.sdhci_host*, %struct.sdhci_host** %10, align 8
  store %struct.sdhci_host* %11, %struct.sdhci_host** %7, align 8
  %12 = load %struct.sdhci_host*, %struct.sdhci_host** %7, align 8
  %13 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %12, i32 0, i32 0
  %14 = load %struct.mmc_host*, %struct.mmc_host** %13, align 8
  store %struct.mmc_host* %14, %struct.mmc_host** %8, align 8
  %15 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %4, align 8
  %16 = call i32 @sdhci_omap_set_pbias(%struct.sdhci_omap_host* %15, i32 0, i32 0)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %53

21:                                               ; preds = %2
  %22 = load %struct.mmc_host*, %struct.mmc_host** %8, align 8
  %23 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @IS_ERR(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %44, label %28

28:                                               ; preds = %21
  %29 = load %struct.mmc_host*, %struct.mmc_host** %8, align 8
  %30 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @regulator_set_voltage(i32 %32, i32 %33, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %28
  %39 = load %struct.mmc_host*, %struct.mmc_host** %8, align 8
  %40 = call i32 @mmc_dev(%struct.mmc_host* %39)
  %41 = call i32 @dev_err(i32 %40, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %3, align 4
  br label %53

43:                                               ; preds = %28
  br label %44

44:                                               ; preds = %43, %21
  %45 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %4, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @sdhci_omap_set_pbias(%struct.sdhci_omap_host* %45, i32 1, i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %3, align 4
  br label %53

52:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %50, %38, %19
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @sdhci_omap_set_pbias(%struct.sdhci_omap_host*, i32, i32) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @regulator_set_voltage(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mmc_dev(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
