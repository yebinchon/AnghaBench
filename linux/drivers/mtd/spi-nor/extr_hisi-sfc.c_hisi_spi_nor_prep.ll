; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_hisi-sfc.c_hisi_spi_nor_prep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_hisi-sfc.c_hisi_spi_nor_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_nor = type { %struct.hifmc_priv* }
%struct.hifmc_priv = type { i32, %struct.hifmc_host* }
%struct.hifmc_host = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_nor*, i32)* @hisi_spi_nor_prep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hisi_spi_nor_prep(%struct.spi_nor* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_nor*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hifmc_priv*, align 8
  %7 = alloca %struct.hifmc_host*, align 8
  %8 = alloca i32, align 4
  store %struct.spi_nor* %0, %struct.spi_nor** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %10 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %9, i32 0, i32 0
  %11 = load %struct.hifmc_priv*, %struct.hifmc_priv** %10, align 8
  store %struct.hifmc_priv* %11, %struct.hifmc_priv** %6, align 8
  %12 = load %struct.hifmc_priv*, %struct.hifmc_priv** %6, align 8
  %13 = getelementptr inbounds %struct.hifmc_priv, %struct.hifmc_priv* %12, i32 0, i32 1
  %14 = load %struct.hifmc_host*, %struct.hifmc_host** %13, align 8
  store %struct.hifmc_host* %14, %struct.hifmc_host** %7, align 8
  %15 = load %struct.hifmc_host*, %struct.hifmc_host** %7, align 8
  %16 = getelementptr inbounds %struct.hifmc_host, %struct.hifmc_host* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.hifmc_host*, %struct.hifmc_host** %7, align 8
  %19 = getelementptr inbounds %struct.hifmc_host, %struct.hifmc_host* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.hifmc_priv*, %struct.hifmc_priv** %6, align 8
  %22 = getelementptr inbounds %struct.hifmc_priv, %struct.hifmc_priv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @clk_set_rate(i32 %20, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  br label %37

28:                                               ; preds = %2
  %29 = load %struct.hifmc_host*, %struct.hifmc_host** %7, align 8
  %30 = getelementptr inbounds %struct.hifmc_host, %struct.hifmc_host* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @clk_prepare_enable(i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %37

36:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %42

37:                                               ; preds = %35, %27
  %38 = load %struct.hifmc_host*, %struct.hifmc_host** %7, align 8
  %39 = getelementptr inbounds %struct.hifmc_host, %struct.hifmc_host* %38, i32 0, i32 0
  %40 = call i32 @mutex_unlock(i32* %39)
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %37, %36
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
