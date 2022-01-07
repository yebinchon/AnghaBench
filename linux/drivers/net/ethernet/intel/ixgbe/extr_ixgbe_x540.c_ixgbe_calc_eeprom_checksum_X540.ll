; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_x540.c_ixgbe_calc_eeprom_checksum_X540.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_x540.c_ixgbe_calc_eeprom_checksum_X540.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@IXGBE_EEPROM_CHECKSUM = common dso_local global i64 0, align 8
@IXGBE_PCIE_ANALOG_PTR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"EEPROM read failed\0A\00", align 1
@IXGBE_ERR_EEPROM = common dso_local global i32 0, align 4
@IXGBE_FW_PTR = common dso_local global i64 0, align 8
@IXGBE_PHY_PTR = common dso_local global i64 0, align 8
@IXGBE_OPTION_ROM_PTR = common dso_local global i64 0, align 8
@IXGBE_EEPROM_SUM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_hw*)* @ixgbe_calc_eeprom_checksum_X540 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_calc_eeprom_checksum_X540(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %12 = load i64, i64* @IXGBE_EEPROM_CHECKSUM, align 8
  store i64 %12, i64* %10, align 8
  %13 = load i64, i64* @IXGBE_PCIE_ANALOG_PTR, align 8
  store i64 %13, i64* %11, align 8
  store i64 0, i64* %4, align 8
  br label %14

14:                                               ; preds = %31, %1
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* %10, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %34

18:                                               ; preds = %14
  %19 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %20 = load i64, i64* %4, align 8
  %21 = call i64 @ixgbe_read_eerd_generic(%struct.ixgbe_hw* %19, i64 %20, i64* %9)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %25 = call i32 @hw_dbg(%struct.ixgbe_hw* %24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @IXGBE_ERR_EEPROM, align 4
  store i32 %26, i32* %2, align 4
  br label %131

27:                                               ; preds = %18
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* %6, align 8
  %30 = add nsw i64 %29, %28
  store i64 %30, i64* %6, align 8
  br label %31

31:                                               ; preds = %27
  %32 = load i64, i64* %4, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %4, align 8
  br label %14

34:                                               ; preds = %14
  %35 = load i64, i64* %11, align 8
  store i64 %35, i64* %4, align 8
  br label %36

36:                                               ; preds = %122, %34
  %37 = load i64, i64* %4, align 8
  %38 = load i64, i64* @IXGBE_FW_PTR, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %40, label %125

40:                                               ; preds = %36
  %41 = load i64, i64* %4, align 8
  %42 = load i64, i64* @IXGBE_PHY_PTR, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load i64, i64* %4, align 8
  %46 = load i64, i64* @IXGBE_OPTION_ROM_PTR, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44, %40
  br label %122

49:                                               ; preds = %44
  %50 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %51 = load i64, i64* %4, align 8
  %52 = call i64 @ixgbe_read_eerd_generic(%struct.ixgbe_hw* %50, i64 %51, i64* %8)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %56 = call i32 @hw_dbg(%struct.ixgbe_hw* %55, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %125

57:                                               ; preds = %49
  %58 = load i64, i64* %8, align 8
  %59 = icmp eq i64 %58, 65535
  br i1 %59, label %70, label %60

60:                                               ; preds = %57
  %61 = load i64, i64* %8, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %60
  %64 = load i64, i64* %8, align 8
  %65 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %66 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp sge i64 %64, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %63, %60, %57
  br label %122

71:                                               ; preds = %63
  %72 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %73 = load i64, i64* %8, align 8
  %74 = call i64 @ixgbe_read_eerd_generic(%struct.ixgbe_hw* %72, i64 %73, i64* %7)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %78 = call i32 @hw_dbg(%struct.ixgbe_hw* %77, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %79 = load i32, i32* @IXGBE_ERR_EEPROM, align 4
  store i32 %79, i32* %2, align 4
  br label %131

80:                                               ; preds = %71
  %81 = load i64, i64* %7, align 8
  %82 = icmp eq i64 %81, 65535
  br i1 %82, label %95, label %83

83:                                               ; preds = %80
  %84 = load i64, i64* %7, align 8
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %95, label %86

86:                                               ; preds = %83
  %87 = load i64, i64* %8, align 8
  %88 = load i64, i64* %7, align 8
  %89 = add nsw i64 %87, %88
  %90 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %91 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp sge i64 %89, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %86, %83, %80
  br label %122

96:                                               ; preds = %86
  %97 = load i64, i64* %8, align 8
  %98 = add nsw i64 %97, 1
  store i64 %98, i64* %5, align 8
  br label %99

99:                                               ; preds = %118, %96
  %100 = load i64, i64* %5, align 8
  %101 = load i64, i64* %8, align 8
  %102 = load i64, i64* %7, align 8
  %103 = add nsw i64 %101, %102
  %104 = icmp sle i64 %100, %103
  br i1 %104, label %105, label %121

105:                                              ; preds = %99
  %106 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %107 = load i64, i64* %5, align 8
  %108 = call i64 @ixgbe_read_eerd_generic(%struct.ixgbe_hw* %106, i64 %107, i64* %9)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %105
  %111 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %112 = call i32 @hw_dbg(%struct.ixgbe_hw* %111, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %113 = load i32, i32* @IXGBE_ERR_EEPROM, align 4
  store i32 %113, i32* %2, align 4
  br label %131

114:                                              ; preds = %105
  %115 = load i64, i64* %9, align 8
  %116 = load i64, i64* %6, align 8
  %117 = add nsw i64 %116, %115
  store i64 %117, i64* %6, align 8
  br label %118

118:                                              ; preds = %114
  %119 = load i64, i64* %5, align 8
  %120 = add nsw i64 %119, 1
  store i64 %120, i64* %5, align 8
  br label %99

121:                                              ; preds = %99
  br label %122

122:                                              ; preds = %121, %95, %70, %48
  %123 = load i64, i64* %4, align 8
  %124 = add nsw i64 %123, 1
  store i64 %124, i64* %4, align 8
  br label %36

125:                                              ; preds = %54, %36
  %126 = load i64, i64* @IXGBE_EEPROM_SUM, align 8
  %127 = load i64, i64* %6, align 8
  %128 = sub nsw i64 %126, %127
  store i64 %128, i64* %6, align 8
  %129 = load i64, i64* %6, align 8
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %2, align 4
  br label %131

131:                                              ; preds = %125, %110, %76, %23
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

declare dso_local i64 @ixgbe_read_eerd_generic(%struct.ixgbe_hw*, i64, i64*) #1

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
