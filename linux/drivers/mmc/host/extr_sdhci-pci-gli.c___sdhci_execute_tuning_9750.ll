; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-pci-gli.c___sdhci_execute_tuning_9750.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-pci-gli.c___sdhci_execute_tuning_9750.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32, i32 }

@GLI_MAX_TUNING_LOOP = common dso_local global i32 0, align 4
@SDHCI_HOST_CONTROL2 = common dso_local global i32 0, align 4
@SDHCI_CTRL_EXEC_TUNING = common dso_local global i32 0, align 4
@SDHCI_CTRL_TUNED_CLK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"%s: Tuning timeout, falling back to fixed sampling clock\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"%s: Tuning failed, falling back to fixed sampling clock\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdhci_host*, i32)* @__sdhci_execute_tuning_9750 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__sdhci_execute_tuning_9750(%struct.sdhci_host* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sdhci_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %58, %2
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 2
  br i1 %11, label %12, label %61

12:                                               ; preds = %9
  %13 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @gli_set_9750_rx_inv(%struct.sdhci_host* %13, i32 %18)
  %20 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %21 = call i32 @sdhci_start_tuning(%struct.sdhci_host* %20)
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %54, %12
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @GLI_MAX_TUNING_LOOP, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %57

26:                                               ; preds = %22
  %27 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @sdhci_send_tuning(%struct.sdhci_host* %27, i32 %28)
  %30 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %31 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %26
  %35 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @sdhci_abort_tuning(%struct.sdhci_host* %35, i32 %36)
  br label %57

38:                                               ; preds = %26
  %39 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %40 = load i32, i32* @SDHCI_HOST_CONTROL2, align 4
  %41 = call i32 @sdhci_readw(%struct.sdhci_host* %39, i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @SDHCI_CTRL_EXEC_TUNING, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %38
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @SDHCI_CTRL_TUNED_CLK, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %84

52:                                               ; preds = %46
  br label %57

53:                                               ; preds = %38
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %22

57:                                               ; preds = %52, %34, %22
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %9

61:                                               ; preds = %9
  %62 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %63 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %74, label %66

66:                                               ; preds = %61
  %67 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %68 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @mmc_hostname(i32 %69)
  %71 = call i32 @pr_info(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* @ETIMEDOUT, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %84

74:                                               ; preds = %61
  %75 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %76 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @mmc_hostname(i32 %77)
  %79 = call i32 @pr_info(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  %80 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %81 = call i32 @sdhci_reset_tuning(%struct.sdhci_host* %80)
  %82 = load i32, i32* @EAGAIN, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %74, %66, %51
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @gli_set_9750_rx_inv(%struct.sdhci_host*, i32) #1

declare dso_local i32 @sdhci_start_tuning(%struct.sdhci_host*) #1

declare dso_local i32 @sdhci_send_tuning(%struct.sdhci_host*, i32) #1

declare dso_local i32 @sdhci_abort_tuning(%struct.sdhci_host*, i32) #1

declare dso_local i32 @sdhci_readw(%struct.sdhci_host*, i32) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @mmc_hostname(i32) #1

declare dso_local i32 @sdhci_reset_tuning(%struct.sdhci_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
