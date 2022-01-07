; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_spi_eeprom_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_spi_eeprom_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EEPROM_RDSR_OPCODE_SPI = common dso_local global i32 0, align 4
@EEPROM_STATUS_RDY_SPI = common dso_local global i32 0, align 4
@EEPROM_MAX_RETRY_SPI = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"SPI EEPROM Status error\0A\00", align 1
@E1000_ERR_EEPROM = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*)* @e1000_spi_eeprom_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_spi_eeprom_ready(%struct.e1000_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %4, align 8
  br label %6

6:                                                ; preds = %28, %1
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %8 = load i32, i32* @EEPROM_RDSR_OPCODE_SPI, align 4
  %9 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %10 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @e1000_shift_out_ee_bits(%struct.e1000_hw* %7, i32 %8, i32 %12)
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %15 = call i64 @e1000_shift_in_ee_bits(%struct.e1000_hw* %14, i32 8)
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @EEPROM_STATUS_RDY_SPI, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %6
  br label %32

22:                                               ; preds = %6
  %23 = call i32 @udelay(i32 5)
  %24 = load i64, i64* %4, align 8
  %25 = add nsw i64 %24, 5
  store i64 %25, i64* %4, align 8
  %26 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %27 = call i32 @e1000_standby_eeprom(%struct.e1000_hw* %26)
  br label %28

28:                                               ; preds = %22
  %29 = load i64, i64* %4, align 8
  %30 = load i64, i64* @EEPROM_MAX_RETRY_SPI, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %6, label %32

32:                                               ; preds = %28, %21
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* @EEPROM_MAX_RETRY_SPI, align 8
  %35 = icmp sge i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = call i32 @e_dbg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @E1000_ERR_EEPROM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %42

40:                                               ; preds = %32
  %41 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %40, %36
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @e1000_shift_out_ee_bits(%struct.e1000_hw*, i32, i32) #1

declare dso_local i64 @e1000_shift_in_ee_bits(%struct.e1000_hw*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @e1000_standby_eeprom(%struct.e1000_hw*) #1

declare dso_local i32 @e_dbg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
