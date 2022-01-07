; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_common.c_ixgbe_write_eeprom_buffer_bit_bang.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_common.c_ixgbe_write_eeprom_buffer_bit_bang.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@IXGBE_EEPROM_WRITE_OPCODE_SPI = common dso_local global i32 0, align 4
@IXGBE_ERR_EEPROM = common dso_local global i64 0, align 8
@IXGBE_EEPROM_WREN_OPCODE_SPI = common dso_local global i32 0, align 4
@IXGBE_EEPROM_OPCODE_BITS = common dso_local global i32 0, align 4
@IXGBE_EEPROM_A8_OPCODE_SPI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*, i32, i32, i32*)* @ixgbe_write_eeprom_buffer_bit_bang to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbe_write_eeprom_buffer_bit_bang(%struct.ixgbe_hw* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.ixgbe_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %15 = load i32, i32* @IXGBE_EEPROM_WRITE_OPCODE_SPI, align 4
  store i32 %15, i32* %14, align 4
  %16 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %17 = call i64 @ixgbe_acquire_eeprom(%struct.ixgbe_hw* %16)
  store i64 %17, i64* %10, align 8
  %18 = load i64, i64* %10, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i64, i64* %10, align 8
  store i64 %21, i64* %5, align 8
  br label %121

22:                                               ; preds = %4
  %23 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %24 = call i64 @ixgbe_ready_eeprom(%struct.ixgbe_hw* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %28 = call i32 @ixgbe_release_eeprom(%struct.ixgbe_hw* %27)
  %29 = load i64, i64* @IXGBE_ERR_EEPROM, align 8
  store i64 %29, i64* %5, align 8
  br label %121

30:                                               ; preds = %22
  store i32 0, i32* %13, align 4
  br label %31

31:                                               ; preds = %115, %30
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %118

35:                                               ; preds = %31
  %36 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %37 = call i32 @ixgbe_standby_eeprom(%struct.ixgbe_hw* %36)
  %38 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %39 = load i32, i32* @IXGBE_EEPROM_WREN_OPCODE_SPI, align 4
  %40 = load i32, i32* @IXGBE_EEPROM_OPCODE_BITS, align 4
  %41 = call i32 @ixgbe_shift_out_eeprom_bits(%struct.ixgbe_hw* %38, i32 %39, i32 %40)
  %42 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %43 = call i32 @ixgbe_standby_eeprom(%struct.ixgbe_hw* %42)
  %44 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %45 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 8
  br i1 %48, label %49, label %58

49:                                               ; preds = %35
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %13, align 4
  %52 = add nsw i32 %50, %51
  %53 = icmp sge i32 %52, 128
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load i32, i32* @IXGBE_EEPROM_A8_OPCODE_SPI, align 4
  %56 = load i32, i32* %14, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %14, align 4
  br label %58

58:                                               ; preds = %54, %49, %35
  %59 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* @IXGBE_EEPROM_OPCODE_BITS, align 4
  %62 = call i32 @ixgbe_shift_out_eeprom_bits(%struct.ixgbe_hw* %59, i32 %60, i32 %61)
  %63 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %13, align 4
  %66 = add nsw i32 %64, %65
  %67 = mul nsw i32 %66, 2
  %68 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %69 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @ixgbe_shift_out_eeprom_bits(%struct.ixgbe_hw* %63, i32 %67, i32 %71)
  %73 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %74 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %12, align 4
  br label %77

77:                                               ; preds = %106, %58
  %78 = load i32*, i32** %9, align 8
  %79 = load i32, i32* %13, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %11, align 4
  %84 = ashr i32 %83, 8
  %85 = load i32, i32* %11, align 4
  %86 = shl i32 %85, 8
  %87 = or i32 %84, %86
  store i32 %87, i32* %11, align 4
  %88 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %89 = load i32, i32* %11, align 4
  %90 = call i32 @ixgbe_shift_out_eeprom_bits(%struct.ixgbe_hw* %88, i32 %89, i32 16)
  %91 = load i32, i32* %12, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %77
  br label %111

94:                                               ; preds = %77
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* %13, align 4
  %97 = add nsw i32 %95, %96
  %98 = load i32, i32* %12, align 4
  %99 = sub nsw i32 %98, 1
  %100 = and i32 %97, %99
  %101 = load i32, i32* %12, align 4
  %102 = sub nsw i32 %101, 1
  %103 = icmp eq i32 %100, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %94
  br label %111

105:                                              ; preds = %94
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %13, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %13, align 4
  %109 = load i32, i32* %8, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %77, label %111

111:                                              ; preds = %106, %104, %93
  %112 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %113 = call i32 @ixgbe_standby_eeprom(%struct.ixgbe_hw* %112)
  %114 = call i32 @usleep_range(i32 10000, i32 20000)
  br label %115

115:                                              ; preds = %111
  %116 = load i32, i32* %13, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %13, align 4
  br label %31

118:                                              ; preds = %31
  %119 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %120 = call i32 @ixgbe_release_eeprom(%struct.ixgbe_hw* %119)
  store i64 0, i64* %5, align 8
  br label %121

121:                                              ; preds = %118, %26, %20
  %122 = load i64, i64* %5, align 8
  ret i64 %122
}

declare dso_local i64 @ixgbe_acquire_eeprom(%struct.ixgbe_hw*) #1

declare dso_local i64 @ixgbe_ready_eeprom(%struct.ixgbe_hw*) #1

declare dso_local i32 @ixgbe_release_eeprom(%struct.ixgbe_hw*) #1

declare dso_local i32 @ixgbe_standby_eeprom(%struct.ixgbe_hw*) #1

declare dso_local i32 @ixgbe_shift_out_eeprom_bits(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
