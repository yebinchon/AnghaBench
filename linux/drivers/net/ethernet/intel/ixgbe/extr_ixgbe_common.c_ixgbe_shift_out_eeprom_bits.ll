; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_common.c_ixgbe_shift_out_eeprom_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_common.c_ixgbe_shift_out_eeprom_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }

@IXGBE_EEC_DI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_hw*, i64, i64)* @ixgbe_shift_out_eeprom_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_shift_out_eeprom_bits(%struct.ixgbe_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %11 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %12 = call i32 @IXGBE_EEC(%struct.ixgbe_hw* %11)
  %13 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %10, i32 %12)
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %6, align 8
  %15 = sub nsw i64 %14, 1
  %16 = call i64 @BIT(i64 %15)
  store i64 %16, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %17

17:                                               ; preds = %50, %3
  %18 = load i64, i64* %9, align 8
  %19 = load i64, i64* %6, align 8
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %21, label %53

21:                                               ; preds = %17
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* %8, align 8
  %24 = and i64 %22, %23
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load i64, i64* @IXGBE_EEC_DI, align 8
  %28 = load i64, i64* %7, align 8
  %29 = or i64 %28, %27
  store i64 %29, i64* %7, align 8
  br label %35

30:                                               ; preds = %21
  %31 = load i64, i64* @IXGBE_EEC_DI, align 8
  %32 = xor i64 %31, -1
  %33 = load i64, i64* %7, align 8
  %34 = and i64 %33, %32
  store i64 %34, i64* %7, align 8
  br label %35

35:                                               ; preds = %30, %26
  %36 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %37 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %38 = call i32 @IXGBE_EEC(%struct.ixgbe_hw* %37)
  %39 = load i64, i64* %7, align 8
  %40 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %36, i32 %38, i64 %39)
  %41 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %42 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %41)
  %43 = call i32 @udelay(i32 1)
  %44 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %45 = call i32 @ixgbe_raise_eeprom_clk(%struct.ixgbe_hw* %44, i64* %7)
  %46 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %47 = call i32 @ixgbe_lower_eeprom_clk(%struct.ixgbe_hw* %46, i64* %7)
  %48 = load i64, i64* %8, align 8
  %49 = ashr i64 %48, 1
  store i64 %49, i64* %8, align 8
  br label %50

50:                                               ; preds = %35
  %51 = load i64, i64* %9, align 8
  %52 = add nsw i64 %51, 1
  store i64 %52, i64* %9, align 8
  br label %17

53:                                               ; preds = %17
  %54 = load i64, i64* @IXGBE_EEC_DI, align 8
  %55 = xor i64 %54, -1
  %56 = load i64, i64* %7, align 8
  %57 = and i64 %56, %55
  store i64 %57, i64* %7, align 8
  %58 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %59 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %60 = call i32 @IXGBE_EEC(%struct.ixgbe_hw* %59)
  %61 = load i64, i64* %7, align 8
  %62 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %58, i32 %60, i64 %61)
  %63 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %64 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %63)
  ret void
}

declare dso_local i64 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_EEC(%struct.ixgbe_hw*) #1

declare dso_local i64 @BIT(i64) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i64) #1

declare dso_local i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @ixgbe_raise_eeprom_clk(%struct.ixgbe_hw*, i64*) #1

declare dso_local i32 @ixgbe_lower_eeprom_clk(%struct.ixgbe_hw*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
