; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_eeprom_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_eeprom_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz_hw = type { i32 }

@EEPROM_ACCESS_ENABLE = common dso_local global i32 0, align 4
@EEPROM_CHIP_SELECT = common dso_local global i32 0, align 4
@AT93C_CODE = common dso_local global i32 0, align 4
@AT93C_WR_ON = common dso_local global i32 0, align 4
@AT93C_ERASE = common dso_local global i32 0, align 4
@EEPROM_DATA_IN = common dso_local global i32 0, align 4
@AT93C_WRITE = common dso_local global i32 0, align 4
@AT93C_WR_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ksz_hw*, i32, i32)* @eeprom_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eeprom_write(%struct.ksz_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ksz_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ksz_hw* %0, %struct.ksz_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %9 = load i32, i32* @EEPROM_ACCESS_ENABLE, align 4
  %10 = load i32, i32* @EEPROM_CHIP_SELECT, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @raise_gpio(%struct.ksz_hw* %8, i32 %11)
  %13 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %14 = load i32, i32* @AT93C_CODE, align 4
  %15 = load i32, i32* @AT93C_WR_ON, align 4
  %16 = call i32 @spi_reg(%struct.ksz_hw* %13, i32 %14, i32 %15)
  %17 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %18 = load i32, i32* @EEPROM_CHIP_SELECT, align 4
  %19 = call i32 @drop_gpio(%struct.ksz_hw* %17, i32 %18)
  %20 = call i32 @udelay(i32 1)
  %21 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %22 = load i32, i32* @EEPROM_CHIP_SELECT, align 4
  %23 = call i32 @raise_gpio(%struct.ksz_hw* %21, i32 %22)
  %24 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %25 = load i32, i32* @AT93C_ERASE, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @spi_reg(%struct.ksz_hw* %24, i32 %25, i32 %26)
  %28 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %29 = load i32, i32* @EEPROM_CHIP_SELECT, align 4
  %30 = call i32 @drop_gpio(%struct.ksz_hw* %28, i32 %29)
  %31 = call i32 @udelay(i32 1)
  %32 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %33 = load i32, i32* @EEPROM_CHIP_SELECT, align 4
  %34 = call i32 @raise_gpio(%struct.ksz_hw* %32, i32 %33)
  store i32 8, i32* %7, align 4
  %35 = call i32 @mdelay(i32 2)
  br label %36

36:                                               ; preds = %47, %3
  %37 = call i32 @mdelay(i32 1)
  br label %38

38:                                               ; preds = %36
  %39 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %40 = load i32, i32* @EEPROM_DATA_IN, align 4
  %41 = call i32 @state_gpio(%struct.ksz_hw* %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br label %47

47:                                               ; preds = %43, %38
  %48 = phi i1 [ false, %38 ], [ %46, %43 ]
  br i1 %48, label %36, label %49

49:                                               ; preds = %47
  %50 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %51 = load i32, i32* @EEPROM_CHIP_SELECT, align 4
  %52 = call i32 @drop_gpio(%struct.ksz_hw* %50, i32 %51)
  %53 = call i32 @udelay(i32 1)
  %54 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %55 = load i32, i32* @EEPROM_CHIP_SELECT, align 4
  %56 = call i32 @raise_gpio(%struct.ksz_hw* %54, i32 %55)
  %57 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %58 = load i32, i32* @AT93C_WRITE, align 4
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @spi_reg(%struct.ksz_hw* %57, i32 %58, i32 %59)
  %61 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @spi_w(%struct.ksz_hw* %61, i32 %62)
  %64 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %65 = load i32, i32* @EEPROM_CHIP_SELECT, align 4
  %66 = call i32 @drop_gpio(%struct.ksz_hw* %64, i32 %65)
  %67 = call i32 @udelay(i32 1)
  %68 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %69 = load i32, i32* @EEPROM_CHIP_SELECT, align 4
  %70 = call i32 @raise_gpio(%struct.ksz_hw* %68, i32 %69)
  store i32 8, i32* %7, align 4
  %71 = call i32 @mdelay(i32 2)
  br label %72

72:                                               ; preds = %83, %49
  %73 = call i32 @mdelay(i32 1)
  br label %74

74:                                               ; preds = %72
  %75 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %76 = load i32, i32* @EEPROM_DATA_IN, align 4
  %77 = call i32 @state_gpio(%struct.ksz_hw* %75, i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %74
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br label %83

83:                                               ; preds = %79, %74
  %84 = phi i1 [ false, %74 ], [ %82, %79 ]
  br i1 %84, label %72, label %85

85:                                               ; preds = %83
  %86 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %87 = load i32, i32* @EEPROM_CHIP_SELECT, align 4
  %88 = call i32 @drop_gpio(%struct.ksz_hw* %86, i32 %87)
  %89 = call i32 @udelay(i32 1)
  %90 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %91 = load i32, i32* @EEPROM_CHIP_SELECT, align 4
  %92 = call i32 @raise_gpio(%struct.ksz_hw* %90, i32 %91)
  %93 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %94 = load i32, i32* @AT93C_CODE, align 4
  %95 = load i32, i32* @AT93C_WR_OFF, align 4
  %96 = call i32 @spi_reg(%struct.ksz_hw* %93, i32 %94, i32 %95)
  %97 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %98 = load i32, i32* @EEPROM_ACCESS_ENABLE, align 4
  %99 = load i32, i32* @EEPROM_CHIP_SELECT, align 4
  %100 = or i32 %98, %99
  %101 = call i32 @drop_gpio(%struct.ksz_hw* %97, i32 %100)
  ret void
}

declare dso_local i32 @raise_gpio(%struct.ksz_hw*, i32) #1

declare dso_local i32 @spi_reg(%struct.ksz_hw*, i32, i32) #1

declare dso_local i32 @drop_gpio(%struct.ksz_hw*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @state_gpio(%struct.ksz_hw*, i32) #1

declare dso_local i32 @spi_w(%struct.ksz_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
