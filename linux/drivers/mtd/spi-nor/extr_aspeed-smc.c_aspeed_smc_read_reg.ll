; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_aspeed-smc.c_aspeed_smc_read_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_aspeed-smc.c_aspeed_smc_read_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_nor = type { %struct.aspeed_smc_chip* }
%struct.aspeed_smc_chip = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_nor*, i32, i32*, i32)* @aspeed_smc_read_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aspeed_smc_read_reg(%struct.spi_nor* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.spi_nor*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.aspeed_smc_chip*, align 8
  store %struct.spi_nor* %0, %struct.spi_nor** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %11 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %10, i32 0, i32 0
  %12 = load %struct.aspeed_smc_chip*, %struct.aspeed_smc_chip** %11, align 8
  store %struct.aspeed_smc_chip* %12, %struct.aspeed_smc_chip** %9, align 8
  %13 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %14 = call i32 @aspeed_smc_start_user(%struct.spi_nor* %13)
  %15 = load %struct.aspeed_smc_chip*, %struct.aspeed_smc_chip** %9, align 8
  %16 = getelementptr inbounds %struct.aspeed_smc_chip, %struct.aspeed_smc_chip* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @aspeed_smc_write_to_ahb(i32 %17, i32* %6, i32 1)
  %19 = load i32*, i32** %7, align 8
  %20 = load %struct.aspeed_smc_chip*, %struct.aspeed_smc_chip** %9, align 8
  %21 = getelementptr inbounds %struct.aspeed_smc_chip, %struct.aspeed_smc_chip* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @aspeed_smc_read_from_ahb(i32* %19, i32 %22, i32 %23)
  %25 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %26 = call i32 @aspeed_smc_stop_user(%struct.spi_nor* %25)
  ret i32 0
}

declare dso_local i32 @aspeed_smc_start_user(%struct.spi_nor*) #1

declare dso_local i32 @aspeed_smc_write_to_ahb(i32, i32*, i32) #1

declare dso_local i32 @aspeed_smc_read_from_ahb(i32*, i32, i32) #1

declare dso_local i32 @aspeed_smc_stop_user(%struct.spi_nor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
