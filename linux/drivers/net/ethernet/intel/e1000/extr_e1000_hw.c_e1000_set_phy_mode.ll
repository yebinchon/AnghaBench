; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_set_phy_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_set_phy_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i64, i64, i32 }

@e1000_82545_rev_3 = common dso_local global i64 0, align 8
@e1000_media_type_copper = common dso_local global i64 0, align 8
@EEPROM_PHY_CLASS_WORD = common dso_local global i32 0, align 4
@EEPROM_RESERVED_WORD = common dso_local global i32 0, align 4
@EEPROM_PHY_CLASS_A = common dso_local global i32 0, align 4
@M88E1000_PHY_PAGE_SELECT = common dso_local global i32 0, align 4
@M88E1000_PHY_GEN_CONTROL = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_set_phy_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_set_phy_mode(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %6 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %7 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @e1000_82545_rev_3, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %54

11:                                               ; preds = %1
  %12 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %13 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @e1000_media_type_copper, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %54

17:                                               ; preds = %11
  %18 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %19 = load i32, i32* @EEPROM_PHY_CLASS_WORD, align 4
  %20 = call i64 @e1000_read_eeprom(%struct.e1000_hw* %18, i32 %19, i32 1, i32* %5)
  store i64 %20, i64* %4, align 8
  %21 = load i64, i64* %4, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i64, i64* %4, align 8
  store i64 %24, i64* %2, align 8
  br label %56

25:                                               ; preds = %17
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @EEPROM_RESERVED_WORD, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %53

29:                                               ; preds = %25
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @EEPROM_PHY_CLASS_A, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %53

34:                                               ; preds = %29
  %35 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %36 = load i32, i32* @M88E1000_PHY_PAGE_SELECT, align 4
  %37 = call i64 @e1000_write_phy_reg(%struct.e1000_hw* %35, i32 %36, i32 11)
  store i64 %37, i64* %4, align 8
  %38 = load i64, i64* %4, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i64, i64* %4, align 8
  store i64 %41, i64* %2, align 8
  br label %56

42:                                               ; preds = %34
  %43 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %44 = load i32, i32* @M88E1000_PHY_GEN_CONTROL, align 4
  %45 = call i64 @e1000_write_phy_reg(%struct.e1000_hw* %43, i32 %44, i32 33028)
  store i64 %45, i64* %4, align 8
  %46 = load i64, i64* %4, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i64, i64* %4, align 8
  store i64 %49, i64* %2, align 8
  br label %56

50:                                               ; preds = %42
  %51 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %52 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %51, i32 0, i32 2
  store i32 0, i32* %52, align 8
  br label %53

53:                                               ; preds = %50, %29, %25
  br label %54

54:                                               ; preds = %53, %11, %1
  %55 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %55, i64* %2, align 8
  br label %56

56:                                               ; preds = %54, %48, %40, %23
  %57 = load i64, i64* %2, align 8
  ret i64 %57
}

declare dso_local i64 @e1000_read_eeprom(%struct.e1000_hw*, i32, i32, i32*) #1

declare dso_local i64 @e1000_write_phy_reg(%struct.e1000_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
