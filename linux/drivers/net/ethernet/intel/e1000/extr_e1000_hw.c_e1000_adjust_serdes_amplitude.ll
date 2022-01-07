; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_adjust_serdes_amplitude.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_adjust_serdes_amplitude.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i64, i32 }

@e1000_media_type_internal_serdes = common dso_local global i64 0, align 8
@E1000_SUCCESS = common dso_local global i64 0, align 8
@EEPROM_SERDES_AMPLITUDE = common dso_local global i32 0, align 4
@EEPROM_RESERVED_WORD = common dso_local global i32 0, align 4
@EEPROM_SERDES_AMPLITUDE_MASK = common dso_local global i32 0, align 4
@M88E1000_PHY_EXT_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_adjust_serdes_amplitude to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_adjust_serdes_amplitude(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %6 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %7 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @e1000_media_type_internal_serdes, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %12, i64* %2, align 8
  br label %47

13:                                               ; preds = %1
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %15 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %18 [
    i32 129, label %17
    i32 128, label %17
  ]

17:                                               ; preds = %13, %13
  br label %20

18:                                               ; preds = %13
  %19 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %19, i64* %2, align 8
  br label %47

20:                                               ; preds = %17
  %21 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %22 = load i32, i32* @EEPROM_SERDES_AMPLITUDE, align 4
  %23 = call i64 @e1000_read_eeprom(%struct.e1000_hw* %21, i32 %22, i32 1, i32* %4)
  store i64 %23, i64* %5, align 8
  %24 = load i64, i64* %5, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i64, i64* %5, align 8
  store i64 %27, i64* %2, align 8
  br label %47

28:                                               ; preds = %20
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @EEPROM_RESERVED_WORD, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %28
  %33 = load i32, i32* @EEPROM_SERDES_AMPLITUDE_MASK, align 4
  %34 = load i32, i32* %4, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %4, align 4
  %36 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %37 = load i32, i32* @M88E1000_PHY_EXT_CTRL, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i64 @e1000_write_phy_reg(%struct.e1000_hw* %36, i32 %37, i32 %38)
  store i64 %39, i64* %5, align 8
  %40 = load i64, i64* %5, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %32
  %43 = load i64, i64* %5, align 8
  store i64 %43, i64* %2, align 8
  br label %47

44:                                               ; preds = %32
  br label %45

45:                                               ; preds = %44, %28
  %46 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %46, i64* %2, align 8
  br label %47

47:                                               ; preds = %45, %42, %26, %18, %11
  %48 = load i64, i64* %2, align 8
  ret i64 %48
}

declare dso_local i64 @e1000_read_eeprom(%struct.e1000_hw*, i32, i32, i32*) #1

declare dso_local i64 @e1000_write_phy_reg(%struct.e1000_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
