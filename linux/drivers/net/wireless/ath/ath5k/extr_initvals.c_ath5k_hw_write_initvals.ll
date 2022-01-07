; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_initvals.c_ath5k_hw_write_initvals.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_initvals.c_ath5k_hw_write_initvals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i64, i32 }

@AR5K_AR5212 = common dso_local global i64 0, align 8
@ar5212_ini_mode_start = common dso_local global i32 0, align 4
@ar5212_ini_common_start = common dso_local global i32 0, align 4
@rf5111_ini_mode_end = common dso_local global i32 0, align 4
@rf5111_ini_common_end = common dso_local global i32 0, align 4
@rf5111_ini_bbgain = common dso_local global i32 0, align 4
@rf5112_ini_mode_end = common dso_local global i32 0, align 4
@rf5112_ini_common_end = common dso_local global i32 0, align 4
@rf5112_ini_bbgain = common dso_local global i32 0, align 4
@rf5413_ini_mode_end = common dso_local global i32 0, align 4
@rf5413_ini_common_end = common dso_local global i32 0, align 4
@rf2413_ini_mode_end = common dso_local global i32 0, align 4
@rf2413_ini_common_end = common dso_local global i32 0, align 4
@AR5K_PHY_AGC = common dso_local global i32 0, align 4
@rf2425_ini_common_end = common dso_local global i32 0, align 4
@AR5K_PHY_GAIN = common dso_local global i32 0, align 4
@AR5K_PHY_TPC_RG5 = common dso_local global i32 0, align 4
@AR5K_PHY_TPC_RG5_PD_GAIN_OVERLAP = common dso_local global i32 0, align 4
@rf2425_ini_mode_end = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AR5K_AR5211 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"unsupported channel mode: %d\0A\00", align 1
@ar5211_ini_mode = common dso_local global i32 0, align 4
@ar5211_ini = common dso_local global i32 0, align 4
@AR5K_AR5210 = common dso_local global i64 0, align 8
@ar5210_ini = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath5k_hw_write_initvals(%struct.ath5k_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath5k_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %9 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @AR5K_AR5212, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %172

13:                                               ; preds = %3
  %14 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %15 = load i32, i32* @ar5212_ini_mode_start, align 4
  %16 = call i32 @ARRAY_SIZE(i32 %15)
  %17 = load i32, i32* @ar5212_ini_mode_start, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @ath5k_hw_ini_mode_registers(%struct.ath5k_hw* %14, i32 %16, i32 %17, i32 %18)
  %20 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %21 = load i32, i32* @ar5212_ini_common_start, align 4
  %22 = call i32 @ARRAY_SIZE(i32 %21)
  %23 = load i32, i32* @ar5212_ini_common_start, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @ath5k_hw_ini_registers(%struct.ath5k_hw* %20, i32 %22, i32 %23, i32 %24)
  %26 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %27 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %168 [
    i32 130, label %29
    i32 129, label %48
    i32 128, label %67
    i32 134, label %86
    i32 132, label %86
    i32 133, label %116
    i32 131, label %149
  ]

29:                                               ; preds = %13
  %30 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %31 = load i32, i32* @rf5111_ini_mode_end, align 4
  %32 = call i32 @ARRAY_SIZE(i32 %31)
  %33 = load i32, i32* @rf5111_ini_mode_end, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @ath5k_hw_ini_mode_registers(%struct.ath5k_hw* %30, i32 %32, i32 %33, i32 %34)
  %36 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %37 = load i32, i32* @rf5111_ini_common_end, align 4
  %38 = call i32 @ARRAY_SIZE(i32 %37)
  %39 = load i32, i32* @rf5111_ini_common_end, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @ath5k_hw_ini_registers(%struct.ath5k_hw* %36, i32 %38, i32 %39, i32 %40)
  %42 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %43 = load i32, i32* @rf5111_ini_bbgain, align 4
  %44 = call i32 @ARRAY_SIZE(i32 %43)
  %45 = load i32, i32* @rf5111_ini_bbgain, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @ath5k_hw_ini_registers(%struct.ath5k_hw* %42, i32 %44, i32 %45, i32 %46)
  br label %171

48:                                               ; preds = %13
  %49 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %50 = load i32, i32* @rf5112_ini_mode_end, align 4
  %51 = call i32 @ARRAY_SIZE(i32 %50)
  %52 = load i32, i32* @rf5112_ini_mode_end, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @ath5k_hw_ini_mode_registers(%struct.ath5k_hw* %49, i32 %51, i32 %52, i32 %53)
  %55 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %56 = load i32, i32* @rf5112_ini_common_end, align 4
  %57 = call i32 @ARRAY_SIZE(i32 %56)
  %58 = load i32, i32* @rf5112_ini_common_end, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @ath5k_hw_ini_registers(%struct.ath5k_hw* %55, i32 %57, i32 %58, i32 %59)
  %61 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %62 = load i32, i32* @rf5112_ini_bbgain, align 4
  %63 = call i32 @ARRAY_SIZE(i32 %62)
  %64 = load i32, i32* @rf5112_ini_bbgain, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @ath5k_hw_ini_registers(%struct.ath5k_hw* %61, i32 %63, i32 %64, i32 %65)
  br label %171

67:                                               ; preds = %13
  %68 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %69 = load i32, i32* @rf5413_ini_mode_end, align 4
  %70 = call i32 @ARRAY_SIZE(i32 %69)
  %71 = load i32, i32* @rf5413_ini_mode_end, align 4
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @ath5k_hw_ini_mode_registers(%struct.ath5k_hw* %68, i32 %70, i32 %71, i32 %72)
  %74 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %75 = load i32, i32* @rf5413_ini_common_end, align 4
  %76 = call i32 @ARRAY_SIZE(i32 %75)
  %77 = load i32, i32* @rf5413_ini_common_end, align 4
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @ath5k_hw_ini_registers(%struct.ath5k_hw* %74, i32 %76, i32 %77, i32 %78)
  %80 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %81 = load i32, i32* @rf5112_ini_bbgain, align 4
  %82 = call i32 @ARRAY_SIZE(i32 %81)
  %83 = load i32, i32* @rf5112_ini_bbgain, align 4
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @ath5k_hw_ini_registers(%struct.ath5k_hw* %80, i32 %82, i32 %83, i32 %84)
  br label %171

86:                                               ; preds = %13, %13
  %87 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %88 = load i32, i32* @rf2413_ini_mode_end, align 4
  %89 = call i32 @ARRAY_SIZE(i32 %88)
  %90 = load i32, i32* @rf2413_ini_mode_end, align 4
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @ath5k_hw_ini_mode_registers(%struct.ath5k_hw* %87, i32 %89, i32 %90, i32 %91)
  %93 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %94 = load i32, i32* @rf2413_ini_common_end, align 4
  %95 = call i32 @ARRAY_SIZE(i32 %94)
  %96 = load i32, i32* @rf2413_ini_common_end, align 4
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @ath5k_hw_ini_registers(%struct.ath5k_hw* %93, i32 %95, i32 %96, i32 %97)
  %99 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %100 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = icmp eq i32 %101, 134
  br i1 %102, label %103, label %109

103:                                              ; preds = %86
  %104 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %105 = load i32, i32* @AR5K_PHY_AGC, align 4
  %106 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %104, i32 16384, i32 %105)
  %107 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %108 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %107, i32 136019114, i32 41588)
  br label %109

109:                                              ; preds = %103, %86
  %110 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %111 = load i32, i32* @rf5112_ini_bbgain, align 4
  %112 = call i32 @ARRAY_SIZE(i32 %111)
  %113 = load i32, i32* @rf5112_ini_bbgain, align 4
  %114 = load i32, i32* %7, align 4
  %115 = call i32 @ath5k_hw_ini_registers(%struct.ath5k_hw* %110, i32 %112, i32 %113, i32 %114)
  br label %171

116:                                              ; preds = %13
  %117 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %118 = load i32, i32* @rf2413_ini_mode_end, align 4
  %119 = call i32 @ARRAY_SIZE(i32 %118)
  %120 = load i32, i32* @rf2413_ini_mode_end, align 4
  %121 = load i32, i32* %6, align 4
  %122 = call i32 @ath5k_hw_ini_mode_registers(%struct.ath5k_hw* %117, i32 %119, i32 %120, i32 %121)
  %123 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %124 = load i32, i32* @rf2425_ini_common_end, align 4
  %125 = call i32 @ARRAY_SIZE(i32 %124)
  %126 = load i32, i32* @rf2425_ini_common_end, align 4
  %127 = load i32, i32* %7, align 4
  %128 = call i32 @ath5k_hw_ini_registers(%struct.ath5k_hw* %123, i32 %125, i32 %126, i32 %127)
  %129 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %130 = load i32, i32* @AR5K_PHY_GAIN, align 4
  %131 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %129, i32 1575525, i32 %130)
  %132 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %133 = load i32, i32* @AR5K_PHY_AGC, align 4
  %134 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %132, i32 16384, i32 %133)
  %135 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %136 = load i32, i32* @AR5K_PHY_TPC_RG5, align 4
  %137 = load i32, i32* @AR5K_PHY_TPC_RG5_PD_GAIN_OVERLAP, align 4
  %138 = call i32 @AR5K_REG_WRITE_BITS(%struct.ath5k_hw* %135, i32 %136, i32 %137, i32 10)
  %139 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %140 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %139, i32 -2147483480, i32 33088)
  %141 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %142 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %141, i32 255, i32 39256)
  %143 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %144 = load i32, i32* @rf5112_ini_bbgain, align 4
  %145 = call i32 @ARRAY_SIZE(i32 %144)
  %146 = load i32, i32* @rf5112_ini_bbgain, align 4
  %147 = load i32, i32* %7, align 4
  %148 = call i32 @ath5k_hw_ini_registers(%struct.ath5k_hw* %143, i32 %145, i32 %146, i32 %147)
  br label %171

149:                                              ; preds = %13
  %150 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %151 = load i32, i32* @rf2425_ini_mode_end, align 4
  %152 = call i32 @ARRAY_SIZE(i32 %151)
  %153 = load i32, i32* @rf2425_ini_mode_end, align 4
  %154 = load i32, i32* %6, align 4
  %155 = call i32 @ath5k_hw_ini_mode_registers(%struct.ath5k_hw* %150, i32 %152, i32 %153, i32 %154)
  %156 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %157 = load i32, i32* @rf2425_ini_common_end, align 4
  %158 = call i32 @ARRAY_SIZE(i32 %157)
  %159 = load i32, i32* @rf2425_ini_common_end, align 4
  %160 = load i32, i32* %7, align 4
  %161 = call i32 @ath5k_hw_ini_registers(%struct.ath5k_hw* %156, i32 %158, i32 %159, i32 %160)
  %162 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %163 = load i32, i32* @rf5112_ini_bbgain, align 4
  %164 = call i32 @ARRAY_SIZE(i32 %163)
  %165 = load i32, i32* @rf5112_ini_bbgain, align 4
  %166 = load i32, i32* %7, align 4
  %167 = call i32 @ath5k_hw_ini_registers(%struct.ath5k_hw* %162, i32 %164, i32 %165, i32 %166)
  br label %171

168:                                              ; preds = %13
  %169 = load i32, i32* @EINVAL, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %4, align 4
  br label %222

171:                                              ; preds = %149, %116, %109, %67, %48, %29
  br label %221

172:                                              ; preds = %3
  %173 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %174 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @AR5K_AR5211, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %206

178:                                              ; preds = %172
  %179 = load i32, i32* %6, align 4
  %180 = icmp sgt i32 %179, 2
  br i1 %180, label %181, label %187

181:                                              ; preds = %178
  %182 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %183 = load i32, i32* %6, align 4
  %184 = call i32 @ATH5K_ERR(%struct.ath5k_hw* %182, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %183)
  %185 = load i32, i32* @EINVAL, align 4
  %186 = sub nsw i32 0, %185
  store i32 %186, i32* %4, align 4
  br label %222

187:                                              ; preds = %178
  %188 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %189 = load i32, i32* @ar5211_ini_mode, align 4
  %190 = call i32 @ARRAY_SIZE(i32 %189)
  %191 = load i32, i32* @ar5211_ini_mode, align 4
  %192 = load i32, i32* %6, align 4
  %193 = call i32 @ath5k_hw_ini_mode_registers(%struct.ath5k_hw* %188, i32 %190, i32 %191, i32 %192)
  %194 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %195 = load i32, i32* @ar5211_ini, align 4
  %196 = call i32 @ARRAY_SIZE(i32 %195)
  %197 = load i32, i32* @ar5211_ini, align 4
  %198 = load i32, i32* %7, align 4
  %199 = call i32 @ath5k_hw_ini_registers(%struct.ath5k_hw* %194, i32 %196, i32 %197, i32 %198)
  %200 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %201 = load i32, i32* @rf5111_ini_bbgain, align 4
  %202 = call i32 @ARRAY_SIZE(i32 %201)
  %203 = load i32, i32* @rf5111_ini_bbgain, align 4
  %204 = load i32, i32* %7, align 4
  %205 = call i32 @ath5k_hw_ini_registers(%struct.ath5k_hw* %200, i32 %202, i32 %203, i32 %204)
  br label %220

206:                                              ; preds = %172
  %207 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %208 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* @AR5K_AR5210, align 8
  %211 = icmp eq i64 %209, %210
  br i1 %211, label %212, label %219

212:                                              ; preds = %206
  %213 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %214 = load i32, i32* @ar5210_ini, align 4
  %215 = call i32 @ARRAY_SIZE(i32 %214)
  %216 = load i32, i32* @ar5210_ini, align 4
  %217 = load i32, i32* %7, align 4
  %218 = call i32 @ath5k_hw_ini_registers(%struct.ath5k_hw* %213, i32 %215, i32 %216, i32 %217)
  br label %219

219:                                              ; preds = %212, %206
  br label %220

220:                                              ; preds = %219, %187
  br label %221

221:                                              ; preds = %220, %171
  store i32 0, i32* %4, align 4
  br label %222

222:                                              ; preds = %221, %181, %168
  %223 = load i32, i32* %4, align 4
  ret i32 %223
}

declare dso_local i32 @ath5k_hw_ini_mode_registers(%struct.ath5k_hw*, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @ath5k_hw_ini_registers(%struct.ath5k_hw*, i32, i32, i32) #1

declare dso_local i32 @ath5k_hw_reg_write(%struct.ath5k_hw*, i32, i32) #1

declare dso_local i32 @AR5K_REG_WRITE_BITS(%struct.ath5k_hw*, i32, i32, i32) #1

declare dso_local i32 @ATH5K_ERR(%struct.ath5k_hw*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
