; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_do_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_do_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32, i32, i32, %struct.TYPE_4__*, %struct.mmc_host* }
%struct.TYPE_4__ = type { i32 (%struct.sdhci_host*)*, i32 (%struct.sdhci_host*, i32)* }
%struct.mmc_host = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.mmc_host*)* }

@SDHCI_QUIRK_NO_CARD_NO_RESET = common dso_local global i32 0, align 4
@SDHCI_RESET_ALL = common dso_local global i32 0, align 4
@SDHCI_USE_SDMA = common dso_local global i32 0, align 4
@SDHCI_USE_ADMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*, i32)* @sdhci_do_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_do_reset(%struct.sdhci_host* %0, i32 %1) #0 {
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mmc_host*, align 8
  store %struct.sdhci_host* %0, %struct.sdhci_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %7 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @SDHCI_QUIRK_NO_CARD_NO_RESET, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %2
  %13 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %14 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %13, i32 0, i32 4
  %15 = load %struct.mmc_host*, %struct.mmc_host** %14, align 8
  store %struct.mmc_host* %15, %struct.mmc_host** %5, align 8
  %16 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %17 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32 (%struct.mmc_host*)*, i32 (%struct.mmc_host*)** %19, align 8
  %21 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %22 = call i32 %20(%struct.mmc_host* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %12
  br label %67

25:                                               ; preds = %12
  br label %26

26:                                               ; preds = %25, %2
  %27 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %28 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %27, i32 0, i32 3
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32 (%struct.sdhci_host*, i32)*, i32 (%struct.sdhci_host*, i32)** %30, align 8
  %32 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 %31(%struct.sdhci_host* %32, i32 %33)
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @SDHCI_RESET_ALL, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %67

39:                                               ; preds = %26
  %40 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %41 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @SDHCI_USE_SDMA, align 4
  %44 = load i32, i32* @SDHCI_USE_ADMA, align 4
  %45 = or i32 %43, %44
  %46 = and i32 %42, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %64

48:                                               ; preds = %39
  %49 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %50 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %49, i32 0, i32 3
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32 (%struct.sdhci_host*)*, i32 (%struct.sdhci_host*)** %52, align 8
  %54 = icmp ne i32 (%struct.sdhci_host*)* %53, null
  br i1 %54, label %55, label %63

55:                                               ; preds = %48
  %56 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %57 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %56, i32 0, i32 3
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32 (%struct.sdhci_host*)*, i32 (%struct.sdhci_host*)** %59, align 8
  %61 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %62 = call i32 %60(%struct.sdhci_host* %61)
  br label %63

63:                                               ; preds = %55, %48
  br label %64

64:                                               ; preds = %63, %39
  %65 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %66 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %65, i32 0, i32 2
  store i32 0, i32* %66, align 8
  br label %67

67:                                               ; preds = %24, %64, %26
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
