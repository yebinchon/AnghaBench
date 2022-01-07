; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_nvm.c_igb_read_nvm_spi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_nvm.c_igb_read_nvm_spi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_nvm_info }
%struct.e1000_nvm_info = type { i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.1*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@NVM_READ_OPCODE_SPI = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"nvm parameter(s) out of bounds\0A\00", align 1
@E1000_ERR_NVM = common dso_local global i32 0, align 4
@NVM_A8_OPCODE_SPI = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @igb_read_nvm_spi(%struct.e1000_hw* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.e1000_nvm_info*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64* %3, i64** %8, align 8
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %15 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %14, i32 0, i32 0
  store %struct.e1000_nvm_info* %15, %struct.e1000_nvm_info** %9, align 8
  store i64 0, i64* %10, align 8
  %16 = load i64, i64* @NVM_READ_OPCODE_SPI, align 8
  store i64 %16, i64* %13, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %9, align 8
  %19 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sge i64 %17, %20
  br i1 %21, label %33, label %22

22:                                               ; preds = %4
  %23 = load i64, i64* %7, align 8
  %24 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %9, align 8
  %25 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %6, align 8
  %28 = sub nsw i64 %26, %27
  %29 = icmp sgt i64 %23, %28
  br i1 %29, label %33, label %30

30:                                               ; preds = %22
  %31 = load i64, i64* %7, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %30, %22, %4
  %34 = call i32 @hw_dbg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @E1000_ERR_NVM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %11, align 4
  br label %109

37:                                               ; preds = %30
  %38 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %9, align 8
  %39 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %40, align 8
  %42 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %43 = bitcast %struct.e1000_hw* %42 to %struct.e1000_hw.0*
  %44 = call i32 %41(%struct.e1000_hw.0* %43)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  br label %109

48:                                               ; preds = %37
  %49 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %50 = call i32 @igb_ready_nvm_eeprom(%struct.e1000_hw* %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %101

54:                                               ; preds = %48
  %55 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %56 = call i32 @igb_standby_nvm(%struct.e1000_hw* %55)
  %57 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %9, align 8
  %58 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = icmp eq i32 %59, 8
  br i1 %60, label %61, label %68

61:                                               ; preds = %54
  %62 = load i64, i64* %6, align 8
  %63 = icmp sge i64 %62, 128
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load i64, i64* @NVM_A8_OPCODE_SPI, align 8
  %66 = load i64, i64* %13, align 8
  %67 = or i64 %66, %65
  store i64 %67, i64* %13, align 8
  br label %68

68:                                               ; preds = %64, %61, %54
  %69 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %70 = load i64, i64* %13, align 8
  %71 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %9, align 8
  %72 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @igb_shift_out_eec_bits(%struct.e1000_hw* %69, i64 %70, i32 %73)
  %75 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %76 = load i64, i64* %6, align 8
  %77 = mul nsw i64 %76, 2
  %78 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %9, align 8
  %79 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @igb_shift_out_eec_bits(%struct.e1000_hw* %75, i64 %77, i32 %80)
  store i64 0, i64* %10, align 8
  br label %82

82:                                               ; preds = %97, %68
  %83 = load i64, i64* %10, align 8
  %84 = load i64, i64* %7, align 8
  %85 = icmp slt i64 %83, %84
  br i1 %85, label %86, label %100

86:                                               ; preds = %82
  %87 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %88 = call i64 @igb_shift_in_eec_bits(%struct.e1000_hw* %87, i32 16)
  store i64 %88, i64* %12, align 8
  %89 = load i64, i64* %12, align 8
  %90 = ashr i64 %89, 8
  %91 = load i64, i64* %12, align 8
  %92 = shl i64 %91, 8
  %93 = or i64 %90, %92
  %94 = load i64*, i64** %8, align 8
  %95 = load i64, i64* %10, align 8
  %96 = getelementptr inbounds i64, i64* %94, i64 %95
  store i64 %93, i64* %96, align 8
  br label %97

97:                                               ; preds = %86
  %98 = load i64, i64* %10, align 8
  %99 = add nsw i64 %98, 1
  store i64 %99, i64* %10, align 8
  br label %82

100:                                              ; preds = %82
  br label %101

101:                                              ; preds = %100, %53
  %102 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %9, align 8
  %103 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 1
  %105 = load i32 (%struct.e1000_hw.1*)*, i32 (%struct.e1000_hw.1*)** %104, align 8
  %106 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %107 = bitcast %struct.e1000_hw* %106 to %struct.e1000_hw.1*
  %108 = call i32 %105(%struct.e1000_hw.1* %107)
  br label %109

109:                                              ; preds = %101, %47, %33
  %110 = load i32, i32* %11, align 4
  ret i32 %110
}

declare dso_local i32 @hw_dbg(i8*) #1

declare dso_local i32 @igb_ready_nvm_eeprom(%struct.e1000_hw*) #1

declare dso_local i32 @igb_standby_nvm(%struct.e1000_hw*) #1

declare dso_local i32 @igb_shift_out_eec_bits(%struct.e1000_hw*, i64, i32) #1

declare dso_local i64 @igb_shift_in_eec_bits(%struct.e1000_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
