; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32, i64, i64, %struct.mmc_host* }
%struct.mmc_host = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.mmc_host*, i32*)* }

@SDHCI_RESET_CMD = common dso_local global i32 0, align 4
@SDHCI_RESET_DATA = common dso_local global i32 0, align 4
@SDHCI_RESET_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*, i32)* @sdhci_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_init(%struct.sdhci_host* %0, i32 %1) #0 {
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mmc_host*, align 8
  store %struct.sdhci_host* %0, %struct.sdhci_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %7 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %6, i32 0, i32 3
  %8 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  store %struct.mmc_host* %8, %struct.mmc_host** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %13 = load i32, i32* @SDHCI_RESET_CMD, align 4
  %14 = load i32, i32* @SDHCI_RESET_DATA, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @sdhci_do_reset(%struct.sdhci_host* %12, i32 %15)
  br label %21

17:                                               ; preds = %2
  %18 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %19 = load i32, i32* @SDHCI_RESET_ALL, align 4
  %20 = call i32 @sdhci_do_reset(%struct.sdhci_host* %18, i32 %19)
  br label %21

21:                                               ; preds = %17, %11
  %22 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %23 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %28 = call i32 @sdhci_do_enable_v4_mode(%struct.sdhci_host* %27)
  br label %29

29:                                               ; preds = %26, %21
  %30 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %31 = call i32 @sdhci_set_default_irqs(%struct.sdhci_host* %30)
  %32 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %33 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %29
  %37 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %38 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %37, i32 0, i32 1
  store i64 0, i64* %38, align 8
  %39 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %40 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32 (%struct.mmc_host*, i32*)*, i32 (%struct.mmc_host*, i32*)** %42, align 8
  %44 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %45 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %46 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %45, i32 0, i32 0
  %47 = call i32 %43(%struct.mmc_host* %44, i32* %46)
  br label %48

48:                                               ; preds = %36, %29
  ret void
}

declare dso_local i32 @sdhci_do_reset(%struct.sdhci_host*, i32) #1

declare dso_local i32 @sdhci_do_enable_v4_mode(%struct.sdhci_host*) #1

declare dso_local i32 @sdhci_set_default_irqs(%struct.sdhci_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
