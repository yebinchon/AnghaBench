; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cqhci.c_cqhci_clear_all_tasks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cqhci.c_cqhci_clear_all_tasks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { %struct.cqhci_host* }
%struct.cqhci_host = type { i32 }

@CQHCI_IS_TCL = common dso_local global i32 0, align 4
@CQHCI_CTL = common dso_local global i32 0, align 4
@CQHCI_CLEAR_ALL_TASKS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"%s: cqhci: Failed to clear tasks\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*, i32)* @cqhci_clear_all_tasks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cqhci_clear_all_tasks(%struct.mmc_host* %0, i32 %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cqhci_host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %9 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %8, i32 0, i32 0
  %10 = load %struct.cqhci_host*, %struct.cqhci_host** %9, align 8
  store %struct.cqhci_host* %10, %struct.cqhci_host** %5, align 8
  %11 = load %struct.cqhci_host*, %struct.cqhci_host** %5, align 8
  %12 = load i32, i32* @CQHCI_IS_TCL, align 4
  %13 = call i32 @cqhci_set_irqs(%struct.cqhci_host* %11, i32 %12)
  %14 = load %struct.cqhci_host*, %struct.cqhci_host** %5, align 8
  %15 = load i32, i32* @CQHCI_CTL, align 4
  %16 = call i32 @cqhci_readl(%struct.cqhci_host* %14, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* @CQHCI_CLEAR_ALL_TASKS, align 4
  %18 = load i32, i32* %7, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %7, align 4
  %20 = load %struct.cqhci_host*, %struct.cqhci_host** %5, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @CQHCI_CTL, align 4
  %23 = call i32 @cqhci_writel(%struct.cqhci_host* %20, i32 %21, i32 %22)
  %24 = load %struct.cqhci_host*, %struct.cqhci_host** %5, align 8
  %25 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.cqhci_host*, %struct.cqhci_host** %5, align 8
  %28 = call i32 @cqhci_tasks_cleared(%struct.cqhci_host* %27)
  %29 = load i32, i32* %4, align 4
  %30 = call i64 @msecs_to_jiffies(i32 %29)
  %31 = add nsw i64 %30, 1
  %32 = call i32 @wait_event_timeout(i32 %26, i32 %28, i64 %31)
  %33 = load %struct.cqhci_host*, %struct.cqhci_host** %5, align 8
  %34 = call i32 @cqhci_set_irqs(%struct.cqhci_host* %33, i32 0)
  %35 = load %struct.cqhci_host*, %struct.cqhci_host** %5, align 8
  %36 = call i32 @cqhci_tasks_cleared(%struct.cqhci_host* %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %2
  %40 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %41 = call i32 @mmc_hostname(%struct.mmc_host* %40)
  %42 = call i32 @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %39, %2
  %44 = load i32, i32* %6, align 4
  ret i32 %44
}

declare dso_local i32 @cqhci_set_irqs(%struct.cqhci_host*, i32) #1

declare dso_local i32 @cqhci_readl(%struct.cqhci_host*, i32) #1

declare dso_local i32 @cqhci_writel(%struct.cqhci_host*, i32, i32) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i64) #1

declare dso_local i32 @cqhci_tasks_cleared(%struct.cqhci_host*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @mmc_hostname(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
