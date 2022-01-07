; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_reset.c_ath5k_hw_set_sleep_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_reset.c_ath5k_hw_set_sleep_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ath5k_eeprom_info }
%struct.ath5k_eeprom_info = type { i64, i32 }

@AR5K_USEC_5211 = common dso_local global i32 0, align 4
@AR5K_USEC_32 = common dso_local global i32 0, align 4
@AR5K_TSF_PARM = common dso_local global i32 0, align 4
@AR5K_TSF_PARM_INC = common dso_local global i32 0, align 4
@AR5K_PHY_SCR = common dso_local global i32 0, align 4
@AR5K_RF5112 = common dso_local global i64 0, align 8
@AR5K_RF5413 = common dso_local global i64 0, align 8
@AR5K_RF2316 = common dso_local global i64 0, align 8
@AR5K_SREV_AR2417 = common dso_local global i32 0, align 4
@AR5K_PHY_SPENDING = common dso_local global i32 0, align 4
@AR5K_PHY_SLMT = common dso_local global i32 0, align 4
@AR5K_PHY_SCAL = common dso_local global i32 0, align 4
@AR5K_PHY_SCLOCK = common dso_local global i32 0, align 4
@AR5K_PHY_SDELAY = common dso_local global i32 0, align 4
@AR5K_PCICFG = common dso_local global i32 0, align 4
@AR5K_PCICFG_SLEEP_CLOCK_RATE = common dso_local global i32 0, align 4
@AR5K_PCICFG_SLEEP_CLOCK_EN = common dso_local global i32 0, align 4
@AR5K_PHY_SLMT_32MHZ = common dso_local global i32 0, align 4
@AR5K_PHY_SCAL_32MHZ_2417 = common dso_local global i32 0, align 4
@AR5K_PHY_SCAL_32MHZ_HB63 = common dso_local global i32 0, align 4
@AR5K_PHY_SCAL_32MHZ = common dso_local global i32 0, align 4
@AR5K_PHY_SCLOCK_32MHZ = common dso_local global i32 0, align 4
@AR5K_PHY_SDELAY_32MHZ = common dso_local global i32 0, align 4
@AR5K_RF2317 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath5k_hw*, i32)* @ath5k_hw_set_sleep_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath5k_hw_set_sleep_clock(%struct.ath5k_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ath5k_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath5k_eeprom_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %10 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.ath5k_eeprom_info* %11, %struct.ath5k_eeprom_info** %5, align 8
  %12 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %5, align 8
  %13 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @AR5K_EEPROM_HAS32KHZCRYSTAL(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %2
  %18 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %5, align 8
  %19 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @AR5K_EEPROM_HAS32KHZCRYSTAL_OLD(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %126

23:                                               ; preds = %17, %2
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %126

26:                                               ; preds = %23
  %27 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %28 = load i32, i32* @AR5K_USEC_5211, align 4
  %29 = load i32, i32* @AR5K_USEC_32, align 4
  %30 = call i32 @AR5K_REG_WRITE_BITS(%struct.ath5k_hw* %27, i32 %28, i32 %29, i32 1)
  %31 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %32 = load i32, i32* @AR5K_TSF_PARM, align 4
  %33 = load i32, i32* @AR5K_TSF_PARM_INC, align 4
  %34 = call i32 @AR5K_REG_WRITE_BITS(%struct.ath5k_hw* %31, i32 %32, i32 %33, i32 61)
  %35 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %36 = load i32, i32* @AR5K_PHY_SCR, align 4
  %37 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %35, i32 31, i32 %36)
  %38 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %39 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @AR5K_RF5112, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %62, label %43

43:                                               ; preds = %26
  %44 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %45 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @AR5K_RF5413, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %62, label %49

49:                                               ; preds = %43
  %50 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %51 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @AR5K_RF2316, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %62, label %55

55:                                               ; preds = %49
  %56 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %57 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @AR5K_SREV_AR2417, align 4
  %60 = ashr i32 %59, 4
  %61 = icmp eq i32 %58, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %55, %49, %43, %26
  store i32 20, i32* %7, align 4
  br label %64

63:                                               ; preds = %55
  store i32 24, i32* %7, align 4
  br label %64

64:                                               ; preds = %63, %62
  %65 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @AR5K_PHY_SPENDING, align 4
  %68 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %65, i32 %66, i32 %67)
  %69 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %70 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @AR5K_RF5112, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %87, label %74

74:                                               ; preds = %64
  %75 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %76 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @AR5K_RF5413, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %87, label %80

80:                                               ; preds = %74
  %81 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %82 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @AR5K_SREV_AR2417, align 4
  %85 = ashr i32 %84, 4
  %86 = icmp eq i32 %83, %85
  br i1 %86, label %87, label %104

87:                                               ; preds = %80, %74, %64
  %88 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %89 = load i32, i32* @AR5K_PHY_SLMT, align 4
  %90 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %88, i32 38, i32 %89)
  %91 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %92 = load i32, i32* @AR5K_PHY_SCAL, align 4
  %93 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %91, i32 13, i32 %92)
  %94 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %95 = load i32, i32* @AR5K_PHY_SCLOCK, align 4
  %96 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %94, i32 7, i32 %95)
  %97 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %98 = load i32, i32* @AR5K_PHY_SDELAY, align 4
  %99 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %97, i32 63, i32 %98)
  %100 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %101 = load i32, i32* @AR5K_PCICFG, align 4
  %102 = load i32, i32* @AR5K_PCICFG_SLEEP_CLOCK_RATE, align 4
  %103 = call i32 @AR5K_REG_WRITE_BITS(%struct.ath5k_hw* %100, i32 %101, i32 %102, i32 2)
  br label %121

104:                                              ; preds = %80
  %105 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %106 = load i32, i32* @AR5K_PHY_SLMT, align 4
  %107 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %105, i32 10, i32 %106)
  %108 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %109 = load i32, i32* @AR5K_PHY_SCAL, align 4
  %110 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %108, i32 12, i32 %109)
  %111 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %112 = load i32, i32* @AR5K_PHY_SCLOCK, align 4
  %113 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %111, i32 3, i32 %112)
  %114 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %115 = load i32, i32* @AR5K_PHY_SDELAY, align 4
  %116 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %114, i32 32, i32 %115)
  %117 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %118 = load i32, i32* @AR5K_PCICFG, align 4
  %119 = load i32, i32* @AR5K_PCICFG_SLEEP_CLOCK_RATE, align 4
  %120 = call i32 @AR5K_REG_WRITE_BITS(%struct.ath5k_hw* %117, i32 %118, i32 %119, i32 3)
  br label %121

121:                                              ; preds = %104, %87
  %122 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %123 = load i32, i32* @AR5K_PCICFG, align 4
  %124 = load i32, i32* @AR5K_PCICFG_SLEEP_CLOCK_EN, align 4
  %125 = call i32 @AR5K_REG_ENABLE_BITS(%struct.ath5k_hw* %122, i32 %123, i32 %124)
  br label %239

126:                                              ; preds = %23, %17
  %127 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %128 = load i32, i32* @AR5K_PCICFG, align 4
  %129 = load i32, i32* @AR5K_PCICFG_SLEEP_CLOCK_EN, align 4
  %130 = call i32 @AR5K_REG_DISABLE_BITS(%struct.ath5k_hw* %127, i32 %128, i32 %129)
  %131 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %132 = load i32, i32* @AR5K_PCICFG, align 4
  %133 = load i32, i32* @AR5K_PCICFG_SLEEP_CLOCK_RATE, align 4
  %134 = call i32 @AR5K_REG_WRITE_BITS(%struct.ath5k_hw* %131, i32 %132, i32 %133, i32 0)
  %135 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %136 = load i32, i32* @AR5K_PHY_SCR, align 4
  %137 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %135, i32 31, i32 %136)
  %138 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %139 = load i32, i32* @AR5K_PHY_SLMT_32MHZ, align 4
  %140 = load i32, i32* @AR5K_PHY_SLMT, align 4
  %141 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %138, i32 %139, i32 %140)
  %142 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %143 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @AR5K_SREV_AR2417, align 4
  %146 = ashr i32 %145, 4
  %147 = icmp eq i32 %144, %146
  br i1 %147, label %148, label %150

148:                                              ; preds = %126
  %149 = load i32, i32* @AR5K_PHY_SCAL_32MHZ_2417, align 4
  store i32 %149, i32* %6, align 4
  br label %160

150:                                              ; preds = %126
  %151 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %5, align 8
  %152 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %150
  %156 = load i32, i32* @AR5K_PHY_SCAL_32MHZ_HB63, align 4
  store i32 %156, i32* %6, align 4
  br label %159

157:                                              ; preds = %150
  %158 = load i32, i32* @AR5K_PHY_SCAL_32MHZ, align 4
  store i32 %158, i32* %6, align 4
  br label %159

159:                                              ; preds = %157, %155
  br label %160

160:                                              ; preds = %159, %148
  %161 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %162 = load i32, i32* %6, align 4
  %163 = load i32, i32* @AR5K_PHY_SCAL, align 4
  %164 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %161, i32 %162, i32 %163)
  %165 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %166 = load i32, i32* @AR5K_PHY_SCLOCK_32MHZ, align 4
  %167 = load i32, i32* @AR5K_PHY_SCLOCK, align 4
  %168 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %165, i32 %166, i32 %167)
  %169 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %170 = load i32, i32* @AR5K_PHY_SDELAY_32MHZ, align 4
  %171 = load i32, i32* @AR5K_PHY_SDELAY, align 4
  %172 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %169, i32 %170, i32 %171)
  %173 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %174 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @AR5K_RF5112, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %197, label %178

178:                                              ; preds = %160
  %179 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %180 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @AR5K_RF5413, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %197, label %184

184:                                              ; preds = %178
  %185 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %186 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @AR5K_RF2316, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %197, label %190

190:                                              ; preds = %184
  %191 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %192 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* @AR5K_SREV_AR2417, align 4
  %195 = ashr i32 %194, 4
  %196 = icmp eq i32 %193, %195
  br i1 %196, label %197, label %198

197:                                              ; preds = %190, %184, %178, %160
  store i32 20, i32* %7, align 4
  br label %199

198:                                              ; preds = %190
  store i32 24, i32* %7, align 4
  br label %199

199:                                              ; preds = %198, %197
  %200 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %201 = load i32, i32* %7, align 4
  %202 = load i32, i32* @AR5K_PHY_SPENDING, align 4
  %203 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %200, i32 %201, i32 %202)
  %204 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %205 = load i32, i32* @AR5K_TSF_PARM, align 4
  %206 = load i32, i32* @AR5K_TSF_PARM_INC, align 4
  %207 = call i32 @AR5K_REG_WRITE_BITS(%struct.ath5k_hw* %204, i32 %205, i32 %206, i32 1)
  %208 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %209 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* @AR5K_RF5112, align 8
  %212 = icmp eq i64 %210, %211
  br i1 %212, label %231, label %213

213:                                              ; preds = %199
  %214 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %215 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = load i64, i64* @AR5K_RF5413, align 8
  %218 = icmp eq i64 %216, %217
  br i1 %218, label %231, label %219

219:                                              ; preds = %213
  %220 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %221 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* @AR5K_RF2316, align 8
  %224 = icmp eq i64 %222, %223
  br i1 %224, label %231, label %225

225:                                              ; preds = %219
  %226 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %227 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = load i64, i64* @AR5K_RF2317, align 8
  %230 = icmp eq i64 %228, %229
  br i1 %230, label %231, label %232

231:                                              ; preds = %225, %219, %213, %199
  store i32 39, i32* %8, align 4
  br label %233

232:                                              ; preds = %225
  store i32 31, i32* %8, align 4
  br label %233

233:                                              ; preds = %232, %231
  %234 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %235 = load i32, i32* @AR5K_USEC_5211, align 4
  %236 = load i32, i32* @AR5K_USEC_32, align 4
  %237 = load i32, i32* %8, align 4
  %238 = call i32 @AR5K_REG_WRITE_BITS(%struct.ath5k_hw* %234, i32 %235, i32 %236, i32 %237)
  br label %239

239:                                              ; preds = %233, %121
  ret void
}

declare dso_local i64 @AR5K_EEPROM_HAS32KHZCRYSTAL(i32) #1

declare dso_local i64 @AR5K_EEPROM_HAS32KHZCRYSTAL_OLD(i32) #1

declare dso_local i32 @AR5K_REG_WRITE_BITS(%struct.ath5k_hw*, i32, i32, i32) #1

declare dso_local i32 @ath5k_hw_reg_write(%struct.ath5k_hw*, i32, i32) #1

declare dso_local i32 @AR5K_REG_ENABLE_BITS(%struct.ath5k_hw*, i32, i32) #1

declare dso_local i32 @AR5K_REG_DISABLE_BITS(%struct.ath5k_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
