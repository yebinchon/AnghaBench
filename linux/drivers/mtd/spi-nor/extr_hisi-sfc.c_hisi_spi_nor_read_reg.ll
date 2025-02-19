; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_hisi-sfc.c_hisi_spi_nor_read_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_hisi-sfc.c_hisi_spi_nor_read_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_nor = type { %struct.hifmc_priv* }
%struct.hifmc_priv = type { %struct.hifmc_host* }
%struct.hifmc_host = type { i32 }

@FMC_OP_READ_DATA_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_nor*, i32, i32*, i32)* @hisi_spi_nor_read_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hisi_spi_nor_read_reg(%struct.spi_nor* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.spi_nor*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.hifmc_priv*, align 8
  %11 = alloca %struct.hifmc_host*, align 8
  %12 = alloca i32, align 4
  store %struct.spi_nor* %0, %struct.spi_nor** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.spi_nor*, %struct.spi_nor** %6, align 8
  %14 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %13, i32 0, i32 0
  %15 = load %struct.hifmc_priv*, %struct.hifmc_priv** %14, align 8
  store %struct.hifmc_priv* %15, %struct.hifmc_priv** %10, align 8
  %16 = load %struct.hifmc_priv*, %struct.hifmc_priv** %10, align 8
  %17 = getelementptr inbounds %struct.hifmc_priv, %struct.hifmc_priv* %16, i32 0, i32 0
  %18 = load %struct.hifmc_host*, %struct.hifmc_host** %17, align 8
  store %struct.hifmc_host* %18, %struct.hifmc_host** %11, align 8
  %19 = load %struct.spi_nor*, %struct.spi_nor** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @FMC_OP_READ_DATA_EN, align 4
  %23 = call i32 @hisi_spi_nor_op_reg(%struct.spi_nor* %19, i32 %20, i32 %21, i32 %22)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load i32, i32* %12, align 4
  store i32 %27, i32* %5, align 4
  br label %35

28:                                               ; preds = %4
  %29 = load i32*, i32** %8, align 8
  %30 = load %struct.hifmc_host*, %struct.hifmc_host** %11, align 8
  %31 = getelementptr inbounds %struct.hifmc_host, %struct.hifmc_host* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @memcpy_fromio(i32* %29, i32 %32, i32 %33)
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %28, %26
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i32 @hisi_spi_nor_op_reg(%struct.spi_nor*, i32, i32, i32) #1

declare dso_local i32 @memcpy_fromio(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
