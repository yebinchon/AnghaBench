; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cqhci.c_cqhci_halt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cqhci.c_cqhci_halt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { %struct.cqhci_host* }
%struct.cqhci_host = type { i32 }

@CQHCI_IS_HAC = common dso_local global i32 0, align 4
@CQHCI_CTL = common dso_local global i32 0, align 4
@CQHCI_HALT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"%s: cqhci: Failed to halt\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*, i32)* @cqhci_halt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cqhci_halt(%struct.mmc_host* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mmc_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cqhci_host*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %10 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %9, i32 0, i32 0
  %11 = load %struct.cqhci_host*, %struct.cqhci_host** %10, align 8
  store %struct.cqhci_host* %11, %struct.cqhci_host** %6, align 8
  %12 = load %struct.cqhci_host*, %struct.cqhci_host** %6, align 8
  %13 = call i32 @cqhci_halted(%struct.cqhci_host* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %51

16:                                               ; preds = %2
  %17 = load %struct.cqhci_host*, %struct.cqhci_host** %6, align 8
  %18 = load i32, i32* @CQHCI_IS_HAC, align 4
  %19 = call i32 @cqhci_set_irqs(%struct.cqhci_host* %17, i32 %18)
  %20 = load %struct.cqhci_host*, %struct.cqhci_host** %6, align 8
  %21 = load i32, i32* @CQHCI_CTL, align 4
  %22 = call i32 @cqhci_readl(%struct.cqhci_host* %20, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* @CQHCI_HALT, align 4
  %24 = load i32, i32* %8, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %8, align 4
  %26 = load %struct.cqhci_host*, %struct.cqhci_host** %6, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @CQHCI_CTL, align 4
  %29 = call i32 @cqhci_writel(%struct.cqhci_host* %26, i32 %27, i32 %28)
  %30 = load %struct.cqhci_host*, %struct.cqhci_host** %6, align 8
  %31 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.cqhci_host*, %struct.cqhci_host** %6, align 8
  %34 = call i32 @cqhci_halted(%struct.cqhci_host* %33)
  %35 = load i32, i32* %5, align 4
  %36 = call i64 @msecs_to_jiffies(i32 %35)
  %37 = add nsw i64 %36, 1
  %38 = call i32 @wait_event_timeout(i32 %32, i32 %34, i64 %37)
  %39 = load %struct.cqhci_host*, %struct.cqhci_host** %6, align 8
  %40 = call i32 @cqhci_set_irqs(%struct.cqhci_host* %39, i32 0)
  %41 = load %struct.cqhci_host*, %struct.cqhci_host** %6, align 8
  %42 = call i32 @cqhci_halted(%struct.cqhci_host* %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %16
  %46 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %47 = call i32 @mmc_hostname(%struct.mmc_host* %46)
  %48 = call i32 @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %45, %16
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %49, %15
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @cqhci_halted(%struct.cqhci_host*) #1

declare dso_local i32 @cqhci_set_irqs(%struct.cqhci_host*, i32) #1

declare dso_local i32 @cqhci_readl(%struct.cqhci_host*, i32) #1

declare dso_local i32 @cqhci_writel(%struct.cqhci_host*, i32, i32) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @mmc_hostname(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
