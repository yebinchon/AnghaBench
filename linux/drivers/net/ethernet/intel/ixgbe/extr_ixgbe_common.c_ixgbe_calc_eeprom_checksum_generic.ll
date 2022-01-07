; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_common.c_ixgbe_calc_eeprom_checksum_generic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_common.c_ixgbe_calc_eeprom_checksum_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (%struct.ixgbe_hw.0*, i64, i64*)* }
%struct.ixgbe_hw.0 = type opaque

@IXGBE_EEPROM_CHECKSUM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"EEPROM read failed\0A\00", align 1
@IXGBE_PCIE_ANALOG_PTR = common dso_local global i64 0, align 8
@IXGBE_FW_PTR = common dso_local global i64 0, align 8
@IXGBE_ERR_EEPROM = common dso_local global i32 0, align 4
@IXGBE_EEPROM_SUM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_calc_eeprom_checksum_generic(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %4, align 8
  br label %10

10:                                               ; preds = %32, %1
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @IXGBE_EEPROM_CHECKSUM, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %14, label %35

14:                                               ; preds = %10
  %15 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %16 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64 (%struct.ixgbe_hw.0*, i64, i64*)*, i64 (%struct.ixgbe_hw.0*, i64, i64*)** %18, align 8
  %20 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %21 = bitcast %struct.ixgbe_hw* %20 to %struct.ixgbe_hw.0*
  %22 = load i64, i64* %4, align 8
  %23 = call i64 %19(%struct.ixgbe_hw.0* %21, i64 %22, i64* %9)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %14
  %26 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %27 = call i32 @hw_dbg(%struct.ixgbe_hw* %26, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %35

28:                                               ; preds = %14
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* %6, align 8
  %31 = add nsw i64 %30, %29
  store i64 %31, i64* %6, align 8
  br label %32

32:                                               ; preds = %28
  %33 = load i64, i64* %4, align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* %4, align 8
  br label %10

35:                                               ; preds = %25, %10
  %36 = load i64, i64* @IXGBE_PCIE_ANALOG_PTR, align 8
  store i64 %36, i64* %4, align 8
  br label %37

37:                                               ; preds = %117, %35
  %38 = load i64, i64* %4, align 8
  %39 = load i64, i64* @IXGBE_FW_PTR, align 8
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %41, label %120

41:                                               ; preds = %37
  %42 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %43 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64 (%struct.ixgbe_hw.0*, i64, i64*)*, i64 (%struct.ixgbe_hw.0*, i64, i64*)** %45, align 8
  %47 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %48 = bitcast %struct.ixgbe_hw* %47 to %struct.ixgbe_hw.0*
  %49 = load i64, i64* %4, align 8
  %50 = call i64 %46(%struct.ixgbe_hw.0* %48, i64 %49, i64* %8)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %41
  %53 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %54 = call i32 @hw_dbg(%struct.ixgbe_hw* %53, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %55 = load i32, i32* @IXGBE_ERR_EEPROM, align 4
  store i32 %55, i32* %2, align 4
  br label %126

56:                                               ; preds = %41
  %57 = load i64, i64* %8, align 8
  %58 = icmp eq i64 %57, 65535
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = load i64, i64* %8, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59, %56
  br label %117

63:                                               ; preds = %59
  %64 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %65 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i64 (%struct.ixgbe_hw.0*, i64, i64*)*, i64 (%struct.ixgbe_hw.0*, i64, i64*)** %67, align 8
  %69 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %70 = bitcast %struct.ixgbe_hw* %69 to %struct.ixgbe_hw.0*
  %71 = load i64, i64* %8, align 8
  %72 = call i64 %68(%struct.ixgbe_hw.0* %70, i64 %71, i64* %7)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %63
  %75 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %76 = call i32 @hw_dbg(%struct.ixgbe_hw* %75, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %77 = load i32, i32* @IXGBE_ERR_EEPROM, align 4
  store i32 %77, i32* %2, align 4
  br label %126

78:                                               ; preds = %63
  %79 = load i64, i64* %7, align 8
  %80 = icmp eq i64 %79, 65535
  br i1 %80, label %84, label %81

81:                                               ; preds = %78
  %82 = load i64, i64* %7, align 8
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %81, %78
  br label %117

85:                                               ; preds = %81
  %86 = load i64, i64* %8, align 8
  %87 = add nsw i64 %86, 1
  store i64 %87, i64* %5, align 8
  br label %88

88:                                               ; preds = %113, %85
  %89 = load i64, i64* %5, align 8
  %90 = load i64, i64* %8, align 8
  %91 = load i64, i64* %7, align 8
  %92 = add nsw i64 %90, %91
  %93 = icmp sle i64 %89, %92
  br i1 %93, label %94, label %116

94:                                               ; preds = %88
  %95 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %96 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i64 (%struct.ixgbe_hw.0*, i64, i64*)*, i64 (%struct.ixgbe_hw.0*, i64, i64*)** %98, align 8
  %100 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %101 = bitcast %struct.ixgbe_hw* %100 to %struct.ixgbe_hw.0*
  %102 = load i64, i64* %5, align 8
  %103 = call i64 %99(%struct.ixgbe_hw.0* %101, i64 %102, i64* %9)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %94
  %106 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %107 = call i32 @hw_dbg(%struct.ixgbe_hw* %106, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %108 = load i32, i32* @IXGBE_ERR_EEPROM, align 4
  store i32 %108, i32* %2, align 4
  br label %126

109:                                              ; preds = %94
  %110 = load i64, i64* %9, align 8
  %111 = load i64, i64* %6, align 8
  %112 = add nsw i64 %111, %110
  store i64 %112, i64* %6, align 8
  br label %113

113:                                              ; preds = %109
  %114 = load i64, i64* %5, align 8
  %115 = add nsw i64 %114, 1
  store i64 %115, i64* %5, align 8
  br label %88

116:                                              ; preds = %88
  br label %117

117:                                              ; preds = %116, %84, %62
  %118 = load i64, i64* %4, align 8
  %119 = add nsw i64 %118, 1
  store i64 %119, i64* %4, align 8
  br label %37

120:                                              ; preds = %37
  %121 = load i64, i64* @IXGBE_EEPROM_SUM, align 8
  %122 = load i64, i64* %6, align 8
  %123 = sub nsw i64 %121, %122
  store i64 %123, i64* %6, align 8
  %124 = load i64, i64* %6, align 8
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %2, align 4
  br label %126

126:                                              ; preds = %120, %105, %74, %52
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
