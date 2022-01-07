; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_target_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_target_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i64 }
%struct.mmc_command = type { i32 }
%struct.mmc_data = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdhci_host*, %struct.mmc_command*, %struct.mmc_data*)* @sdhci_target_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdhci_target_timeout(%struct.sdhci_host* %0, %struct.mmc_command* %1, %struct.mmc_data* %2) #0 {
  %4 = alloca %struct.sdhci_host*, align 8
  %5 = alloca %struct.mmc_command*, align 8
  %6 = alloca %struct.mmc_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.sdhci_host* %0, %struct.sdhci_host** %4, align 8
  store %struct.mmc_command* %1, %struct.mmc_command** %5, align 8
  store %struct.mmc_data* %2, %struct.mmc_data** %6, align 8
  %9 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %10 = icmp ne %struct.mmc_data* %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %3
  %12 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %13 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = mul nsw i32 %14, 1000
  store i32 %15, i32* %7, align 4
  br label %51

16:                                               ; preds = %3
  %17 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %18 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @DIV_ROUND_UP(i32 %19, i32 1000)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %22 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %50

25:                                               ; preds = %16
  %26 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %27 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %50

30:                                               ; preds = %25
  %31 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %32 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = mul i64 1000000, %33
  store i64 %34, i64* %8, align 8
  %35 = load i64, i64* %8, align 8
  %36 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %37 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i64 @do_div(i64 %35, i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %30
  %42 = load i32, i32* %7, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %41, %30
  %45 = load i64, i64* %8, align 8
  %46 = load i32, i32* %7, align 4
  %47 = zext i32 %46 to i64
  %48 = add i64 %47, %45
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %44, %25, %16
  br label %51

51:                                               ; preds = %50, %11
  %52 = load i32, i32* %7, align 4
  ret i32 %52
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i64 @do_div(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
