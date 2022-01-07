; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_ethtool.c_e1000_reg_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_ethtool.c_e1000_reg_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { %struct.e1000_hw }
%struct.e1000_hw = type { i64 }

@STATUS = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"failed STATUS register test got: 0x%08X expected: 0x%08X\0A\00", align 1
@FCAL = common dso_local global i64 0, align 8
@FCAH = common dso_local global i64 0, align 8
@FCT = common dso_local global i64 0, align 8
@VET = common dso_local global i64 0, align 8
@RDTR = common dso_local global i64 0, align 8
@RDBAH = common dso_local global i64 0, align 8
@RDLEN = common dso_local global i64 0, align 8
@RDH = common dso_local global i64 0, align 8
@RDT = common dso_local global i64 0, align 8
@FCRTH = common dso_local global i64 0, align 8
@FCTTV = common dso_local global i64 0, align 8
@TIPG = common dso_local global i64 0, align 8
@TDBAH = common dso_local global i64 0, align 8
@TDLEN = common dso_local global i64 0, align 8
@RCTL = common dso_local global i32 0, align 4
@TCTL = common dso_local global i32 0, align 4
@e1000_82543 = common dso_local global i64 0, align 8
@RDBAL = common dso_local global i64 0, align 8
@TXCW = common dso_local global i64 0, align 8
@TDBAL = common dso_local global i64 0, align 8
@TIDV = common dso_local global i64 0, align 8
@E1000_RAR_ENTRIES = common dso_local global i32 0, align 4
@RA = common dso_local global i64 0, align 8
@E1000_MC_TBL_SIZE = common dso_local global i32 0, align 4
@MTA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_adapter*, i32*)* @e1000_reg_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_reg_test(%struct.e1000_adapter* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.e1000_adapter*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.e1000_hw*, align 8
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %13 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %12, i32 0, i32 0
  store %struct.e1000_hw* %13, %struct.e1000_hw** %11, align 8
  store i32 -1997, i32* %10, align 4
  %14 = load i32, i32* @STATUS, align 4
  %15 = call i32 @er32(i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* @STATUS, align 4
  %17 = call i32 @er32(i32 %16)
  %18 = load i32, i32* %10, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* @STATUS, align 4
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @ew32(i32 %20, i32 %21)
  %23 = load i32, i32* @STATUS, align 4
  %24 = call i32 @er32(i32 %23)
  %25 = load i32, i32* %10, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %2
  %31 = load i32, i32* @drv, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @e_err(i32 %31, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33)
  %35 = load i32*, i32** %5, align 8
  store i32 1, i32* %35, align 4
  store i32 1, i32* %3, align 4
  br label %137

36:                                               ; preds = %2
  %37 = load i32, i32* @STATUS, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @ew32(i32 %37, i32 %38)
  %40 = load i64, i64* @FCAL, align 8
  %41 = call i32 @REG_PATTERN_TEST(i64 %40, i32 -1, i32 -1)
  %42 = load i64, i64* @FCAH, align 8
  %43 = call i32 @REG_PATTERN_TEST(i64 %42, i32 65535, i32 -1)
  %44 = load i64, i64* @FCT, align 8
  %45 = call i32 @REG_PATTERN_TEST(i64 %44, i32 65535, i32 -1)
  %46 = load i64, i64* @VET, align 8
  %47 = call i32 @REG_PATTERN_TEST(i64 %46, i32 65535, i32 -1)
  %48 = load i64, i64* @RDTR, align 8
  %49 = call i32 @REG_PATTERN_TEST(i64 %48, i32 65535, i32 -1)
  %50 = load i64, i64* @RDBAH, align 8
  %51 = call i32 @REG_PATTERN_TEST(i64 %50, i32 -1, i32 -1)
  %52 = load i64, i64* @RDLEN, align 8
  %53 = call i32 @REG_PATTERN_TEST(i64 %52, i32 1048448, i32 1048575)
  %54 = load i64, i64* @RDH, align 8
  %55 = call i32 @REG_PATTERN_TEST(i64 %54, i32 65535, i32 65535)
  %56 = load i64, i64* @RDT, align 8
  %57 = call i32 @REG_PATTERN_TEST(i64 %56, i32 65535, i32 65535)
  %58 = load i64, i64* @FCRTH, align 8
  %59 = call i32 @REG_PATTERN_TEST(i64 %58, i32 65528, i32 65528)
  %60 = load i64, i64* @FCTTV, align 8
  %61 = call i32 @REG_PATTERN_TEST(i64 %60, i32 65535, i32 65535)
  %62 = load i64, i64* @TIPG, align 8
  %63 = call i32 @REG_PATTERN_TEST(i64 %62, i32 1073741823, i32 1073741823)
  %64 = load i64, i64* @TDBAH, align 8
  %65 = call i32 @REG_PATTERN_TEST(i64 %64, i32 -1, i32 -1)
  %66 = load i64, i64* @TDLEN, align 8
  %67 = call i32 @REG_PATTERN_TEST(i64 %66, i32 1048448, i32 1048575)
  %68 = load i32, i32* @RCTL, align 4
  %69 = call i32 @REG_SET_AND_CHECK(i32 %68, i32 -1, i32 0)
  store i32 115323902, i32* %7, align 4
  %70 = load i32, i32* @RCTL, align 4
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @REG_SET_AND_CHECK(i32 %70, i32 %71, i32 4194299)
  %73 = load i32, i32* @TCTL, align 4
  %74 = call i32 @REG_SET_AND_CHECK(i32 %73, i32 -1, i32 0)
  %75 = load %struct.e1000_hw*, %struct.e1000_hw** %11, align 8
  %76 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @e1000_82543, align 8
  %79 = icmp sge i64 %77, %78
  br i1 %79, label %80, label %110

80:                                               ; preds = %36
  %81 = load i32, i32* @RCTL, align 4
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @REG_SET_AND_CHECK(i32 %81, i32 %82, i32 -1)
  %84 = load i64, i64* @RDBAL, align 8
  %85 = call i32 @REG_PATTERN_TEST(i64 %84, i32 -16, i32 -1)
  %86 = load i64, i64* @TXCW, align 8
  %87 = call i32 @REG_PATTERN_TEST(i64 %86, i32 -1073676289, i32 65535)
  %88 = load i64, i64* @TDBAL, align 8
  %89 = call i32 @REG_PATTERN_TEST(i64 %88, i32 -16, i32 -1)
  %90 = load i64, i64* @TIDV, align 8
  %91 = call i32 @REG_PATTERN_TEST(i64 %90, i32 65535, i32 65535)
  %92 = load i32, i32* @E1000_RAR_ENTRIES, align 4
  store i32 %92, i32* %6, align 4
  store i32 0, i32* %9, align 4
  br label %93

93:                                               ; preds = %106, %80
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* %6, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %109

97:                                               ; preds = %93
  %98 = load i64, i64* @RA, align 8
  %99 = load i32, i32* %9, align 4
  %100 = shl i32 %99, 1
  %101 = add nsw i32 %100, 1
  %102 = shl i32 %101, 2
  %103 = sext i32 %102 to i64
  %104 = add nsw i64 %98, %103
  %105 = call i32 @REG_PATTERN_TEST(i64 %104, i32 -2147221505, i32 -1)
  br label %106

106:                                              ; preds = %97
  %107 = load i32, i32* %9, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %9, align 4
  br label %93

109:                                              ; preds = %93
  br label %119

110:                                              ; preds = %36
  %111 = load i32, i32* @RCTL, align 4
  %112 = call i32 @REG_SET_AND_CHECK(i32 %111, i32 -1, i32 33554431)
  %113 = load i64, i64* @RDBAL, align 8
  %114 = call i32 @REG_PATTERN_TEST(i64 %113, i32 -4096, i32 -1)
  %115 = load i64, i64* @TXCW, align 8
  %116 = call i32 @REG_PATTERN_TEST(i64 %115, i32 65535, i32 65535)
  %117 = load i64, i64* @TDBAL, align 8
  %118 = call i32 @REG_PATTERN_TEST(i64 %117, i32 -4096, i32 -1)
  br label %119

119:                                              ; preds = %110, %109
  %120 = load i32, i32* @E1000_MC_TBL_SIZE, align 4
  store i32 %120, i32* %6, align 4
  store i32 0, i32* %9, align 4
  br label %121

121:                                              ; preds = %132, %119
  %122 = load i32, i32* %9, align 4
  %123 = load i32, i32* %6, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %135

125:                                              ; preds = %121
  %126 = load i64, i64* @MTA, align 8
  %127 = load i32, i32* %9, align 4
  %128 = shl i32 %127, 2
  %129 = sext i32 %128 to i64
  %130 = add nsw i64 %126, %129
  %131 = call i32 @REG_PATTERN_TEST(i64 %130, i32 -1, i32 -1)
  br label %132

132:                                              ; preds = %125
  %133 = load i32, i32* %9, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %9, align 4
  br label %121

135:                                              ; preds = %121
  %136 = load i32*, i32** %5, align 8
  store i32 0, i32* %136, align 4
  store i32 0, i32* %3, align 4
  br label %137

137:                                              ; preds = %135, %30
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @e_err(i32, i8*, i32, i32) #1

declare dso_local i32 @REG_PATTERN_TEST(i64, i32, i32) #1

declare dso_local i32 @REG_SET_AND_CHECK(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
