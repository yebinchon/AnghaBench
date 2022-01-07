; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cqhci.c_cqhci_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cqhci.c_cqhci_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32, %struct.cqhci_host* }
%struct.cqhci_host = type { %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32 (%struct.mmc_host*, i32)* }

@CQHCI_HALT = common dso_local global i32 0, align 4
@CQHCI_CTL = common dso_local global i32 0, align 4
@CQHCI_OFF_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"%s: cqhci: CQE stuck on\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"%s: cqhci: CQE off\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*)* @cqhci_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cqhci_off(%struct.mmc_host* %0) #0 {
  %2 = alloca %struct.mmc_host*, align 8
  %3 = alloca %struct.cqhci_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %2, align 8
  %7 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %8 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %7, i32 0, i32 1
  %9 = load %struct.cqhci_host*, %struct.cqhci_host** %8, align 8
  store %struct.cqhci_host* %9, %struct.cqhci_host** %3, align 8
  %10 = load %struct.cqhci_host*, %struct.cqhci_host** %3, align 8
  %11 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %1
  %15 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %16 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load %struct.cqhci_host*, %struct.cqhci_host** %3, align 8
  %21 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19, %14, %1
  br label %80

25:                                               ; preds = %19
  %26 = load %struct.cqhci_host*, %struct.cqhci_host** %3, align 8
  %27 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (%struct.mmc_host*, i32)*, i32 (%struct.mmc_host*, i32)** %29, align 8
  %31 = icmp ne i32 (%struct.mmc_host*, i32)* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %25
  %33 = load %struct.cqhci_host*, %struct.cqhci_host** %3, align 8
  %34 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32 (%struct.mmc_host*, i32)*, i32 (%struct.mmc_host*, i32)** %36, align 8
  %38 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %39 = call i32 %37(%struct.mmc_host* %38, i32 0)
  br label %40

40:                                               ; preds = %32, %25
  %41 = load %struct.cqhci_host*, %struct.cqhci_host** %3, align 8
  %42 = load i32, i32* @CQHCI_HALT, align 4
  %43 = load i32, i32* @CQHCI_CTL, align 4
  %44 = call i32 @cqhci_writel(%struct.cqhci_host* %41, i32 %42, i32 %43)
  %45 = call i32 (...) @ktime_get()
  %46 = load i32, i32* @CQHCI_OFF_TIMEOUT, align 4
  %47 = call i32 @ktime_add_us(i32 %45, i32 %46)
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %40, %65
  %49 = call i32 (...) @ktime_get()
  %50 = load i32, i32* %4, align 4
  %51 = call i64 @ktime_compare(i32 %49, i32 %50)
  %52 = icmp sgt i64 %51, 0
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %5, align 4
  %54 = load %struct.cqhci_host*, %struct.cqhci_host** %3, align 8
  %55 = load i32, i32* @CQHCI_CTL, align 4
  %56 = call i32 @cqhci_readl(%struct.cqhci_host* %54, i32 %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @CQHCI_HALT, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %48
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %61, %48
  br label %66

65:                                               ; preds = %61
  br label %48

66:                                               ; preds = %64
  %67 = load i32, i32* %5, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %71 = call i32 @mmc_hostname(%struct.mmc_host* %70)
  %72 = call i32 @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %71)
  br label %77

73:                                               ; preds = %66
  %74 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %75 = call i32 @mmc_hostname(%struct.mmc_host* %74)
  %76 = call i32 @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %73, %69
  %78 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %79 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %78, i32 0, i32 0
  store i32 0, i32* %79, align 8
  br label %80

80:                                               ; preds = %77, %24
  ret void
}

declare dso_local i32 @cqhci_writel(%struct.cqhci_host*, i32, i32) #1

declare dso_local i32 @ktime_add_us(i32, i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i64 @ktime_compare(i32, i32) #1

declare dso_local i32 @cqhci_readl(%struct.cqhci_host*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @mmc_hostname(%struct.mmc_host*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
