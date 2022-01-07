; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_x540.c_ixgbe_update_eeprom_checksum_X540.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_x540.c_ixgbe_update_eeprom_checksum_X540.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_6__, %struct.TYPE_8__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.ixgbe_hw.0*, i32)*, i64 (%struct.ixgbe_hw.1*, i32)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (%struct.ixgbe_hw.2*, i32, i64*)*, i32 (%struct.ixgbe_hw.3*)* }
%struct.ixgbe_hw.2 = type opaque
%struct.ixgbe_hw.3 = type opaque

@.str = private unnamed_addr constant [20 x i8] c"EEPROM read failed\0A\00", align 1
@IXGBE_GSSR_EEP_SM = common dso_local global i32 0, align 4
@IXGBE_ERR_SWFW_SYNC = common dso_local global i32 0, align 4
@IXGBE_EEPROM_CHECKSUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_hw*)* @ixgbe_update_eeprom_checksum_X540 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_update_eeprom_checksum_X540(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  %6 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %7 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i32 (%struct.ixgbe_hw.2*, i32, i64*)*, i32 (%struct.ixgbe_hw.2*, i32, i64*)** %9, align 8
  %11 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %12 = bitcast %struct.ixgbe_hw* %11 to %struct.ixgbe_hw.2*
  %13 = call i32 %10(%struct.ixgbe_hw.2* %12, i32 0, i64* %5)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %18 = call i32 @hw_dbg(%struct.ixgbe_hw* %17, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %70

20:                                               ; preds = %1
  %21 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %22 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i64 (%struct.ixgbe_hw.1*, i32)*, i64 (%struct.ixgbe_hw.1*, i32)** %24, align 8
  %26 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %27 = bitcast %struct.ixgbe_hw* %26 to %struct.ixgbe_hw.1*
  %28 = load i32, i32* @IXGBE_GSSR_EEP_SM, align 4
  %29 = call i64 %25(%struct.ixgbe_hw.1* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %20
  %32 = load i32, i32* @IXGBE_ERR_SWFW_SYNC, align 4
  store i32 %32, i32* %2, align 4
  br label %70

33:                                               ; preds = %20
  %34 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %35 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load i32 (%struct.ixgbe_hw.3*)*, i32 (%struct.ixgbe_hw.3*)** %37, align 8
  %39 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %40 = bitcast %struct.ixgbe_hw* %39 to %struct.ixgbe_hw.3*
  %41 = call i32 %38(%struct.ixgbe_hw.3* %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %33
  br label %59

45:                                               ; preds = %33
  %46 = load i32, i32* %4, align 4
  %47 = and i32 %46, 65535
  %48 = sext i32 %47 to i64
  store i64 %48, i64* %5, align 8
  %49 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %50 = load i32, i32* @IXGBE_EEPROM_CHECKSUM, align 4
  %51 = load i64, i64* %5, align 8
  %52 = call i32 @ixgbe_write_eewr_generic(%struct.ixgbe_hw* %49, i32 %50, i64 %51)
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  br label %59

56:                                               ; preds = %45
  %57 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %58 = call i32 @ixgbe_update_flash_X540(%struct.ixgbe_hw* %57)
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %56, %55, %44
  %60 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %61 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32 (%struct.ixgbe_hw.0*, i32)*, i32 (%struct.ixgbe_hw.0*, i32)** %63, align 8
  %65 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %66 = bitcast %struct.ixgbe_hw* %65 to %struct.ixgbe_hw.0*
  %67 = load i32, i32* @IXGBE_GSSR_EEP_SM, align 4
  %68 = call i32 %64(%struct.ixgbe_hw.0* %66, i32 %67)
  %69 = load i32, i32* %4, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %59, %31, %16
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*) #1

declare dso_local i32 @ixgbe_write_eewr_generic(%struct.ixgbe_hw*, i32, i64) #1

declare dso_local i32 @ixgbe_update_flash_X540(%struct.ixgbe_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
