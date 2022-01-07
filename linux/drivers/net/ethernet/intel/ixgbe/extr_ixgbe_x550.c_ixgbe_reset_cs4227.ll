; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_x550.c_ixgbe_reset_cs4227.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_x550.c_ixgbe_reset_cs4227.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }

@IXGBE_PE_OUTPUT = common dso_local global i32 0, align 4
@IXGBE_PE_BIT1 = common dso_local global i32 0, align 4
@IXGBE_PE_CONFIG = common dso_local global i32 0, align 4
@IXGBE_CS4227_RESET_HOLD = common dso_local global i64 0, align 8
@IXGBE_CS4227_RESET_DELAY = common dso_local global i32 0, align 4
@IXGBE_CS4227_RETRIES = common dso_local global i64 0, align 8
@IXGBE_CS4227_EFUSE_STATUS = common dso_local global i32 0, align 4
@IXGBE_CS4227_EEPROM_LOAD_OK = common dso_local global i32 0, align 4
@IXGBE_CS4227_CHECK_DELAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"CS4227 reset did not complete\0A\00", align 1
@IXGBE_ERR_PHY = common dso_local global i64 0, align 8
@IXGBE_CS4227_EEPROM_STATUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"CS4227 EEPROM did not load successfully\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*)* @ixgbe_reset_cs4227 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbe_reset_cs4227(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  %8 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %9 = load i32, i32* @IXGBE_PE_OUTPUT, align 4
  %10 = call i64 @ixgbe_read_pe(%struct.ixgbe_hw* %8, i32 %9, i32* %7)
  store i64 %10, i64* %4, align 8
  %11 = load i64, i64* %4, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i64, i64* %4, align 8
  store i64 %14, i64* %2, align 8
  br label %141

15:                                               ; preds = %1
  %16 = load i32, i32* @IXGBE_PE_BIT1, align 4
  %17 = load i32, i32* %7, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %7, align 4
  %19 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %20 = load i32, i32* @IXGBE_PE_OUTPUT, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i64 @ixgbe_write_pe(%struct.ixgbe_hw* %19, i32 %20, i32 %21)
  store i64 %22, i64* %4, align 8
  %23 = load i64, i64* %4, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %15
  %26 = load i64, i64* %4, align 8
  store i64 %26, i64* %2, align 8
  br label %141

27:                                               ; preds = %15
  %28 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %29 = load i32, i32* @IXGBE_PE_CONFIG, align 4
  %30 = call i64 @ixgbe_read_pe(%struct.ixgbe_hw* %28, i32 %29, i32* %7)
  store i64 %30, i64* %4, align 8
  %31 = load i64, i64* %4, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i64, i64* %4, align 8
  store i64 %34, i64* %2, align 8
  br label %141

35:                                               ; preds = %27
  %36 = load i32, i32* @IXGBE_PE_BIT1, align 4
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %7, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %7, align 4
  %40 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %41 = load i32, i32* @IXGBE_PE_CONFIG, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i64 @ixgbe_write_pe(%struct.ixgbe_hw* %40, i32 %41, i32 %42)
  store i64 %43, i64* %4, align 8
  %44 = load i64, i64* %4, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %35
  %47 = load i64, i64* %4, align 8
  store i64 %47, i64* %2, align 8
  br label %141

48:                                               ; preds = %35
  %49 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %50 = load i32, i32* @IXGBE_PE_OUTPUT, align 4
  %51 = call i64 @ixgbe_read_pe(%struct.ixgbe_hw* %49, i32 %50, i32* %7)
  store i64 %51, i64* %4, align 8
  %52 = load i64, i64* %4, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i64, i64* %4, align 8
  store i64 %55, i64* %2, align 8
  br label %141

56:                                               ; preds = %48
  %57 = load i32, i32* @IXGBE_PE_BIT1, align 4
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %7, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %7, align 4
  %61 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %62 = load i32, i32* @IXGBE_PE_OUTPUT, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i64 @ixgbe_write_pe(%struct.ixgbe_hw* %61, i32 %62, i32 %63)
  store i64 %64, i64* %4, align 8
  %65 = load i64, i64* %4, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %56
  %68 = load i64, i64* %4, align 8
  store i64 %68, i64* %2, align 8
  br label %141

69:                                               ; preds = %56
  %70 = load i64, i64* @IXGBE_CS4227_RESET_HOLD, align 8
  %71 = load i64, i64* @IXGBE_CS4227_RESET_HOLD, align 8
  %72 = add nsw i64 %71, 100
  %73 = call i32 @usleep_range(i64 %70, i64 %72)
  %74 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %75 = load i32, i32* @IXGBE_PE_OUTPUT, align 4
  %76 = call i64 @ixgbe_read_pe(%struct.ixgbe_hw* %74, i32 %75, i32* %7)
  store i64 %76, i64* %4, align 8
  %77 = load i64, i64* %4, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %69
  %80 = load i64, i64* %4, align 8
  store i64 %80, i64* %2, align 8
  br label %141

81:                                               ; preds = %69
  %82 = load i32, i32* @IXGBE_PE_BIT1, align 4
  %83 = load i32, i32* %7, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %7, align 4
  %85 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %86 = load i32, i32* @IXGBE_PE_OUTPUT, align 4
  %87 = load i32, i32* %7, align 4
  %88 = call i64 @ixgbe_write_pe(%struct.ixgbe_hw* %85, i32 %86, i32 %87)
  store i64 %88, i64* %4, align 8
  %89 = load i64, i64* %4, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %81
  %92 = load i64, i64* %4, align 8
  store i64 %92, i64* %2, align 8
  br label %141

93:                                               ; preds = %81
  %94 = load i32, i32* @IXGBE_CS4227_RESET_DELAY, align 4
  %95 = call i32 @msleep(i32 %94)
  store i64 0, i64* %5, align 8
  br label %96

96:                                               ; preds = %114, %93
  %97 = load i64, i64* %5, align 8
  %98 = load i64, i64* @IXGBE_CS4227_RETRIES, align 8
  %99 = icmp slt i64 %97, %98
  br i1 %99, label %100, label %117

100:                                              ; preds = %96
  %101 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %102 = load i32, i32* @IXGBE_CS4227_EFUSE_STATUS, align 4
  %103 = call i64 @ixgbe_read_cs4227(%struct.ixgbe_hw* %101, i32 %102, i32* %6)
  store i64 %103, i64* %4, align 8
  %104 = load i64, i64* %4, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %111, label %106

106:                                              ; preds = %100
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* @IXGBE_CS4227_EEPROM_LOAD_OK, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  br label %117

111:                                              ; preds = %106, %100
  %112 = load i32, i32* @IXGBE_CS4227_CHECK_DELAY, align 4
  %113 = call i32 @msleep(i32 %112)
  br label %114

114:                                              ; preds = %111
  %115 = load i64, i64* %5, align 8
  %116 = add nsw i64 %115, 1
  store i64 %116, i64* %5, align 8
  br label %96

117:                                              ; preds = %110, %96
  %118 = load i64, i64* %5, align 8
  %119 = load i64, i64* @IXGBE_CS4227_RETRIES, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %117
  %122 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %123 = call i32 @hw_err(%struct.ixgbe_hw* %122, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %124 = load i64, i64* @IXGBE_ERR_PHY, align 8
  store i64 %124, i64* %2, align 8
  br label %141

125:                                              ; preds = %117
  %126 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %127 = load i32, i32* @IXGBE_CS4227_EEPROM_STATUS, align 4
  %128 = call i64 @ixgbe_read_cs4227(%struct.ixgbe_hw* %126, i32 %127, i32* %6)
  store i64 %128, i64* %4, align 8
  %129 = load i64, i64* %4, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %136, label %131

131:                                              ; preds = %125
  %132 = load i32, i32* %6, align 4
  %133 = load i32, i32* @IXGBE_CS4227_EEPROM_LOAD_OK, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %140, label %136

136:                                              ; preds = %131, %125
  %137 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %138 = call i32 @hw_err(%struct.ixgbe_hw* %137, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %139 = load i64, i64* @IXGBE_ERR_PHY, align 8
  store i64 %139, i64* %2, align 8
  br label %141

140:                                              ; preds = %131
  store i64 0, i64* %2, align 8
  br label %141

141:                                              ; preds = %140, %136, %121, %91, %79, %67, %54, %46, %33, %25, %13
  %142 = load i64, i64* %2, align 8
  ret i64 %142
}

declare dso_local i64 @ixgbe_read_pe(%struct.ixgbe_hw*, i32, i32*) #1

declare dso_local i64 @ixgbe_write_pe(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @usleep_range(i64, i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @ixgbe_read_cs4227(%struct.ixgbe_hw*, i32, i32*) #1

declare dso_local i32 @hw_err(%struct.ixgbe_hw*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
