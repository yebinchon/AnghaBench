; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_hisi-sfc.c_hisi_spi_nor_op_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_hisi-sfc.c_hisi_spi_nor_op_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_nor = type { %struct.hifmc_priv* }
%struct.hifmc_priv = type { i32, %struct.hifmc_host* }
%struct.hifmc_host = type { i64 }

@FMC_CMD = common dso_local global i64 0, align 8
@FMC_DATA_NUM = common dso_local global i64 0, align 8
@FMC_OP_CFG = common dso_local global i64 0, align 8
@FMC_INT_CLR = common dso_local global i64 0, align 8
@FMC_OP_CMD1_EN = common dso_local global i32 0, align 4
@FMC_OP_REG_OP_START = common dso_local global i32 0, align 4
@FMC_OP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_nor*, i32, i32, i32)* @hisi_spi_nor_op_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hisi_spi_nor_op_reg(%struct.spi_nor* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.spi_nor*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.hifmc_priv*, align 8
  %10 = alloca %struct.hifmc_host*, align 8
  %11 = alloca i32, align 4
  store %struct.spi_nor* %0, %struct.spi_nor** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %13 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %12, i32 0, i32 0
  %14 = load %struct.hifmc_priv*, %struct.hifmc_priv** %13, align 8
  store %struct.hifmc_priv* %14, %struct.hifmc_priv** %9, align 8
  %15 = load %struct.hifmc_priv*, %struct.hifmc_priv** %9, align 8
  %16 = getelementptr inbounds %struct.hifmc_priv, %struct.hifmc_priv* %15, i32 0, i32 1
  %17 = load %struct.hifmc_host*, %struct.hifmc_host** %16, align 8
  store %struct.hifmc_host* %17, %struct.hifmc_host** %10, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @FMC_CMD_CMD1(i32 %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = load %struct.hifmc_host*, %struct.hifmc_host** %10, align 8
  %22 = getelementptr inbounds %struct.hifmc_host, %struct.hifmc_host* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @FMC_CMD, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @writel(i32 %20, i64 %25)
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @FMC_DATA_NUM_CNT(i32 %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load %struct.hifmc_host*, %struct.hifmc_host** %10, align 8
  %31 = getelementptr inbounds %struct.hifmc_host, %struct.hifmc_host* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @FMC_DATA_NUM, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @writel(i32 %29, i64 %34)
  %36 = load %struct.hifmc_priv*, %struct.hifmc_priv** %9, align 8
  %37 = getelementptr inbounds %struct.hifmc_priv, %struct.hifmc_priv* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @OP_CFG_FM_CS(i32 %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load %struct.hifmc_host*, %struct.hifmc_host** %10, align 8
  %42 = getelementptr inbounds %struct.hifmc_host, %struct.hifmc_host* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @FMC_OP_CFG, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @writel(i32 %40, i64 %45)
  %47 = load %struct.hifmc_host*, %struct.hifmc_host** %10, align 8
  %48 = getelementptr inbounds %struct.hifmc_host, %struct.hifmc_host* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @FMC_INT_CLR, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @writel(i32 255, i64 %51)
  %53 = load i32, i32* @FMC_OP_CMD1_EN, align 4
  %54 = load i32, i32* @FMC_OP_REG_OP_START, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* %8, align 4
  %57 = or i32 %55, %56
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = load %struct.hifmc_host*, %struct.hifmc_host** %10, align 8
  %60 = getelementptr inbounds %struct.hifmc_host, %struct.hifmc_host* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @FMC_OP, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @writel(i32 %58, i64 %63)
  %65 = load %struct.hifmc_host*, %struct.hifmc_host** %10, align 8
  %66 = call i32 @hisi_spi_nor_wait_op_finish(%struct.hifmc_host* %65)
  ret i32 %66
}

declare dso_local i32 @FMC_CMD_CMD1(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @FMC_DATA_NUM_CNT(i32) #1

declare dso_local i32 @OP_CFG_FM_CS(i32) #1

declare dso_local i32 @hisi_spi_nor_wait_op_finish(%struct.hifmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
