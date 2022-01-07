; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-core.c_em28xx_audio_analog_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-core.c_em28xx_audio_analog_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.em28xx = type { i64, i32, i32, %struct.TYPE_8__*, i64, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32 }

@EM28XX_INT_AUDIO_NONE = common dso_local global i64 0, align 8
@EM28XX_NO_AC97 = common dso_local global i64 0, align 8
@outputs = common dso_local global %struct.TYPE_9__* null, align 8
@.str = private unnamed_addr constant [33 x i8] c"couldn't setup AC97 register %d\0A\00", align 1
@EM28XX_XCLK_AUDIO_UNMUTE = common dso_local global i32 0, align 4
@EM28XX_R0F_XCLK = common dso_local global i32 0, align 4
@AC97_POWERDOWN = common dso_local global i32 0, align 4
@AC97_EXTENDED_STATUS = common dso_local global i32 0, align 4
@AC97_PCM_LR_ADC_RATE = common dso_local global i32 0, align 4
@EM28XX_AOUT_PCM_IN = common dso_local global i32 0, align 4
@AC97_REC_SEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @em28xx_audio_analog_set(%struct.em28xx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.em28xx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.em28xx* %0, %struct.em28xx** %3, align 8
  %9 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %10 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @EM28XX_INT_AUDIO_NONE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %186

15:                                               ; preds = %1
  %16 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %17 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %16, i32 0, i32 5
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @EM28XX_NO_AC97, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %56

22:                                               ; preds = %15
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %52, %22
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** @outputs, align 8
  %26 = call i32 @ARRAY_SIZE(%struct.TYPE_9__* %25)
  %27 = icmp slt i32 %24, %26
  br i1 %27, label %28, label %55

28:                                               ; preds = %23
  %29 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** @outputs, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @em28xx_write_ac97(%struct.em28xx* %29, i32 %35, i32 32768)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %28
  %40 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %41 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %40, i32 0, i32 3
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** @outputs, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @dev_warn(i32* %43, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %39, %28
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %23

55:                                               ; preds = %23
  br label %56

56:                                               ; preds = %55, %15
  %57 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %58 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %57, i32 0, i32 6
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = and i32 %60, 127
  store i32 %61, i32* %6, align 4
  %62 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %63 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %56
  %67 = load i32, i32* @EM28XX_XCLK_AUDIO_UNMUTE, align 4
  %68 = load i32, i32* %6, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %66, %56
  %71 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %72 = load i32, i32* @EM28XX_R0F_XCLK, align 4
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @em28xx_write_reg(%struct.em28xx* %71, i32 %72, i32 %73)
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %4, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %70
  %78 = load i32, i32* %4, align 4
  store i32 %78, i32* %2, align 4
  br label %186

79:                                               ; preds = %70
  %80 = call i32 @usleep_range(i32 10000, i32 11000)
  %81 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %82 = call i32 @em28xx_set_audio_source(%struct.em28xx* %81)
  store i32 %82, i32* %4, align 4
  %83 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %84 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %83, i32 0, i32 5
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @EM28XX_NO_AC97, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %184

89:                                               ; preds = %79
  %90 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %91 = load i32, i32* @AC97_POWERDOWN, align 4
  %92 = call i32 @em28xx_write_ac97(%struct.em28xx* %90, i32 %91, i32 16896)
  %93 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %94 = load i32, i32* @AC97_EXTENDED_STATUS, align 4
  %95 = call i32 @em28xx_write_ac97(%struct.em28xx* %93, i32 %94, i32 49)
  %96 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %97 = load i32, i32* @AC97_PCM_LR_ADC_RATE, align 4
  %98 = call i32 @em28xx_write_ac97(%struct.em28xx* %96, i32 %97, i32 48000)
  %99 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %100 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = sub nsw i32 31, %101
  %103 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %104 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = sub nsw i32 31, %105
  %107 = shl i32 %106, 8
  %108 = or i32 %102, %107
  store i32 %108, i32* %7, align 4
  %109 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %110 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %109, i32 0, i32 4
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %89
  %114 = load i32, i32* %7, align 4
  %115 = or i32 %114, 32768
  store i32 %115, i32* %7, align 4
  br label %116

116:                                              ; preds = %113, %89
  store i32 0, i32* %5, align 4
  br label %117

117:                                              ; preds = %160, %116
  %118 = load i32, i32* %5, align 4
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** @outputs, align 8
  %120 = call i32 @ARRAY_SIZE(%struct.TYPE_9__* %119)
  %121 = icmp slt i32 %118, %120
  br i1 %121, label %122, label %163

122:                                              ; preds = %117
  %123 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %124 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** @outputs, align 8
  %127 = load i32, i32* %5, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = and i32 %125, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %144

134:                                              ; preds = %122
  %135 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** @outputs, align 8
  %137 = load i32, i32* %5, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %7, align 4
  %143 = call i32 @em28xx_write_ac97(%struct.em28xx* %135, i32 %141, i32 %142)
  store i32 %143, i32* %4, align 4
  br label %144

144:                                              ; preds = %134, %122
  %145 = load i32, i32* %4, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %159

147:                                              ; preds = %144
  %148 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %149 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %148, i32 0, i32 3
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** @outputs, align 8
  %153 = load i32, i32* %5, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @dev_warn(i32* %151, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %157)
  br label %159

159:                                              ; preds = %147, %144
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %5, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %5, align 4
  br label %117

163:                                              ; preds = %117
  %164 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %165 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @EM28XX_AOUT_PCM_IN, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %183

170:                                              ; preds = %163
  %171 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %172 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @ac97_return_record_select(i32 %173)
  store i32 %174, i32* %8, align 4
  %175 = load i32, i32* %8, align 4
  %176 = shl i32 %175, 8
  %177 = load i32, i32* %8, align 4
  %178 = or i32 %177, %176
  store i32 %178, i32* %8, align 4
  %179 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %180 = load i32, i32* @AC97_REC_SEL, align 4
  %181 = load i32, i32* %8, align 4
  %182 = call i32 @em28xx_write_ac97(%struct.em28xx* %179, i32 %180, i32 %181)
  br label %183

183:                                              ; preds = %170, %163
  br label %184

184:                                              ; preds = %183, %79
  %185 = load i32, i32* %4, align 4
  store i32 %185, i32* %2, align 4
  br label %186

186:                                              ; preds = %184, %77, %14
  %187 = load i32, i32* %2, align 4
  ret i32 %187
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_9__*) #1

declare dso_local i32 @em28xx_write_ac97(%struct.em28xx*, i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @em28xx_write_reg(%struct.em28xx*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @em28xx_set_audio_source(%struct.em28xx*) #1

declare dso_local i32 @ac97_return_record_select(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
