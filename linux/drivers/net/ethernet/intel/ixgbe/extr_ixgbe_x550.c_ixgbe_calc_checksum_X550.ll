; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_x550.c_ixgbe_calc_checksum_X550.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_x550.c_ixgbe_calc_checksum_X550.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ixgbe_hw.0*)* }
%struct.ixgbe_hw.0 = type opaque

@IXGBE_EEPROM_LAST_WORD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to read EEPROM image\0A\00", align 1
@IXGBE_ERR_PARAM = common dso_local global i64 0, align 8
@IXGBE_EEPROM_CHECKSUM = common dso_local global i32 0, align 4
@IXGBE_PCIE_ANALOG_PTR_X550 = common dso_local global i32 0, align 4
@IXGBE_FW_PTR = common dso_local global i32 0, align 4
@IXGBE_PHY_PTR = common dso_local global i32 0, align 4
@IXGBE_OPTION_ROM_PTR = common dso_local global i32 0, align 4
@IXGBE_IXGBE_PCIE_GENERAL_SIZE = common dso_local global i32 0, align 4
@IXGBE_PCIE_CONFIG_SIZE = common dso_local global i32 0, align 4
@IXGBE_EEPROM_SUM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*, i32*, i32)* @ixgbe_calc_checksum_X550 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbe_calc_checksum_X550(%struct.ixgbe_hw* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load i32, i32* @IXGBE_EEPROM_LAST_WORD, align 4
  %18 = add nsw i32 %17, 1
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %8, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %9, align 8
  store i32 0, i32* %12, align 4
  %22 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %23 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32 (%struct.ixgbe_hw.0*)*, i32 (%struct.ixgbe_hw.0*)** %25, align 8
  %27 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %28 = bitcast %struct.ixgbe_hw* %27 to %struct.ixgbe_hw.0*
  %29 = call i32 %26(%struct.ixgbe_hw.0* %28)
  %30 = load i32*, i32** %6, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %44, label %32

32:                                               ; preds = %3
  %33 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %34 = load i32, i32* @IXGBE_EEPROM_LAST_WORD, align 4
  %35 = add nsw i32 %34, 1
  %36 = call i64 @ixgbe_read_ee_hostif_buffer_X550(%struct.ixgbe_hw* %33, i32 0, i32 %35, i32* %21)
  store i64 %36, i64* %11, align 8
  %37 = load i64, i64* %11, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %41 = call i32 @hw_dbg(%struct.ixgbe_hw* %40, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %42 = load i64, i64* %11, align 8
  store i64 %42, i64* %4, align 8
  store i32 1, i32* %16, align 4
  br label %136

43:                                               ; preds = %32
  store i32* %21, i32** %10, align 8
  br label %52

44:                                               ; preds = %3
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @IXGBE_EEPROM_LAST_WORD, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i64, i64* @IXGBE_ERR_PARAM, align 8
  store i64 %49, i64* %4, align 8
  store i32 1, i32* %16, align 4
  br label %136

50:                                               ; preds = %44
  %51 = load i32*, i32** %6, align 8
  store i32* %51, i32** %10, align 8
  br label %52

52:                                               ; preds = %50, %43
  store i32 0, i32* %14, align 4
  br label %53

53:                                               ; preds = %70, %52
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* @IXGBE_EEPROM_LAST_WORD, align 4
  %56 = icmp sle i32 %54, %55
  br i1 %56, label %57, label %73

57:                                               ; preds = %53
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* @IXGBE_EEPROM_CHECKSUM, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %57
  %62 = load i32*, i32** %10, align 8
  %63 = load i32, i32* %14, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %12, align 4
  %68 = add nsw i32 %67, %66
  store i32 %68, i32* %12, align 4
  br label %69

69:                                               ; preds = %61, %57
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %14, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %14, align 4
  br label %53

73:                                               ; preds = %53
  %74 = load i32, i32* @IXGBE_PCIE_ANALOG_PTR_X550, align 4
  store i32 %74, i32* %14, align 4
  br label %75

75:                                               ; preds = %126, %73
  %76 = load i32, i32* %14, align 4
  %77 = load i32, i32* @IXGBE_FW_PTR, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %129

79:                                               ; preds = %75
  %80 = load i32, i32* %14, align 4
  %81 = load i32, i32* @IXGBE_PHY_PTR, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %87, label %83

83:                                               ; preds = %79
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* @IXGBE_OPTION_ROM_PTR, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %83, %79
  br label %126

88:                                               ; preds = %83
  %89 = load i32*, i32** %10, align 8
  %90 = load i32, i32* %14, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %13, align 4
  %94 = load i32, i32* %13, align 4
  %95 = icmp eq i32 %94, 65535
  br i1 %95, label %106, label %96

96:                                               ; preds = %88
  %97 = load i32, i32* %13, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %106, label %99

99:                                               ; preds = %96
  %100 = load i32, i32* %13, align 4
  %101 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %102 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp sge i32 %100, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %99, %96, %88
  br label %126

107:                                              ; preds = %99
  %108 = load i32, i32* %14, align 4
  switch i32 %108, label %113 [
    i32 128, label %109
    i32 130, label %111
    i32 129, label %111
  ]

109:                                              ; preds = %107
  %110 = load i32, i32* @IXGBE_IXGBE_PCIE_GENERAL_SIZE, align 4
  store i32 %110, i32* %15, align 4
  br label %114

111:                                              ; preds = %107, %107
  %112 = load i32, i32* @IXGBE_PCIE_CONFIG_SIZE, align 4
  store i32 %112, i32* %15, align 4
  br label %114

113:                                              ; preds = %107
  store i32 0, i32* %15, align 4
  br label %114

114:                                              ; preds = %113, %111, %109
  %115 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %116 = load i32, i32* %13, align 4
  %117 = load i32, i32* %15, align 4
  %118 = load i32*, i32** %6, align 8
  %119 = load i32, i32* %7, align 4
  %120 = call i64 @ixgbe_checksum_ptr_x550(%struct.ixgbe_hw* %115, i32 %116, i32 %117, i32* %12, i32* %118, i32 %119)
  store i64 %120, i64* %11, align 8
  %121 = load i64, i64* %11, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %114
  %124 = load i64, i64* %11, align 8
  store i64 %124, i64* %4, align 8
  store i32 1, i32* %16, align 4
  br label %136

125:                                              ; preds = %114
  br label %126

126:                                              ; preds = %125, %106, %87
  %127 = load i32, i32* %14, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %14, align 4
  br label %75

129:                                              ; preds = %75
  %130 = load i64, i64* @IXGBE_EEPROM_SUM, align 8
  %131 = trunc i64 %130 to i32
  %132 = load i32, i32* %12, align 4
  %133 = sub nsw i32 %131, %132
  store i32 %133, i32* %12, align 4
  %134 = load i32, i32* %12, align 4
  %135 = sext i32 %134 to i64
  store i64 %135, i64* %4, align 8
  store i32 1, i32* %16, align 4
  br label %136

136:                                              ; preds = %129, %123, %48, %39
  %137 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %137)
  %138 = load i64, i64* %4, align 8
  ret i64 %138
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @ixgbe_read_ee_hostif_buffer_X550(%struct.ixgbe_hw*, i32, i32, i32*) #2

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*) #2

declare dso_local i64 @ixgbe_checksum_ptr_x550(%struct.ixgbe_hw*, i32, i32, i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
