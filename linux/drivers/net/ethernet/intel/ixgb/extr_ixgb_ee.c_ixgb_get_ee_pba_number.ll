; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgb/extr_ixgb_ee.c_ixgb_get_ee_pba_number.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgb/extr_ixgb_ee.c_ixgb_get_ee_pba_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgb_hw = type { i32* }

@EEPROM_PBA_1_2_REG = common dso_local global i64 0, align 8
@EEPROM_PBA_3_4_REG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgb_get_ee_pba_number(%struct.ixgb_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ixgb_hw*, align 8
  store %struct.ixgb_hw* %0, %struct.ixgb_hw** %3, align 8
  %4 = load %struct.ixgb_hw*, %struct.ixgb_hw** %3, align 8
  %5 = call i64 @ixgb_check_and_get_eeprom_data(%struct.ixgb_hw* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %24

7:                                                ; preds = %1
  %8 = load %struct.ixgb_hw*, %struct.ixgb_hw** %3, align 8
  %9 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load i64, i64* @EEPROM_PBA_1_2_REG, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @le16_to_cpu(i32 %13)
  %15 = load %struct.ixgb_hw*, %struct.ixgb_hw** %3, align 8
  %16 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i64, i64* @EEPROM_PBA_3_4_REG, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @le16_to_cpu(i32 %20)
  %22 = shl i32 %21, 16
  %23 = or i32 %14, %22
  store i32 %23, i32* %2, align 4
  br label %25

24:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %24, %7
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i64 @ixgb_check_and_get_eeprom_data(%struct.ixgb_hw*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
