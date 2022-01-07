; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_led.c_brcms_led_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_led.c_brcms_led_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_info = type { %struct.brcms_led, i32, %struct.TYPE_12__, %struct.TYPE_11__*, %struct.TYPE_10__* }
%struct.brcms_led = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.ssb_sprom, %struct.bcma_drv_cc }
%struct.ssb_sprom = type { i32, i32, i32, i32 }
%struct.bcma_drv_cc = type { %struct.gpio_chip }
%struct.gpio_chip = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@BRCMS_LED_NO = common dso_local global i32 0, align 4
@BRCMS_LED_BEH_MASK = common dso_local global i32 0, align 4
@BRCMS_LED_RADIO = common dso_local global i32 0, align 4
@BRCMS_LED_AL_MASK = common dso_local global i32 0, align 4
@GPIOF_OUT_INIT_HIGH = common dso_local global i32 0, align 4
@GPIOF_OUT_INIT_LOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"radio on\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"requesting led gpio %d failed (err: %d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"cannot set led gpio %d to output (err: %d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"brcmsmac-%s:radio\00", align 1
@brcms_led_brightness_set = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"cannot register led device: %s (err: %d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"registered radio enabled led device: %s gpio: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @brcms_led_register(%struct.brcms_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.brcms_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.brcms_led*, align 8
  %7 = alloca %struct.bcma_drv_cc*, align 8
  %8 = alloca %struct.gpio_chip*, align 8
  %9 = alloca %struct.ssb_sprom*, align 8
  %10 = alloca [4 x i32*], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.brcms_info* %0, %struct.brcms_info** %3, align 8
  %14 = load %struct.brcms_info*, %struct.brcms_info** %3, align 8
  %15 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %14, i32 0, i32 0
  store %struct.brcms_led* %15, %struct.brcms_led** %6, align 8
  %16 = load %struct.brcms_info*, %struct.brcms_info** %3, align 8
  %17 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %16, i32 0, i32 4
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  store %struct.bcma_drv_cc* %25, %struct.bcma_drv_cc** %7, align 8
  %26 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %7, align 8
  %27 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %26, i32 0, i32 0
  store %struct.gpio_chip* %27, %struct.gpio_chip** %8, align 8
  %28 = load %struct.brcms_info*, %struct.brcms_info** %3, align 8
  %29 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %28, i32 0, i32 4
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  store %struct.ssb_sprom* %37, %struct.ssb_sprom** %9, align 8
  %38 = getelementptr inbounds [4 x i32*], [4 x i32*]* %10, i64 0, i64 0
  %39 = load %struct.ssb_sprom*, %struct.ssb_sprom** %9, align 8
  %40 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %39, i32 0, i32 0
  store i32* %40, i32** %38, align 8
  %41 = getelementptr inbounds i32*, i32** %38, i64 1
  %42 = load %struct.ssb_sprom*, %struct.ssb_sprom** %9, align 8
  %43 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %42, i32 0, i32 1
  store i32* %43, i32** %41, align 8
  %44 = getelementptr inbounds i32*, i32** %41, i64 1
  %45 = load %struct.ssb_sprom*, %struct.ssb_sprom** %9, align 8
  %46 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %45, i32 0, i32 2
  store i32* %46, i32** %44, align 8
  %47 = getelementptr inbounds i32*, i32** %44, i64 1
  %48 = load %struct.ssb_sprom*, %struct.ssb_sprom** %9, align 8
  %49 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %48, i32 0, i32 3
  store i32* %49, i32** %47, align 8
  store i32 -1, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %50 = load %struct.brcms_led*, %struct.brcms_led** %6, align 8
  %51 = getelementptr inbounds %struct.brcms_led, %struct.brcms_led* %50, i32 0, i32 0
  store i32 -1, i32* %51, align 4
  %52 = load %struct.brcms_led*, %struct.brcms_led** %6, align 8
  %53 = getelementptr inbounds %struct.brcms_led, %struct.brcms_led* %52, i32 0, i32 1
  store i32 0, i32* %53, align 4
  %54 = load %struct.gpio_chip*, %struct.gpio_chip** %8, align 8
  %55 = icmp ne %struct.gpio_chip* %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %1
  %57 = load %struct.gpio_chip*, %struct.gpio_chip** %8, align 8
  %58 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @gpio_is_valid(i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %56, %1
  %63 = load i32, i32* @ENODEV, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %207

65:                                               ; preds = %56
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %94, %65
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @BRCMS_LED_NO, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %97

70:                                               ; preds = %66
  %71 = load i32, i32* %4, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [4 x i32*], [4 x i32*]* %10, i64 0, i64 %72
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %13, align 4
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* @BRCMS_LED_BEH_MASK, align 4
  %78 = and i32 %76, %77
  %79 = load i32, i32* @BRCMS_LED_RADIO, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %93

81:                                               ; preds = %70
  %82 = load %struct.gpio_chip*, %struct.gpio_chip** %8, align 8
  %83 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %4, align 4
  %86 = add i32 %84, %85
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* @BRCMS_LED_AL_MASK, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %81
  store i32 1, i32* %12, align 4
  br label %92

92:                                               ; preds = %91, %81
  br label %97

93:                                               ; preds = %70
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %4, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %4, align 4
  br label %66

97:                                               ; preds = %92, %66
  %98 = load i32, i32* %11, align 4
  %99 = icmp eq i32 %98, -1
  br i1 %99, label %104, label %100

100:                                              ; preds = %97
  %101 = load i32, i32* %11, align 4
  %102 = call i32 @gpio_is_valid(i32 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %100, %97
  %105 = load i32, i32* @ENODEV, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %2, align 4
  br label %207

107:                                              ; preds = %100
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* %12, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %107
  %112 = load i32, i32* @GPIOF_OUT_INIT_HIGH, align 4
  br label %115

113:                                              ; preds = %107
  %114 = load i32, i32* @GPIOF_OUT_INIT_LOW, align 4
  br label %115

115:                                              ; preds = %113, %111
  %116 = phi i32 [ %112, %111 ], [ %114, %113 ]
  %117 = call i32 @gpio_request_one(i32 %108, i32 %116, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %117, i32* %5, align 4
  %118 = load i32, i32* %5, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %115
  %121 = load %struct.brcms_info*, %struct.brcms_info** %3, align 8
  %122 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %11, align 4
  %125 = load i32, i32* %5, align 4
  %126 = call i32 @wiphy_err(i32 %123, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %124, i32 %125)
  %127 = load i32, i32* %5, align 4
  store i32 %127, i32* %2, align 4
  br label %207

128:                                              ; preds = %115
  %129 = load i32, i32* %11, align 4
  %130 = call i32 @gpio_direction_output(i32 %129, i32 1)
  store i32 %130, i32* %5, align 4
  %131 = load i32, i32* %5, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %141

133:                                              ; preds = %128
  %134 = load %struct.brcms_info*, %struct.brcms_info** %3, align 8
  %135 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %11, align 4
  %138 = load i32, i32* %5, align 4
  %139 = call i32 @wiphy_err(i32 %136, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %137, i32 %138)
  %140 = load i32, i32* %5, align 4
  store i32 %140, i32* %2, align 4
  br label %207

141:                                              ; preds = %128
  %142 = load %struct.brcms_info*, %struct.brcms_info** %3, align 8
  %143 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.brcms_led, %struct.brcms_led* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.brcms_info*, %struct.brcms_info** %3, align 8
  %147 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = call i8* @wiphy_name(i32 %148)
  %150 = call i32 @snprintf(i32 %145, i32 4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %149)
  %151 = load %struct.brcms_info*, %struct.brcms_info** %3, align 8
  %152 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.brcms_led, %struct.brcms_led* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.brcms_info*, %struct.brcms_info** %3, align 8
  %156 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 0
  store i32 %154, i32* %157, align 8
  %158 = load %struct.brcms_info*, %struct.brcms_info** %3, align 8
  %159 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %158, i32 0, i32 3
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @ieee80211_get_radio_led_name(i32 %162)
  %164 = load %struct.brcms_info*, %struct.brcms_info** %3, align 8
  %165 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 2
  store i32 %163, i32* %166, align 8
  %167 = load i32, i32* @brcms_led_brightness_set, align 4
  %168 = load %struct.brcms_info*, %struct.brcms_info** %3, align 8
  %169 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 1
  store i32 %167, i32* %170, align 4
  %171 = load %struct.brcms_info*, %struct.brcms_info** %3, align 8
  %172 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @wiphy_dev(i32 %173)
  %175 = load %struct.brcms_info*, %struct.brcms_info** %3, align 8
  %176 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %175, i32 0, i32 2
  %177 = call i32 @led_classdev_register(i32 %174, %struct.TYPE_12__* %176)
  store i32 %177, i32* %5, align 4
  %178 = load i32, i32* %5, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %191

180:                                              ; preds = %141
  %181 = load %struct.brcms_info*, %struct.brcms_info** %3, align 8
  %182 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.brcms_info*, %struct.brcms_info** %3, align 8
  %185 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.brcms_led, %struct.brcms_led* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* %5, align 4
  %189 = call i32 @wiphy_err(i32 %183, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %187, i32 %188)
  %190 = load i32, i32* %5, align 4
  store i32 %190, i32* %2, align 4
  br label %207

191:                                              ; preds = %141
  %192 = load %struct.brcms_info*, %struct.brcms_info** %3, align 8
  %193 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.brcms_info*, %struct.brcms_info** %3, align 8
  %196 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.brcms_led, %struct.brcms_led* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* %11, align 4
  %200 = call i32 @wiphy_info(i32 %194, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i32 %198, i32 %199)
  %201 = load i32, i32* %11, align 4
  %202 = load %struct.brcms_led*, %struct.brcms_led** %6, align 8
  %203 = getelementptr inbounds %struct.brcms_led, %struct.brcms_led* %202, i32 0, i32 0
  store i32 %201, i32* %203, align 4
  %204 = load i32, i32* %12, align 4
  %205 = load %struct.brcms_led*, %struct.brcms_led** %6, align 8
  %206 = getelementptr inbounds %struct.brcms_led, %struct.brcms_led* %205, i32 0, i32 1
  store i32 %204, i32* %206, align 4
  store i32 0, i32* %2, align 4
  br label %207

207:                                              ; preds = %191, %180, %133, %120, %104, %62
  %208 = load i32, i32* %2, align 4
  ret i32 %208
}

declare dso_local i32 @gpio_is_valid(i32) #1

declare dso_local i32 @gpio_request_one(i32, i32, i8*) #1

declare dso_local i32 @wiphy_err(i32, i8*, i32, i32) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i8* @wiphy_name(i32) #1

declare dso_local i32 @ieee80211_get_radio_led_name(i32) #1

declare dso_local i32 @led_classdev_register(i32, %struct.TYPE_12__*) #1

declare dso_local i32 @wiphy_dev(i32) #1

declare dso_local i32 @wiphy_info(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
