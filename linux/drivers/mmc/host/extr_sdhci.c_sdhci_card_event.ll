; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_card_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_card_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.mmc_host*)* }
%struct.sdhci_host = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.sdhci_host*)* }

@.str = private unnamed_addr constant [35 x i8] c"%s: Card removed during transfer!\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"%s: Resetting controller.\0A\00", align 1
@SDHCI_RESET_CMD = common dso_local global i32 0, align 4
@SDHCI_RESET_DATA = common dso_local global i32 0, align 4
@ENOMEDIUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*)* @sdhci_card_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_card_event(%struct.mmc_host* %0) #0 {
  %2 = alloca %struct.mmc_host*, align 8
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %2, align 8
  %6 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %7 = call %struct.sdhci_host* @mmc_priv(%struct.mmc_host* %6)
  store %struct.sdhci_host* %7, %struct.sdhci_host** %3, align 8
  %8 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %9 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %8, i32 0, i32 2
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32 (%struct.sdhci_host*)*, i32 (%struct.sdhci_host*)** %11, align 8
  %13 = icmp ne i32 (%struct.sdhci_host*)* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %16 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %15, i32 0, i32 2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32 (%struct.sdhci_host*)*, i32 (%struct.sdhci_host*)** %18, align 8
  %20 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %21 = call i32 %19(%struct.sdhci_host* %20)
  br label %22

22:                                               ; preds = %14, %1
  %23 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %24 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32 (%struct.mmc_host*)*, i32 (%struct.mmc_host*)** %26, align 8
  %28 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %29 = call i32 %27(%struct.mmc_host* %28)
  store i32 %29, i32* %5, align 4
  %30 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %31 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %30, i32 0, i32 0
  %32 = load i64, i64* %4, align 8
  %33 = call i32 @spin_lock_irqsave(i32* %31, i64 %32)
  %34 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %35 = call i64 @sdhci_has_requests(%struct.sdhci_host* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %61

37:                                               ; preds = %22
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %61, label %40

40:                                               ; preds = %37
  %41 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %42 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @mmc_hostname(i32 %43)
  %45 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %47 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @mmc_hostname(i32 %48)
  %50 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %52 = load i32, i32* @SDHCI_RESET_CMD, align 4
  %53 = call i32 @sdhci_do_reset(%struct.sdhci_host* %51, i32 %52)
  %54 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %55 = load i32, i32* @SDHCI_RESET_DATA, align 4
  %56 = call i32 @sdhci_do_reset(%struct.sdhci_host* %54, i32 %55)
  %57 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %58 = load i32, i32* @ENOMEDIUM, align 4
  %59 = sub nsw i32 0, %58
  %60 = call i32 @sdhci_error_out_mrqs(%struct.sdhci_host* %57, i32 %59)
  br label %61

61:                                               ; preds = %40, %37, %22
  %62 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %63 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %62, i32 0, i32 0
  %64 = load i64, i64* %4, align 8
  %65 = call i32 @spin_unlock_irqrestore(i32* %63, i64 %64)
  ret void
}

declare dso_local %struct.sdhci_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @sdhci_has_requests(%struct.sdhci_host*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @mmc_hostname(i32) #1

declare dso_local i32 @sdhci_do_reset(%struct.sdhci_host*, i32) #1

declare dso_local i32 @sdhci_error_out_mrqs(%struct.sdhci_host*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
