; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_do_read_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_do_read_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i64, %struct.e1000_eeprom_info }
%struct.e1000_eeprom_info = type { i64, i64, i32, i32 }

@e1000_ce4100 = common dso_local global i64 0, align 8
@GBE_CONFIG_BASE_VIRT = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"\22words\22 parameter out of bounds. Words = %d,size = %d\0A\00", align 1
@E1000_ERR_EEPROM = common dso_local global i64 0, align 8
@e1000_eeprom_spi = common dso_local global i64 0, align 8
@EEPROM_READ_OPCODE_SPI = common dso_local global i64 0, align 8
@EEPROM_A8_OPCODE_SPI = common dso_local global i64 0, align 8
@e1000_eeprom_microwire = common dso_local global i64 0, align 8
@EEPROM_READ_OPCODE_MICROWIRE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*, i64, i64, i64*)* @e1000_do_read_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_do_read_eeprom(%struct.e1000_hw* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.e1000_hw*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.e1000_eeprom_info*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %15 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %14, i32 0, i32 1
  store %struct.e1000_eeprom_info* %15, %struct.e1000_eeprom_info** %10, align 8
  store i64 0, i64* %11, align 8
  %16 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %17 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @e1000_ce4100, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %4
  %22 = load i32, i32* @GBE_CONFIG_BASE_VIRT, align 4
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load i64*, i64** %9, align 8
  %26 = call i32 @GBE_CONFIG_FLASH_READ(i32 %22, i64 %23, i64 %24, i64* %25)
  %27 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %27, i64* %5, align 8
  br label %167

28:                                               ; preds = %4
  %29 = load i64, i64* %7, align 8
  %30 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %10, align 8
  %31 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sge i64 %29, %32
  br i1 %33, label %45, label %34

34:                                               ; preds = %28
  %35 = load i64, i64* %8, align 8
  %36 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %10, align 8
  %37 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %7, align 8
  %40 = sub nsw i64 %38, %39
  %41 = icmp sgt i64 %35, %40
  br i1 %41, label %45, label %42

42:                                               ; preds = %34
  %43 = load i64, i64* %8, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %42, %34, %28
  %46 = load i64, i64* %7, align 8
  %47 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %10, align 8
  %48 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @e_dbg(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i64 %46, i64 %49)
  %51 = load i64, i64* @E1000_ERR_EEPROM, align 8
  %52 = sub nsw i64 0, %51
  store i64 %52, i64* %5, align 8
  br label %167

53:                                               ; preds = %42
  %54 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %55 = call i64 @e1000_acquire_eeprom(%struct.e1000_hw* %54)
  %56 = load i64, i64* @E1000_SUCCESS, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i64, i64* @E1000_ERR_EEPROM, align 8
  %60 = sub nsw i64 0, %59
  store i64 %60, i64* %5, align 8
  br label %167

61:                                               ; preds = %53
  %62 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %10, align 8
  %63 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @e1000_eeprom_spi, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %124

67:                                               ; preds = %61
  %68 = load i64, i64* @EEPROM_READ_OPCODE_SPI, align 8
  store i64 %68, i64* %13, align 8
  %69 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %70 = call i64 @e1000_spi_eeprom_ready(%struct.e1000_hw* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %74 = call i32 @e1000_release_eeprom(%struct.e1000_hw* %73)
  %75 = load i64, i64* @E1000_ERR_EEPROM, align 8
  %76 = sub nsw i64 0, %75
  store i64 %76, i64* %5, align 8
  br label %167

77:                                               ; preds = %67
  %78 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %79 = call i32 @e1000_standby_eeprom(%struct.e1000_hw* %78)
  %80 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %10, align 8
  %81 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = icmp eq i32 %82, 8
  br i1 %83, label %84, label %91

84:                                               ; preds = %77
  %85 = load i64, i64* %7, align 8
  %86 = icmp sge i64 %85, 128
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = load i64, i64* @EEPROM_A8_OPCODE_SPI, align 8
  %89 = load i64, i64* %13, align 8
  %90 = or i64 %89, %88
  store i64 %90, i64* %13, align 8
  br label %91

91:                                               ; preds = %87, %84, %77
  %92 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %93 = load i64, i64* %13, align 8
  %94 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %10, align 8
  %95 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @e1000_shift_out_ee_bits(%struct.e1000_hw* %92, i64 %93, i32 %96)
  %98 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %99 = load i64, i64* %7, align 8
  %100 = mul nsw i64 %99, 2
  %101 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %10, align 8
  %102 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @e1000_shift_out_ee_bits(%struct.e1000_hw* %98, i64 %100, i32 %103)
  store i64 0, i64* %11, align 8
  br label %105

105:                                              ; preds = %120, %91
  %106 = load i64, i64* %11, align 8
  %107 = load i64, i64* %8, align 8
  %108 = icmp slt i64 %106, %107
  br i1 %108, label %109, label %123

109:                                              ; preds = %105
  %110 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %111 = call i64 @e1000_shift_in_ee_bits(%struct.e1000_hw* %110, i32 16)
  store i64 %111, i64* %12, align 8
  %112 = load i64, i64* %12, align 8
  %113 = ashr i64 %112, 8
  %114 = load i64, i64* %12, align 8
  %115 = shl i64 %114, 8
  %116 = or i64 %113, %115
  %117 = load i64*, i64** %9, align 8
  %118 = load i64, i64* %11, align 8
  %119 = getelementptr inbounds i64, i64* %117, i64 %118
  store i64 %116, i64* %119, align 8
  br label %120

120:                                              ; preds = %109
  %121 = load i64, i64* %11, align 8
  %122 = add nsw i64 %121, 1
  store i64 %122, i64* %11, align 8
  br label %105

123:                                              ; preds = %105
  br label %163

124:                                              ; preds = %61
  %125 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %10, align 8
  %126 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @e1000_eeprom_microwire, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %162

130:                                              ; preds = %124
  store i64 0, i64* %11, align 8
  br label %131

131:                                              ; preds = %158, %130
  %132 = load i64, i64* %11, align 8
  %133 = load i64, i64* %8, align 8
  %134 = icmp slt i64 %132, %133
  br i1 %134, label %135, label %161

135:                                              ; preds = %131
  %136 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %137 = load i64, i64* @EEPROM_READ_OPCODE_MICROWIRE, align 8
  %138 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %10, align 8
  %139 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @e1000_shift_out_ee_bits(%struct.e1000_hw* %136, i64 %137, i32 %140)
  %142 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %143 = load i64, i64* %7, align 8
  %144 = load i64, i64* %11, align 8
  %145 = add nsw i64 %143, %144
  %146 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %10, align 8
  %147 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @e1000_shift_out_ee_bits(%struct.e1000_hw* %142, i64 %145, i32 %148)
  %150 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %151 = call i64 @e1000_shift_in_ee_bits(%struct.e1000_hw* %150, i32 16)
  %152 = load i64*, i64** %9, align 8
  %153 = load i64, i64* %11, align 8
  %154 = getelementptr inbounds i64, i64* %152, i64 %153
  store i64 %151, i64* %154, align 8
  %155 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %156 = call i32 @e1000_standby_eeprom(%struct.e1000_hw* %155)
  %157 = call i32 (...) @cond_resched()
  br label %158

158:                                              ; preds = %135
  %159 = load i64, i64* %11, align 8
  %160 = add nsw i64 %159, 1
  store i64 %160, i64* %11, align 8
  br label %131

161:                                              ; preds = %131
  br label %162

162:                                              ; preds = %161, %124
  br label %163

163:                                              ; preds = %162, %123
  %164 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %165 = call i32 @e1000_release_eeprom(%struct.e1000_hw* %164)
  %166 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %166, i64* %5, align 8
  br label %167

167:                                              ; preds = %163, %72, %58, %45, %21
  %168 = load i64, i64* %5, align 8
  ret i64 %168
}

declare dso_local i32 @GBE_CONFIG_FLASH_READ(i32, i64, i64, i64*) #1

declare dso_local i32 @e_dbg(i8*, i64, i64) #1

declare dso_local i64 @e1000_acquire_eeprom(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_spi_eeprom_ready(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_release_eeprom(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_standby_eeprom(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_shift_out_ee_bits(%struct.e1000_hw*, i64, i32) #1

declare dso_local i64 @e1000_shift_in_ee_bits(%struct.e1000_hw*, i32) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
