; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_common.c_ixgbe_shift_in_eeprom_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_common.c_ixgbe_shift_in_eeprom_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }

@IXGBE_EEC_DO = common dso_local global i64 0, align 8
@IXGBE_EEC_DI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*, i64)* @ixgbe_shift_in_eeprom_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbe_shift_in_eeprom_bits(%struct.ixgbe_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %7, align 8
  %8 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %9 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %10 = call i32 @IXGBE_EEC(%struct.ixgbe_hw* %9)
  %11 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %8, i32 %10)
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* @IXGBE_EEC_DO, align 8
  %13 = load i64, i64* @IXGBE_EEC_DI, align 8
  %14 = or i64 %12, %13
  %15 = xor i64 %14, -1
  %16 = load i64, i64* %5, align 8
  %17 = and i64 %16, %15
  store i64 %17, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %18

18:                                               ; preds = %45, %2
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* %4, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %48

22:                                               ; preds = %18
  %23 = load i64, i64* %7, align 8
  %24 = shl i64 %23, 1
  store i64 %24, i64* %7, align 8
  %25 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %26 = call i32 @ixgbe_raise_eeprom_clk(%struct.ixgbe_hw* %25, i64* %5)
  %27 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %28 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %29 = call i32 @IXGBE_EEC(%struct.ixgbe_hw* %28)
  %30 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %27, i32 %29)
  store i64 %30, i64* %5, align 8
  %31 = load i64, i64* @IXGBE_EEC_DI, align 8
  %32 = xor i64 %31, -1
  %33 = load i64, i64* %5, align 8
  %34 = and i64 %33, %32
  store i64 %34, i64* %5, align 8
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* @IXGBE_EEC_DO, align 8
  %37 = and i64 %35, %36
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %22
  %40 = load i64, i64* %7, align 8
  %41 = or i64 %40, 1
  store i64 %41, i64* %7, align 8
  br label %42

42:                                               ; preds = %39, %22
  %43 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %44 = call i32 @ixgbe_lower_eeprom_clk(%struct.ixgbe_hw* %43, i64* %5)
  br label %45

45:                                               ; preds = %42
  %46 = load i64, i64* %6, align 8
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* %6, align 8
  br label %18

48:                                               ; preds = %18
  %49 = load i64, i64* %7, align 8
  ret i64 %49
}

declare dso_local i64 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_EEC(%struct.ixgbe_hw*) #1

declare dso_local i32 @ixgbe_raise_eeprom_clk(%struct.ixgbe_hw*, i64*) #1

declare dso_local i32 @ixgbe_lower_eeprom_clk(%struct.ixgbe_hw*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
