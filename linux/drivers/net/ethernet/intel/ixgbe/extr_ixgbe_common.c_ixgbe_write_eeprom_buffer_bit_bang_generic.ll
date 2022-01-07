; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_common.c_ixgbe_write_eeprom_buffer_bit_bang_generic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_common.c_ixgbe_write_eeprom_buffer_bit_bang_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.ixgbe_hw.0*)* }
%struct.ixgbe_hw.0 = type opaque

@IXGBE_ERR_INVALID_ARGUMENT = common dso_local global i64 0, align 8
@IXGBE_ERR_EEPROM = common dso_local global i64 0, align 8
@IXGBE_EEPROM_PAGE_SIZE_MAX = common dso_local global i64 0, align 8
@IXGBE_EEPROM_RD_BUFFER_MAX_COUNT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ixgbe_write_eeprom_buffer_bit_bang_generic(%struct.ixgbe_hw* %0, i64 %1, i64 %2, i64* %3) #0 {
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
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
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
  br label %89

25:                                               ; preds = %4
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* %8, align 8
  %28 = add nsw i64 %26, %27
  %29 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %30 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %28, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = load i64, i64* @IXGBE_ERR_EEPROM, align 8
  store i64 %35, i64* %5, align 8
  br label %89

36:                                               ; preds = %25
  %37 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %38 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %36
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* @IXGBE_EEPROM_PAGE_SIZE_MAX, align 8
  %45 = icmp sgt i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %48 = load i64, i64* %7, align 8
  %49 = call i32 @ixgbe_detect_eeprom_page_size_generic(%struct.ixgbe_hw* %47, i64 %48)
  br label %50

50:                                               ; preds = %46, %42, %36
  store i64 0, i64* %11, align 8
  br label %51

51:                                               ; preds = %83, %50
  %52 = load i64, i64* %11, align 8
  %53 = load i64, i64* %8, align 8
  %54 = icmp slt i64 %52, %53
  br i1 %54, label %55, label %87

55:                                               ; preds = %51
  %56 = load i64, i64* %8, align 8
  %57 = load i64, i64* %11, align 8
  %58 = sub nsw i64 %56, %57
  %59 = load i64, i64* @IXGBE_EEPROM_RD_BUFFER_MAX_COUNT, align 8
  %60 = sdiv i64 %58, %59
  %61 = icmp sgt i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = load i64, i64* @IXGBE_EEPROM_RD_BUFFER_MAX_COUNT, align 8
  br label %68

64:                                               ; preds = %55
  %65 = load i64, i64* %8, align 8
  %66 = load i64, i64* %11, align 8
  %67 = sub nsw i64 %65, %66
  br label %68

68:                                               ; preds = %64, %62
  %69 = phi i64 [ %63, %62 ], [ %67, %64 ]
  store i64 %69, i64* %12, align 8
  %70 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %71 = load i64, i64* %7, align 8
  %72 = load i64, i64* %11, align 8
  %73 = add nsw i64 %71, %72
  %74 = load i64, i64* %12, align 8
  %75 = load i64*, i64** %9, align 8
  %76 = load i64, i64* %11, align 8
  %77 = getelementptr inbounds i64, i64* %75, i64 %76
  %78 = call i64 @ixgbe_write_eeprom_buffer_bit_bang(%struct.ixgbe_hw* %70, i64 %73, i64 %74, i64* %77)
  store i64 %78, i64* %10, align 8
  %79 = load i64, i64* %10, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %68
  br label %87

82:                                               ; preds = %68
  br label %83

83:                                               ; preds = %82
  %84 = load i64, i64* @IXGBE_EEPROM_RD_BUFFER_MAX_COUNT, align 8
  %85 = load i64, i64* %11, align 8
  %86 = add nsw i64 %85, %84
  store i64 %86, i64* %11, align 8
  br label %51

87:                                               ; preds = %81, %51
  %88 = load i64, i64* %10, align 8
  store i64 %88, i64* %5, align 8
  br label %89

89:                                               ; preds = %87, %34, %23
  %90 = load i64, i64* %5, align 8
  ret i64 %90
}

declare dso_local i32 @ixgbe_detect_eeprom_page_size_generic(%struct.ixgbe_hw*, i64) #1

declare dso_local i64 @ixgbe_write_eeprom_buffer_bit_bang(%struct.ixgbe_hw*, i64, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
