; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_write_eeprom_microwire.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_write_eeprom_microwire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_eeprom_info }
%struct.e1000_eeprom_info = type { i64, i32 }

@EEPROM_EWEN_OPCODE_MICROWIRE = common dso_local global i64 0, align 8
@EEPROM_WRITE_OPCODE_MICROWIRE = common dso_local global i64 0, align 8
@EECD = common dso_local global i32 0, align 4
@E1000_EECD_DO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"EEPROM Write did not complete\0A\00", align 1
@E1000_ERR_EEPROM = common dso_local global i32 0, align 4
@EEPROM_EWDS_OPCODE_MICROWIRE = common dso_local global i64 0, align 8
@E1000_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*, i64, i64, i64*)* @e1000_write_eeprom_microwire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_write_eeprom_microwire(%struct.e1000_hw* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.e1000_hw*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.e1000_eeprom_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %15 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %14, i32 0, i32 0
  store %struct.e1000_eeprom_info* %15, %struct.e1000_eeprom_info** %10, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %16 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %17 = load i64, i64* @EEPROM_EWEN_OPCODE_MICROWIRE, align 8
  %18 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %10, align 8
  %19 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, 2
  %22 = call i32 @e1000_shift_out_ee_bits(%struct.e1000_hw* %16, i64 %17, i64 %21)
  %23 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %24 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %10, align 8
  %25 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = sub nsw i32 %26, 2
  %28 = sext i32 %27 to i64
  %29 = call i32 @e1000_shift_out_ee_bits(%struct.e1000_hw* %23, i64 0, i64 %28)
  %30 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %31 = call i32 @e1000_standby_eeprom(%struct.e1000_hw* %30)
  br label %32

32:                                               ; preds = %83, %4
  %33 = load i64, i64* %12, align 8
  %34 = load i64, i64* %8, align 8
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %36, label %89

36:                                               ; preds = %32
  %37 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %38 = load i64, i64* @EEPROM_WRITE_OPCODE_MICROWIRE, align 8
  %39 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %10, align 8
  %40 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @e1000_shift_out_ee_bits(%struct.e1000_hw* %37, i64 %38, i64 %41)
  %43 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* %12, align 8
  %46 = add nsw i64 %44, %45
  %47 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %10, align 8
  %48 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = call i32 @e1000_shift_out_ee_bits(%struct.e1000_hw* %43, i64 %46, i64 %50)
  %52 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %53 = load i64*, i64** %9, align 8
  %54 = load i64, i64* %12, align 8
  %55 = getelementptr inbounds i64, i64* %53, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @e1000_shift_out_ee_bits(%struct.e1000_hw* %52, i64 %56, i64 16)
  %58 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %59 = call i32 @e1000_standby_eeprom(%struct.e1000_hw* %58)
  store i64 0, i64* %13, align 8
  br label %60

60:                                               ; preds = %73, %36
  %61 = load i64, i64* %13, align 8
  %62 = icmp slt i64 %61, 200
  br i1 %62, label %63, label %76

63:                                               ; preds = %60
  %64 = load i32, i32* @EECD, align 4
  %65 = call i32 @er32(i32 %64)
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* @E1000_EECD_DO, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  br label %76

71:                                               ; preds = %63
  %72 = call i32 @udelay(i32 50)
  br label %73

73:                                               ; preds = %71
  %74 = load i64, i64* %13, align 8
  %75 = add nsw i64 %74, 1
  store i64 %75, i64* %13, align 8
  br label %60

76:                                               ; preds = %70, %60
  %77 = load i64, i64* %13, align 8
  %78 = icmp eq i64 %77, 200
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = call i32 @e_dbg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %81 = load i32, i32* @E1000_ERR_EEPROM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %5, align 4
  br label %105

83:                                               ; preds = %76
  %84 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %85 = call i32 @e1000_standby_eeprom(%struct.e1000_hw* %84)
  %86 = call i32 (...) @cond_resched()
  %87 = load i64, i64* %12, align 8
  %88 = add nsw i64 %87, 1
  store i64 %88, i64* %12, align 8
  br label %32

89:                                               ; preds = %32
  %90 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %91 = load i64, i64* @EEPROM_EWDS_OPCODE_MICROWIRE, align 8
  %92 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %10, align 8
  %93 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %94, 2
  %96 = call i32 @e1000_shift_out_ee_bits(%struct.e1000_hw* %90, i64 %91, i64 %95)
  %97 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %98 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %10, align 8
  %99 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = sub nsw i32 %100, 2
  %102 = sext i32 %101 to i64
  %103 = call i32 @e1000_shift_out_ee_bits(%struct.e1000_hw* %97, i64 0, i64 %102)
  %104 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %104, i32* %5, align 4
  br label %105

105:                                              ; preds = %89, %79
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local i32 @e1000_shift_out_ee_bits(%struct.e1000_hw*, i64, i64) #1

declare dso_local i32 @e1000_standby_eeprom(%struct.e1000_hw*) #1

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
