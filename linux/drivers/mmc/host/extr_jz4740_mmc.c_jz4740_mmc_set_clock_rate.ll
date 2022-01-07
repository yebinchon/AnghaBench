; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_jz4740_mmc.c_jz4740_mmc_set_clock_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_jz4740_mmc.c_jz4740_mmc_set_clock_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jz4740_mmc_host = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@JZ_REG_MMC_CLKRT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jz4740_mmc_host*, i32)* @jz4740_mmc_set_clock_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4740_mmc_set_clock_rate(%struct.jz4740_mmc_host* %0, i32 %1) #0 {
  %3 = alloca %struct.jz4740_mmc_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.jz4740_mmc_host* %0, %struct.jz4740_mmc_host** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %3, align 8
  %8 = call i32 @jz4740_mmc_clock_disable(%struct.jz4740_mmc_host* %7)
  %9 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %3, align 8
  %10 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %3, align 8
  %13 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @clk_set_rate(i32 %11, i32 %16)
  %18 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %3, align 8
  %19 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @clk_get_rate(i32 %20)
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %31, %2
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 7
  br label %29

29:                                               ; preds = %26, %22
  %30 = phi i1 [ false, %22 ], [ %28, %26 ]
  br i1 %30, label %31, label %36

31:                                               ; preds = %29
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %6, align 4
  %35 = ashr i32 %34, 1
  store i32 %35, i32* %6, align 4
  br label %22

36:                                               ; preds = %29
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %3, align 8
  %39 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @JZ_REG_MMC_CLKRT, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @writew(i32 %37, i64 %42)
  %44 = load i32, i32* %6, align 4
  ret i32 %44
}

declare dso_local i32 @jz4740_mmc_clock_disable(%struct.jz4740_mmc_host*) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @writew(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
