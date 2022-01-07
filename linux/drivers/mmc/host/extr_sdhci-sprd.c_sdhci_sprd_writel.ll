; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-sprd.c_sdhci_sprd_writel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-sprd.c_sdhci_sprd_writel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i64 }

@SDHCI_MAX_CURRENT = common dso_local global i32 0, align 4
@SDHCI_SIGNAL_ENABLE = common dso_local global i32 0, align 4
@SDHCI_INT_ENABLE = common dso_local global i32 0, align 4
@SDHCI_SPRD_INT_SIGNAL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*, i32, i32)* @sdhci_sprd_writel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_sprd_writel(%struct.sdhci_host* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sdhci_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @SDHCI_MAX_CURRENT, align 4
  %9 = icmp eq i32 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %40

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @SDHCI_SIGNAL_ENABLE, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @SDHCI_INT_ENABLE, align 4
  %21 = icmp eq i32 %19, %20
  br label %22

22:                                               ; preds = %18, %14
  %23 = phi i1 [ true, %14 ], [ %21, %18 ]
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @SDHCI_SPRD_INT_SIGNAL_MASK, align 4
  %30 = and i32 %28, %29
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %27, %22
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %34 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %35, %37
  %39 = call i32 @writel_relaxed(i32 %32, i64 %38)
  br label %40

40:                                               ; preds = %31, %13
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
