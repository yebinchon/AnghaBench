; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_common.c_ixgbe_write_eewr_buffer_generic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_common.c_ixgbe_write_eewr_buffer_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ixgbe_hw.0*)* }
%struct.ixgbe_hw.0 = type opaque

@IXGBE_ERR_INVALID_ARGUMENT = common dso_local global i64 0, align 8
@IXGBE_ERR_EEPROM = common dso_local global i64 0, align 8
@IXGBE_EEPROM_RW_ADDR_SHIFT = common dso_local global i64 0, align 8
@IXGBE_EEPROM_RW_REG_DATA = common dso_local global i64 0, align 8
@IXGBE_EEPROM_RW_REG_START = common dso_local global i64 0, align 8
@IXGBE_NVM_POLL_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Eeprom write EEWR timed out\0A\00", align 1
@IXGBE_EEWR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ixgbe_write_eewr_buffer_generic(%struct.ixgbe_hw* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.ixgbe_hw*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %13 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %14 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32 (%struct.ixgbe_hw.0*)*, i32 (%struct.ixgbe_hw.0*)** %16, align 8
  %18 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %19 = bitcast %struct.ixgbe_hw* %18 to %struct.ixgbe_hw.0*
  %20 = call i32 %17(%struct.ixgbe_hw.0* %19)
  %21 = load i64, i64* %8, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i64, i64* @IXGBE_ERR_INVALID_ARGUMENT, align 8
  store i64 %24, i64* %5, align 8
  br label %82

25:                                               ; preds = %4
  %26 = load i64, i64* %7, align 8
  %27 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %28 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sge i64 %26, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i64, i64* @IXGBE_ERR_EEPROM, align 8
  store i64 %33, i64* %5, align 8
  br label %82

34:                                               ; preds = %25
  store i64 0, i64* %12, align 8
  br label %35

35:                                               ; preds = %78, %34
  %36 = load i64, i64* %12, align 8
  %37 = load i64, i64* %8, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %81

39:                                               ; preds = %35
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* %12, align 8
  %42 = add nsw i64 %40, %41
  %43 = load i64, i64* @IXGBE_EEPROM_RW_ADDR_SHIFT, align 8
  %44 = shl i64 %42, %43
  %45 = load i64*, i64** %9, align 8
  %46 = load i64, i64* %12, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @IXGBE_EEPROM_RW_REG_DATA, align 8
  %50 = shl i64 %48, %49
  %51 = or i64 %44, %50
  %52 = load i64, i64* @IXGBE_EEPROM_RW_REG_START, align 8
  %53 = or i64 %51, %52
  store i64 %53, i64* %10, align 8
  %54 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %55 = load i32, i32* @IXGBE_NVM_POLL_WRITE, align 4
  %56 = call i64 @ixgbe_poll_eerd_eewr_done(%struct.ixgbe_hw* %54, i32 %55)
  store i64 %56, i64* %11, align 8
  %57 = load i64, i64* %11, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %39
  %60 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %61 = call i32 @hw_dbg(%struct.ixgbe_hw* %60, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %62 = load i64, i64* %11, align 8
  store i64 %62, i64* %5, align 8
  br label %82

63:                                               ; preds = %39
  %64 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %65 = load i32, i32* @IXGBE_EEWR, align 4
  %66 = load i64, i64* %10, align 8
  %67 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %64, i32 %65, i64 %66)
  %68 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %69 = load i32, i32* @IXGBE_NVM_POLL_WRITE, align 4
  %70 = call i64 @ixgbe_poll_eerd_eewr_done(%struct.ixgbe_hw* %68, i32 %69)
  store i64 %70, i64* %11, align 8
  %71 = load i64, i64* %11, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %63
  %74 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %75 = call i32 @hw_dbg(%struct.ixgbe_hw* %74, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %76 = load i64, i64* %11, align 8
  store i64 %76, i64* %5, align 8
  br label %82

77:                                               ; preds = %63
  br label %78

78:                                               ; preds = %77
  %79 = load i64, i64* %12, align 8
  %80 = add nsw i64 %79, 1
  store i64 %80, i64* %12, align 8
  br label %35

81:                                               ; preds = %35
  store i64 0, i64* %5, align 8
  br label %82

82:                                               ; preds = %81, %73, %59, %32, %23
  %83 = load i64, i64* %5, align 8
  ret i64 %83
}

declare dso_local i64 @ixgbe_poll_eerd_eewr_done(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
