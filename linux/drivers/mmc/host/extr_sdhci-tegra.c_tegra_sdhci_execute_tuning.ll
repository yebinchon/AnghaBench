; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-tegra.c_tegra_sdhci_execute_tuning.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-tegra.c_tegra_sdhci_execute_tuning.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdhci_host*, i32)* @tegra_sdhci_execute_tuning to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_sdhci_execute_tuning(%struct.sdhci_host* %0, i32 %1) #0 {
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 10, i32* %5, align 4
  br label %7

7:                                                ; preds = %21, %2
  %8 = load i32, i32* %5, align 4
  %9 = icmp ult i32 %8, 255
  br i1 %9, label %10, label %24

10:                                               ; preds = %7
  %11 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @tegra_sdhci_set_tap(%struct.sdhci_host* %11, i32 %12)
  %14 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %15 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @mmc_send_tuning(i32 %16, i32 %17, i32* null)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %10
  br label %24

21:                                               ; preds = %10
  %22 = load i32, i32* %5, align 4
  %23 = add i32 %22, 1
  store i32 %23, i32* %5, align 4
  br label %7

24:                                               ; preds = %20, %7
  %25 = load i32, i32* %5, align 4
  %26 = add i32 %25, 1
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %43, %24
  %28 = load i32, i32* %6, align 4
  %29 = icmp ult i32 %28, 255
  br i1 %29, label %30, label %46

30:                                               ; preds = %27
  %31 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @tegra_sdhci_set_tap(%struct.sdhci_host* %31, i32 %32)
  %34 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %35 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @mmc_send_tuning(i32 %36, i32 %37, i32* null)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %30
  %41 = load i32, i32* %6, align 4
  %42 = add i32 %41, -1
  store i32 %42, i32* %6, align 4
  br label %46

43:                                               ; preds = %30
  %44 = load i32, i32* %6, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %6, align 4
  br label %27

46:                                               ; preds = %40, %27
  %47 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %5, align 4
  %51 = sub i32 %49, %50
  %52 = mul i32 %51, 3
  %53 = udiv i32 %52, 4
  %54 = add i32 %48, %53
  %55 = call i32 @tegra_sdhci_set_tap(%struct.sdhci_host* %47, i32 %54)
  %56 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %57 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @mmc_send_tuning(i32 %58, i32 %59, i32* null)
  ret i32 %60
}

declare dso_local i32 @tegra_sdhci_set_tap(%struct.sdhci_host*, i32) #1

declare dso_local i32 @mmc_send_tuning(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
