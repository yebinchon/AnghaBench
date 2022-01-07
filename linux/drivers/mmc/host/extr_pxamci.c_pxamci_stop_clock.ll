; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_pxamci.c_pxamci_stop_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_pxamci.c_pxamci_stop_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxamci_host = type { i32, i64 }

@MMC_STAT = common dso_local global i64 0, align 8
@STAT_CLK_EN = common dso_local global i32 0, align 4
@STOP_CLOCK = common dso_local global i32 0, align 4
@MMC_STRPCL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"unable to stop clock\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pxamci_host*)* @pxamci_stop_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pxamci_stop_clock(%struct.pxamci_host* %0) #0 {
  %2 = alloca %struct.pxamci_host*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.pxamci_host* %0, %struct.pxamci_host** %2, align 8
  %5 = load %struct.pxamci_host*, %struct.pxamci_host** %2, align 8
  %6 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @MMC_STAT, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @readl(i64 %9)
  %11 = load i32, i32* @STAT_CLK_EN, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %52

14:                                               ; preds = %1
  store i64 10000, i64* %3, align 8
  %15 = load i32, i32* @STOP_CLOCK, align 4
  %16 = load %struct.pxamci_host*, %struct.pxamci_host** %2, align 8
  %17 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @MMC_STRPCL, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @writel(i32 %15, i64 %20)
  br label %22

22:                                               ; preds = %36, %14
  %23 = load %struct.pxamci_host*, %struct.pxamci_host** %2, align 8
  %24 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @MMC_STAT, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @readl(i64 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @STAT_CLK_EN, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %22
  br label %40

34:                                               ; preds = %22
  %35 = call i32 @udelay(i32 1)
  br label %36

36:                                               ; preds = %34
  %37 = load i64, i64* %3, align 8
  %38 = add i64 %37, -1
  store i64 %38, i64* %3, align 8
  %39 = icmp ne i64 %37, 0
  br i1 %39, label %22, label %40

40:                                               ; preds = %36, %33
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @STAT_CLK_EN, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load %struct.pxamci_host*, %struct.pxamci_host** %2, align 8
  %47 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @mmc_dev(i32 %48)
  %50 = call i32 @dev_err(i32 %49, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %51

51:                                               ; preds = %45, %40
  br label %52

52:                                               ; preds = %51, %1
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mmc_dev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
