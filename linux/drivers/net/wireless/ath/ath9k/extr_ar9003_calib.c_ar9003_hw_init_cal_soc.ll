; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_calib.c_ar9003_hw_init_cal_soc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_calib.c_ar9003_hw_init_cal_soc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ath9k_channel = type { i32 }

@TX_CL_CAL = common dso_local global i32 0, align 4
@AR_PHY_CL_CAL_CTL = common dso_local global i32 0, align 4
@AR_PHY_CL_CAL_ENABLE = common dso_local global i32 0, align 4
@AR_PHY_TX_IQCAL_CONTROL_1 = common dso_local global i32 0, align 4
@AR_PHY_TX_IQCAL_CONTROL_1_IQCORR_I_Q_COFF_DELPT = common dso_local global i32 0, align 4
@DELPT = common dso_local global i32 0, align 4
@TX_IQ_ON_AGC_CAL = common dso_local global i32 0, align 4
@AR_PHY_TX_IQCAL_CONTROL_0 = common dso_local global i32 0, align 4
@AR_PHY_TX_IQCAL_CONTROL_0_ENABLE_TXIQ_CAL = common dso_local global i32 0, align 4
@AR_PHY_ACTIVE = common dso_local global i32 0, align 4
@AR_PHY_ACTIVE_DIS = common dso_local global i32 0, align 4
@AR_PHY_ACTIVE_EN = common dso_local global i32 0, align 4
@AH_FASTCC = common dso_local global i32 0, align 4
@AR9300_MAX_CHAINS = common dso_local global i32 0, align 4
@MAXIQCAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*, %struct.ath9k_channel*)* @ar9003_hw_init_cal_soc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar9003_hw_init_cal_soc(%struct.ath_hw* %0, %struct.ath9k_channel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca %struct.ath9k_channel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %4, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %12 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %13 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %12, i32 0, i32 4
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %17 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ar9003_hw_set_chain_masks(%struct.ath_hw* %11, i32 %15, i32 %19)
  %21 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %22 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @TX_CL_CAL, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %2
  %28 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %29 = load i32, i32* @AR_PHY_CL_CAL_CTL, align 4
  %30 = load i32, i32* @AR_PHY_CL_CAL_ENABLE, align 4
  %31 = call i32 @REG_SET_BIT(%struct.ath_hw* %28, i32 %29, i32 %30)
  store i32 1, i32* %8, align 4
  br label %32

32:                                               ; preds = %27, %2
  %33 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %34 = call i64 @IS_CHAN_HALF_RATE(%struct.ath9k_channel* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %38 = call i64 @IS_CHAN_QUARTER_RATE(%struct.ath9k_channel* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36, %32
  br label %94

41:                                               ; preds = %36
  %42 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %43 = load i32, i32* @AR_PHY_TX_IQCAL_CONTROL_1, align 4
  %44 = load i32, i32* @AR_PHY_TX_IQCAL_CONTROL_1_IQCORR_I_Q_COFF_DELPT, align 4
  %45 = load i32, i32* @DELPT, align 4
  %46 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %42, i32 %43, i32 %44, i32 %45)
  %47 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %48 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @TX_IQ_ON_AGC_CAL, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %41
  %54 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %55 = load i32, i32* @AR_PHY_TX_IQCAL_CONTROL_0, align 4
  %56 = load i32, i32* @AR_PHY_TX_IQCAL_CONTROL_0_ENABLE_TXIQ_CAL, align 4
  %57 = call i64 @REG_READ_FIELD(%struct.ath_hw* %54, i32 %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  store i32 1, i32* %6, align 4
  br label %61

60:                                               ; preds = %53
  store i32 0, i32* %6, align 4
  br label %61

61:                                               ; preds = %60, %59
  store i32 1, i32* %8, align 4
  br label %63

62:                                               ; preds = %41
  store i32 1, i32* %9, align 4
  store i32 1, i32* %8, align 4
  br label %63

63:                                               ; preds = %62, %61
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %63
  %67 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %68 = call i32 @ar9003_hw_tx_iq_cal_run(%struct.ath_hw* %67)
  store i32 %68, i32* %6, align 4
  %69 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %70 = load i32, i32* @AR_PHY_ACTIVE, align 4
  %71 = load i32, i32* @AR_PHY_ACTIVE_DIS, align 4
  %72 = call i32 @REG_WRITE(%struct.ath_hw* %69, i32 %70, i32 %71)
  %73 = call i32 @udelay(i32 5)
  %74 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %75 = load i32, i32* @AR_PHY_ACTIVE, align 4
  %76 = load i32, i32* @AR_PHY_ACTIVE_EN, align 4
  %77 = call i32 @REG_WRITE(%struct.ath_hw* %74, i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %66, %63
  %79 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %80 = call i64 @AR_SREV_9550(%struct.ath_hw* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %78
  %83 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %84 = call i64 @IS_CHAN_2GHZ(%struct.ath9k_channel* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %82
  %87 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @ar9003_hw_dynamic_osdac_selection(%struct.ath_hw* %87, i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %86
  store i32 0, i32* %3, align 4
  br label %186

92:                                               ; preds = %86
  br label %93

93:                                               ; preds = %92, %82, %78
  br label %94

94:                                               ; preds = %93, %40
  %95 = load i32, i32* %8, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %104, label %97

97:                                               ; preds = %94
  %98 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %99 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @AH_FASTCC, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %175, label %104

104:                                              ; preds = %97, %94
  store i32 0, i32* %10, align 4
  br label %105

105:                                              ; preds = %124, %104
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* @AR9300_MAX_CHAINS, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %127

109:                                              ; preds = %105
  %110 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %111 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %10, align 4
  %114 = shl i32 1, %113
  %115 = and i32 %112, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %109
  br label %124

118:                                              ; preds = %109
  %119 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %120 = load i32, i32* %10, align 4
  %121 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %122 = call i64 @IS_CHAN_2GHZ(%struct.ath9k_channel* %121)
  %123 = call i32 @ar9003_hw_manual_peak_cal(%struct.ath_hw* %119, i32 %120, i64 %122)
  br label %124

124:                                              ; preds = %118, %117
  %125 = load i32, i32* %10, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %10, align 4
  br label %105

127:                                              ; preds = %105
  %128 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %129 = call i64 @AR_SREV_9550(%struct.ath_hw* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %144, label %131

131:                                              ; preds = %127
  %132 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %133 = call i32 @do_ar9003_agc_cal(%struct.ath_hw* %132)
  store i32 %133, i32* %7, align 4
  %134 = load i32, i32* %7, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %137, label %136

136:                                              ; preds = %131
  store i32 0, i32* %3, align 4
  br label %186

137:                                              ; preds = %131
  %138 = load i32, i32* %6, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %137
  %141 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %142 = call i32 @ar9003_hw_tx_iq_cal_post_proc(%struct.ath_hw* %141, i32 0, i32 0)
  br label %143

143:                                              ; preds = %140, %137
  br label %174

144:                                              ; preds = %127
  %145 = load i32, i32* %6, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %154, label %147

147:                                              ; preds = %144
  %148 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %149 = call i32 @do_ar9003_agc_cal(%struct.ath_hw* %148)
  store i32 %149, i32* %7, align 4
  %150 = load i32, i32* %7, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %153, label %152

152:                                              ; preds = %147
  store i32 0, i32* %3, align 4
  br label %186

153:                                              ; preds = %147
  br label %173

154:                                              ; preds = %144
  store i32 0, i32* %10, align 4
  br label %155

155:                                              ; preds = %169, %154
  %156 = load i32, i32* %10, align 4
  %157 = load i32, i32* @MAXIQCAL, align 4
  %158 = icmp slt i32 %156, %157
  br i1 %158, label %159, label %172

159:                                              ; preds = %155
  %160 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %161 = call i32 @do_ar9003_agc_cal(%struct.ath_hw* %160)
  store i32 %161, i32* %7, align 4
  %162 = load i32, i32* %7, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %165, label %164

164:                                              ; preds = %159
  store i32 0, i32* %3, align 4
  br label %186

165:                                              ; preds = %159
  %166 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %167 = load i32, i32* %10, align 4
  %168 = call i32 @ar9003_hw_tx_iq_cal_post_proc(%struct.ath_hw* %166, i32 %167, i32 0)
  br label %169

169:                                              ; preds = %165
  %170 = load i32, i32* %10, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %10, align 4
  br label %155

172:                                              ; preds = %155
  br label %173

173:                                              ; preds = %172, %153
  br label %174

174:                                              ; preds = %173, %143
  br label %175

175:                                              ; preds = %174, %97
  %176 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %177 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %178 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %181 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @ar9003_hw_set_chain_masks(%struct.ath_hw* %176, i32 %179, i32 %182)
  %184 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %185 = call i32 @ar9003_hw_init_cal_common(%struct.ath_hw* %184)
  store i32 1, i32* %3, align 4
  br label %186

186:                                              ; preds = %175, %164, %152, %136, %91
  %187 = load i32, i32* %3, align 4
  ret i32 %187
}

declare dso_local i32 @ar9003_hw_set_chain_masks(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_SET_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i64 @IS_CHAN_HALF_RATE(%struct.ath9k_channel*) #1

declare dso_local i64 @IS_CHAN_QUARTER_RATE(%struct.ath9k_channel*) #1

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i32, i32, i32) #1

declare dso_local i64 @REG_READ_FIELD(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @ar9003_hw_tx_iq_cal_run(%struct.ath_hw*) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @AR_SREV_9550(%struct.ath_hw*) #1

declare dso_local i64 @IS_CHAN_2GHZ(%struct.ath9k_channel*) #1

declare dso_local i32 @ar9003_hw_dynamic_osdac_selection(%struct.ath_hw*, i32) #1

declare dso_local i32 @ar9003_hw_manual_peak_cal(%struct.ath_hw*, i32, i64) #1

declare dso_local i32 @do_ar9003_agc_cal(%struct.ath_hw*) #1

declare dso_local i32 @ar9003_hw_tx_iq_cal_post_proc(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @ar9003_hw_init_cal_common(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
