; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-bcm-kona.c_sdhci_bcm_kona_sd_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-bcm-kona.c_sdhci_bcm_kona_sd_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@KONA_SDHOST_CORECTRL = common dso_local global i32 0, align 4
@KONA_SDHOST_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Error: sd host is stuck in reset!!!\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdhci_host*)* @sdhci_bcm_kona_sd_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdhci_bcm_kona_sd_reset(%struct.sdhci_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.sdhci_host* %0, %struct.sdhci_host** %3, align 8
  %6 = load i64, i64* @jiffies, align 8
  %7 = call i64 @msecs_to_jiffies(i32 100)
  %8 = add i64 %6, %7
  store i64 %8, i64* %5, align 8
  %9 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %10 = load i32, i32* @KONA_SDHOST_CORECTRL, align 4
  %11 = call i32 @sdhci_readl(%struct.sdhci_host* %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* @KONA_SDHOST_RESET, align 4
  %13 = load i32, i32* %4, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %4, align 4
  %15 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @KONA_SDHOST_CORECTRL, align 4
  %18 = call i32 @sdhci_writel(%struct.sdhci_host* %15, i32 %16, i32 %17)
  br label %19

19:                                               ; preds = %35, %1
  %20 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %21 = load i32, i32* @KONA_SDHOST_CORECTRL, align 4
  %22 = call i32 @sdhci_readl(%struct.sdhci_host* %20, i32 %21)
  %23 = load i32, i32* @KONA_SDHOST_RESET, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  br i1 %26, label %27, label %36

27:                                               ; preds = %19
  %28 = load i64, i64* %5, align 8
  %29 = call i64 @time_is_before_jiffies(i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @EFAULT, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %49

35:                                               ; preds = %27
  br label %19

36:                                               ; preds = %19
  %37 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %38 = load i32, i32* @KONA_SDHOST_CORECTRL, align 4
  %39 = call i32 @sdhci_readl(%struct.sdhci_host* %37, i32 %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* @KONA_SDHOST_RESET, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %4, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %4, align 4
  %44 = call i32 @usleep_range(i32 1000, i32 5000)
  %45 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @KONA_SDHOST_CORECTRL, align 4
  %48 = call i32 @sdhci_writel(%struct.sdhci_host* %45, i32 %46, i32 %47)
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %36, %31
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @sdhci_readl(%struct.sdhci_host*, i32) #1

declare dso_local i32 @sdhci_writel(%struct.sdhci_host*, i32, i32) #1

declare dso_local i64 @time_is_before_jiffies(i64) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
