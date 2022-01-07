; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c___sdhci_execute_tuning.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c___sdhci_execute_tuning.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32, i64, i32, i32 }

@.str = private unnamed_addr constant [58 x i8] c"%s: Tuning timeout, falling back to fixed sampling clock\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@SDHCI_HOST_CONTROL2 = common dso_local global i32 0, align 4
@SDHCI_CTRL_EXEC_TUNING = common dso_local global i32 0, align 4
@SDHCI_CTRL_TUNED_CLK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"%s: Tuning failed, falling back to fixed sampling clock\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdhci_host*, i32)* @__sdhci_execute_tuning to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__sdhci_execute_tuning(%struct.sdhci_host* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sdhci_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %59, %2
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %11 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %62

14:                                               ; preds = %8
  %15 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @sdhci_send_tuning(%struct.sdhci_host* %15, i32 %16)
  %18 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %19 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %33, label %22

22:                                               ; preds = %14
  %23 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %24 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @mmc_hostname(i32 %25)
  %27 = call i32 @pr_info(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @sdhci_abort_tuning(%struct.sdhci_host* %28, i32 %29)
  %31 = load i32, i32* @ETIMEDOUT, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %72

33:                                               ; preds = %14
  %34 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %35 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %40 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @mdelay(i64 %41)
  br label %43

43:                                               ; preds = %38, %33
  %44 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %45 = load i32, i32* @SDHCI_HOST_CONTROL2, align 4
  %46 = call i32 @sdhci_readw(%struct.sdhci_host* %44, i32 %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @SDHCI_CTRL_EXEC_TUNING, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %43
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @SDHCI_CTRL_TUNED_CLK, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %72

57:                                               ; preds = %51
  br label %62

58:                                               ; preds = %43
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %8

62:                                               ; preds = %57, %8
  %63 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %64 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @mmc_hostname(i32 %65)
  %67 = call i32 @pr_info(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  %68 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %69 = call i32 @sdhci_reset_tuning(%struct.sdhci_host* %68)
  %70 = load i32, i32* @EAGAIN, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %62, %56, %22
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @sdhci_send_tuning(%struct.sdhci_host*, i32) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @mmc_hostname(i32) #1

declare dso_local i32 @sdhci_abort_tuning(%struct.sdhci_host*, i32) #1

declare dso_local i32 @mdelay(i64) #1

declare dso_local i32 @sdhci_readw(%struct.sdhci_host*, i32) #1

declare dso_local i32 @sdhci_reset_tuning(%struct.sdhci_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
