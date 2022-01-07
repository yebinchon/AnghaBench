; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/extr_qca_spi.c_end_spi_intr_handling.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/extr_qca_spi.c_end_spi_intr_handling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcaspi = type { i32 }

@SPI_INT_CPU_ON = common dso_local global i32 0, align 4
@SPI_INT_PKT_AVLBL = common dso_local global i32 0, align 4
@SPI_INT_RDBUF_ERR = common dso_local global i32 0, align 4
@SPI_INT_WRBUF_ERR = common dso_local global i32 0, align 4
@SPI_REG_INTR_CAUSE = common dso_local global i32 0, align 4
@SPI_REG_INTR_ENABLE = common dso_local global i32 0, align 4
@wr_verify = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"acking int: 0x%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qcaspi*, i32)* @end_spi_intr_handling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @end_spi_intr_handling(%struct.qcaspi* %0, i32 %1) #0 {
  %3 = alloca %struct.qcaspi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.qcaspi* %0, %struct.qcaspi** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @SPI_INT_CPU_ON, align 4
  %7 = load i32, i32* @SPI_INT_PKT_AVLBL, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @SPI_INT_RDBUF_ERR, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @SPI_INT_WRBUF_ERR, align 4
  %12 = or i32 %10, %11
  store i32 %12, i32* %5, align 4
  %13 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %14 = load i32, i32* @SPI_REG_INTR_CAUSE, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @qcaspi_write_register(%struct.qcaspi* %13, i32 %14, i32 %15, i32 0)
  %17 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %18 = load i32, i32* @SPI_REG_INTR_ENABLE, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @wr_verify, align 4
  %21 = call i32 @qcaspi_write_register(%struct.qcaspi* %17, i32 %18, i32 %19, i32 %20)
  %22 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %23 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @netdev_dbg(i32 %24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %25)
  ret void
}

declare dso_local i32 @qcaspi_write_register(%struct.qcaspi*, i32, i32, i32) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
