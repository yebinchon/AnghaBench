; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_phy.c_ixgbe_clock_out_i2c_bit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_phy.c_ixgbe_clock_out_i2c_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }

@IXGBE_I2C_T_HIGH = common dso_local global i32 0, align 4
@IXGBE_I2C_T_LOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"I2C data was not set to %X\0A\00", align 1
@IXGBE_ERR_I2C = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*, i32)* @ixgbe_clock_out_i2c_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbe_clock_out_i2c_bit(%struct.ixgbe_hw* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %9 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %10 = call i32 @IXGBE_I2CCTL(%struct.ixgbe_hw* %9)
  %11 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %8, i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i64 @ixgbe_set_i2c_data(%struct.ixgbe_hw* %12, i32* %7, i32 %13)
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %6, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %2
  %18 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %19 = call i32 @ixgbe_raise_i2c_clk(%struct.ixgbe_hw* %18, i32* %7)
  %20 = load i32, i32* @IXGBE_I2C_T_HIGH, align 4
  %21 = call i32 @udelay(i32 %20)
  %22 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %23 = call i32 @ixgbe_lower_i2c_clk(%struct.ixgbe_hw* %22, i32* %7)
  %24 = load i32, i32* @IXGBE_I2C_T_LOW, align 4
  %25 = call i32 @udelay(i32 %24)
  br label %31

26:                                               ; preds = %2
  %27 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @hw_dbg(%struct.ixgbe_hw* %27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i64, i64* @IXGBE_ERR_I2C, align 8
  store i64 %30, i64* %3, align 8
  br label %32

31:                                               ; preds = %17
  store i64 0, i64* %3, align 8
  br label %32

32:                                               ; preds = %31, %26
  %33 = load i64, i64* %3, align 8
  ret i64 %33
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_I2CCTL(%struct.ixgbe_hw*) #1

declare dso_local i64 @ixgbe_set_i2c_data(%struct.ixgbe_hw*, i32*, i32) #1

declare dso_local i32 @ixgbe_raise_i2c_clk(%struct.ixgbe_hw*, i32*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @ixgbe_lower_i2c_clk(%struct.ixgbe_hw*, i32*) #1

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
