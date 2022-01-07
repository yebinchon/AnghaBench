; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_set_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_set_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }

@AR_RTC_DERIVED_CLK = common dso_local global i32 0, align 4
@AR_RTC_DERIVED_CLK_PERIOD = common dso_local global i32 0, align 4
@AR_WA = common dso_local global i32 0, align 4
@AR_RTC_FORCE_WAKE = common dso_local global i32 0, align 4
@AR_RTC_FORCE_WAKE_EN = common dso_local global i32 0, align 4
@AR_RTC_FORCE_WAKE_ON_INT = common dso_local global i32 0, align 4
@AR_RTC_RC_MAC_WARM = common dso_local global i32 0, align 4
@AR_RTC_RC_MAC_COLD = common dso_local global i32 0, align 4
@AR_RTC_RC_COLD_RESET = common dso_local global i32 0, align 4
@AR_RTC_RC_WARM_RESET = common dso_local global i32 0, align 4
@AR_INTR_SYNC_CAUSE = common dso_local global i32 0, align 4
@AR9340_INTR_SYNC_LOCAL_TIMEOUT = common dso_local global i32 0, align 4
@AR_INTR_SYNC_LOCAL_TIMEOUT = common dso_local global i32 0, align 4
@AR_INTR_SYNC_RADM_CPL_TIMEOUT = common dso_local global i32 0, align 4
@AR_INTR_SYNC_ENABLE = common dso_local global i32 0, align 4
@AR_RC_HOSTIF = common dso_local global i32 0, align 4
@AR_RC_AHB = common dso_local global i32 0, align 4
@AR_RC = common dso_local global i32 0, align 4
@ATH9K_RESET_COLD = common dso_local global i32 0, align 4
@AR_CFG = common dso_local global i32 0, align 4
@AR_CFG_HALT_REQ = common dso_local global i32 0, align 4
@AR_CFG_HALT_ACK = common dso_local global i32 0, align 4
@AH_WAIT_TIMEOUT = common dso_local global i32 0, align 4
@AR_RTC_RC = common dso_local global i32 0, align 4
@AR_RTC_RC_M = common dso_local global i32 0, align 4
@RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"RTC stuck in MAC reset\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*, i32)* @ath9k_hw_set_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_hw_set_reset(%struct.ath_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %10 = call i64 @AR_SREV_9100(%struct.ath_hw* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %14 = load i32, i32* @AR_RTC_DERIVED_CLK, align 4
  %15 = load i32, i32* @AR_RTC_DERIVED_CLK_PERIOD, align 4
  %16 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %13, i32 %14, i32 %15, i32 1)
  %17 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %18 = load i32, i32* @AR_RTC_DERIVED_CLK, align 4
  %19 = call i32 @REG_READ(%struct.ath_hw* %17, i32 %18)
  br label %20

20:                                               ; preds = %12, %2
  %21 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %22 = call i32 @ENABLE_REGWRITE_BUFFER(%struct.ath_hw* %21)
  %23 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %24 = call i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %20
  %27 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %28 = load i32, i32* @AR_WA, align 4
  %29 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %30 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @REG_WRITE(%struct.ath_hw* %27, i32 %28, i32 %31)
  %33 = call i32 @udelay(i32 10)
  br label %34

34:                                               ; preds = %26, %20
  %35 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %36 = load i32, i32* @AR_RTC_FORCE_WAKE, align 4
  %37 = load i32, i32* @AR_RTC_FORCE_WAKE_EN, align 4
  %38 = load i32, i32* @AR_RTC_FORCE_WAKE_ON_INT, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @REG_WRITE(%struct.ath_hw* %35, i32 %36, i32 %39)
  %41 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %42 = call i64 @AR_SREV_9100(%struct.ath_hw* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %34
  %45 = load i32, i32* @AR_RTC_RC_MAC_WARM, align 4
  %46 = load i32, i32* @AR_RTC_RC_MAC_COLD, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @AR_RTC_RC_COLD_RESET, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @AR_RTC_RC_WARM_RESET, align 4
  %51 = or i32 %49, %50
  store i32 %51, i32* %6, align 4
  br label %109

52:                                               ; preds = %34
  %53 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %54 = load i32, i32* @AR_INTR_SYNC_CAUSE, align 4
  %55 = call i32 @REG_READ(%struct.ath_hw* %53, i32 %54)
  store i32 %55, i32* %7, align 4
  %56 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %57 = call i64 @AR_SREV_9340(%struct.ath_hw* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %52
  %60 = load i32, i32* @AR9340_INTR_SYNC_LOCAL_TIMEOUT, align 4
  %61 = load i32, i32* %7, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %7, align 4
  br label %69

63:                                               ; preds = %52
  %64 = load i32, i32* @AR_INTR_SYNC_LOCAL_TIMEOUT, align 4
  %65 = load i32, i32* @AR_INTR_SYNC_RADM_CPL_TIMEOUT, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* %7, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %63, %59
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %89

72:                                               ; preds = %69
  %73 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %74 = load i32, i32* @AR_INTR_SYNC_ENABLE, align 4
  %75 = call i32 @REG_WRITE(%struct.ath_hw* %73, i32 %74, i32 0)
  %76 = load i32, i32* @AR_RC_HOSTIF, align 4
  store i32 %76, i32* %8, align 4
  %77 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %78 = call i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %72
  %81 = load i32, i32* @AR_RC_AHB, align 4
  %82 = load i32, i32* %8, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %8, align 4
  br label %84

84:                                               ; preds = %80, %72
  %85 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %86 = load i32, i32* @AR_RC, align 4
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @REG_WRITE(%struct.ath_hw* %85, i32 %86, i32 %87)
  br label %99

89:                                               ; preds = %69
  %90 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %91 = call i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %98, label %93

93:                                               ; preds = %89
  %94 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %95 = load i32, i32* @AR_RC, align 4
  %96 = load i32, i32* @AR_RC_AHB, align 4
  %97 = call i32 @REG_WRITE(%struct.ath_hw* %94, i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %93, %89
  br label %99

99:                                               ; preds = %98, %84
  %100 = load i32, i32* @AR_RTC_RC_MAC_WARM, align 4
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* @ATH9K_RESET_COLD, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %99
  %105 = load i32, i32* @AR_RTC_RC_MAC_COLD, align 4
  %106 = load i32, i32* %6, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %6, align 4
  br label %108

108:                                              ; preds = %104, %99
  br label %109

109:                                              ; preds = %108, %44
  %110 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %111 = call i64 @AR_SREV_9330(%struct.ath_hw* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %120

113:                                              ; preds = %109
  %114 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %115 = load i32, i32* %5, align 4
  %116 = call i32 @ath9k_hw_ar9330_reset_war(%struct.ath_hw* %114, i32 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %113
  store i32 0, i32* %3, align 4
  br label %202

119:                                              ; preds = %113
  br label %120

120:                                              ; preds = %119, %109
  %121 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %122 = call i64 @ath9k_hw_mci_is_enabled(%struct.ath_hw* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %120
  %125 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %126 = call i32 @ar9003_mci_check_gpm_offset(%struct.ath_hw* %125)
  br label %127

127:                                              ; preds = %124, %120
  %128 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %129 = call i64 @AR_SREV_9300(%struct.ath_hw* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %135, label %131

131:                                              ; preds = %127
  %132 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %133 = call i64 @AR_SREV_9580(%struct.ath_hw* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %151

135:                                              ; preds = %131, %127
  %136 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %137 = load i32, i32* @AR_CFG, align 4
  %138 = load i32, i32* @AR_CFG_HALT_REQ, align 4
  %139 = call i32 @REG_SET_BIT(%struct.ath_hw* %136, i32 %137, i32 %138)
  %140 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %141 = load i32, i32* @AR_CFG, align 4
  %142 = load i32, i32* @AR_CFG_HALT_ACK, align 4
  %143 = load i32, i32* @AR_CFG_HALT_ACK, align 4
  %144 = load i32, i32* @AH_WAIT_TIMEOUT, align 4
  %145 = mul nsw i32 20, %144
  %146 = call i32 @ath9k_hw_wait(%struct.ath_hw* %140, i32 %141, i32 %142, i32 %143, i32 %145)
  %147 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %148 = load i32, i32* @AR_CFG, align 4
  %149 = load i32, i32* @AR_CFG_HALT_REQ, align 4
  %150 = call i32 @REG_CLR_BIT(%struct.ath_hw* %147, i32 %148, i32 %149)
  br label %151

151:                                              ; preds = %135, %131
  %152 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %153 = load i32, i32* @AR_RTC_RC, align 4
  %154 = load i32, i32* %6, align 4
  %155 = call i32 @REG_WRITE(%struct.ath_hw* %152, i32 %153, i32 %154)
  %156 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %157 = call i32 @REGWRITE_BUFFER_FLUSH(%struct.ath_hw* %156)
  %158 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %159 = call i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw* %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %151
  %162 = call i32 @udelay(i32 50)
  br label %172

163:                                              ; preds = %151
  %164 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %165 = call i64 @AR_SREV_9100(%struct.ath_hw* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %163
  %168 = call i32 @mdelay(i32 10)
  br label %171

169:                                              ; preds = %163
  %170 = call i32 @udelay(i32 100)
  br label %171

171:                                              ; preds = %169, %167
  br label %172

172:                                              ; preds = %171, %161
  %173 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %174 = load i32, i32* @AR_RTC_RC, align 4
  %175 = call i32 @REG_WRITE(%struct.ath_hw* %173, i32 %174, i32 0)
  %176 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %177 = load i32, i32* @AR_RTC_RC, align 4
  %178 = load i32, i32* @AR_RTC_RC_M, align 4
  %179 = load i32, i32* @AH_WAIT_TIMEOUT, align 4
  %180 = call i32 @ath9k_hw_wait(%struct.ath_hw* %176, i32 %177, i32 %178, i32 0, i32 %179)
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %187, label %182

182:                                              ; preds = %172
  %183 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %184 = call i32 @ath9k_hw_common(%struct.ath_hw* %183)
  %185 = load i32, i32* @RESET, align 4
  %186 = call i32 @ath_dbg(i32 %184, i32 %185, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %202

187:                                              ; preds = %172
  %188 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %189 = call i64 @AR_SREV_9100(%struct.ath_hw* %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %195, label %191

191:                                              ; preds = %187
  %192 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %193 = load i32, i32* @AR_RC, align 4
  %194 = call i32 @REG_WRITE(%struct.ath_hw* %192, i32 %193, i32 0)
  br label %195

195:                                              ; preds = %191, %187
  %196 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %197 = call i64 @AR_SREV_9100(%struct.ath_hw* %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %195
  %200 = call i32 @udelay(i32 50)
  br label %201

201:                                              ; preds = %199, %195
  store i32 1, i32* %3, align 4
  br label %202

202:                                              ; preds = %201, %182, %118
  %203 = load i32, i32* %3, align 4
  ret i32 %203
}

declare dso_local i64 @AR_SREV_9100(%struct.ath_hw*) #1

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i32, i32, i32) #1

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i32 @ENABLE_REGWRITE_BUFFER(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw*) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @AR_SREV_9340(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9330(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_ar9330_reset_war(%struct.ath_hw*, i32) #1

declare dso_local i64 @ath9k_hw_mci_is_enabled(%struct.ath_hw*) #1

declare dso_local i32 @ar9003_mci_check_gpm_offset(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9300(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9580(%struct.ath_hw*) #1

declare dso_local i32 @REG_SET_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @ath9k_hw_wait(%struct.ath_hw*, i32, i32, i32, i32) #1

declare dso_local i32 @REG_CLR_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REGWRITE_BUFFER_FLUSH(%struct.ath_hw*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @ath_dbg(i32, i32, i8*) #1

declare dso_local i32 @ath9k_hw_common(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
