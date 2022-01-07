; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_ar9003_hw_internal_regulator_apply.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_ar9003_hw_internal_regulator_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ar9300_eeprom }
%struct.ar9300_eeprom = type { %struct.ar9300_base_eep_hdr }
%struct.ar9300_base_eep_hdr = type { i32, i32 }

@AR_PHY_PMU2 = common dso_local global i32 0, align 4
@AR_PHY_PMU2_PGM = common dso_local global i32 0, align 4
@AR_PHY_PMU1 = common dso_local global i32 0, align 4
@AR_RTC_REG_CONTROL1 = common dso_local global i32 0, align 4
@AR_RTC_REG_CONTROL1_SWREG_PROGRAM = common dso_local global i32 0, align 4
@AR_RTC_REG_CONTROL0 = common dso_local global i32 0, align 4
@AR_PHY_PMU1_PWD = common dso_local global i32 0, align 4
@AR_RTC_SLEEP_CLK = common dso_local global i32 0, align 4
@AR_RTC_FORCE_SWREG_PRD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar9003_hw_internal_regulator_apply(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca %struct.ar9300_eeprom*, align 8
  %4 = alloca %struct.ar9300_base_eep_hdr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %7 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %8 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.ar9300_eeprom* %9, %struct.ar9300_eeprom** %3, align 8
  %10 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %3, align 8
  %11 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %10, i32 0, i32 0
  store %struct.ar9300_base_eep_hdr* %11, %struct.ar9300_base_eep_hdr** %4, align 8
  %12 = load %struct.ar9300_base_eep_hdr*, %struct.ar9300_base_eep_hdr** %4, align 8
  %13 = getelementptr inbounds %struct.ar9300_base_eep_hdr, %struct.ar9300_base_eep_hdr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @BIT(i32 4)
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %157

18:                                               ; preds = %1
  %19 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %20 = call i64 @AR_SREV_9330(%struct.ath_hw* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %24 = call i64 @AR_SREV_9485(%struct.ath_hw* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %100

26:                                               ; preds = %22, %18
  %27 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %28 = load i32, i32* @AR_PHY_PMU2, align 4
  %29 = call i32 @REG_READ(%struct.ath_hw* %27, i32 %28)
  %30 = load i32, i32* @AR_PHY_PMU2_PGM, align 4
  %31 = xor i32 %30, -1
  %32 = and i32 %29, %31
  store i32 %32, i32* %6, align 4
  %33 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %34 = load i32, i32* @AR_PHY_PMU2, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @REG_WRITE(%struct.ath_hw* %33, i32 %34, i32 %35)
  %37 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %38 = load i32, i32* @AR_PHY_PMU2, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @is_pmu_set(%struct.ath_hw* %37, i32 %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %26
  br label %232

43:                                               ; preds = %26
  %44 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %45 = call i64 @AR_SREV_9330(%struct.ath_hw* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %43
  %48 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %49 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store i32 52183942, i32* %6, align 4
  br label %54

53:                                               ; preds = %47
  store i32 52183928, i32* %6, align 4
  br label %54

54:                                               ; preds = %53, %52
  br label %56

55:                                               ; preds = %43
  store i32 320635514, i32* %6, align 4
  br label %56

56:                                               ; preds = %55, %54
  %57 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %58 = load i32, i32* @AR_PHY_PMU1, align 4
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @REG_WRITE(%struct.ath_hw* %57, i32 %58, i32 %59)
  %61 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %62 = load i32, i32* @AR_PHY_PMU1, align 4
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @is_pmu_set(%struct.ath_hw* %61, i32 %62, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %56
  br label %232

67:                                               ; preds = %56
  %68 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %69 = load i32, i32* @AR_PHY_PMU2, align 4
  %70 = call i32 @REG_READ(%struct.ath_hw* %68, i32 %69)
  %71 = and i32 %70, 4194303
  %72 = or i32 %71, 268435456
  store i32 %72, i32* %6, align 4
  %73 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %74 = load i32, i32* @AR_PHY_PMU2, align 4
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @REG_WRITE(%struct.ath_hw* %73, i32 %74, i32 %75)
  %77 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %78 = load i32, i32* @AR_PHY_PMU2, align 4
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @is_pmu_set(%struct.ath_hw* %77, i32 %78, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %67
  br label %232

83:                                               ; preds = %67
  %84 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %85 = load i32, i32* @AR_PHY_PMU2, align 4
  %86 = call i32 @REG_READ(%struct.ath_hw* %84, i32 %85)
  %87 = and i32 %86, -2097153
  %88 = or i32 %87, 2097152
  store i32 %88, i32* %6, align 4
  %89 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %90 = load i32, i32* @AR_PHY_PMU2, align 4
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @REG_WRITE(%struct.ath_hw* %89, i32 %90, i32 %91)
  %93 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %94 = load i32, i32* @AR_PHY_PMU2, align 4
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @is_pmu_set(%struct.ath_hw* %93, i32 %94, i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %83
  br label %232

99:                                               ; preds = %83
  br label %156

100:                                              ; preds = %22
  %101 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %102 = call i64 @AR_SREV_9462(%struct.ath_hw* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %112, label %104

104:                                              ; preds = %100
  %105 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %106 = call i64 @AR_SREV_9565(%struct.ath_hw* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %104
  %109 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %110 = call i64 @AR_SREV_9561(%struct.ath_hw* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %129

112:                                              ; preds = %108, %104, %100
  %113 = load %struct.ar9300_base_eep_hdr*, %struct.ar9300_base_eep_hdr** %4, align 8
  %114 = getelementptr inbounds %struct.ar9300_base_eep_hdr, %struct.ar9300_base_eep_hdr* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @le32_to_cpu(i32 %115)
  store i32 %116, i32* %5, align 4
  %117 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %118 = load i32, i32* @AR_PHY_PMU1, align 4
  %119 = load i32, i32* %5, align 4
  %120 = call i32 @REG_WRITE(%struct.ath_hw* %117, i32 %118, i32 %119)
  %121 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %122 = call i64 @AR_SREV_9561(%struct.ath_hw* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %112
  %125 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %126 = load i32, i32* @AR_PHY_PMU2, align 4
  %127 = call i32 @REG_WRITE(%struct.ath_hw* %125, i32 %126, i32 270532608)
  br label %128

128:                                              ; preds = %124, %112
  br label %155

129:                                              ; preds = %108
  %130 = load %struct.ar9300_base_eep_hdr*, %struct.ar9300_base_eep_hdr** %4, align 8
  %131 = getelementptr inbounds %struct.ar9300_base_eep_hdr, %struct.ar9300_base_eep_hdr* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @le32_to_cpu(i32 %132)
  store i32 %133, i32* %5, align 4
  %134 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %135 = load i32, i32* @AR_RTC_REG_CONTROL1, align 4
  %136 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %137 = load i32, i32* @AR_RTC_REG_CONTROL1, align 4
  %138 = call i32 @REG_READ(%struct.ath_hw* %136, i32 %137)
  %139 = load i32, i32* @AR_RTC_REG_CONTROL1_SWREG_PROGRAM, align 4
  %140 = xor i32 %139, -1
  %141 = and i32 %138, %140
  %142 = call i32 @REG_WRITE(%struct.ath_hw* %134, i32 %135, i32 %141)
  %143 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %144 = load i32, i32* @AR_RTC_REG_CONTROL0, align 4
  %145 = load i32, i32* %5, align 4
  %146 = call i32 @REG_WRITE(%struct.ath_hw* %143, i32 %144, i32 %145)
  %147 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %148 = load i32, i32* @AR_RTC_REG_CONTROL1, align 4
  %149 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %150 = load i32, i32* @AR_RTC_REG_CONTROL1, align 4
  %151 = call i32 @REG_READ(%struct.ath_hw* %149, i32 %150)
  %152 = load i32, i32* @AR_RTC_REG_CONTROL1_SWREG_PROGRAM, align 4
  %153 = or i32 %151, %152
  %154 = call i32 @REG_WRITE(%struct.ath_hw* %147, i32 %148, i32 %153)
  br label %155

155:                                              ; preds = %129, %128
  br label %156

156:                                              ; preds = %155, %99
  br label %232

157:                                              ; preds = %1
  %158 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %159 = call i64 @AR_SREV_9330(%struct.ath_hw* %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %165, label %161

161:                                              ; preds = %157
  %162 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %163 = call i64 @AR_SREV_9485(%struct.ath_hw* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %207

165:                                              ; preds = %161, %157
  %166 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %167 = load i32, i32* @AR_PHY_PMU2, align 4
  %168 = load i32, i32* @AR_PHY_PMU2_PGM, align 4
  %169 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %166, i32 %167, i32 %168, i32 0)
  br label %170

170:                                              ; preds = %176, %165
  %171 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %172 = load i32, i32* @AR_PHY_PMU2, align 4
  %173 = load i32, i32* @AR_PHY_PMU2_PGM, align 4
  %174 = call i64 @REG_READ_FIELD(%struct.ath_hw* %171, i32 %172, i32 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %170
  %177 = call i32 @udelay(i32 10)
  br label %170

178:                                              ; preds = %170
  %179 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %180 = load i32, i32* @AR_PHY_PMU1, align 4
  %181 = load i32, i32* @AR_PHY_PMU1_PWD, align 4
  %182 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %179, i32 %180, i32 %181, i32 1)
  br label %183

183:                                              ; preds = %190, %178
  %184 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %185 = load i32, i32* @AR_PHY_PMU1, align 4
  %186 = load i32, i32* @AR_PHY_PMU1_PWD, align 4
  %187 = call i64 @REG_READ_FIELD(%struct.ath_hw* %184, i32 %185, i32 %186)
  %188 = icmp ne i64 %187, 0
  %189 = xor i1 %188, true
  br i1 %189, label %190, label %192

190:                                              ; preds = %183
  %191 = call i32 @udelay(i32 10)
  br label %183

192:                                              ; preds = %183
  %193 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %194 = load i32, i32* @AR_PHY_PMU2, align 4
  %195 = load i32, i32* @AR_PHY_PMU2_PGM, align 4
  %196 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %193, i32 %194, i32 %195, i32 1)
  br label %197

197:                                              ; preds = %204, %192
  %198 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %199 = load i32, i32* @AR_PHY_PMU2, align 4
  %200 = load i32, i32* @AR_PHY_PMU2_PGM, align 4
  %201 = call i64 @REG_READ_FIELD(%struct.ath_hw* %198, i32 %199, i32 %200)
  %202 = icmp ne i64 %201, 0
  %203 = xor i1 %202, true
  br i1 %203, label %204, label %206

204:                                              ; preds = %197
  %205 = call i32 @udelay(i32 10)
  br label %197

206:                                              ; preds = %197
  br label %231

207:                                              ; preds = %161
  %208 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %209 = call i64 @AR_SREV_9462(%struct.ath_hw* %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %215, label %211

211:                                              ; preds = %207
  %212 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %213 = call i64 @AR_SREV_9565(%struct.ath_hw* %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %220

215:                                              ; preds = %211, %207
  %216 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %217 = load i32, i32* @AR_PHY_PMU1, align 4
  %218 = load i32, i32* @AR_PHY_PMU1_PWD, align 4
  %219 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %216, i32 %217, i32 %218, i32 1)
  br label %230

220:                                              ; preds = %211
  %221 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %222 = load i32, i32* @AR_RTC_SLEEP_CLK, align 4
  %223 = call i32 @REG_READ(%struct.ath_hw* %221, i32 %222)
  %224 = load i32, i32* @AR_RTC_FORCE_SWREG_PRD, align 4
  %225 = or i32 %223, %224
  store i32 %225, i32* %5, align 4
  %226 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %227 = load i32, i32* @AR_RTC_SLEEP_CLK, align 4
  %228 = load i32, i32* %5, align 4
  %229 = call i32 @REG_WRITE(%struct.ath_hw* %226, i32 %227, i32 %228)
  br label %230

230:                                              ; preds = %220, %215
  br label %231

231:                                              ; preds = %230, %206
  br label %232

232:                                              ; preds = %42, %66, %82, %98, %231, %156
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @AR_SREV_9330(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9485(%struct.ath_hw*) #1

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @is_pmu_set(%struct.ath_hw*, i32, i32) #1

declare dso_local i64 @AR_SREV_9462(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9565(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9561(%struct.ath_hw*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i32, i32, i32) #1

declare dso_local i64 @REG_READ_FIELD(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
