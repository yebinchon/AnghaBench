; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_common.c_ixgbe_read_eeprom_buffer_bit_bang.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_common.c_ixgbe_read_eeprom_buffer_bit_bang.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IXGBE_EEPROM_READ_OPCODE_SPI = common dso_local global i32 0, align 4
@IXGBE_ERR_EEPROM = common dso_local global i64 0, align 8
@IXGBE_EEPROM_A8_OPCODE_SPI = common dso_local global i32 0, align 4
@IXGBE_EEPROM_OPCODE_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*, i32, i32, i32*)* @ixgbe_read_eeprom_buffer_bit_bang to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbe_read_eeprom_buffer_bit_bang(%struct.ixgbe_hw* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.ixgbe_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %14 = load i32, i32* @IXGBE_EEPROM_READ_OPCODE_SPI, align 4
  store i32 %14, i32* %12, align 4
  %15 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %16 = call i64 @ixgbe_acquire_eeprom(%struct.ixgbe_hw* %15)
  store i64 %16, i64* %10, align 8
  %17 = load i64, i64* %10, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i64, i64* %10, align 8
  store i64 %20, i64* %5, align 8
  br label %83

21:                                               ; preds = %4
  %22 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %23 = call i64 @ixgbe_ready_eeprom(%struct.ixgbe_hw* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %27 = call i32 @ixgbe_release_eeprom(%struct.ixgbe_hw* %26)
  %28 = load i64, i64* @IXGBE_ERR_EEPROM, align 8
  store i64 %28, i64* %5, align 8
  br label %83

29:                                               ; preds = %21
  store i32 0, i32* %13, align 4
  br label %30

30:                                               ; preds = %77, %29
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %80

34:                                               ; preds = %30
  %35 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %36 = call i32 @ixgbe_standby_eeprom(%struct.ixgbe_hw* %35)
  %37 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %38 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 8
  br i1 %41, label %42, label %51

42:                                               ; preds = %34
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %13, align 4
  %45 = add nsw i32 %43, %44
  %46 = icmp sge i32 %45, 128
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load i32, i32* @IXGBE_EEPROM_A8_OPCODE_SPI, align 4
  %49 = load i32, i32* %12, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %12, align 4
  br label %51

51:                                               ; preds = %47, %42, %34
  %52 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* @IXGBE_EEPROM_OPCODE_BITS, align 4
  %55 = call i32 @ixgbe_shift_out_eeprom_bits(%struct.ixgbe_hw* %52, i32 %53, i32 %54)
  %56 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %13, align 4
  %59 = add nsw i32 %57, %58
  %60 = mul nsw i32 %59, 2
  %61 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %62 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @ixgbe_shift_out_eeprom_bits(%struct.ixgbe_hw* %56, i32 %60, i32 %64)
  %66 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %67 = call i32 @ixgbe_shift_in_eeprom_bits(%struct.ixgbe_hw* %66, i32 16)
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = ashr i32 %68, 8
  %70 = load i32, i32* %11, align 4
  %71 = shl i32 %70, 8
  %72 = or i32 %69, %71
  %73 = load i32*, i32** %9, align 8
  %74 = load i32, i32* %13, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32 %72, i32* %76, align 4
  br label %77

77:                                               ; preds = %51
  %78 = load i32, i32* %13, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %13, align 4
  br label %30

80:                                               ; preds = %30
  %81 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %82 = call i32 @ixgbe_release_eeprom(%struct.ixgbe_hw* %81)
  store i64 0, i64* %5, align 8
  br label %83

83:                                               ; preds = %80, %25, %19
  %84 = load i64, i64* %5, align 8
  ret i64 %84
}

declare dso_local i64 @ixgbe_acquire_eeprom(%struct.ixgbe_hw*) #1

declare dso_local i64 @ixgbe_ready_eeprom(%struct.ixgbe_hw*) #1

declare dso_local i32 @ixgbe_release_eeprom(%struct.ixgbe_hw*) #1

declare dso_local i32 @ixgbe_standby_eeprom(%struct.ixgbe_hw*) #1

declare dso_local i32 @ixgbe_shift_out_eeprom_bits(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @ixgbe_shift_in_eeprom_bits(%struct.ixgbe_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
