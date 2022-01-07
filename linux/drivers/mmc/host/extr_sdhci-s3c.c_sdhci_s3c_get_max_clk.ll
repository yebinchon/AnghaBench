; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-s3c.c_sdhci_s3c_get_max_clk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-s3c.c_sdhci_s3c_get_max_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32 }
%struct.sdhci_s3c = type { i64* }

@MAX_BUS_CLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdhci_host*)* @sdhci_s3c_get_max_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdhci_s3c_get_max_clk(%struct.sdhci_host* %0) #0 {
  %2 = alloca %struct.sdhci_host*, align 8
  %3 = alloca %struct.sdhci_s3c*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %2, align 8
  %7 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %8 = call %struct.sdhci_s3c* @to_s3c(%struct.sdhci_host* %7)
  store %struct.sdhci_s3c* %8, %struct.sdhci_s3c** %3, align 8
  store i64 0, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %27, %1
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @MAX_BUS_CLK, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %30

13:                                               ; preds = %9
  %14 = load %struct.sdhci_s3c*, %struct.sdhci_s3c** %3, align 8
  %15 = getelementptr inbounds %struct.sdhci_s3c, %struct.sdhci_s3c* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %4, align 8
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* %5, align 8
  %23 = icmp ugt i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %13
  %25 = load i64, i64* %4, align 8
  store i64 %25, i64* %5, align 8
  br label %26

26:                                               ; preds = %24, %13
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %6, align 4
  br label %9

30:                                               ; preds = %9
  %31 = load i64, i64* %5, align 8
  %32 = trunc i64 %31 to i32
  ret i32 %32
}

declare dso_local %struct.sdhci_s3c* @to_s3c(%struct.sdhci_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
