; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-tegra.c_tegra_cqhci_writel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-tegra.c_tegra_cqhci_writel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cqhci_host = type { i64, %struct.mmc_host* }
%struct.mmc_host = type { i32 }

@CQHCI_CTL = common dso_local global i32 0, align 4
@CQHCI_HALT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cqhci_host*, i32, i32)* @tegra_cqhci_writel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_cqhci_writel(%struct.cqhci_host* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.cqhci_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mmc_host*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cqhci_host* %0, %struct.cqhci_host** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.cqhci_host*, %struct.cqhci_host** %4, align 8
  %12 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %11, i32 0, i32 1
  %13 = load %struct.mmc_host*, %struct.mmc_host** %12, align 8
  store %struct.mmc_host* %13, %struct.mmc_host** %7, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @CQHCI_CTL, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %73

17:                                               ; preds = %3
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @CQHCI_HALT, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %73, label %22

22:                                               ; preds = %17
  %23 = load %struct.cqhci_host*, %struct.cqhci_host** %4, align 8
  %24 = load i32, i32* @CQHCI_CTL, align 4
  %25 = call i32 @cqhci_readl(%struct.cqhci_host* %23, i32 %24)
  %26 = load i32, i32* @CQHCI_HALT, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %73

29:                                               ; preds = %22
  %30 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %31 = call i32 @sdhci_cqe_enable(%struct.mmc_host* %30)
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.cqhci_host*, %struct.cqhci_host** %4, align 8
  %34 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %35, %37
  %39 = call i32 @writel(i32 %32, i64 %38)
  %40 = call i32 (...) @ktime_get()
  %41 = call i32 @ktime_add_us(i32 %40, i32 50)
  store i32 %41, i32* %9, align 4
  br label %42

42:                                               ; preds = %29, %59
  %43 = call i32 (...) @ktime_get()
  %44 = load i32, i32* %9, align 4
  %45 = call i64 @ktime_compare(i32 %43, i32 %44)
  %46 = icmp sgt i64 %45, 0
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %10, align 4
  %48 = load %struct.cqhci_host*, %struct.cqhci_host** %4, align 8
  %49 = load i32, i32* @CQHCI_CTL, align 4
  %50 = call i32 @cqhci_readl(%struct.cqhci_host* %48, i32 %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @CQHCI_HALT, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %42
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55, %42
  br label %60

59:                                               ; preds = %55
  br label %42

60:                                               ; preds = %58
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %60
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.cqhci_host*, %struct.cqhci_host** %4, align 8
  %66 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %67, %69
  %71 = call i32 @writel(i32 %64, i64 %70)
  br label %72

72:                                               ; preds = %63, %60
  br label %82

73:                                               ; preds = %22, %17, %3
  %74 = load i32, i32* %5, align 4
  %75 = load %struct.cqhci_host*, %struct.cqhci_host** %4, align 8
  %76 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %77, %79
  %81 = call i32 @writel(i32 %74, i64 %80)
  br label %82

82:                                               ; preds = %73, %72
  ret void
}

declare dso_local i32 @cqhci_readl(%struct.cqhci_host*, i32) #1

declare dso_local i32 @sdhci_cqe_enable(%struct.mmc_host*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @ktime_add_us(i32, i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i64 @ktime_compare(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
