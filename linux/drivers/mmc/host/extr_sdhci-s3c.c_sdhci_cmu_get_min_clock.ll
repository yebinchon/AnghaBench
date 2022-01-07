; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-s3c.c_sdhci_cmu_get_min_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-s3c.c_sdhci_cmu_get_min_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32 }
%struct.sdhci_s3c = type { %struct.clk** }
%struct.clk = type { i32 }

@ULONG_MAX = common dso_local global i64 0, align 8
@MAX_BUS_CLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdhci_host*)* @sdhci_cmu_get_min_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdhci_cmu_get_min_clock(%struct.sdhci_host* %0) #0 {
  %2 = alloca %struct.sdhci_host*, align 8
  %3 = alloca %struct.sdhci_s3c*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.clk*, align 8
  store %struct.sdhci_host* %0, %struct.sdhci_host** %2, align 8
  %8 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %9 = call %struct.sdhci_s3c* @to_s3c(%struct.sdhci_host* %8)
  store %struct.sdhci_s3c* %9, %struct.sdhci_s3c** %3, align 8
  %10 = load i64, i64* @ULONG_MAX, align 8
  store i64 %10, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %36, %1
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @MAX_BUS_CLK, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %39

15:                                               ; preds = %11
  %16 = load %struct.sdhci_s3c*, %struct.sdhci_s3c** %3, align 8
  %17 = getelementptr inbounds %struct.sdhci_s3c, %struct.sdhci_s3c* %16, i32 0, i32 0
  %18 = load %struct.clk**, %struct.clk*** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.clk*, %struct.clk** %18, i64 %20
  %22 = load %struct.clk*, %struct.clk** %21, align 8
  store %struct.clk* %22, %struct.clk** %7, align 8
  %23 = load %struct.clk*, %struct.clk** %7, align 8
  %24 = call i64 @IS_ERR(%struct.clk* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %15
  br label %36

27:                                               ; preds = %15
  %28 = load %struct.clk*, %struct.clk** %7, align 8
  %29 = call i64 @clk_round_rate(%struct.clk* %28, i32 0)
  store i64 %29, i64* %4, align 8
  %30 = load i64, i64* %4, align 8
  %31 = load i64, i64* %5, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i64, i64* %4, align 8
  store i64 %34, i64* %5, align 8
  br label %35

35:                                               ; preds = %33, %27
  br label %36

36:                                               ; preds = %35, %26
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %6, align 4
  br label %11

39:                                               ; preds = %11
  %40 = load i64, i64* %5, align 8
  %41 = trunc i64 %40 to i32
  ret i32 %41
}

declare dso_local %struct.sdhci_s3c* @to_s3c(%struct.sdhci_host*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i64 @clk_round_rate(%struct.clk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
