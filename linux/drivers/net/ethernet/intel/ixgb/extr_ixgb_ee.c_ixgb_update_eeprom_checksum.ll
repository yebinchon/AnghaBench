; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgb/extr_ixgb_ee.c_ixgb_update_eeprom_checksum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgb/extr_ixgb_ee.c_ixgb_update_eeprom_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgb_hw = type { i32 }

@EEPROM_CHECKSUM_REG = common dso_local global i64 0, align 8
@EEPROM_SUM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgb_update_eeprom_checksum(%struct.ixgb_hw* %0) #0 {
  %2 = alloca %struct.ixgb_hw*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.ixgb_hw* %0, %struct.ixgb_hw** %2, align 8
  store i64 0, i64* %3, align 8
  store i64 0, i64* %4, align 8
  br label %5

5:                                                ; preds = %15, %1
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* @EEPROM_CHECKSUM_REG, align 8
  %8 = icmp slt i64 %6, %7
  br i1 %8, label %9, label %18

9:                                                ; preds = %5
  %10 = load %struct.ixgb_hw*, %struct.ixgb_hw** %2, align 8
  %11 = load i64, i64* %4, align 8
  %12 = call i64 @ixgb_read_eeprom(%struct.ixgb_hw* %10, i64 %11)
  %13 = load i64, i64* %3, align 8
  %14 = add nsw i64 %13, %12
  store i64 %14, i64* %3, align 8
  br label %15

15:                                               ; preds = %9
  %16 = load i64, i64* %4, align 8
  %17 = add nsw i64 %16, 1
  store i64 %17, i64* %4, align 8
  br label %5

18:                                               ; preds = %5
  %19 = load i64, i64* @EEPROM_SUM, align 8
  %20 = load i64, i64* %3, align 8
  %21 = sub nsw i64 %19, %20
  store i64 %21, i64* %3, align 8
  %22 = load %struct.ixgb_hw*, %struct.ixgb_hw** %2, align 8
  %23 = load i64, i64* @EEPROM_CHECKSUM_REG, align 8
  %24 = load i64, i64* %3, align 8
  %25 = call i32 @ixgb_write_eeprom(%struct.ixgb_hw* %22, i64 %23, i64 %24)
  ret void
}

declare dso_local i64 @ixgb_read_eeprom(%struct.ixgb_hw*, i64) #1

declare dso_local i32 @ixgb_write_eeprom(%struct.ixgb_hw*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
