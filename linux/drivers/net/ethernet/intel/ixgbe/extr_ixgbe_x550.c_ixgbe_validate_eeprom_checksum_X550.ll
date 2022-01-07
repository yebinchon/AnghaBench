; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_x550.c_ixgbe_validate_eeprom_checksum_X550.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_x550.c_ixgbe_validate_eeprom_checksum_X550.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ixgbe_hw.0*, i32, i64*)*, i32 (%struct.ixgbe_hw.1*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque

@.str = private unnamed_addr constant [20 x i8] c"EEPROM read failed\0A\00", align 1
@IXGBE_EEPROM_CHECKSUM = common dso_local global i32 0, align 4
@IXGBE_ERR_EEPROM_CHECKSUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Invalid EEPROM checksum\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_hw*, i64*)* @ixgbe_validate_eeprom_checksum_X550 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_validate_eeprom_checksum_X550(%struct.ixgbe_hw* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 0, i64* %8, align 8
  %9 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %10 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32 (%struct.ixgbe_hw.0*, i32, i64*)*, i32 (%struct.ixgbe_hw.0*, i32, i64*)** %12, align 8
  %14 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %15 = bitcast %struct.ixgbe_hw* %14 to %struct.ixgbe_hw.0*
  %16 = call i32 %13(%struct.ixgbe_hw.0* %15, i32 0, i64* %7)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %21 = call i32 @hw_dbg(%struct.ixgbe_hw* %20, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %3, align 4
  br label %63

23:                                               ; preds = %2
  %24 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %25 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32 (%struct.ixgbe_hw.1*)*, i32 (%struct.ixgbe_hw.1*)** %27, align 8
  %29 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %30 = bitcast %struct.ixgbe_hw* %29 to %struct.ixgbe_hw.1*
  %31 = call i32 %28(%struct.ixgbe_hw.1* %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %23
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %3, align 4
  br label %63

36:                                               ; preds = %23
  %37 = load i32, i32* %6, align 4
  %38 = and i32 %37, 65535
  %39 = sext i32 %38 to i64
  store i64 %39, i64* %7, align 8
  %40 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %41 = load i32, i32* @IXGBE_EEPROM_CHECKSUM, align 4
  %42 = call i32 @ixgbe_read_ee_hostif_X550(%struct.ixgbe_hw* %40, i32 %41, i64* %8)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %3, align 4
  br label %63

47:                                               ; preds = %36
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* %7, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load i32, i32* @IXGBE_ERR_EEPROM_CHECKSUM, align 4
  store i32 %52, i32* %6, align 4
  %53 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %54 = call i32 @hw_dbg(%struct.ixgbe_hw* %53, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %55

55:                                               ; preds = %51, %47
  %56 = load i64*, i64** %5, align 8
  %57 = icmp ne i64* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i64, i64* %7, align 8
  %60 = load i64*, i64** %5, align 8
  store i64 %59, i64* %60, align 8
  br label %61

61:                                               ; preds = %58, %55
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %61, %45, %34, %19
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*) #1

declare dso_local i32 @ixgbe_read_ee_hostif_X550(%struct.ixgbe_hw*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
