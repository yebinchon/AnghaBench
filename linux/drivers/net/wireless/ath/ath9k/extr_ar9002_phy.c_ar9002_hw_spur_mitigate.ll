; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9002_phy.c_ar9002_hw_spur_mitigate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9002_phy.c_ar9002_hw_spur_mitigate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ath_hw*, i32, i32)* }
%struct.ath9k_channel = type { i32 }
%struct.chan_centers = type { i32 }

@AR_NO_SPUR = common dso_local global i32 0, align 4
@AR_EEPROM_MODAL_SPURS = common dso_local global i32 0, align 4
@AR_BASE_FREQ_2GHZ = common dso_local global i32 0, align 4
@AR_BASE_FREQ_5GHZ = common dso_local global i32 0, align 4
@AR_SPUR_FEEQ_BOUND_HT40 = common dso_local global i32 0, align 4
@AR_SPUR_FEEQ_BOUND_HT20 = common dso_local global i32 0, align 4
@AR_PHY_FORCE_CLKEN_CCK = common dso_local global i32 0, align 4
@AR_PHY_FORCE_CLKEN_CCK_MRC_MUX = common dso_local global i32 0, align 4
@AR_PHY_TIMING_CTRL4_ENABLE_SPUR_RSSI = common dso_local global i32 0, align 4
@AR_PHY_TIMING_CTRL4_ENABLE_SPUR_FILTER = common dso_local global i32 0, align 4
@AR_PHY_TIMING_CTRL4_ENABLE_CHAN_MASK = common dso_local global i32 0, align 4
@AR_PHY_TIMING_CTRL4_ENABLE_PILOT_MASK = common dso_local global i32 0, align 4
@AR_PHY_SPUR_REG_MASK_RATE_CNTL = common dso_local global i32 0, align 4
@AR_PHY_SPUR_REG_ENABLE_MASK_PPM = common dso_local global i32 0, align 4
@AR_PHY_SPUR_REG_MASK_RATE_SELECT = common dso_local global i32 0, align 4
@AR_PHY_SPUR_REG_ENABLE_VIT_SPUR_RSSI = common dso_local global i32 0, align 4
@SPUR_RSSI_THRESH = common dso_local global i32 0, align 4
@AR_PHY_SPUR_REG_SPUR_RSSI_THRESH = common dso_local global i32 0, align 4
@AR_PHY_SPUR_REG = common dso_local global i32 0, align 4
@AR_PHY_TIMING11_SPUR_DELTA_PHASE = common dso_local global i32 0, align 4
@AR_PHY_TIMING11_USE_SPUR_IN_AGC = common dso_local global i32 0, align 4
@AR_PHY_TIMING11_SPUR_FREQ_SD = common dso_local global i32 0, align 4
@AR_PHY_TIMING11 = common dso_local global i32 0, align 4
@AR_PHY_SFCORR_SPUR_SUBCHNL_SD_S = common dso_local global i32 0, align 4
@AR_PHY_SFCORR_EXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, %struct.ath9k_channel*)* @ar9002_hw_spur_mitigate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9002_hw_spur_mitigate(%struct.ath_hw* %0, %struct.ath9k_channel* %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath9k_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.chan_centers, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %4, align 8
  %19 = load i32, i32* @AR_NO_SPUR, align 4
  store i32 %19, i32* %5, align 4
  %20 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %21 = call i32 @IS_CHAN_2GHZ(%struct.ath9k_channel* %20)
  store i32 %21, i32* %18, align 4
  %22 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %23 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %24 = call i32 @ath9k_hw_get_channel_centers(%struct.ath_hw* %22, %struct.ath9k_channel* %23, %struct.chan_centers* %16)
  %25 = getelementptr inbounds %struct.chan_centers, %struct.chan_centers* %16, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %6, align 4
  store i32 0, i32* %15, align 4
  br label %27

27:                                               ; preds = %90, %2
  %28 = load i32, i32* %15, align 4
  %29 = load i32, i32* @AR_EEPROM_MODAL_SPURS, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %93

31:                                               ; preds = %27
  %32 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %33 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32 (%struct.ath_hw*, i32, i32)*, i32 (%struct.ath_hw*, i32, i32)** %35, align 8
  %37 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* %18, align 4
  %40 = call i32 %36(%struct.ath_hw* %37, i32 %38, i32 %39)
  store i32 %40, i32* %17, align 4
  %41 = load i32, i32* @AR_NO_SPUR, align 4
  %42 = load i32, i32* %17, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %31
  br label %93

45:                                               ; preds = %31
  %46 = load i32, i32* %18, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load i32, i32* %17, align 4
  %50 = sdiv i32 %49, 10
  %51 = load i32, i32* @AR_BASE_FREQ_2GHZ, align 4
  %52 = add nsw i32 %50, %51
  store i32 %52, i32* %17, align 4
  br label %58

53:                                               ; preds = %45
  %54 = load i32, i32* %17, align 4
  %55 = sdiv i32 %54, 10
  %56 = load i32, i32* @AR_BASE_FREQ_5GHZ, align 4
  %57 = add nsw i32 %55, %56
  store i32 %57, i32* %17, align 4
  br label %58

58:                                               ; preds = %53, %48
  %59 = load i32, i32* %17, align 4
  %60 = load i32, i32* %6, align 4
  %61 = sub nsw i32 %59, %60
  store i32 %61, i32* %17, align 4
  %62 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %63 = call i64 @IS_CHAN_HT40(%struct.ath9k_channel* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %58
  %66 = load i32, i32* %17, align 4
  %67 = load i32, i32* @AR_SPUR_FEEQ_BOUND_HT40, align 4
  %68 = sub nsw i32 0, %67
  %69 = icmp sgt i32 %66, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load i32, i32* %17, align 4
  %72 = load i32, i32* @AR_SPUR_FEEQ_BOUND_HT40, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = load i32, i32* %17, align 4
  store i32 %75, i32* %5, align 4
  br label %93

76:                                               ; preds = %70, %65
  br label %89

77:                                               ; preds = %58
  %78 = load i32, i32* %17, align 4
  %79 = load i32, i32* @AR_SPUR_FEEQ_BOUND_HT20, align 4
  %80 = sub nsw i32 0, %79
  %81 = icmp sgt i32 %78, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %77
  %83 = load i32, i32* %17, align 4
  %84 = load i32, i32* @AR_SPUR_FEEQ_BOUND_HT20, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = load i32, i32* %17, align 4
  store i32 %87, i32* %5, align 4
  br label %93

88:                                               ; preds = %82, %77
  br label %89

89:                                               ; preds = %88, %76
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %15, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %15, align 4
  br label %27

93:                                               ; preds = %86, %74, %44, %27
  %94 = load i32, i32* @AR_NO_SPUR, align 4
  %95 = load i32, i32* %5, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %93
  %98 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %99 = load i32, i32* @AR_PHY_FORCE_CLKEN_CCK, align 4
  %100 = load i32, i32* @AR_PHY_FORCE_CLKEN_CCK_MRC_MUX, align 4
  %101 = call i32 @REG_CLR_BIT(%struct.ath_hw* %98, i32 %99, i32 %100)
  br label %211

102:                                              ; preds = %93
  %103 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %104 = load i32, i32* @AR_PHY_FORCE_CLKEN_CCK, align 4
  %105 = load i32, i32* @AR_PHY_FORCE_CLKEN_CCK_MRC_MUX, align 4
  %106 = call i32 @REG_CLR_BIT(%struct.ath_hw* %103, i32 %104, i32 %105)
  br label %107

107:                                              ; preds = %102
  %108 = load i32, i32* %5, align 4
  %109 = mul nsw i32 %108, 320
  store i32 %109, i32* %7, align 4
  %110 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %111 = call i32 @AR_PHY_TIMING_CTRL4(i32 0)
  %112 = call i32 @REG_READ(%struct.ath_hw* %110, i32 %111)
  store i32 %112, i32* %13, align 4
  %113 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %114 = call i32 @ENABLE_REGWRITE_BUFFER(%struct.ath_hw* %113)
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* @AR_PHY_TIMING_CTRL4_ENABLE_SPUR_RSSI, align 4
  %117 = load i32, i32* @AR_PHY_TIMING_CTRL4_ENABLE_SPUR_FILTER, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* @AR_PHY_TIMING_CTRL4_ENABLE_CHAN_MASK, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* @AR_PHY_TIMING_CTRL4_ENABLE_PILOT_MASK, align 4
  %122 = or i32 %120, %121
  %123 = or i32 %115, %122
  store i32 %123, i32* %14, align 4
  %124 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %125 = call i32 @AR_PHY_TIMING_CTRL4(i32 0)
  %126 = load i32, i32* %14, align 4
  %127 = call i32 @REG_WRITE(%struct.ath_hw* %124, i32 %125, i32 %126)
  %128 = load i32, i32* @AR_PHY_SPUR_REG_MASK_RATE_CNTL, align 4
  %129 = load i32, i32* @AR_PHY_SPUR_REG_ENABLE_MASK_PPM, align 4
  %130 = or i32 %128, %129
  %131 = load i32, i32* @AR_PHY_SPUR_REG_MASK_RATE_SELECT, align 4
  %132 = or i32 %130, %131
  %133 = load i32, i32* @AR_PHY_SPUR_REG_ENABLE_VIT_SPUR_RSSI, align 4
  %134 = or i32 %132, %133
  %135 = load i32, i32* @SPUR_RSSI_THRESH, align 4
  %136 = load i32, i32* @AR_PHY_SPUR_REG_SPUR_RSSI_THRESH, align 4
  %137 = call i32 @SM(i32 %135, i32 %136)
  %138 = or i32 %134, %137
  store i32 %138, i32* %14, align 4
  %139 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %140 = load i32, i32* @AR_PHY_SPUR_REG, align 4
  %141 = load i32, i32* %14, align 4
  %142 = call i32 @REG_WRITE(%struct.ath_hw* %139, i32 %140, i32 %141)
  %143 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %144 = call i64 @IS_CHAN_HT40(%struct.ath9k_channel* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %156

146:                                              ; preds = %107
  %147 = load i32, i32* %5, align 4
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %146
  store i32 1, i32* %9, align 4
  %150 = load i32, i32* %5, align 4
  %151 = add nsw i32 %150, 10
  store i32 %151, i32* %8, align 4
  br label %155

152:                                              ; preds = %146
  store i32 0, i32* %9, align 4
  %153 = load i32, i32* %5, align 4
  %154 = sub nsw i32 %153, 10
  store i32 %154, i32* %8, align 4
  br label %155

155:                                              ; preds = %152, %149
  br label %158

156:                                              ; preds = %107
  store i32 0, i32* %9, align 4
  %157 = load i32, i32* %5, align 4
  store i32 %157, i32* %8, align 4
  br label %158

158:                                              ; preds = %156, %155
  %159 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %160 = call i64 @IS_CHAN_HT40(%struct.ath9k_channel* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %158
  %163 = load i32, i32* %5, align 4
  %164 = mul nsw i32 %163, 262144
  %165 = sdiv i32 %164, 10
  %166 = load i32, i32* @AR_PHY_TIMING11_SPUR_DELTA_PHASE, align 4
  %167 = and i32 %165, %166
  store i32 %167, i32* %11, align 4
  br label %174

168:                                              ; preds = %158
  %169 = load i32, i32* %5, align 4
  %170 = mul nsw i32 %169, 524288
  %171 = sdiv i32 %170, 10
  %172 = load i32, i32* @AR_PHY_TIMING11_SPUR_DELTA_PHASE, align 4
  %173 = and i32 %171, %172
  store i32 %173, i32* %11, align 4
  br label %174

174:                                              ; preds = %168, %162
  %175 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %176 = call i32 @IS_CHAN_2GHZ(%struct.ath9k_channel* %175)
  %177 = icmp ne i32 %176, 0
  %178 = zext i1 %177 to i64
  %179 = select i1 %177, i32 44, i32 40
  store i32 %179, i32* %12, align 4
  %180 = load i32, i32* %8, align 4
  %181 = mul nsw i32 %180, 2048
  %182 = load i32, i32* %12, align 4
  %183 = sdiv i32 %181, %182
  %184 = and i32 %183, 1023
  store i32 %184, i32* %10, align 4
  %185 = load i32, i32* @AR_PHY_TIMING11_USE_SPUR_IN_AGC, align 4
  %186 = load i32, i32* %10, align 4
  %187 = load i32, i32* @AR_PHY_TIMING11_SPUR_FREQ_SD, align 4
  %188 = call i32 @SM(i32 %186, i32 %187)
  %189 = or i32 %185, %188
  %190 = load i32, i32* %11, align 4
  %191 = load i32, i32* @AR_PHY_TIMING11_SPUR_DELTA_PHASE, align 4
  %192 = call i32 @SM(i32 %190, i32 %191)
  %193 = or i32 %189, %192
  store i32 %193, i32* %14, align 4
  %194 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %195 = load i32, i32* @AR_PHY_TIMING11, align 4
  %196 = load i32, i32* %14, align 4
  %197 = call i32 @REG_WRITE(%struct.ath_hw* %194, i32 %195, i32 %196)
  %198 = load i32, i32* %9, align 4
  %199 = load i32, i32* @AR_PHY_SFCORR_SPUR_SUBCHNL_SD_S, align 4
  %200 = shl i32 %198, %199
  store i32 %200, i32* %14, align 4
  %201 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %202 = load i32, i32* @AR_PHY_SFCORR_EXT, align 4
  %203 = load i32, i32* %14, align 4
  %204 = call i32 @REG_WRITE(%struct.ath_hw* %201, i32 %202, i32 %203)
  %205 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %206 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %207 = load i32, i32* %7, align 4
  %208 = call i32 @ar5008_hw_cmn_spur_mitigate(%struct.ath_hw* %205, %struct.ath9k_channel* %206, i32 %207)
  %209 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %210 = call i32 @REGWRITE_BUFFER_FLUSH(%struct.ath_hw* %209)
  br label %211

211:                                              ; preds = %174, %97
  ret void
}

declare dso_local i32 @IS_CHAN_2GHZ(%struct.ath9k_channel*) #1

declare dso_local i32 @ath9k_hw_get_channel_centers(%struct.ath_hw*, %struct.ath9k_channel*, %struct.chan_centers*) #1

declare dso_local i64 @IS_CHAN_HT40(%struct.ath9k_channel*) #1

declare dso_local i32 @REG_CLR_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i32 @AR_PHY_TIMING_CTRL4(i32) #1

declare dso_local i32 @ENABLE_REGWRITE_BUFFER(%struct.ath_hw*) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @SM(i32, i32) #1

declare dso_local i32 @ar5008_hw_cmn_spur_mitigate(%struct.ath_hw*, %struct.ath9k_channel*, i32) #1

declare dso_local i32 @REGWRITE_BUFFER_FLUSH(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
