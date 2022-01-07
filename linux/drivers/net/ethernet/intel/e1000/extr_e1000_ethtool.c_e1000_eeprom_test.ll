; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_ethtool.c_e1000_eeprom_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_ethtool.c_e1000_eeprom_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { %struct.e1000_hw }
%struct.e1000_hw = type { i32 }

@EEPROM_CHECKSUM_REG = common dso_local global i64 0, align 8
@EEPROM_SUM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_adapter*, i32*)* @e1000_eeprom_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_eeprom_test(%struct.e1000_adapter* %0, i32* %1) #0 {
  %3 = alloca %struct.e1000_adapter*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %9, i32 0, i32 0
  store %struct.e1000_hw* %10, %struct.e1000_hw** %5, align 8
  store i64 0, i64* %7, align 8
  %11 = load i32*, i32** %4, align 8
  store i32 0, i32* %11, align 4
  store i64 0, i64* %8, align 8
  br label %12

12:                                               ; preds = %28, %2
  %13 = load i64, i64* %8, align 8
  %14 = load i64, i64* @EEPROM_CHECKSUM_REG, align 8
  %15 = add nsw i64 %14, 1
  %16 = icmp slt i64 %13, %15
  br i1 %16, label %17, label %31

17:                                               ; preds = %12
  %18 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %19 = load i64, i64* %8, align 8
  %20 = call i64 @e1000_read_eeprom(%struct.e1000_hw* %18, i64 %19, i32 1, i64* %6)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32*, i32** %4, align 8
  store i32 1, i32* %23, align 4
  br label %31

24:                                               ; preds = %17
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* %7, align 8
  %27 = add nsw i64 %26, %25
  store i64 %27, i64* %7, align 8
  br label %28

28:                                               ; preds = %24
  %29 = load i64, i64* %8, align 8
  %30 = add nsw i64 %29, 1
  store i64 %30, i64* %8, align 8
  br label %12

31:                                               ; preds = %22, %12
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* @EEPROM_SUM, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = load i32*, i32** %4, align 8
  store i32 2, i32* %40, align 4
  br label %41

41:                                               ; preds = %39, %35, %31
  %42 = load i32*, i32** %4, align 8
  %43 = load i32, i32* %42, align 4
  ret i32 %43
}

declare dso_local i64 @e1000_read_eeprom(%struct.e1000_hw*, i64, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
