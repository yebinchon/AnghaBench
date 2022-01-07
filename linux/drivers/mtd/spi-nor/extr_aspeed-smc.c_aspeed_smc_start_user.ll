; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_aspeed-smc.c_aspeed_smc_start_user.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_aspeed-smc.c_aspeed_smc_start_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_nor = type { %struct.aspeed_smc_chip* }
%struct.aspeed_smc_chip = type { i32*, i32 }

@smc_base = common dso_local global i64 0, align 8
@CONTROL_COMMAND_MODE_USER = common dso_local global i32 0, align 4
@CONTROL_CE_STOP_ACTIVE_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_nor*)* @aspeed_smc_start_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aspeed_smc_start_user(%struct.spi_nor* %0) #0 {
  %2 = alloca %struct.spi_nor*, align 8
  %3 = alloca %struct.aspeed_smc_chip*, align 8
  %4 = alloca i32, align 4
  store %struct.spi_nor* %0, %struct.spi_nor** %2, align 8
  %5 = load %struct.spi_nor*, %struct.spi_nor** %2, align 8
  %6 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %5, i32 0, i32 0
  %7 = load %struct.aspeed_smc_chip*, %struct.aspeed_smc_chip** %6, align 8
  store %struct.aspeed_smc_chip* %7, %struct.aspeed_smc_chip** %3, align 8
  %8 = load %struct.aspeed_smc_chip*, %struct.aspeed_smc_chip** %3, align 8
  %9 = getelementptr inbounds %struct.aspeed_smc_chip, %struct.aspeed_smc_chip* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load i64, i64* @smc_base, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %4, align 4
  %14 = load %struct.aspeed_smc_chip*, %struct.aspeed_smc_chip** %3, align 8
  %15 = call i32 @aspeed_smc_chip_check_config(%struct.aspeed_smc_chip* %14)
  %16 = load i32, i32* @CONTROL_COMMAND_MODE_USER, align 4
  %17 = load i32, i32* @CONTROL_CE_STOP_ACTIVE_CONTROL, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* %4, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.aspeed_smc_chip*, %struct.aspeed_smc_chip** %3, align 8
  %23 = getelementptr inbounds %struct.aspeed_smc_chip, %struct.aspeed_smc_chip* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @writel(i32 %21, i32 %24)
  %26 = load i32, i32* @CONTROL_CE_STOP_ACTIVE_CONTROL, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %4, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.aspeed_smc_chip*, %struct.aspeed_smc_chip** %3, align 8
  %32 = getelementptr inbounds %struct.aspeed_smc_chip, %struct.aspeed_smc_chip* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @writel(i32 %30, i32 %33)
  ret void
}

declare dso_local i32 @aspeed_smc_chip_check_config(%struct.aspeed_smc_chip*) #1

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
