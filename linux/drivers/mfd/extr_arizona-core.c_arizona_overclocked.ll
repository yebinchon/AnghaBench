; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_arizona-core.c_arizona_overclocked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_arizona-core.c_arizona_overclocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arizona = type { i32, i32, i32 }

@ARIZONA_INTERRUPT_RAW_STATUS_6 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to read overclock status: %d\0A\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@ARIZONA_PWM_OVERCLOCKED_STS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"PWM overclocked\0A\00", align 1
@ARIZONA_FX_CORE_OVERCLOCKED_STS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"FX core overclocked\0A\00", align 1
@ARIZONA_DAC_SYS_OVERCLOCKED_STS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"DAC SYS overclocked\0A\00", align 1
@ARIZONA_DAC_WARP_OVERCLOCKED_STS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"DAC WARP overclocked\0A\00", align 1
@ARIZONA_ADC_OVERCLOCKED_STS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"ADC overclocked\0A\00", align 1
@ARIZONA_MIXER_OVERCLOCKED_STS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"Mixer overclocked\0A\00", align 1
@ARIZONA_AIF3_SYNC_OVERCLOCKED_STS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [18 x i8] c"AIF3 overclocked\0A\00", align 1
@ARIZONA_AIF2_SYNC_OVERCLOCKED_STS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [18 x i8] c"AIF2 overclocked\0A\00", align 1
@ARIZONA_AIF1_SYNC_OVERCLOCKED_STS = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [18 x i8] c"AIF1 overclocked\0A\00", align 1
@ARIZONA_PAD_CTRL_OVERCLOCKED_STS = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [25 x i8] c"Pad control overclocked\0A\00", align 1
@ARIZONA_SLIMBUS_SUBSYS_OVERCLOCKED_STS = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [31 x i8] c"Slimbus subsystem overclocked\0A\00", align 1
@ARIZONA_SLIMBUS_ASYNC_OVERCLOCKED_STS = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [27 x i8] c"Slimbus async overclocked\0A\00", align 1
@ARIZONA_SLIMBUS_SYNC_OVERCLOCKED_STS = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [26 x i8] c"Slimbus sync overclocked\0A\00", align 1
@ARIZONA_ASRC_ASYNC_SYS_OVERCLOCKED_STS = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [31 x i8] c"ASRC async system overclocked\0A\00", align 1
@ARIZONA_ASRC_ASYNC_WARP_OVERCLOCKED_STS = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [29 x i8] c"ASRC async WARP overclocked\0A\00", align 1
@ARIZONA_ASRC_SYNC_SYS_OVERCLOCKED_STS = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [30 x i8] c"ASRC sync system overclocked\0A\00", align 1
@ARIZONA_ASRC_SYNC_WARP_OVERCLOCKED_STS = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [28 x i8] c"ASRC sync WARP overclocked\0A\00", align 1
@ARIZONA_ADSP2_1_OVERCLOCKED_STS = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [18 x i8] c"DSP1 overclocked\0A\00", align 1
@ARIZONA_ISRC3_OVERCLOCKED_STS = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [19 x i8] c"ISRC3 overclocked\0A\00", align 1
@ARIZONA_ISRC2_OVERCLOCKED_STS = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [19 x i8] c"ISRC2 overclocked\0A\00", align 1
@ARIZONA_ISRC1_OVERCLOCKED_STS = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [19 x i8] c"ISRC1 overclocked\0A\00", align 1
@ARIZONA_SPDIF_OVERCLOCKED_STS = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [19 x i8] c"SPDIF overclocked\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @arizona_overclocked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arizona_overclocked(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.arizona*, align 8
  %7 = alloca [3 x i32], align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.arizona*
  store %struct.arizona* %10, %struct.arizona** %6, align 8
  %11 = load %struct.arizona*, %struct.arizona** %6, align 8
  %12 = getelementptr inbounds %struct.arizona, %struct.arizona* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @ARIZONA_INTERRUPT_RAW_STATUS_6, align 4
  %15 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %16 = call i32 @regmap_bulk_read(i32 %13, i32 %14, i32* %15, i32 3)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load %struct.arizona*, %struct.arizona** %6, align 8
  %21 = getelementptr inbounds %struct.arizona, %struct.arizona* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 (i32, i8*, ...) @dev_err(i32 %22, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @IRQ_NONE, align 4
  store i32 %25, i32* %3, align 4
  br label %290

26:                                               ; preds = %2
  %27 = load %struct.arizona*, %struct.arizona** %6, align 8
  %28 = getelementptr inbounds %struct.arizona, %struct.arizona* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %45 [
    i32 128, label %30
    i32 129, label %30
  ]

30:                                               ; preds = %26, %26
  %31 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 24800
  %34 = lshr i32 %33, 1
  %35 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 7680
  %38 = lshr i32 %37, 2
  %39 = or i32 %34, %38
  %40 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, 15
  %43 = or i32 %39, %42
  %44 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  store i32 %43, i32* %44, align 4
  br label %46

45:                                               ; preds = %26
  br label %46

46:                                               ; preds = %45, %30
  %47 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @ARIZONA_PWM_OVERCLOCKED_STS, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %46
  %53 = load %struct.arizona*, %struct.arizona** %6, align 8
  %54 = getelementptr inbounds %struct.arizona, %struct.arizona* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (i32, i8*, ...) @dev_err(i32 %55, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %57

57:                                               ; preds = %52, %46
  %58 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @ARIZONA_FX_CORE_OVERCLOCKED_STS, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %57
  %64 = load %struct.arizona*, %struct.arizona** %6, align 8
  %65 = getelementptr inbounds %struct.arizona, %struct.arizona* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (i32, i8*, ...) @dev_err(i32 %66, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %68

68:                                               ; preds = %63, %57
  %69 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @ARIZONA_DAC_SYS_OVERCLOCKED_STS, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %68
  %75 = load %struct.arizona*, %struct.arizona** %6, align 8
  %76 = getelementptr inbounds %struct.arizona, %struct.arizona* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (i32, i8*, ...) @dev_err(i32 %77, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %79

79:                                               ; preds = %74, %68
  %80 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @ARIZONA_DAC_WARP_OVERCLOCKED_STS, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %79
  %86 = load %struct.arizona*, %struct.arizona** %6, align 8
  %87 = getelementptr inbounds %struct.arizona, %struct.arizona* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 (i32, i8*, ...) @dev_err(i32 %88, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %90

90:                                               ; preds = %85, %79
  %91 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @ARIZONA_ADC_OVERCLOCKED_STS, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %90
  %97 = load %struct.arizona*, %struct.arizona** %6, align 8
  %98 = getelementptr inbounds %struct.arizona, %struct.arizona* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 (i32, i8*, ...) @dev_err(i32 %99, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  br label %101

101:                                              ; preds = %96, %90
  %102 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @ARIZONA_MIXER_OVERCLOCKED_STS, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %101
  %108 = load %struct.arizona*, %struct.arizona** %6, align 8
  %109 = getelementptr inbounds %struct.arizona, %struct.arizona* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 (i32, i8*, ...) @dev_err(i32 %110, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  br label %112

112:                                              ; preds = %107, %101
  %113 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @ARIZONA_AIF3_SYNC_OVERCLOCKED_STS, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %112
  %119 = load %struct.arizona*, %struct.arizona** %6, align 8
  %120 = getelementptr inbounds %struct.arizona, %struct.arizona* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 (i32, i8*, ...) @dev_err(i32 %121, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  br label %123

123:                                              ; preds = %118, %112
  %124 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @ARIZONA_AIF2_SYNC_OVERCLOCKED_STS, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %123
  %130 = load %struct.arizona*, %struct.arizona** %6, align 8
  %131 = getelementptr inbounds %struct.arizona, %struct.arizona* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 (i32, i8*, ...) @dev_err(i32 %132, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  br label %134

134:                                              ; preds = %129, %123
  %135 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @ARIZONA_AIF1_SYNC_OVERCLOCKED_STS, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %134
  %141 = load %struct.arizona*, %struct.arizona** %6, align 8
  %142 = getelementptr inbounds %struct.arizona, %struct.arizona* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = call i32 (i32, i8*, ...) @dev_err(i32 %143, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  br label %145

145:                                              ; preds = %140, %134
  %146 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @ARIZONA_PAD_CTRL_OVERCLOCKED_STS, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %145
  %152 = load %struct.arizona*, %struct.arizona** %6, align 8
  %153 = getelementptr inbounds %struct.arizona, %struct.arizona* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i32 (i32, i8*, ...) @dev_err(i32 %154, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  br label %156

156:                                              ; preds = %151, %145
  %157 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 1
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @ARIZONA_SLIMBUS_SUBSYS_OVERCLOCKED_STS, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %156
  %163 = load %struct.arizona*, %struct.arizona** %6, align 8
  %164 = getelementptr inbounds %struct.arizona, %struct.arizona* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = call i32 (i32, i8*, ...) @dev_err(i32 %165, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0))
  br label %167

167:                                              ; preds = %162, %156
  %168 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 1
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @ARIZONA_SLIMBUS_ASYNC_OVERCLOCKED_STS, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %178

173:                                              ; preds = %167
  %174 = load %struct.arizona*, %struct.arizona** %6, align 8
  %175 = getelementptr inbounds %struct.arizona, %struct.arizona* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = call i32 (i32, i8*, ...) @dev_err(i32 %176, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0))
  br label %178

178:                                              ; preds = %173, %167
  %179 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 1
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @ARIZONA_SLIMBUS_SYNC_OVERCLOCKED_STS, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %178
  %185 = load %struct.arizona*, %struct.arizona** %6, align 8
  %186 = getelementptr inbounds %struct.arizona, %struct.arizona* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = call i32 (i32, i8*, ...) @dev_err(i32 %187, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0))
  br label %189

189:                                              ; preds = %184, %178
  %190 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 1
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @ARIZONA_ASRC_ASYNC_SYS_OVERCLOCKED_STS, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %200

195:                                              ; preds = %189
  %196 = load %struct.arizona*, %struct.arizona** %6, align 8
  %197 = getelementptr inbounds %struct.arizona, %struct.arizona* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = call i32 (i32, i8*, ...) @dev_err(i32 %198, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0))
  br label %200

200:                                              ; preds = %195, %189
  %201 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 1
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* @ARIZONA_ASRC_ASYNC_WARP_OVERCLOCKED_STS, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %211

206:                                              ; preds = %200
  %207 = load %struct.arizona*, %struct.arizona** %6, align 8
  %208 = getelementptr inbounds %struct.arizona, %struct.arizona* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = call i32 (i32, i8*, ...) @dev_err(i32 %209, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i64 0, i64 0))
  br label %211

211:                                              ; preds = %206, %200
  %212 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 1
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* @ARIZONA_ASRC_SYNC_SYS_OVERCLOCKED_STS, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %222

217:                                              ; preds = %211
  %218 = load %struct.arizona*, %struct.arizona** %6, align 8
  %219 = getelementptr inbounds %struct.arizona, %struct.arizona* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = call i32 (i32, i8*, ...) @dev_err(i32 %220, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i64 0, i64 0))
  br label %222

222:                                              ; preds = %217, %211
  %223 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 1
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* @ARIZONA_ASRC_SYNC_WARP_OVERCLOCKED_STS, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %233

228:                                              ; preds = %222
  %229 = load %struct.arizona*, %struct.arizona** %6, align 8
  %230 = getelementptr inbounds %struct.arizona, %struct.arizona* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = call i32 (i32, i8*, ...) @dev_err(i32 %231, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0))
  br label %233

233:                                              ; preds = %228, %222
  %234 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 1
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* @ARIZONA_ADSP2_1_OVERCLOCKED_STS, align 4
  %237 = and i32 %235, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %244

239:                                              ; preds = %233
  %240 = load %struct.arizona*, %struct.arizona** %6, align 8
  %241 = getelementptr inbounds %struct.arizona, %struct.arizona* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = call i32 (i32, i8*, ...) @dev_err(i32 %242, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0))
  br label %244

244:                                              ; preds = %239, %233
  %245 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 1
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* @ARIZONA_ISRC3_OVERCLOCKED_STS, align 4
  %248 = and i32 %246, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %255

250:                                              ; preds = %244
  %251 = load %struct.arizona*, %struct.arizona** %6, align 8
  %252 = getelementptr inbounds %struct.arizona, %struct.arizona* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = call i32 (i32, i8*, ...) @dev_err(i32 %253, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i64 0, i64 0))
  br label %255

255:                                              ; preds = %250, %244
  %256 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 1
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* @ARIZONA_ISRC2_OVERCLOCKED_STS, align 4
  %259 = and i32 %257, %258
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %266

261:                                              ; preds = %255
  %262 = load %struct.arizona*, %struct.arizona** %6, align 8
  %263 = getelementptr inbounds %struct.arizona, %struct.arizona* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = call i32 (i32, i8*, ...) @dev_err(i32 %264, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i64 0, i64 0))
  br label %266

266:                                              ; preds = %261, %255
  %267 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 1
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* @ARIZONA_ISRC1_OVERCLOCKED_STS, align 4
  %270 = and i32 %268, %269
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %277

272:                                              ; preds = %266
  %273 = load %struct.arizona*, %struct.arizona** %6, align 8
  %274 = getelementptr inbounds %struct.arizona, %struct.arizona* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = call i32 (i32, i8*, ...) @dev_err(i32 %275, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i64 0, i64 0))
  br label %277

277:                                              ; preds = %272, %266
  %278 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 2
  %279 = load i32, i32* %278, align 4
  %280 = load i32, i32* @ARIZONA_SPDIF_OVERCLOCKED_STS, align 4
  %281 = and i32 %279, %280
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %288

283:                                              ; preds = %277
  %284 = load %struct.arizona*, %struct.arizona** %6, align 8
  %285 = getelementptr inbounds %struct.arizona, %struct.arizona* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = call i32 (i32, i8*, ...) @dev_err(i32 %286, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i64 0, i64 0))
  br label %288

288:                                              ; preds = %283, %277
  %289 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %289, i32* %3, align 4
  br label %290

290:                                              ; preds = %288, %19
  %291 = load i32, i32* %3, align 4
  ret i32 %291
}

declare dso_local i32 @regmap_bulk_read(i32, i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
