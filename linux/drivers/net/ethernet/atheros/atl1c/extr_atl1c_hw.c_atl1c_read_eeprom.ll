; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_hw.c_atl1c_read_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_hw.c_atl1c_read_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1c_hw = type { i32 }

@REG_OTP_CTRL = common dso_local global i32 0, align 4
@OTP_CTRL_CLK_EN = common dso_local global i32 0, align 4
@REG_EEPROM_DATA_LO = common dso_local global i32 0, align 4
@EEPROM_CTRL_ADDR_MASK = common dso_local global i32 0, align 4
@EEPROM_CTRL_ADDR_SHIFT = common dso_local global i32 0, align 4
@REG_EEPROM_CTRL = common dso_local global i32 0, align 4
@EEPROM_CTRL_RW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atl1c_read_eeprom(%struct.atl1c_hw* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.atl1c_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.atl1c_hw* %0, %struct.atl1c_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %9, align 4
  %13 = load i32, i32* %6, align 4
  %14 = and i32 %13, 3
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %9, align 4
  store i32 %17, i32* %4, align 4
  br label %98

18:                                               ; preds = %3
  %19 = load %struct.atl1c_hw*, %struct.atl1c_hw** %5, align 8
  %20 = load i32, i32* @REG_OTP_CTRL, align 4
  %21 = call i32 @AT_READ_REG(%struct.atl1c_hw* %19, i32 %20, i32* %10)
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @OTP_CTRL_CLK_EN, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %18
  %27 = load %struct.atl1c_hw*, %struct.atl1c_hw** %5, align 8
  %28 = load i32, i32* @REG_OTP_CTRL, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @OTP_CTRL_CLK_EN, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @AT_WRITE_REG(%struct.atl1c_hw* %27, i32 %28, i32 %31)
  br label %33

33:                                               ; preds = %26, %18
  %34 = load %struct.atl1c_hw*, %struct.atl1c_hw** %5, align 8
  %35 = load i32, i32* @REG_EEPROM_DATA_LO, align 4
  %36 = call i32 @AT_WRITE_REG(%struct.atl1c_hw* %34, i32 %35, i32 0)
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @EEPROM_CTRL_ADDR_MASK, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* @EEPROM_CTRL_ADDR_SHIFT, align 4
  %41 = shl i32 %39, %40
  store i32 %41, i32* %11, align 4
  %42 = load %struct.atl1c_hw*, %struct.atl1c_hw** %5, align 8
  %43 = load i32, i32* @REG_EEPROM_CTRL, align 4
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @AT_WRITE_REG(%struct.atl1c_hw* %42, i32 %43, i32 %44)
  store i32 0, i32* %8, align 4
  br label %46

46:                                               ; preds = %60, %33
  %47 = load i32, i32* %8, align 4
  %48 = icmp slt i32 %47, 10
  br i1 %48, label %49, label %63

49:                                               ; preds = %46
  %50 = call i32 @udelay(i32 100)
  %51 = load %struct.atl1c_hw*, %struct.atl1c_hw** %5, align 8
  %52 = load i32, i32* @REG_EEPROM_CTRL, align 4
  %53 = call i32 @AT_READ_REG(%struct.atl1c_hw* %51, i32 %52, i32* %11)
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @EEPROM_CTRL_RW, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %49
  br label %63

59:                                               ; preds = %49
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %8, align 4
  br label %46

63:                                               ; preds = %58, %46
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* @EEPROM_CTRL_RW, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %86

68:                                               ; preds = %63
  %69 = load %struct.atl1c_hw*, %struct.atl1c_hw** %5, align 8
  %70 = load i32, i32* @REG_EEPROM_CTRL, align 4
  %71 = call i32 @AT_READ_REG(%struct.atl1c_hw* %69, i32 %70, i32* %12)
  %72 = load %struct.atl1c_hw*, %struct.atl1c_hw** %5, align 8
  %73 = load i32, i32* @REG_EEPROM_DATA_LO, align 4
  %74 = load i32*, i32** %7, align 8
  %75 = call i32 @AT_READ_REG(%struct.atl1c_hw* %72, i32 %73, i32* %74)
  %76 = load i32, i32* %12, align 4
  %77 = and i32 %76, 65535
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %12, align 4
  %79 = shl i32 %78, 16
  %80 = load i32*, i32** %7, align 8
  %81 = load i32, i32* %80, align 4
  %82 = ashr i32 %81, 16
  %83 = or i32 %79, %82
  %84 = call i32 @swab32(i32 %83)
  %85 = load i32*, i32** %7, align 8
  store i32 %84, i32* %85, align 4
  store i32 1, i32* %9, align 4
  br label %86

86:                                               ; preds = %68, %63
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* @OTP_CTRL_CLK_EN, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %86
  %92 = load %struct.atl1c_hw*, %struct.atl1c_hw** %5, align 8
  %93 = load i32, i32* @REG_OTP_CTRL, align 4
  %94 = load i32, i32* %10, align 4
  %95 = call i32 @AT_WRITE_REG(%struct.atl1c_hw* %92, i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %91, %86
  %97 = load i32, i32* %9, align 4
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %96, %16
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i32 @AT_READ_REG(%struct.atl1c_hw*, i32, i32*) #1

declare dso_local i32 @AT_WRITE_REG(%struct.atl1c_hw*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @swab32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
