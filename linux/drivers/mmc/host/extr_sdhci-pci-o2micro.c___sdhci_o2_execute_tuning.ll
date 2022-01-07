; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-pci-o2micro.c___sdhci_o2_execute_tuning.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-pci-o2micro.c___sdhci_o2_execute_tuning.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32, i32 }

@MMC_SEND_TUNING_BLOCK_HS200 = common dso_local global i32 0, align 4
@SDHCI_HOST_CONTROL2 = common dso_local global i32 0, align 4
@SDHCI_CTRL_EXEC_TUNING = common dso_local global i32 0, align 4
@SDHCI_CTRL_TUNED_CLK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"%s: HW tuning failed !\0A\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"%s: Tuning failed, falling back to fixed sampling clock\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*, i32)* @__sdhci_o2_execute_tuning to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__sdhci_o2_execute_tuning(%struct.sdhci_host* %0, i32 %1) #0 {
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %8 = load i32, i32* @MMC_SEND_TUNING_BLOCK_HS200, align 4
  %9 = call i32 @sdhci_send_tuning(%struct.sdhci_host* %7, i32 %8)
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %37, %2
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 150
  br i1 %12, label %13, label %40

13:                                               ; preds = %10
  %14 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %15 = load i32, i32* @SDHCI_HOST_CONTROL2, align 4
  %16 = call i32 @sdhci_readw(%struct.sdhci_host* %14, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @SDHCI_CTRL_EXEC_TUNING, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %35, label %21

21:                                               ; preds = %13
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @SDHCI_CTRL_TUNED_CLK, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %28 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %27, i32 0, i32 0
  store i32 1, i32* %28, align 4
  br label %48

29:                                               ; preds = %21
  %30 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %31 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @mmc_hostname(i32 %32)
  %34 = call i32 @pr_warn(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %40

35:                                               ; preds = %13
  %36 = call i32 @mdelay(i32 1)
  br label %37

37:                                               ; preds = %35
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %10

40:                                               ; preds = %29, %10
  %41 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %42 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @mmc_hostname(i32 %43)
  %45 = call i32 @pr_info(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %47 = call i32 @sdhci_reset_tuning(%struct.sdhci_host* %46)
  br label %48

48:                                               ; preds = %40, %26
  ret void
}

declare dso_local i32 @sdhci_send_tuning(%struct.sdhci_host*, i32) #1

declare dso_local i32 @sdhci_readw(%struct.sdhci_host*, i32) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @mmc_hostname(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @sdhci_reset_tuning(%struct.sdhci_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
