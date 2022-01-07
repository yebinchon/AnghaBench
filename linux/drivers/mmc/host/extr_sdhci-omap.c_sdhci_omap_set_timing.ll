; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-omap.c_sdhci_omap_set_timing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-omap.c_sdhci_omap_set_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_omap_host = type { i32, i64, i32, %struct.pinctrl_state**, %struct.device* }
%struct.pinctrl_state = type { i32 }
%struct.device = type { i32 }

@SDHCI_OMAP_REQUIRE_IODELAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"failed to select pinctrl state\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_omap_host*, i64)* @sdhci_omap_set_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_omap_set_timing(%struct.sdhci_omap_host* %0, i64 %1) #0 {
  %3 = alloca %struct.sdhci_omap_host*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pinctrl_state*, align 8
  %7 = alloca %struct.device*, align 8
  store %struct.sdhci_omap_host* %0, %struct.sdhci_omap_host** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %3, align 8
  %9 = getelementptr inbounds %struct.sdhci_omap_host, %struct.sdhci_omap_host* %8, i32 0, i32 4
  %10 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %10, %struct.device** %7, align 8
  %11 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %3, align 8
  %12 = getelementptr inbounds %struct.sdhci_omap_host, %struct.sdhci_omap_host* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @SDHCI_OMAP_REQUIRE_IODELAY, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %50

18:                                               ; preds = %2
  %19 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %3, align 8
  %20 = getelementptr inbounds %struct.sdhci_omap_host, %struct.sdhci_omap_host* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %4, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %50

25:                                               ; preds = %18
  %26 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %3, align 8
  %27 = call i32 @sdhci_omap_stop_clock(%struct.sdhci_omap_host* %26)
  %28 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %3, align 8
  %29 = getelementptr inbounds %struct.sdhci_omap_host, %struct.sdhci_omap_host* %28, i32 0, i32 3
  %30 = load %struct.pinctrl_state**, %struct.pinctrl_state*** %29, align 8
  %31 = load i64, i64* %4, align 8
  %32 = getelementptr inbounds %struct.pinctrl_state*, %struct.pinctrl_state** %30, i64 %31
  %33 = load %struct.pinctrl_state*, %struct.pinctrl_state** %32, align 8
  store %struct.pinctrl_state* %33, %struct.pinctrl_state** %6, align 8
  %34 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %3, align 8
  %35 = getelementptr inbounds %struct.sdhci_omap_host, %struct.sdhci_omap_host* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.pinctrl_state*, %struct.pinctrl_state** %6, align 8
  %38 = call i32 @pinctrl_select_state(i32 %36, %struct.pinctrl_state* %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %25
  %42 = load %struct.device*, %struct.device** %7, align 8
  %43 = call i32 @dev_err(%struct.device* %42, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %50

44:                                               ; preds = %25
  %45 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %3, align 8
  %46 = call i32 @sdhci_omap_start_clock(%struct.sdhci_omap_host* %45)
  %47 = load i64, i64* %4, align 8
  %48 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %3, align 8
  %49 = getelementptr inbounds %struct.sdhci_omap_host, %struct.sdhci_omap_host* %48, i32 0, i32 1
  store i64 %47, i64* %49, align 8
  br label %50

50:                                               ; preds = %44, %41, %24, %17
  ret void
}

declare dso_local i32 @sdhci_omap_stop_clock(%struct.sdhci_omap_host*) #1

declare dso_local i32 @pinctrl_select_state(i32, %struct.pinctrl_state*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @sdhci_omap_start_clock(%struct.sdhci_omap_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
