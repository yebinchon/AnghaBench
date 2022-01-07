; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_init_eeprom_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_init_eeprom_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32, %struct.e1000_eeprom_info }
%struct.e1000_eeprom_info = type { i64, i32, i32, i32, i32, i32 }

@EECD = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i64 0, align 8
@e1000_eeprom_microwire = common dso_local global i8* null, align 8
@E1000_EECD_SIZE = common dso_local global i32 0, align 4
@E1000_EECD_TYPE = common dso_local global i32 0, align 4
@e1000_eeprom_spi = common dso_local global i64 0, align 8
@E1000_EECD_ADDR_BITS = common dso_local global i32 0, align 4
@EEPROM_CFG = common dso_local global i32 0, align 4
@EEPROM_SIZE_MASK = common dso_local global i32 0, align 4
@EEPROM_SIZE_SHIFT = common dso_local global i32 0, align 4
@EEPROM_WORD_SIZE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000_init_eeprom_params(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_eeprom_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 1
  store %struct.e1000_eeprom_info* %9, %struct.e1000_eeprom_info** %4, align 8
  %10 = load i32, i32* @EECD, align 4
  %11 = call i32 @er32(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %12, i64* %6, align 8
  %13 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %14 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %106 [
    i32 137, label %16
    i32 136, label %16
    i32 135, label %16
    i32 134, label %16
    i32 140, label %29
    i32 133, label %29
    i32 132, label %29
    i32 131, label %29
    i32 130, label %29
    i32 139, label %53
    i32 138, label %53
    i32 129, label %53
    i32 128, label %53
  ]

16:                                               ; preds = %1, %1, %1, %1
  %17 = load i8*, i8** @e1000_eeprom_microwire, align 8
  %18 = ptrtoint i8* %17 to i64
  %19 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %4, align 8
  %20 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %4, align 8
  %22 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %21, i32 0, i32 1
  store i32 64, i32* %22, align 8
  %23 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %4, align 8
  %24 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %23, i32 0, i32 2
  store i32 3, i32* %24, align 4
  %25 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %4, align 8
  %26 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %25, i32 0, i32 3
  store i32 6, i32* %26, align 8
  %27 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %4, align 8
  %28 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %27, i32 0, i32 4
  store i32 50, i32* %28, align 4
  br label %107

29:                                               ; preds = %1, %1, %1, %1, %1
  %30 = load i8*, i8** @e1000_eeprom_microwire, align 8
  %31 = ptrtoint i8* %30 to i64
  %32 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %4, align 8
  %33 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %4, align 8
  %35 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %34, i32 0, i32 2
  store i32 3, i32* %35, align 4
  %36 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %4, align 8
  %37 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %36, i32 0, i32 4
  store i32 50, i32* %37, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @E1000_EECD_SIZE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %29
  %43 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %4, align 8
  %44 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %43, i32 0, i32 1
  store i32 256, i32* %44, align 8
  %45 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %4, align 8
  %46 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %45, i32 0, i32 3
  store i32 8, i32* %46, align 8
  br label %52

47:                                               ; preds = %29
  %48 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %4, align 8
  %49 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %48, i32 0, i32 1
  store i32 64, i32* %49, align 8
  %50 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %4, align 8
  %51 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %50, i32 0, i32 3
  store i32 6, i32* %51, align 8
  br label %52

52:                                               ; preds = %47, %42
  br label %107

53:                                               ; preds = %1, %1, %1, %1
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @E1000_EECD_TYPE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %81

58:                                               ; preds = %53
  %59 = load i64, i64* @e1000_eeprom_spi, align 8
  %60 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %4, align 8
  %61 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  %62 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %4, align 8
  %63 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %62, i32 0, i32 2
  store i32 8, i32* %63, align 4
  %64 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %4, align 8
  %65 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %64, i32 0, i32 4
  store i32 1, i32* %65, align 4
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @E1000_EECD_ADDR_BITS, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %58
  %71 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %4, align 8
  %72 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %71, i32 0, i32 5
  store i32 32, i32* %72, align 8
  %73 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %4, align 8
  %74 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %73, i32 0, i32 3
  store i32 16, i32* %74, align 8
  br label %80

75:                                               ; preds = %58
  %76 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %4, align 8
  %77 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %76, i32 0, i32 5
  store i32 8, i32* %77, align 8
  %78 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %4, align 8
  %79 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %78, i32 0, i32 3
  store i32 8, i32* %79, align 8
  br label %80

80:                                               ; preds = %75, %70
  br label %105

81:                                               ; preds = %53
  %82 = load i8*, i8** @e1000_eeprom_microwire, align 8
  %83 = ptrtoint i8* %82 to i64
  %84 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %4, align 8
  %85 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  %86 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %4, align 8
  %87 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %86, i32 0, i32 2
  store i32 3, i32* %87, align 4
  %88 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %4, align 8
  %89 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %88, i32 0, i32 4
  store i32 50, i32* %89, align 4
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* @E1000_EECD_ADDR_BITS, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %81
  %95 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %4, align 8
  %96 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %95, i32 0, i32 1
  store i32 256, i32* %96, align 8
  %97 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %4, align 8
  %98 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %97, i32 0, i32 3
  store i32 8, i32* %98, align 8
  br label %104

99:                                               ; preds = %81
  %100 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %4, align 8
  %101 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %100, i32 0, i32 1
  store i32 64, i32* %101, align 8
  %102 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %4, align 8
  %103 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %102, i32 0, i32 3
  store i32 6, i32* %103, align 8
  br label %104

104:                                              ; preds = %99, %94
  br label %105

105:                                              ; preds = %104, %80
  br label %107

106:                                              ; preds = %1
  br label %107

107:                                              ; preds = %106, %105, %52, %16
  %108 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %4, align 8
  %109 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @e1000_eeprom_spi, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %141

113:                                              ; preds = %107
  %114 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %4, align 8
  %115 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %114, i32 0, i32 1
  store i32 64, i32* %115, align 8
  %116 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %117 = load i32, i32* @EEPROM_CFG, align 4
  %118 = call i64 @e1000_read_eeprom(%struct.e1000_hw* %116, i32 %117, i32 1, i32* %7)
  store i64 %118, i64* %6, align 8
  %119 = load i64, i64* %6, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %113
  %122 = load i64, i64* %6, align 8
  store i64 %122, i64* %2, align 8
  br label %143

123:                                              ; preds = %113
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* @EEPROM_SIZE_MASK, align 4
  %126 = and i32 %124, %125
  %127 = load i32, i32* @EEPROM_SIZE_SHIFT, align 4
  %128 = ashr i32 %126, %127
  store i32 %128, i32* %7, align 4
  %129 = load i32, i32* %7, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %123
  %132 = load i32, i32* %7, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %7, align 4
  br label %134

134:                                              ; preds = %131, %123
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* @EEPROM_WORD_SIZE_SHIFT, align 4
  %137 = add nsw i32 %135, %136
  %138 = shl i32 1, %137
  %139 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %4, align 8
  %140 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %139, i32 0, i32 1
  store i32 %138, i32* %140, align 8
  br label %141

141:                                              ; preds = %134, %107
  %142 = load i64, i64* %6, align 8
  store i64 %142, i64* %2, align 8
  br label %143

143:                                              ; preds = %141, %121
  %144 = load i64, i64* %2, align 8
  ret i64 %144
}

declare dso_local i32 @er32(i32) #1

declare dso_local i64 @e1000_read_eeprom(%struct.e1000_hw*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
