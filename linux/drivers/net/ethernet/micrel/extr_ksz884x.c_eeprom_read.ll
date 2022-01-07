; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_eeprom_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_eeprom_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz_hw = type { i32 }

@EEPROM_ACCESS_ENABLE = common dso_local global i32 0, align 4
@EEPROM_CHIP_SELECT = common dso_local global i32 0, align 4
@AT93C_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ksz_hw*, i32)* @eeprom_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eeprom_read(%struct.ksz_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ksz_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ksz_hw* %0, %struct.ksz_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ksz_hw*, %struct.ksz_hw** %3, align 8
  %7 = load i32, i32* @EEPROM_ACCESS_ENABLE, align 4
  %8 = load i32, i32* @EEPROM_CHIP_SELECT, align 4
  %9 = or i32 %7, %8
  %10 = call i32 @raise_gpio(%struct.ksz_hw* %6, i32 %9)
  %11 = load %struct.ksz_hw*, %struct.ksz_hw** %3, align 8
  %12 = load i32, i32* @AT93C_READ, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @spi_reg(%struct.ksz_hw* %11, i32 %12, i32 %13)
  %15 = load %struct.ksz_hw*, %struct.ksz_hw** %3, align 8
  %16 = call i32 @spi_r(%struct.ksz_hw* %15)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.ksz_hw*, %struct.ksz_hw** %3, align 8
  %18 = load i32, i32* @EEPROM_ACCESS_ENABLE, align 4
  %19 = load i32, i32* @EEPROM_CHIP_SELECT, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @drop_gpio(%struct.ksz_hw* %17, i32 %20)
  %22 = load i32, i32* %5, align 4
  ret i32 %22
}

declare dso_local i32 @raise_gpio(%struct.ksz_hw*, i32) #1

declare dso_local i32 @spi_reg(%struct.ksz_hw*, i32, i32) #1

declare dso_local i32 @spi_r(%struct.ksz_hw*) #1

declare dso_local i32 @drop_gpio(%struct.ksz_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
