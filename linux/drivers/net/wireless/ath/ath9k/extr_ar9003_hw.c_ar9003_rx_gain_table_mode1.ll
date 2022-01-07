; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_hw.c_ar9003_rx_gain_table_mode1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_hw.c_ar9003_rx_gain_table_mode1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, i32 }

@ar9331_common_wo_xlna_rx_gain_1p2 = common dso_local global i32 0, align 4
@ar9331_common_wo_xlna_rx_gain_1p1 = common dso_local global i32 0, align 4
@ar9340Common_wo_xlna_rx_gain_table_1p0 = common dso_local global i32 0, align 4
@ar9485Common_wo_xlna_rx_gain_1_1 = common dso_local global i32 0, align 4
@ar9462_2p1_common_wo_xlna_rx_gain = common dso_local global i32 0, align 4
@ar9462_2p0_common_wo_xlna_rx_gain = common dso_local global i32 0, align 4
@ar955x_1p0_common_wo_xlna_rx_gain_table = common dso_local global i32 0, align 4
@ar955x_1p0_common_wo_xlna_rx_gain_bounds = common dso_local global i32 0, align 4
@qca953x_1p0_common_wo_xlna_rx_gain_table = common dso_local global i32 0, align 4
@qca953x_1p0_common_wo_xlna_rx_gain_bounds = common dso_local global i32 0, align 4
@qca953x_2p0_common_wo_xlna_rx_gain_table = common dso_local global i32 0, align 4
@qca953x_2p0_common_wo_xlna_rx_gain_bounds = common dso_local global i32 0, align 4
@qca956x_1p0_common_wo_xlna_rx_gain_table = common dso_local global i32 0, align 4
@qca956x_1p0_common_wo_xlna_rx_gain_bounds = common dso_local global i32 0, align 4
@ar9580_1p0_wo_xlna_rx_gain_table = common dso_local global i32 0, align 4
@ar9565_1p1_common_wo_xlna_rx_gain_table = common dso_local global i32 0, align 4
@ar9565_1p0_common_wo_xlna_rx_gain_table = common dso_local global i32 0, align 4
@ar9300Common_wo_xlna_rx_gain_table_2p2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*)* @ar9003_rx_gain_table_mode1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9003_rx_gain_table_mode1(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %3 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %4 = call i64 @AR_SREV_9330_12(%struct.ath_hw* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %8 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %7, i32 0, i32 0
  %9 = load i32, i32* @ar9331_common_wo_xlna_rx_gain_1p2, align 4
  %10 = call i32 @INIT_INI_ARRAY(i32* %8, i32 %9)
  br label %156

11:                                               ; preds = %1
  %12 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %13 = call i64 @AR_SREV_9330_11(%struct.ath_hw* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %17 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %16, i32 0, i32 0
  %18 = load i32, i32* @ar9331_common_wo_xlna_rx_gain_1p1, align 4
  %19 = call i32 @INIT_INI_ARRAY(i32* %17, i32 %18)
  br label %155

20:                                               ; preds = %11
  %21 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %22 = call i64 @AR_SREV_9340(%struct.ath_hw* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %26 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %25, i32 0, i32 0
  %27 = load i32, i32* @ar9340Common_wo_xlna_rx_gain_table_1p0, align 4
  %28 = call i32 @INIT_INI_ARRAY(i32* %26, i32 %27)
  br label %154

29:                                               ; preds = %20
  %30 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %31 = call i64 @AR_SREV_9485_11_OR_LATER(%struct.ath_hw* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %35 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %34, i32 0, i32 0
  %36 = load i32, i32* @ar9485Common_wo_xlna_rx_gain_1_1, align 4
  %37 = call i32 @INIT_INI_ARRAY(i32* %35, i32 %36)
  br label %153

38:                                               ; preds = %29
  %39 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %40 = call i64 @AR_SREV_9462_21(%struct.ath_hw* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %44 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %43, i32 0, i32 0
  %45 = load i32, i32* @ar9462_2p1_common_wo_xlna_rx_gain, align 4
  %46 = call i32 @INIT_INI_ARRAY(i32* %44, i32 %45)
  br label %152

47:                                               ; preds = %38
  %48 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %49 = call i64 @AR_SREV_9462_20(%struct.ath_hw* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %53 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %52, i32 0, i32 0
  %54 = load i32, i32* @ar9462_2p0_common_wo_xlna_rx_gain, align 4
  %55 = call i32 @INIT_INI_ARRAY(i32* %53, i32 %54)
  br label %151

56:                                               ; preds = %47
  %57 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %58 = call i64 @AR_SREV_9550(%struct.ath_hw* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %56
  %61 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %62 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %61, i32 0, i32 0
  %63 = load i32, i32* @ar955x_1p0_common_wo_xlna_rx_gain_table, align 4
  %64 = call i32 @INIT_INI_ARRAY(i32* %62, i32 %63)
  %65 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %66 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %65, i32 0, i32 1
  %67 = load i32, i32* @ar955x_1p0_common_wo_xlna_rx_gain_bounds, align 4
  %68 = call i32 @INIT_INI_ARRAY(i32* %66, i32 %67)
  br label %150

69:                                               ; preds = %56
  %70 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %71 = call i64 @AR_SREV_9531_10(%struct.ath_hw* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %75 = call i64 @AR_SREV_9531_11(%struct.ath_hw* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %73, %69
  %78 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %79 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %78, i32 0, i32 0
  %80 = load i32, i32* @qca953x_1p0_common_wo_xlna_rx_gain_table, align 4
  %81 = call i32 @INIT_INI_ARRAY(i32* %79, i32 %80)
  %82 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %83 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %82, i32 0, i32 1
  %84 = load i32, i32* @qca953x_1p0_common_wo_xlna_rx_gain_bounds, align 4
  %85 = call i32 @INIT_INI_ARRAY(i32* %83, i32 %84)
  br label %149

86:                                               ; preds = %73
  %87 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %88 = call i64 @AR_SREV_9531_20(%struct.ath_hw* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %86
  %91 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %92 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %91, i32 0, i32 0
  %93 = load i32, i32* @qca953x_2p0_common_wo_xlna_rx_gain_table, align 4
  %94 = call i32 @INIT_INI_ARRAY(i32* %92, i32 %93)
  %95 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %96 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %95, i32 0, i32 1
  %97 = load i32, i32* @qca953x_2p0_common_wo_xlna_rx_gain_bounds, align 4
  %98 = call i32 @INIT_INI_ARRAY(i32* %96, i32 %97)
  br label %148

99:                                               ; preds = %86
  %100 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %101 = call i64 @AR_SREV_9561(%struct.ath_hw* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %99
  %104 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %105 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %104, i32 0, i32 0
  %106 = load i32, i32* @qca956x_1p0_common_wo_xlna_rx_gain_table, align 4
  %107 = call i32 @INIT_INI_ARRAY(i32* %105, i32 %106)
  %108 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %109 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %108, i32 0, i32 1
  %110 = load i32, i32* @qca956x_1p0_common_wo_xlna_rx_gain_bounds, align 4
  %111 = call i32 @INIT_INI_ARRAY(i32* %109, i32 %110)
  br label %147

112:                                              ; preds = %99
  %113 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %114 = call i64 @AR_SREV_9580(%struct.ath_hw* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %112
  %117 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %118 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %117, i32 0, i32 0
  %119 = load i32, i32* @ar9580_1p0_wo_xlna_rx_gain_table, align 4
  %120 = call i32 @INIT_INI_ARRAY(i32* %118, i32 %119)
  br label %146

121:                                              ; preds = %112
  %122 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %123 = call i64 @AR_SREV_9565_11(%struct.ath_hw* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %121
  %126 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %127 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %126, i32 0, i32 0
  %128 = load i32, i32* @ar9565_1p1_common_wo_xlna_rx_gain_table, align 4
  %129 = call i32 @INIT_INI_ARRAY(i32* %127, i32 %128)
  br label %145

130:                                              ; preds = %121
  %131 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %132 = call i64 @AR_SREV_9565(%struct.ath_hw* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %130
  %135 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %136 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %135, i32 0, i32 0
  %137 = load i32, i32* @ar9565_1p0_common_wo_xlna_rx_gain_table, align 4
  %138 = call i32 @INIT_INI_ARRAY(i32* %136, i32 %137)
  br label %144

139:                                              ; preds = %130
  %140 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %141 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %140, i32 0, i32 0
  %142 = load i32, i32* @ar9300Common_wo_xlna_rx_gain_table_2p2, align 4
  %143 = call i32 @INIT_INI_ARRAY(i32* %141, i32 %142)
  br label %144

144:                                              ; preds = %139, %134
  br label %145

145:                                              ; preds = %144, %125
  br label %146

146:                                              ; preds = %145, %116
  br label %147

147:                                              ; preds = %146, %103
  br label %148

148:                                              ; preds = %147, %90
  br label %149

149:                                              ; preds = %148, %77
  br label %150

150:                                              ; preds = %149, %60
  br label %151

151:                                              ; preds = %150, %51
  br label %152

152:                                              ; preds = %151, %42
  br label %153

153:                                              ; preds = %152, %33
  br label %154

154:                                              ; preds = %153, %24
  br label %155

155:                                              ; preds = %154, %15
  br label %156

156:                                              ; preds = %155, %6
  ret void
}

declare dso_local i64 @AR_SREV_9330_12(%struct.ath_hw*) #1

declare dso_local i32 @INIT_INI_ARRAY(i32*, i32) #1

declare dso_local i64 @AR_SREV_9330_11(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9340(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9485_11_OR_LATER(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9462_21(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9462_20(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9550(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9531_10(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9531_11(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9531_20(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9561(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9580(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9565_11(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9565(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
