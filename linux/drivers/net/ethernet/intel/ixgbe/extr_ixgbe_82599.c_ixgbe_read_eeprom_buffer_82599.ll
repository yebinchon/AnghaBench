; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_82599.c_ixgbe_read_eeprom_buffer_82599.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_82599.c_ixgbe_read_eeprom_buffer_82599.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.ixgbe_eeprom_info }
%struct.ixgbe_eeprom_info = type { i64 }

@ixgbe_eeprom_spi = common dso_local global i64 0, align 8
@IXGBE_EERD_MAX_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_hw*, i32, i32, i32*)* @ixgbe_read_eeprom_buffer_82599 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_read_eeprom_buffer_82599(%struct.ixgbe_hw* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ixgbe_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ixgbe_eeprom_info*, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %11 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %12 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %11, i32 0, i32 0
  store %struct.ixgbe_eeprom_info* %12, %struct.ixgbe_eeprom_info** %10, align 8
  %13 = load %struct.ixgbe_eeprom_info*, %struct.ixgbe_eeprom_info** %10, align 8
  %14 = getelementptr inbounds %struct.ixgbe_eeprom_info, %struct.ixgbe_eeprom_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @ixgbe_eeprom_spi, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %31

18:                                               ; preds = %4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %8, align 4
  %21 = sub nsw i32 %20, 1
  %22 = add nsw i32 %19, %21
  %23 = load i32, i32* @IXGBE_EERD_MAX_ADDR, align 4
  %24 = icmp sle i32 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %18
  %26 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32*, i32** %9, align 8
  %30 = call i32 @ixgbe_read_eerd_buffer_generic(%struct.ixgbe_hw* %26, i32 %27, i32 %28, i32* %29)
  store i32 %30, i32* %5, align 4
  br label %37

31:                                               ; preds = %18, %4
  %32 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32*, i32** %9, align 8
  %36 = call i32 @ixgbe_read_eeprom_buffer_bit_bang_generic(%struct.ixgbe_hw* %32, i32 %33, i32 %34, i32* %35)
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %31, %25
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local i32 @ixgbe_read_eerd_buffer_generic(%struct.ixgbe_hw*, i32, i32, i32*) #1

declare dso_local i32 @ixgbe_read_eeprom_buffer_bit_bang_generic(%struct.ixgbe_hw*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
