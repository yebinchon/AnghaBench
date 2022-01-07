; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-cards.c_em28xx_hint_board.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-cards.c_em28xx_hint_board.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.em28xx = type { i64, i64, i64, i64, %struct.TYPE_6__*, i32, i32, i64 }
%struct.TYPE_6__ = type { i32 }

@EM28XX_MT9V011 = common dso_local global i64 0, align 8
@EM2820_BOARD_SILVERCREST_WEBCAM = common dso_local global i64 0, align 8
@EM28XX_MT9M001 = common dso_local global i64 0, align 8
@EM28XX_MT9M111 = common dso_local global i64 0, align 8
@EM2750_BOARD_UNKNOWN = common dso_local global i64 0, align 8
@em28xx_eeprom_hash = common dso_local global %struct.TYPE_7__* null, align 8
@.str = private unnamed_addr constant [250 x i8] c"Your board has no unique USB ID.\0AA hint were successfully done, based on eeprom hash.\0AThis method is not 100%% failproof.\0AIf the board were misdetected, please email this log to:\0A\09V4L Mailing List  <linux-media@vger.kernel.org>\0ABoard detected as %s\0A\00", align 1
@em28xx_boards = common dso_local global %struct.TYPE_8__* null, align 8
@em28xx_i2c_hash = common dso_local global %struct.TYPE_7__* null, align 8
@.str.1 = private unnamed_addr constant [258 x i8] c"Your board has no unique USB ID.\0AA hint were successfully done, based on i2c devicelist hash.\0AThis method is not 100%% failproof.\0AIf the board were misdetected, please email this log to:\0A\09V4L Mailing List  <linux-media@vger.kernel.org>\0ABoard detected as %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [285 x i8] c"Your board has no unique USB ID and thus need a hint to be detected.\0AYou may try to use card=<n> insmod option to workaround that.\0APlease send an email with this log to:\0A\09V4L Mailing List <linux-media@vger.kernel.org>\0ABoard eeprom hash is 0x%08lx\0ABoard i2c devicelist hash is 0x%08lx\0A\00", align 1
@.str.3 = private unnamed_addr constant [65 x i8] c"Here is a list of valid choices for the card=<n> insmod option:\0A\00", align 1
@em28xx_bcount = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"    card=%d -> %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.em28xx*)* @em28xx_hint_board to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em28xx_hint_board(%struct.em28xx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.em28xx*, align 8
  %4 = alloca i32, align 4
  store %struct.em28xx* %0, %struct.em28xx** %3, align 8
  %5 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %6 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %5, i32 0, i32 7
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %37

9:                                                ; preds = %1
  %10 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %11 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @EM28XX_MT9V011, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %9
  %16 = load i64, i64* @EM2820_BOARD_SILVERCREST_WEBCAM, align 8
  %17 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %18 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %17, i32 0, i32 1
  store i64 %16, i64* %18, align 8
  br label %36

19:                                               ; preds = %9
  %20 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %21 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @EM28XX_MT9M001, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %27 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @EM28XX_MT9M111, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %25, %19
  %32 = load i64, i64* @EM2750_BOARD_UNKNOWN, align 8
  %33 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %34 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %33, i32 0, i32 1
  store i64 %32, i64* %34, align 8
  br label %35

35:                                               ; preds = %31, %25
  br label %36

36:                                               ; preds = %35, %15
  store i32 0, i32* %2, align 4
  br label %186

37:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %84, %37
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** @em28xx_eeprom_hash, align 8
  %41 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %40)
  %42 = icmp slt i32 %39, %41
  br i1 %42, label %43, label %87

43:                                               ; preds = %38
  %44 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %45 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** @em28xx_eeprom_hash, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %46, %52
  br i1 %53, label %54, label %83

54:                                               ; preds = %43
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** @em28xx_eeprom_hash, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %62 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %61, i32 0, i32 1
  store i64 %60, i64* %62, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** @em28xx_eeprom_hash, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %70 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %69, i32 0, i32 5
  store i32 %68, i32* %70, align 8
  %71 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %72 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %71, i32 0, i32 4
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** @em28xx_boards, align 8
  %76 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %77 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i32 (i32*, i8*, ...) @dev_err(i32* %74, i8* getelementptr inbounds ([250 x i8], [250 x i8]* @.str, i64 0, i64 0), i64 %81)
  store i32 0, i32* %2, align 4
  br label %186

83:                                               ; preds = %43
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %4, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %4, align 4
  br label %38

87:                                               ; preds = %38
  %88 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %89 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %98, label %92

92:                                               ; preds = %87
  %93 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %94 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %95 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %94, i32 0, i32 6
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @em28xx_do_i2c_scan(%struct.em28xx* %93, i32 %96)
  br label %98

98:                                               ; preds = %92, %87
  store i32 0, i32* %4, align 4
  br label %99

99:                                               ; preds = %145, %98
  %100 = load i32, i32* %4, align 4
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** @em28xx_i2c_hash, align 8
  %102 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %101)
  %103 = icmp slt i32 %100, %102
  br i1 %103, label %104, label %148

104:                                              ; preds = %99
  %105 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %106 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %105, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** @em28xx_i2c_hash, align 8
  %109 = load i32, i32* %4, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp eq i64 %107, %113
  br i1 %114, label %115, label %144

115:                                              ; preds = %104
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** @em28xx_i2c_hash, align 8
  %117 = load i32, i32* %4, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %123 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %122, i32 0, i32 1
  store i64 %121, i64* %123, align 8
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** @em28xx_i2c_hash, align 8
  %125 = load i32, i32* %4, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %131 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %130, i32 0, i32 5
  store i32 %129, i32* %131, align 8
  %132 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %133 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %132, i32 0, i32 4
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** @em28xx_boards, align 8
  %137 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %138 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = call i32 (i32*, i8*, ...) @dev_err(i32* %135, i8* getelementptr inbounds ([258 x i8], [258 x i8]* @.str.1, i64 0, i64 0), i64 %142)
  store i32 0, i32* %2, align 4
  br label %186

144:                                              ; preds = %104
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %4, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %4, align 4
  br label %99

148:                                              ; preds = %99
  %149 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %150 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %149, i32 0, i32 4
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %154 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %157 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %156, i32 0, i32 3
  %158 = load i64, i64* %157, align 8
  %159 = call i32 (i32*, i8*, ...) @dev_err(i32* %152, i8* getelementptr inbounds ([285 x i8], [285 x i8]* @.str.2, i64 0, i64 0), i64 %155, i64 %158)
  %160 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %161 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %160, i32 0, i32 4
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  %164 = call i32 (i32*, i8*, ...) @dev_err(i32* %163, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %165

165:                                              ; preds = %182, %148
  %166 = load i32, i32* %4, align 4
  %167 = load i32, i32* @em28xx_bcount, align 4
  %168 = icmp slt i32 %166, %167
  br i1 %168, label %169, label %185

169:                                              ; preds = %165
  %170 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %171 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %170, i32 0, i32 4
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 0
  %174 = load i32, i32* %4, align 4
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** @em28xx_boards, align 8
  %176 = load i32, i32* %4, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = call i32 (i32*, i8*, ...) @dev_err(i32* %173, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %174, i64 %180)
  br label %182

182:                                              ; preds = %169
  %183 = load i32, i32* %4, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %4, align 4
  br label %165

185:                                              ; preds = %165
  store i32 -1, i32* %2, align 4
  br label %186

186:                                              ; preds = %185, %115, %54, %36
  %187 = load i32, i32* %2, align 4
  ret i32 %187
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_7__*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @em28xx_do_i2c_scan(%struct.em28xx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
