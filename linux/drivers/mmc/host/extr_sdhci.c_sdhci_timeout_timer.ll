; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_timeout_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_timeout_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timer_list = type { i32 }
%struct.sdhci_host = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@timer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"%s: Timeout waiting for hardware cmd interrupt.\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @sdhci_timeout_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_timeout_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = load i32, i32* @timer, align 4
  %8 = call %struct.sdhci_host* @from_timer(%struct.sdhci_host* %5, %struct.timer_list* %6, i32 %7)
  store %struct.sdhci_host* %8, %struct.sdhci_host** %3, align 8
  %9 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %10 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %9, i32 0, i32 0
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %14 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = icmp ne %struct.TYPE_2__* %15, null
  br i1 %16, label %17, label %44

17:                                               ; preds = %1
  %18 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %19 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = call i32 @sdhci_data_line_cmd(%struct.TYPE_2__* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %44, label %23

23:                                               ; preds = %17
  %24 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %25 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @mmc_hostname(i32 %26)
  %28 = call i32 @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %30 = call i32 @sdhci_dumpregs(%struct.sdhci_host* %29)
  %31 = load i32, i32* @ETIMEDOUT, align 4
  %32 = sub nsw i32 0, %31
  %33 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %34 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store i32 %32, i32* %36, align 4
  %37 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %38 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %39 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @sdhci_finish_mrq(%struct.sdhci_host* %37, i32 %42)
  br label %44

44:                                               ; preds = %23, %17, %1
  %45 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %46 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %45, i32 0, i32 0
  %47 = load i64, i64* %4, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  ret void
}

declare dso_local %struct.sdhci_host* @from_timer(%struct.sdhci_host*, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @sdhci_data_line_cmd(%struct.TYPE_2__*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @mmc_hostname(i32) #1

declare dso_local i32 @sdhci_dumpregs(%struct.sdhci_host*) #1

declare dso_local i32 @sdhci_finish_mrq(%struct.sdhci_host*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
