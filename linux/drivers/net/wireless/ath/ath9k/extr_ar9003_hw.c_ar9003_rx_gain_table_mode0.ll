; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_hw.c_ar9003_rx_gain_table_mode0.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_hw.c_ar9003_rx_gain_table_mode0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, i32, i32 }

@ar9331_common_rx_gain_1p2 = common dso_local global i32 0, align 4
@ar9331_common_rx_gain_1p1 = common dso_local global i32 0, align 4
@ar9340Common_rx_gain_table_1p0 = common dso_local global i32 0, align 4
@ar9485_common_rx_gain_1_1 = common dso_local global i32 0, align 4
@ar955x_1p0_common_rx_gain_table = common dso_local global i32 0, align 4
@ar955x_1p0_common_rx_gain_bounds = common dso_local global i32 0, align 4
@qca953x_1p0_common_rx_gain_table = common dso_local global i32 0, align 4
@qca953x_1p0_common_rx_gain_bounds = common dso_local global i32 0, align 4
@qca956x_1p0_common_rx_gain_table = common dso_local global i32 0, align 4
@qca956x_1p0_common_rx_gain_bounds = common dso_local global i32 0, align 4
@qca956x_1p0_xlna_only = common dso_local global i32 0, align 4
@ar9580_1p0_rx_gain_table = common dso_local global i32 0, align 4
@ar9462_2p1_common_rx_gain = common dso_local global i32 0, align 4
@ar9462_2p0_common_rx_gain = common dso_local global i32 0, align 4
@ar9565_1p1_Common_rx_gain_table = common dso_local global i32 0, align 4
@ar9565_1p0_Common_rx_gain_table = common dso_local global i32 0, align 4
@ar9300Common_rx_gain_table_2p2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*)* @ar9003_rx_gain_table_mode0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9003_rx_gain_table_mode0(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %3 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %4 = call i64 @AR_SREV_9330_12(%struct.ath_hw* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %8 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %7, i32 0, i32 0
  %9 = load i32, i32* @ar9331_common_rx_gain_1p2, align 4
  %10 = call i32 @INIT_INI_ARRAY(i32* %8, i32 %9)
  br label %142

11:                                               ; preds = %1
  %12 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %13 = call i64 @AR_SREV_9330_11(%struct.ath_hw* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %17 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %16, i32 0, i32 0
  %18 = load i32, i32* @ar9331_common_rx_gain_1p1, align 4
  %19 = call i32 @INIT_INI_ARRAY(i32* %17, i32 %18)
  br label %141

20:                                               ; preds = %11
  %21 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %22 = call i64 @AR_SREV_9340(%struct.ath_hw* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %26 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %25, i32 0, i32 0
  %27 = load i32, i32* @ar9340Common_rx_gain_table_1p0, align 4
  %28 = call i32 @INIT_INI_ARRAY(i32* %26, i32 %27)
  br label %140

29:                                               ; preds = %20
  %30 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %31 = call i64 @AR_SREV_9485_11_OR_LATER(%struct.ath_hw* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %35 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %34, i32 0, i32 0
  %36 = load i32, i32* @ar9485_common_rx_gain_1_1, align 4
  %37 = call i32 @INIT_INI_ARRAY(i32* %35, i32 %36)
  br label %139

38:                                               ; preds = %29
  %39 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %40 = call i64 @AR_SREV_9550(%struct.ath_hw* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %38
  %43 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %44 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %43, i32 0, i32 0
  %45 = load i32, i32* @ar955x_1p0_common_rx_gain_table, align 4
  %46 = call i32 @INIT_INI_ARRAY(i32* %44, i32 %45)
  %47 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %48 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %47, i32 0, i32 2
  %49 = load i32, i32* @ar955x_1p0_common_rx_gain_bounds, align 4
  %50 = call i32 @INIT_INI_ARRAY(i32* %48, i32 %49)
  br label %138

51:                                               ; preds = %38
  %52 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %53 = call i64 @AR_SREV_9531(%struct.ath_hw* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %51
  %56 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %57 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %56, i32 0, i32 0
  %58 = load i32, i32* @qca953x_1p0_common_rx_gain_table, align 4
  %59 = call i32 @INIT_INI_ARRAY(i32* %57, i32 %58)
  %60 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %61 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %60, i32 0, i32 2
  %62 = load i32, i32* @qca953x_1p0_common_rx_gain_bounds, align 4
  %63 = call i32 @INIT_INI_ARRAY(i32* %61, i32 %62)
  br label %137

64:                                               ; preds = %51
  %65 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %66 = call i64 @AR_SREV_9561(%struct.ath_hw* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %81

68:                                               ; preds = %64
  %69 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %70 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %69, i32 0, i32 0
  %71 = load i32, i32* @qca956x_1p0_common_rx_gain_table, align 4
  %72 = call i32 @INIT_INI_ARRAY(i32* %70, i32 %71)
  %73 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %74 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %73, i32 0, i32 2
  %75 = load i32, i32* @qca956x_1p0_common_rx_gain_bounds, align 4
  %76 = call i32 @INIT_INI_ARRAY(i32* %74, i32 %75)
  %77 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %78 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %77, i32 0, i32 1
  %79 = load i32, i32* @qca956x_1p0_xlna_only, align 4
  %80 = call i32 @INIT_INI_ARRAY(i32* %78, i32 %79)
  br label %136

81:                                               ; preds = %64
  %82 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %83 = call i64 @AR_SREV_9580(%struct.ath_hw* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %81
  %86 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %87 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %86, i32 0, i32 0
  %88 = load i32, i32* @ar9580_1p0_rx_gain_table, align 4
  %89 = call i32 @INIT_INI_ARRAY(i32* %87, i32 %88)
  br label %135

90:                                               ; preds = %81
  %91 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %92 = call i64 @AR_SREV_9462_21(%struct.ath_hw* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %90
  %95 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %96 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %95, i32 0, i32 0
  %97 = load i32, i32* @ar9462_2p1_common_rx_gain, align 4
  %98 = call i32 @INIT_INI_ARRAY(i32* %96, i32 %97)
  br label %134

99:                                               ; preds = %90
  %100 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %101 = call i64 @AR_SREV_9462_20(%struct.ath_hw* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %99
  %104 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %105 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %104, i32 0, i32 0
  %106 = load i32, i32* @ar9462_2p0_common_rx_gain, align 4
  %107 = call i32 @INIT_INI_ARRAY(i32* %105, i32 %106)
  br label %133

108:                                              ; preds = %99
  %109 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %110 = call i64 @AR_SREV_9565_11(%struct.ath_hw* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %108
  %113 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %114 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %113, i32 0, i32 0
  %115 = load i32, i32* @ar9565_1p1_Common_rx_gain_table, align 4
  %116 = call i32 @INIT_INI_ARRAY(i32* %114, i32 %115)
  br label %132

117:                                              ; preds = %108
  %118 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %119 = call i64 @AR_SREV_9565(%struct.ath_hw* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %117
  %122 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %123 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %122, i32 0, i32 0
  %124 = load i32, i32* @ar9565_1p0_Common_rx_gain_table, align 4
  %125 = call i32 @INIT_INI_ARRAY(i32* %123, i32 %124)
  br label %131

126:                                              ; preds = %117
  %127 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %128 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %127, i32 0, i32 0
  %129 = load i32, i32* @ar9300Common_rx_gain_table_2p2, align 4
  %130 = call i32 @INIT_INI_ARRAY(i32* %128, i32 %129)
  br label %131

131:                                              ; preds = %126, %121
  br label %132

132:                                              ; preds = %131, %112
  br label %133

133:                                              ; preds = %132, %103
  br label %134

134:                                              ; preds = %133, %94
  br label %135

135:                                              ; preds = %134, %85
  br label %136

136:                                              ; preds = %135, %68
  br label %137

137:                                              ; preds = %136, %55
  br label %138

138:                                              ; preds = %137, %42
  br label %139

139:                                              ; preds = %138, %33
  br label %140

140:                                              ; preds = %139, %24
  br label %141

141:                                              ; preds = %140, %15
  br label %142

142:                                              ; preds = %141, %6
  ret void
}

declare dso_local i64 @AR_SREV_9330_12(%struct.ath_hw*) #1

declare dso_local i32 @INIT_INI_ARRAY(i32*, i32) #1

declare dso_local i64 @AR_SREV_9330_11(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9340(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9485_11_OR_LATER(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9550(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9531(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9561(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9580(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9462_21(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9462_20(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9565_11(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9565(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
