; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_common.c_ixgbe_read_eeprom_buffer_bit_bang_generic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_common.c_ixgbe_read_eeprom_buffer_bit_bang_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ixgbe_hw.0*)* }
%struct.ixgbe_hw.0 = type opaque

@IXGBE_ERR_INVALID_ARGUMENT = common dso_local global i64 0, align 8
@IXGBE_ERR_EEPROM = common dso_local global i64 0, align 8
@IXGBE_EEPROM_RD_BUFFER_MAX_COUNT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ixgbe_read_eeprom_buffer_bit_bang_generic(%struct.ixgbe_hw* %0, i64 %1, i64 %2, i64* %3) #0 {
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
  br label %75

25:                                               ; preds = %4
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* %8, align 8
  %28 = add nsw i64 %26, %27
  %29 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %30 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %28, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = load i64, i64* @IXGBE_ERR_EEPROM, align 8
  store i64 %35, i64* %5, align 8
  br label %75

36:                                               ; preds = %25
  store i64 0, i64* %11, align 8
  br label %37

37:                                               ; preds = %70, %36
  %38 = load i64, i64* %11, align 8
  %39 = load i64, i64* %8, align 8
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %41, label %74

41:                                               ; preds = %37
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* %11, align 8
  %44 = sub nsw i64 %42, %43
  %45 = load i64, i64* @IXGBE_EEPROM_RD_BUFFER_MAX_COUNT, align 8
  %46 = sdiv i64 %44, %45
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i64, i64* @IXGBE_EEPROM_RD_BUFFER_MAX_COUNT, align 8
  br label %54

50:                                               ; preds = %41
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* %11, align 8
  %53 = sub nsw i64 %51, %52
  br label %54

54:                                               ; preds = %50, %48
  %55 = phi i64 [ %49, %48 ], [ %53, %50 ]
  store i64 %55, i64* %12, align 8
  %56 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %57 = load i64, i64* %7, align 8
  %58 = load i64, i64* %11, align 8
  %59 = add nsw i64 %57, %58
  %60 = load i64, i64* %12, align 8
  %61 = load i64*, i64** %9, align 8
  %62 = load i64, i64* %11, align 8
  %63 = getelementptr inbounds i64, i64* %61, i64 %62
  %64 = call i64 @ixgbe_read_eeprom_buffer_bit_bang(%struct.ixgbe_hw* %56, i64 %59, i64 %60, i64* %63)
  store i64 %64, i64* %10, align 8
  %65 = load i64, i64* %10, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %54
  %68 = load i64, i64* %10, align 8
  store i64 %68, i64* %5, align 8
  br label %75

69:                                               ; preds = %54
  br label %70

70:                                               ; preds = %69
  %71 = load i64, i64* @IXGBE_EEPROM_RD_BUFFER_MAX_COUNT, align 8
  %72 = load i64, i64* %11, align 8
  %73 = add nsw i64 %72, %71
  store i64 %73, i64* %11, align 8
  br label %37

74:                                               ; preds = %37
  store i64 0, i64* %5, align 8
  br label %75

75:                                               ; preds = %74, %67, %34, %23
  %76 = load i64, i64* %5, align 8
  ret i64 %76
}

declare dso_local i64 @ixgbe_read_eeprom_buffer_bit_bang(%struct.ixgbe_hw*, i64, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
