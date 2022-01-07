; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_write_eeprom_spi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_write_eeprom_spi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_eeprom_info }
%struct.e1000_eeprom_info = type { i32, i32, i32 }

@EEPROM_WRITE_OPCODE_SPI = common dso_local global i32 0, align 4
@E1000_ERR_EEPROM = common dso_local global i32 0, align 4
@EEPROM_WREN_OPCODE_SPI = common dso_local global i32 0, align 4
@EEPROM_A8_OPCODE_SPI = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*, i32, i32, i32*)* @e1000_write_eeprom_spi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_write_eeprom_spi(%struct.e1000_hw* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.e1000_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.e1000_eeprom_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %15 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %14, i32 0, i32 0
  store %struct.e1000_eeprom_info* %15, %struct.e1000_eeprom_info** %10, align 8
  store i32 0, i32* %11, align 4
  br label %16

16:                                               ; preds = %100, %4
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %101

20:                                               ; preds = %16
  %21 = load i32, i32* @EEPROM_WRITE_OPCODE_SPI, align 4
  store i32 %21, i32* %12, align 4
  %22 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %23 = call i64 @e1000_spi_eeprom_ready(%struct.e1000_hw* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* @E1000_ERR_EEPROM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %103

28:                                               ; preds = %20
  %29 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %30 = call i32 @e1000_standby_eeprom(%struct.e1000_hw* %29)
  %31 = call i32 (...) @cond_resched()
  %32 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %33 = load i32, i32* @EEPROM_WREN_OPCODE_SPI, align 4
  %34 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %10, align 8
  %35 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @e1000_shift_out_ee_bits(%struct.e1000_hw* %32, i32 %33, i32 %36)
  %38 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %39 = call i32 @e1000_standby_eeprom(%struct.e1000_hw* %38)
  %40 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %10, align 8
  %41 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 8
  br i1 %43, label %44, label %51

44:                                               ; preds = %28
  %45 = load i32, i32* %7, align 4
  %46 = icmp sge i32 %45, 128
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load i32, i32* @EEPROM_A8_OPCODE_SPI, align 4
  %49 = load i32, i32* %12, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %12, align 4
  br label %51

51:                                               ; preds = %47, %44, %28
  %52 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %53 = load i32, i32* %12, align 4
  %54 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %10, align 8
  %55 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @e1000_shift_out_ee_bits(%struct.e1000_hw* %52, i32 %53, i32 %56)
  %58 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %59, %60
  %62 = mul nsw i32 %61, 2
  %63 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %10, align 8
  %64 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @e1000_shift_out_ee_bits(%struct.e1000_hw* %58, i32 %62, i32 %65)
  br label %67

67:                                               ; preds = %99, %51
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %100

71:                                               ; preds = %67
  %72 = load i32*, i32** %9, align 8
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* %13, align 4
  %78 = ashr i32 %77, 8
  %79 = load i32, i32* %13, align 4
  %80 = shl i32 %79, 8
  %81 = or i32 %78, %80
  store i32 %81, i32* %13, align 4
  %82 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %83 = load i32, i32* %13, align 4
  %84 = call i32 @e1000_shift_out_ee_bits(%struct.e1000_hw* %82, i32 %83, i32 16)
  %85 = load i32, i32* %11, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* %11, align 4
  %89 = add nsw i32 %87, %88
  %90 = mul nsw i32 %89, 2
  %91 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %10, align 8
  %92 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = srem i32 %90, %93
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %71
  %97 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %98 = call i32 @e1000_standby_eeprom(%struct.e1000_hw* %97)
  br label %100

99:                                               ; preds = %71
  br label %67

100:                                              ; preds = %96, %67
  br label %16

101:                                              ; preds = %16
  %102 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %102, i32* %5, align 4
  br label %103

103:                                              ; preds = %101, %25
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local i64 @e1000_spi_eeprom_ready(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_standby_eeprom(%struct.e1000_hw*) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @e1000_shift_out_ee_bits(%struct.e1000_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
