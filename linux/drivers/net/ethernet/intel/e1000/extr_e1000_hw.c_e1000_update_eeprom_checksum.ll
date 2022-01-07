; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_update_eeprom_checksum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_update_eeprom_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }

@EEPROM_CHECKSUM_REG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"EEPROM Read Error\0A\00", align 1
@E1000_ERR_EEPROM = common dso_local global i32 0, align 4
@EEPROM_SUM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"EEPROM Write Error\0A\00", align 1
@E1000_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @e1000_update_eeprom_checksum(%struct.e1000_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  br label %7

7:                                                ; preds = %24, %1
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* @EEPROM_CHECKSUM_REG, align 8
  %10 = icmp slt i64 %8, %9
  br i1 %10, label %11, label %27

11:                                               ; preds = %7
  %12 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %13 = load i64, i64* %5, align 8
  %14 = call i64 @e1000_read_eeprom(%struct.e1000_hw* %12, i64 %13, i32 1, i64* %6)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = call i32 @e_dbg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @E1000_ERR_EEPROM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %41

20:                                               ; preds = %11
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* %4, align 8
  %23 = add nsw i64 %22, %21
  store i64 %23, i64* %4, align 8
  br label %24

24:                                               ; preds = %20
  %25 = load i64, i64* %5, align 8
  %26 = add nsw i64 %25, 1
  store i64 %26, i64* %5, align 8
  br label %7

27:                                               ; preds = %7
  %28 = load i64, i64* @EEPROM_SUM, align 8
  %29 = load i64, i64* %4, align 8
  %30 = sub nsw i64 %28, %29
  store i64 %30, i64* %4, align 8
  %31 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %32 = load i64, i64* @EEPROM_CHECKSUM_REG, align 8
  %33 = call i64 @e1000_write_eeprom(%struct.e1000_hw* %31, i64 %32, i32 1, i64* %4)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %27
  %36 = call i32 @e_dbg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @E1000_ERR_EEPROM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %41

39:                                               ; preds = %27
  %40 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %39, %35, %16
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i64 @e1000_read_eeprom(%struct.e1000_hw*, i64, i32, i64*) #1

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i64 @e1000_write_eeprom(%struct.e1000_hw*, i64, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
