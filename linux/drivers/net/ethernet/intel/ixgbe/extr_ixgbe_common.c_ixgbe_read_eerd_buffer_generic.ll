; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_common.c_ixgbe_read_eerd_buffer_generic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_common.c_ixgbe_read_eerd_buffer_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ixgbe_hw.0*)* }
%struct.ixgbe_hw.0 = type opaque

@IXGBE_ERR_INVALID_ARGUMENT = common dso_local global i64 0, align 8
@IXGBE_ERR_EEPROM = common dso_local global i64 0, align 8
@IXGBE_EEPROM_RW_ADDR_SHIFT = common dso_local global i64 0, align 8
@IXGBE_EEPROM_RW_REG_START = common dso_local global i64 0, align 8
@IXGBE_EERD = common dso_local global i32 0, align 4
@IXGBE_NVM_POLL_READ = common dso_local global i32 0, align 4
@IXGBE_EEPROM_RW_REG_DATA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"Eeprom read timed out\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ixgbe_read_eerd_buffer_generic(%struct.ixgbe_hw* %0, i64 %1, i64 %2, i64* %3) #0 {
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
  br label %74

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
  br label %74

34:                                               ; preds = %25
  store i64 0, i64* %12, align 8
  br label %35

35:                                               ; preds = %70, %34
  %36 = load i64, i64* %12, align 8
  %37 = load i64, i64* %8, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %73

39:                                               ; preds = %35
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* %12, align 8
  %42 = add nsw i64 %40, %41
  %43 = load i64, i64* @IXGBE_EEPROM_RW_ADDR_SHIFT, align 8
  %44 = shl i64 %42, %43
  %45 = load i64, i64* @IXGBE_EEPROM_RW_REG_START, align 8
  %46 = or i64 %44, %45
  store i64 %46, i64* %10, align 8
  %47 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %48 = load i32, i32* @IXGBE_EERD, align 4
  %49 = load i64, i64* %10, align 8
  %50 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %47, i32 %48, i64 %49)
  %51 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %52 = load i32, i32* @IXGBE_NVM_POLL_READ, align 4
  %53 = call i64 @ixgbe_poll_eerd_eewr_done(%struct.ixgbe_hw* %51, i32 %52)
  store i64 %53, i64* %11, align 8
  %54 = load i64, i64* %11, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %39
  %57 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %58 = load i32, i32* @IXGBE_EERD, align 4
  %59 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %57, i32 %58)
  %60 = load i64, i64* @IXGBE_EEPROM_RW_REG_DATA, align 8
  %61 = ashr i64 %59, %60
  %62 = load i64*, i64** %9, align 8
  %63 = load i64, i64* %12, align 8
  %64 = getelementptr inbounds i64, i64* %62, i64 %63
  store i64 %61, i64* %64, align 8
  br label %69

65:                                               ; preds = %39
  %66 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %67 = call i32 @hw_dbg(%struct.ixgbe_hw* %66, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %68 = load i64, i64* %11, align 8
  store i64 %68, i64* %5, align 8
  br label %74

69:                                               ; preds = %56
  br label %70

70:                                               ; preds = %69
  %71 = load i64, i64* %12, align 8
  %72 = add nsw i64 %71, 1
  store i64 %72, i64* %12, align 8
  br label %35

73:                                               ; preds = %35
  store i64 0, i64* %5, align 8
  br label %74

74:                                               ; preds = %73, %65, %32, %23
  %75 = load i64, i64* %5, align 8
  ret i64 %75
}

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i64) #1

declare dso_local i64 @ixgbe_poll_eerd_eewr_done(%struct.ixgbe_hw*, i32) #1

declare dso_local i64 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
