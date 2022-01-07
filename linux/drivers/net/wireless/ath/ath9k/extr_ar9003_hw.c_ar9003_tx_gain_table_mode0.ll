; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_hw.c_ar9003_tx_gain_table_mode0.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_hw.c_ar9003_tx_gain_table_mode0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }

@ar9331_modes_lowest_ob_db_tx_gain_1p2 = common dso_local global i32 0, align 4
@ar9331_modes_lowest_ob_db_tx_gain_1p1 = common dso_local global i32 0, align 4
@ar9340Modes_lowest_ob_db_tx_gain_table_1p0 = common dso_local global i32 0, align 4
@ar9485_modes_lowest_ob_db_tx_gain_1_1 = common dso_local global i32 0, align 4
@ar955x_1p0_modes_xpa_tx_gain_table = common dso_local global i32 0, align 4
@qca953x_1p0_modes_xpa_tx_gain_table = common dso_local global i32 0, align 4
@qca953x_1p1_modes_xpa_tx_gain_table = common dso_local global i32 0, align 4
@qca953x_2p0_modes_xpa_tx_gain_table = common dso_local global i32 0, align 4
@qca956x_1p0_modes_xpa_tx_gain_table = common dso_local global i32 0, align 4
@ar9580_1p0_lowest_ob_db_tx_gain_table = common dso_local global i32 0, align 4
@ar9462_2p1_modes_low_ob_db_tx_gain = common dso_local global i32 0, align 4
@ar9462_2p0_modes_low_ob_db_tx_gain = common dso_local global i32 0, align 4
@ar9565_1p1_modes_low_ob_db_tx_gain_table = common dso_local global i32 0, align 4
@ar9565_1p0_modes_low_ob_db_tx_gain_table = common dso_local global i32 0, align 4
@ar9300Modes_lowest_ob_db_tx_gain_table_2p2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*)* @ar9003_tx_gain_table_mode0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9003_tx_gain_table_mode0(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %3 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %4 = call i64 @AR_SREV_9330_12(%struct.ath_hw* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %8 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %7, i32 0, i32 0
  %9 = load i32, i32* @ar9331_modes_lowest_ob_db_tx_gain_1p2, align 4
  %10 = call i32 @INIT_INI_ARRAY(i32* %8, i32 %9)
  br label %146

11:                                               ; preds = %1
  %12 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %13 = call i64 @AR_SREV_9330_11(%struct.ath_hw* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %17 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %16, i32 0, i32 0
  %18 = load i32, i32* @ar9331_modes_lowest_ob_db_tx_gain_1p1, align 4
  %19 = call i32 @INIT_INI_ARRAY(i32* %17, i32 %18)
  br label %145

20:                                               ; preds = %11
  %21 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %22 = call i64 @AR_SREV_9340(%struct.ath_hw* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %26 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %25, i32 0, i32 0
  %27 = load i32, i32* @ar9340Modes_lowest_ob_db_tx_gain_table_1p0, align 4
  %28 = call i32 @INIT_INI_ARRAY(i32* %26, i32 %27)
  br label %144

29:                                               ; preds = %20
  %30 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %31 = call i64 @AR_SREV_9485_11_OR_LATER(%struct.ath_hw* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %35 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %34, i32 0, i32 0
  %36 = load i32, i32* @ar9485_modes_lowest_ob_db_tx_gain_1_1, align 4
  %37 = call i32 @INIT_INI_ARRAY(i32* %35, i32 %36)
  br label %143

38:                                               ; preds = %29
  %39 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %40 = call i64 @AR_SREV_9550(%struct.ath_hw* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %44 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %43, i32 0, i32 0
  %45 = load i32, i32* @ar955x_1p0_modes_xpa_tx_gain_table, align 4
  %46 = call i32 @INIT_INI_ARRAY(i32* %44, i32 %45)
  br label %142

47:                                               ; preds = %38
  %48 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %49 = call i64 @AR_SREV_9531_10(%struct.ath_hw* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %53 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %52, i32 0, i32 0
  %54 = load i32, i32* @qca953x_1p0_modes_xpa_tx_gain_table, align 4
  %55 = call i32 @INIT_INI_ARRAY(i32* %53, i32 %54)
  br label %141

56:                                               ; preds = %47
  %57 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %58 = call i64 @AR_SREV_9531_11(%struct.ath_hw* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %56
  %61 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %62 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %61, i32 0, i32 0
  %63 = load i32, i32* @qca953x_1p1_modes_xpa_tx_gain_table, align 4
  %64 = call i32 @INIT_INI_ARRAY(i32* %62, i32 %63)
  br label %140

65:                                               ; preds = %56
  %66 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %67 = call i64 @AR_SREV_9531_20(%struct.ath_hw* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %65
  %70 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %71 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %70, i32 0, i32 0
  %72 = load i32, i32* @qca953x_2p0_modes_xpa_tx_gain_table, align 4
  %73 = call i32 @INIT_INI_ARRAY(i32* %71, i32 %72)
  br label %139

74:                                               ; preds = %65
  %75 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %76 = call i64 @AR_SREV_9561(%struct.ath_hw* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %74
  %79 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %80 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %79, i32 0, i32 0
  %81 = load i32, i32* @qca956x_1p0_modes_xpa_tx_gain_table, align 4
  %82 = call i32 @INIT_INI_ARRAY(i32* %80, i32 %81)
  br label %138

83:                                               ; preds = %74
  %84 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %85 = call i64 @AR_SREV_9580(%struct.ath_hw* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %83
  %88 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %89 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %88, i32 0, i32 0
  %90 = load i32, i32* @ar9580_1p0_lowest_ob_db_tx_gain_table, align 4
  %91 = call i32 @INIT_INI_ARRAY(i32* %89, i32 %90)
  br label %137

92:                                               ; preds = %83
  %93 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %94 = call i64 @AR_SREV_9462_21(%struct.ath_hw* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %92
  %97 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %98 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %97, i32 0, i32 0
  %99 = load i32, i32* @ar9462_2p1_modes_low_ob_db_tx_gain, align 4
  %100 = call i32 @INIT_INI_ARRAY(i32* %98, i32 %99)
  br label %136

101:                                              ; preds = %92
  %102 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %103 = call i64 @AR_SREV_9462_20(%struct.ath_hw* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %101
  %106 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %107 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %106, i32 0, i32 0
  %108 = load i32, i32* @ar9462_2p0_modes_low_ob_db_tx_gain, align 4
  %109 = call i32 @INIT_INI_ARRAY(i32* %107, i32 %108)
  br label %135

110:                                              ; preds = %101
  %111 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %112 = call i64 @AR_SREV_9565_11(%struct.ath_hw* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %110
  %115 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %116 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %115, i32 0, i32 0
  %117 = load i32, i32* @ar9565_1p1_modes_low_ob_db_tx_gain_table, align 4
  %118 = call i32 @INIT_INI_ARRAY(i32* %116, i32 %117)
  br label %134

119:                                              ; preds = %110
  %120 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %121 = call i64 @AR_SREV_9565(%struct.ath_hw* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %119
  %124 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %125 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %124, i32 0, i32 0
  %126 = load i32, i32* @ar9565_1p0_modes_low_ob_db_tx_gain_table, align 4
  %127 = call i32 @INIT_INI_ARRAY(i32* %125, i32 %126)
  br label %133

128:                                              ; preds = %119
  %129 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %130 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %129, i32 0, i32 0
  %131 = load i32, i32* @ar9300Modes_lowest_ob_db_tx_gain_table_2p2, align 4
  %132 = call i32 @INIT_INI_ARRAY(i32* %130, i32 %131)
  br label %133

133:                                              ; preds = %128, %123
  br label %134

134:                                              ; preds = %133, %114
  br label %135

135:                                              ; preds = %134, %105
  br label %136

136:                                              ; preds = %135, %96
  br label %137

137:                                              ; preds = %136, %87
  br label %138

138:                                              ; preds = %137, %78
  br label %139

139:                                              ; preds = %138, %69
  br label %140

140:                                              ; preds = %139, %60
  br label %141

141:                                              ; preds = %140, %51
  br label %142

142:                                              ; preds = %141, %42
  br label %143

143:                                              ; preds = %142, %33
  br label %144

144:                                              ; preds = %143, %24
  br label %145

145:                                              ; preds = %144, %15
  br label %146

146:                                              ; preds = %145, %6
  ret void
}

declare dso_local i64 @AR_SREV_9330_12(%struct.ath_hw*) #1

declare dso_local i32 @INIT_INI_ARRAY(i32*, i32) #1

declare dso_local i64 @AR_SREV_9330_11(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9340(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9485_11_OR_LATER(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9550(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9531_10(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9531_11(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9531_20(%struct.ath_hw*) #1

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
