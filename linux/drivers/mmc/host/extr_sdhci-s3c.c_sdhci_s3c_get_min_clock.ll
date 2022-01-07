; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-s3c.c_sdhci_s3c_get_min_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-s3c.c_sdhci_s3c_get_min_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32 }
%struct.sdhci_s3c = type { i32* }

@ULONG_MAX = common dso_local global i64 0, align 8
@MAX_BUS_CLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdhci_host*)* @sdhci_s3c_get_min_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdhci_s3c_get_min_clock(%struct.sdhci_host* %0) #0 {
  %2 = alloca %struct.sdhci_host*, align 8
  %3 = alloca %struct.sdhci_s3c*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %2, align 8
  %7 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %8 = call %struct.sdhci_s3c* @to_s3c(%struct.sdhci_host* %7)
  store %struct.sdhci_s3c* %8, %struct.sdhci_s3c** %3, align 8
  %9 = load i64, i64* @ULONG_MAX, align 8
  store i64 %9, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %34, %1
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @MAX_BUS_CLK, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %37

14:                                               ; preds = %10
  %15 = load %struct.sdhci_s3c*, %struct.sdhci_s3c** %3, align 8
  %16 = getelementptr inbounds %struct.sdhci_s3c, %struct.sdhci_s3c* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = sdiv i32 %21, 256
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %4, align 8
  %24 = load i64, i64* %4, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %14
  br label %34

27:                                               ; preds = %14
  %28 = load i64, i64* %4, align 8
  %29 = load i64, i64* %5, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i64, i64* %4, align 8
  store i64 %32, i64* %5, align 8
  br label %33

33:                                               ; preds = %31, %27
  br label %34

34:                                               ; preds = %33, %26
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %10

37:                                               ; preds = %10
  %38 = load i64, i64* %5, align 8
  %39 = trunc i64 %38 to i32
  ret i32 %39
}

declare dso_local %struct.sdhci_s3c* @to_s3c(%struct.sdhci_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
