; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_twl-core.c_add_children.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_twl-core.c_add_children.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_consumer_supply = type { i8*, i8* }
%struct.twl4030_platform_data = type { i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32* }
%struct.device = type { i32 }
%struct.regulator_init_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@CONFIG_GPIO_TWL4030 = common dso_local global i32 0, align 4
@TWL4030_MODULE_GPIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"twl4030_gpio\00", align 1
@GPIO_INTR_OFFSET = common dso_local global i32 0, align 4
@CONFIG_KEYBOARD_TWL4030 = common dso_local global i32 0, align 4
@TWL4030_MODULE_KEYPAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"twl4030_keypad\00", align 1
@KEYPAD_INTR_OFFSET = common dso_local global i32 0, align 4
@CONFIG_TWL4030_MADC = common dso_local global i32 0, align 4
@TWL4030_MODULE_MADC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"twl4030_madc\00", align 1
@MADC_INTR_OFFSET = common dso_local global i32 0, align 4
@CONFIG_RTC_DRV_TWL4030 = common dso_local global i32 0, align 4
@TWL_MODULE_RTC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"twl_rtc\00", align 1
@RTC_INTR_OFFSET = common dso_local global i32 0, align 4
@CONFIG_PWM_TWL = common dso_local global i32 0, align 4
@TWL_MODULE_PWM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"twl-pwm\00", align 1
@CONFIG_PWM_TWL_LED = common dso_local global i32 0, align 4
@TWL_MODULE_LED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"twl-pwmled\00", align 1
@CONFIG_TWL4030_USB = common dso_local global i32 0, align 4
@add_children.usb1v5 = internal global %struct.regulator_consumer_supply { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* null }, align 8
@.str.6 = private unnamed_addr constant [7 x i8] c"usb1v5\00", align 1
@add_children.usb1v8 = internal global %struct.regulator_consumer_supply { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* null }, align 8
@.str.7 = private unnamed_addr constant [7 x i8] c"usb1v8\00", align 1
@add_children.usb3v1 = internal global %struct.regulator_consumer_supply { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i8* null }, align 8
@.str.8 = private unnamed_addr constant [7 x i8] c"usb3v1\00", align 1
@CONFIG_REGULATOR_TWL4030 = common dso_local global i32 0, align 4
@REGULATOR_MODE_NORMAL = common dso_local global i32 0, align 4
@REGULATOR_MODE_STANDBY = common dso_local global i32 0, align 4
@REGULATOR_CHANGE_MODE = common dso_local global i32 0, align 4
@REGULATOR_CHANGE_STATUS = common dso_local global i32 0, align 4
@TWL4030_REG_VUSB1V5 = common dso_local global i32 0, align 4
@TWL4030_REG_VUSB1V8 = common dso_local global i32 0, align 4
@TWL4030_REG_VUSB3V1 = common dso_local global i32 0, align 4
@TWL_MODULE_USB = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [12 x i8] c"twl4030_usb\00", align 1
@USB_PRES_INTR_OFFSET = common dso_local global i32 0, align 4
@USB_INTR_OFFSET = common dso_local global i32 0, align 4
@CONFIG_TWL4030_WATCHDOG = common dso_local global i32 0, align 4
@TWL_MODULE_PM_RECEIVER = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [12 x i8] c"twl4030_wdt\00", align 1
@CONFIG_INPUT_TWL4030_PWRBUTTON = common dso_local global i32 0, align 4
@TWL_MODULE_PM_MASTER = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [18 x i8] c"twl4030_pwrbutton\00", align 1
@CONFIG_MFD_TWL4030_AUDIO = common dso_local global i32 0, align 4
@TWL4030_MODULE_AUDIO_VOICE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [14 x i8] c"twl4030-audio\00", align 1
@TWL4030_REG_VPLL1 = common dso_local global i32 0, align 4
@TWL4030_REG_VIO = common dso_local global i32 0, align 4
@TWL4030_REG_VDD1 = common dso_local global i32 0, align 4
@TWL4030_REG_VDD2 = common dso_local global i32 0, align 4
@TWL4030_REG_VMMC1 = common dso_local global i32 0, align 4
@TWL4030_REG_VDAC = common dso_local global i32 0, align 4
@TWL4030_VAUX2 = common dso_local global i64 0, align 8
@TWL4030_REG_VAUX2_4030 = common dso_local global i32 0, align 4
@TWL4030_REG_VAUX2 = common dso_local global i32 0, align 4
@TWL4030_REG_VINTANA1 = common dso_local global i32 0, align 4
@TWL4030_REG_VINTANA2 = common dso_local global i32 0, align 4
@TWL4030_REG_VINTDIG = common dso_local global i32 0, align 4
@TPS_SUBSET = common dso_local global i64 0, align 8
@TWL4030_REG_VPLL2 = common dso_local global i32 0, align 4
@TWL4030_REG_VMMC2 = common dso_local global i32 0, align 4
@TWL4030_REG_VSIM = common dso_local global i32 0, align 4
@TWL4030_REG_VAUX1 = common dso_local global i32 0, align 4
@TWL4030_REG_VAUX3 = common dso_local global i32 0, align 4
@TWL4030_REG_VAUX4 = common dso_local global i32 0, align 4
@CONFIG_CHARGER_TWL4030 = common dso_local global i32 0, align 4
@TWL5031 = common dso_local global i64 0, align 8
@TWL_MODULE_MAIN_CHARGE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [12 x i8] c"twl4030_bci\00", align 1
@BCI_PRES_INTR_OFFSET = common dso_local global i32 0, align 4
@BCI_INTR_OFFSET = common dso_local global i32 0, align 4
@CONFIG_TWL4030_POWER = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [14 x i8] c"twl4030_power\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.twl4030_platform_data*, i32, i64)* @add_children to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_children(%struct.twl4030_platform_data* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.twl4030_platform_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.regulator_init_data, align 4
  store %struct.twl4030_platform_data* %0, %struct.twl4030_platform_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %10 = load i32, i32* @CONFIG_GPIO_TWL4030, align 4
  %11 = call i64 @IS_ENABLED(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %34

13:                                               ; preds = %3
  %14 = load %struct.twl4030_platform_data*, %struct.twl4030_platform_data** %5, align 8
  %15 = getelementptr inbounds %struct.twl4030_platform_data, %struct.twl4030_platform_data* %14, i32 0, i32 22
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %34

18:                                               ; preds = %13
  %19 = load i32, i32* @TWL4030_MODULE_GPIO, align 4
  %20 = load %struct.twl4030_platform_data*, %struct.twl4030_platform_data** %5, align 8
  %21 = getelementptr inbounds %struct.twl4030_platform_data, %struct.twl4030_platform_data* %20, i32 0, i32 22
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @GPIO_INTR_OFFSET, align 4
  %25 = add i32 %23, %24
  %26 = call %struct.device* @add_child(i32 %19, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* %22, i32 4, i32 0, i32 %25, i32 0)
  store %struct.device* %26, %struct.device** %8, align 8
  %27 = load %struct.device*, %struct.device** %8, align 8
  %28 = call i64 @IS_ERR(%struct.device* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %18
  %31 = load %struct.device*, %struct.device** %8, align 8
  %32 = call i32 @PTR_ERR(%struct.device* %31)
  store i32 %32, i32* %4, align 4
  br label %579

33:                                               ; preds = %18
  br label %34

34:                                               ; preds = %33, %13, %3
  %35 = load i32, i32* @CONFIG_KEYBOARD_TWL4030, align 4
  %36 = call i64 @IS_ENABLED(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %59

38:                                               ; preds = %34
  %39 = load %struct.twl4030_platform_data*, %struct.twl4030_platform_data** %5, align 8
  %40 = getelementptr inbounds %struct.twl4030_platform_data, %struct.twl4030_platform_data* %39, i32 0, i32 21
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %59

43:                                               ; preds = %38
  %44 = load i32, i32* @TWL4030_MODULE_KEYPAD, align 4
  %45 = load %struct.twl4030_platform_data*, %struct.twl4030_platform_data** %5, align 8
  %46 = getelementptr inbounds %struct.twl4030_platform_data, %struct.twl4030_platform_data* %45, i32 0, i32 21
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @KEYPAD_INTR_OFFSET, align 4
  %50 = add i32 %48, %49
  %51 = call %struct.device* @add_child(i32 %44, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32* %47, i32 4, i32 1, i32 %50, i32 0)
  store %struct.device* %51, %struct.device** %8, align 8
  %52 = load %struct.device*, %struct.device** %8, align 8
  %53 = call i64 @IS_ERR(%struct.device* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %43
  %56 = load %struct.device*, %struct.device** %8, align 8
  %57 = call i32 @PTR_ERR(%struct.device* %56)
  store i32 %57, i32* %4, align 4
  br label %579

58:                                               ; preds = %43
  br label %59

59:                                               ; preds = %58, %38, %34
  %60 = load i32, i32* @CONFIG_TWL4030_MADC, align 4
  %61 = call i64 @IS_ENABLED(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %87

63:                                               ; preds = %59
  %64 = load %struct.twl4030_platform_data*, %struct.twl4030_platform_data** %5, align 8
  %65 = getelementptr inbounds %struct.twl4030_platform_data, %struct.twl4030_platform_data* %64, i32 0, i32 20
  %66 = load i32*, i32** %65, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %87

68:                                               ; preds = %63
  %69 = call i64 (...) @twl_class_is_4030()
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %87

71:                                               ; preds = %68
  %72 = load i32, i32* @TWL4030_MODULE_MADC, align 4
  %73 = load %struct.twl4030_platform_data*, %struct.twl4030_platform_data** %5, align 8
  %74 = getelementptr inbounds %struct.twl4030_platform_data, %struct.twl4030_platform_data* %73, i32 0, i32 20
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @MADC_INTR_OFFSET, align 4
  %78 = add i32 %76, %77
  %79 = call %struct.device* @add_child(i32 %72, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32* %75, i32 4, i32 1, i32 %78, i32 0)
  store %struct.device* %79, %struct.device** %8, align 8
  %80 = load %struct.device*, %struct.device** %8, align 8
  %81 = call i64 @IS_ERR(%struct.device* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %71
  %84 = load %struct.device*, %struct.device** %8, align 8
  %85 = call i32 @PTR_ERR(%struct.device* %84)
  store i32 %85, i32* %4, align 4
  br label %579

86:                                               ; preds = %71
  br label %87

87:                                               ; preds = %86, %68, %63, %59
  %88 = load i32, i32* @CONFIG_RTC_DRV_TWL4030, align 4
  %89 = call i64 @IS_ENABLED(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %104

91:                                               ; preds = %87
  %92 = load i32, i32* @TWL_MODULE_RTC, align 4
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* @RTC_INTR_OFFSET, align 4
  %95 = add i32 %93, %94
  %96 = call %struct.device* @add_child(i32 %92, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32* null, i32 0, i32 1, i32 %95, i32 0)
  store %struct.device* %96, %struct.device** %8, align 8
  %97 = load %struct.device*, %struct.device** %8, align 8
  %98 = call i64 @IS_ERR(%struct.device* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %91
  %101 = load %struct.device*, %struct.device** %8, align 8
  %102 = call i32 @PTR_ERR(%struct.device* %101)
  store i32 %102, i32* %4, align 4
  br label %579

103:                                              ; preds = %91
  br label %104

104:                                              ; preds = %103, %87
  %105 = load i32, i32* @CONFIG_PWM_TWL, align 4
  %106 = call i64 @IS_ENABLED(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %118

108:                                              ; preds = %104
  %109 = load i32, i32* @TWL_MODULE_PWM, align 4
  %110 = call %struct.device* @add_child(i32 %109, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32* null, i32 0, i32 0, i32 0, i32 0)
  store %struct.device* %110, %struct.device** %8, align 8
  %111 = load %struct.device*, %struct.device** %8, align 8
  %112 = call i64 @IS_ERR(%struct.device* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %108
  %115 = load %struct.device*, %struct.device** %8, align 8
  %116 = call i32 @PTR_ERR(%struct.device* %115)
  store i32 %116, i32* %4, align 4
  br label %579

117:                                              ; preds = %108
  br label %118

118:                                              ; preds = %117, %104
  %119 = load i32, i32* @CONFIG_PWM_TWL_LED, align 4
  %120 = call i64 @IS_ENABLED(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %132

122:                                              ; preds = %118
  %123 = load i32, i32* @TWL_MODULE_LED, align 4
  %124 = call %struct.device* @add_child(i32 %123, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32* null, i32 0, i32 0, i32 0, i32 0)
  store %struct.device* %124, %struct.device** %8, align 8
  %125 = load %struct.device*, %struct.device** %8, align 8
  %126 = call i64 @IS_ERR(%struct.device* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %122
  %129 = load %struct.device*, %struct.device** %8, align 8
  %130 = call i32 @PTR_ERR(%struct.device* %129)
  store i32 %130, i32* %4, align 4
  br label %579

131:                                              ; preds = %122
  br label %132

132:                                              ; preds = %131, %118
  %133 = load i32, i32* @CONFIG_TWL4030_USB, align 4
  %134 = call i64 @IS_ENABLED(i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %221

136:                                              ; preds = %132
  %137 = load %struct.twl4030_platform_data*, %struct.twl4030_platform_data** %5, align 8
  %138 = getelementptr inbounds %struct.twl4030_platform_data, %struct.twl4030_platform_data* %137, i32 0, i32 19
  %139 = load i32*, i32** %138, align 8
  %140 = icmp ne i32* %139, null
  br i1 %140, label %141, label %221

141:                                              ; preds = %136
  %142 = call i64 (...) @twl_class_is_4030()
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %221

144:                                              ; preds = %141
  %145 = load i32, i32* @CONFIG_REGULATOR_TWL4030, align 4
  %146 = call i64 @IS_ENABLED(i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %188

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct.regulator_init_data, %struct.regulator_init_data* %9, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 0
  %151 = load i32, i32* @REGULATOR_MODE_NORMAL, align 4
  %152 = load i32, i32* @REGULATOR_MODE_STANDBY, align 4
  %153 = or i32 %151, %152
  store i32 %153, i32* %150, align 4
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 1
  %155 = load i32, i32* @REGULATOR_CHANGE_MODE, align 4
  %156 = load i32, i32* @REGULATOR_CHANGE_STATUS, align 4
  %157 = or i32 %155, %156
  store i32 %157, i32* %154, align 4
  %158 = load i32, i32* @TWL4030_REG_VUSB1V5, align 4
  %159 = load i64, i64* %7, align 8
  %160 = call %struct.device* @add_regulator_linked(i32 %158, %struct.regulator_init_data* %9, %struct.regulator_consumer_supply* @add_children.usb1v5, i32 1, i64 %159)
  store %struct.device* %160, %struct.device** %8, align 8
  %161 = load %struct.device*, %struct.device** %8, align 8
  %162 = call i64 @IS_ERR(%struct.device* %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %148
  %165 = load %struct.device*, %struct.device** %8, align 8
  %166 = call i32 @PTR_ERR(%struct.device* %165)
  store i32 %166, i32* %4, align 4
  br label %579

167:                                              ; preds = %148
  %168 = load i32, i32* @TWL4030_REG_VUSB1V8, align 4
  %169 = load i64, i64* %7, align 8
  %170 = call %struct.device* @add_regulator_linked(i32 %168, %struct.regulator_init_data* %9, %struct.regulator_consumer_supply* @add_children.usb1v8, i32 1, i64 %169)
  store %struct.device* %170, %struct.device** %8, align 8
  %171 = load %struct.device*, %struct.device** %8, align 8
  %172 = call i64 @IS_ERR(%struct.device* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %167
  %175 = load %struct.device*, %struct.device** %8, align 8
  %176 = call i32 @PTR_ERR(%struct.device* %175)
  store i32 %176, i32* %4, align 4
  br label %579

177:                                              ; preds = %167
  %178 = load i32, i32* @TWL4030_REG_VUSB3V1, align 4
  %179 = load i64, i64* %7, align 8
  %180 = call %struct.device* @add_regulator_linked(i32 %178, %struct.regulator_init_data* %9, %struct.regulator_consumer_supply* @add_children.usb3v1, i32 1, i64 %179)
  store %struct.device* %180, %struct.device** %8, align 8
  %181 = load %struct.device*, %struct.device** %8, align 8
  %182 = call i64 @IS_ERR(%struct.device* %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %177
  %185 = load %struct.device*, %struct.device** %8, align 8
  %186 = call i32 @PTR_ERR(%struct.device* %185)
  store i32 %186, i32* %4, align 4
  br label %579

187:                                              ; preds = %177
  br label %188

188:                                              ; preds = %187, %144
  %189 = load i32, i32* @TWL_MODULE_USB, align 4
  %190 = load %struct.twl4030_platform_data*, %struct.twl4030_platform_data** %5, align 8
  %191 = getelementptr inbounds %struct.twl4030_platform_data, %struct.twl4030_platform_data* %190, i32 0, i32 19
  %192 = load i32*, i32** %191, align 8
  %193 = load i32, i32* %6, align 4
  %194 = load i32, i32* @USB_PRES_INTR_OFFSET, align 4
  %195 = add i32 %193, %194
  %196 = load i32, i32* %6, align 4
  %197 = load i32, i32* @USB_INTR_OFFSET, align 4
  %198 = add i32 %196, %197
  %199 = call %struct.device* @add_child(i32 %189, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i32* %192, i32 4, i32 1, i32 %195, i32 %198)
  store %struct.device* %199, %struct.device** %8, align 8
  %200 = load %struct.device*, %struct.device** %8, align 8
  %201 = call i64 @IS_ERR(%struct.device* %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %188
  %204 = load %struct.device*, %struct.device** %8, align 8
  %205 = call i32 @PTR_ERR(%struct.device* %204)
  store i32 %205, i32* %4, align 4
  br label %579

206:                                              ; preds = %188
  %207 = load i32, i32* @CONFIG_REGULATOR_TWL4030, align 4
  %208 = call i64 @IS_ENABLED(i32 %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %220

210:                                              ; preds = %206
  %211 = load %struct.device*, %struct.device** %8, align 8
  %212 = icmp ne %struct.device* %211, null
  br i1 %212, label %213, label %220

213:                                              ; preds = %210
  %214 = load %struct.device*, %struct.device** %8, align 8
  %215 = call i8* @dev_name(%struct.device* %214)
  store i8* %215, i8** getelementptr inbounds (%struct.regulator_consumer_supply, %struct.regulator_consumer_supply* @add_children.usb1v5, i32 0, i32 1), align 8
  %216 = load %struct.device*, %struct.device** %8, align 8
  %217 = call i8* @dev_name(%struct.device* %216)
  store i8* %217, i8** getelementptr inbounds (%struct.regulator_consumer_supply, %struct.regulator_consumer_supply* @add_children.usb1v8, i32 0, i32 1), align 8
  %218 = load %struct.device*, %struct.device** %8, align 8
  %219 = call i8* @dev_name(%struct.device* %218)
  store i8* %219, i8** getelementptr inbounds (%struct.regulator_consumer_supply, %struct.regulator_consumer_supply* @add_children.usb3v1, i32 0, i32 1), align 8
  br label %220

220:                                              ; preds = %213, %210, %206
  br label %221

221:                                              ; preds = %220, %141, %136, %132
  %222 = load i32, i32* @CONFIG_TWL4030_WATCHDOG, align 4
  %223 = call i64 @IS_ENABLED(i32 %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %238

225:                                              ; preds = %221
  %226 = call i64 (...) @twl_class_is_4030()
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %238

228:                                              ; preds = %225
  %229 = load i32, i32* @TWL_MODULE_PM_RECEIVER, align 4
  %230 = call %struct.device* @add_child(i32 %229, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32* null, i32 0, i32 0, i32 0, i32 0)
  store %struct.device* %230, %struct.device** %8, align 8
  %231 = load %struct.device*, %struct.device** %8, align 8
  %232 = call i64 @IS_ERR(%struct.device* %231)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %237

234:                                              ; preds = %228
  %235 = load %struct.device*, %struct.device** %8, align 8
  %236 = call i32 @PTR_ERR(%struct.device* %235)
  store i32 %236, i32* %4, align 4
  br label %579

237:                                              ; preds = %228
  br label %238

238:                                              ; preds = %237, %225, %221
  %239 = load i32, i32* @CONFIG_INPUT_TWL4030_PWRBUTTON, align 4
  %240 = call i64 @IS_ENABLED(i32 %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %258

242:                                              ; preds = %238
  %243 = call i64 (...) @twl_class_is_4030()
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %258

245:                                              ; preds = %242
  %246 = load i32, i32* @TWL_MODULE_PM_MASTER, align 4
  %247 = load i32, i32* %6, align 4
  %248 = add i32 %247, 8
  %249 = add i32 %248, 0
  %250 = call %struct.device* @add_child(i32 %246, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i32* null, i32 0, i32 1, i32 %249, i32 0)
  store %struct.device* %250, %struct.device** %8, align 8
  %251 = load %struct.device*, %struct.device** %8, align 8
  %252 = call i64 @IS_ERR(%struct.device* %251)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %257

254:                                              ; preds = %245
  %255 = load %struct.device*, %struct.device** %8, align 8
  %256 = call i32 @PTR_ERR(%struct.device* %255)
  store i32 %256, i32* %4, align 4
  br label %579

257:                                              ; preds = %245
  br label %258

258:                                              ; preds = %257, %242, %238
  %259 = load i32, i32* @CONFIG_MFD_TWL4030_AUDIO, align 4
  %260 = call i64 @IS_ENABLED(i32 %259)
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %283

262:                                              ; preds = %258
  %263 = load %struct.twl4030_platform_data*, %struct.twl4030_platform_data** %5, align 8
  %264 = getelementptr inbounds %struct.twl4030_platform_data, %struct.twl4030_platform_data* %263, i32 0, i32 18
  %265 = load i32*, i32** %264, align 8
  %266 = icmp ne i32* %265, null
  br i1 %266, label %267, label %283

267:                                              ; preds = %262
  %268 = call i64 (...) @twl_class_is_4030()
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %283

270:                                              ; preds = %267
  %271 = load i32, i32* @TWL4030_MODULE_AUDIO_VOICE, align 4
  %272 = load %struct.twl4030_platform_data*, %struct.twl4030_platform_data** %5, align 8
  %273 = getelementptr inbounds %struct.twl4030_platform_data, %struct.twl4030_platform_data* %272, i32 0, i32 18
  %274 = load i32*, i32** %273, align 8
  %275 = call %struct.device* @add_child(i32 %271, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i32* %274, i32 4, i32 0, i32 0, i32 0)
  store %struct.device* %275, %struct.device** %8, align 8
  %276 = load %struct.device*, %struct.device** %8, align 8
  %277 = call i64 @IS_ERR(%struct.device* %276)
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %282

279:                                              ; preds = %270
  %280 = load %struct.device*, %struct.device** %8, align 8
  %281 = call i32 @PTR_ERR(%struct.device* %280)
  store i32 %281, i32* %4, align 4
  br label %579

282:                                              ; preds = %270
  br label %283

283:                                              ; preds = %282, %267, %262, %258
  %284 = load i32, i32* @CONFIG_REGULATOR_TWL4030, align 4
  %285 = call i64 @IS_ENABLED(i32 %284)
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %430

287:                                              ; preds = %283
  %288 = call i64 (...) @twl_class_is_4030()
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %430

290:                                              ; preds = %287
  %291 = load i32, i32* @TWL4030_REG_VPLL1, align 4
  %292 = load %struct.twl4030_platform_data*, %struct.twl4030_platform_data** %5, align 8
  %293 = getelementptr inbounds %struct.twl4030_platform_data, %struct.twl4030_platform_data* %292, i32 0, i32 17
  %294 = load i32, i32* %293, align 4
  %295 = load i64, i64* %7, align 8
  %296 = call %struct.device* @add_regulator(i32 %291, i32 %294, i64 %295)
  store %struct.device* %296, %struct.device** %8, align 8
  %297 = load %struct.device*, %struct.device** %8, align 8
  %298 = call i64 @IS_ERR(%struct.device* %297)
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %303

300:                                              ; preds = %290
  %301 = load %struct.device*, %struct.device** %8, align 8
  %302 = call i32 @PTR_ERR(%struct.device* %301)
  store i32 %302, i32* %4, align 4
  br label %579

303:                                              ; preds = %290
  %304 = load i32, i32* @TWL4030_REG_VIO, align 4
  %305 = load %struct.twl4030_platform_data*, %struct.twl4030_platform_data** %5, align 8
  %306 = getelementptr inbounds %struct.twl4030_platform_data, %struct.twl4030_platform_data* %305, i32 0, i32 16
  %307 = load i32, i32* %306, align 8
  %308 = load i64, i64* %7, align 8
  %309 = call %struct.device* @add_regulator(i32 %304, i32 %307, i64 %308)
  store %struct.device* %309, %struct.device** %8, align 8
  %310 = load %struct.device*, %struct.device** %8, align 8
  %311 = call i64 @IS_ERR(%struct.device* %310)
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %316

313:                                              ; preds = %303
  %314 = load %struct.device*, %struct.device** %8, align 8
  %315 = call i32 @PTR_ERR(%struct.device* %314)
  store i32 %315, i32* %4, align 4
  br label %579

316:                                              ; preds = %303
  %317 = load i32, i32* @TWL4030_REG_VDD1, align 4
  %318 = load %struct.twl4030_platform_data*, %struct.twl4030_platform_data** %5, align 8
  %319 = getelementptr inbounds %struct.twl4030_platform_data, %struct.twl4030_platform_data* %318, i32 0, i32 15
  %320 = load i32, i32* %319, align 4
  %321 = load i64, i64* %7, align 8
  %322 = call %struct.device* @add_regulator(i32 %317, i32 %320, i64 %321)
  store %struct.device* %322, %struct.device** %8, align 8
  %323 = load %struct.device*, %struct.device** %8, align 8
  %324 = call i64 @IS_ERR(%struct.device* %323)
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %326, label %329

326:                                              ; preds = %316
  %327 = load %struct.device*, %struct.device** %8, align 8
  %328 = call i32 @PTR_ERR(%struct.device* %327)
  store i32 %328, i32* %4, align 4
  br label %579

329:                                              ; preds = %316
  %330 = load i32, i32* @TWL4030_REG_VDD2, align 4
  %331 = load %struct.twl4030_platform_data*, %struct.twl4030_platform_data** %5, align 8
  %332 = getelementptr inbounds %struct.twl4030_platform_data, %struct.twl4030_platform_data* %331, i32 0, i32 14
  %333 = load i32, i32* %332, align 8
  %334 = load i64, i64* %7, align 8
  %335 = call %struct.device* @add_regulator(i32 %330, i32 %333, i64 %334)
  store %struct.device* %335, %struct.device** %8, align 8
  %336 = load %struct.device*, %struct.device** %8, align 8
  %337 = call i64 @IS_ERR(%struct.device* %336)
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %339, label %342

339:                                              ; preds = %329
  %340 = load %struct.device*, %struct.device** %8, align 8
  %341 = call i32 @PTR_ERR(%struct.device* %340)
  store i32 %341, i32* %4, align 4
  br label %579

342:                                              ; preds = %329
  %343 = load i32, i32* @TWL4030_REG_VMMC1, align 4
  %344 = load %struct.twl4030_platform_data*, %struct.twl4030_platform_data** %5, align 8
  %345 = getelementptr inbounds %struct.twl4030_platform_data, %struct.twl4030_platform_data* %344, i32 0, i32 13
  %346 = load i32, i32* %345, align 4
  %347 = load i64, i64* %7, align 8
  %348 = call %struct.device* @add_regulator(i32 %343, i32 %346, i64 %347)
  store %struct.device* %348, %struct.device** %8, align 8
  %349 = load %struct.device*, %struct.device** %8, align 8
  %350 = call i64 @IS_ERR(%struct.device* %349)
  %351 = icmp ne i64 %350, 0
  br i1 %351, label %352, label %355

352:                                              ; preds = %342
  %353 = load %struct.device*, %struct.device** %8, align 8
  %354 = call i32 @PTR_ERR(%struct.device* %353)
  store i32 %354, i32* %4, align 4
  br label %579

355:                                              ; preds = %342
  %356 = load i32, i32* @TWL4030_REG_VDAC, align 4
  %357 = load %struct.twl4030_platform_data*, %struct.twl4030_platform_data** %5, align 8
  %358 = getelementptr inbounds %struct.twl4030_platform_data, %struct.twl4030_platform_data* %357, i32 0, i32 12
  %359 = load i32, i32* %358, align 8
  %360 = load i64, i64* %7, align 8
  %361 = call %struct.device* @add_regulator(i32 %356, i32 %359, i64 %360)
  store %struct.device* %361, %struct.device** %8, align 8
  %362 = load %struct.device*, %struct.device** %8, align 8
  %363 = call i64 @IS_ERR(%struct.device* %362)
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %365, label %368

365:                                              ; preds = %355
  %366 = load %struct.device*, %struct.device** %8, align 8
  %367 = call i32 @PTR_ERR(%struct.device* %366)
  store i32 %367, i32* %4, align 4
  br label %579

368:                                              ; preds = %355
  %369 = load i64, i64* %7, align 8
  %370 = load i64, i64* @TWL4030_VAUX2, align 8
  %371 = and i64 %369, %370
  %372 = icmp ne i64 %371, 0
  br i1 %372, label %373, label %375

373:                                              ; preds = %368
  %374 = load i32, i32* @TWL4030_REG_VAUX2_4030, align 4
  br label %377

375:                                              ; preds = %368
  %376 = load i32, i32* @TWL4030_REG_VAUX2, align 4
  br label %377

377:                                              ; preds = %375, %373
  %378 = phi i32 [ %374, %373 ], [ %376, %375 ]
  %379 = load %struct.twl4030_platform_data*, %struct.twl4030_platform_data** %5, align 8
  %380 = getelementptr inbounds %struct.twl4030_platform_data, %struct.twl4030_platform_data* %379, i32 0, i32 11
  %381 = load i32, i32* %380, align 4
  %382 = load i64, i64* %7, align 8
  %383 = call %struct.device* @add_regulator(i32 %378, i32 %381, i64 %382)
  store %struct.device* %383, %struct.device** %8, align 8
  %384 = load %struct.device*, %struct.device** %8, align 8
  %385 = call i64 @IS_ERR(%struct.device* %384)
  %386 = icmp ne i64 %385, 0
  br i1 %386, label %387, label %390

387:                                              ; preds = %377
  %388 = load %struct.device*, %struct.device** %8, align 8
  %389 = call i32 @PTR_ERR(%struct.device* %388)
  store i32 %389, i32* %4, align 4
  br label %579

390:                                              ; preds = %377
  %391 = load i32, i32* @TWL4030_REG_VINTANA1, align 4
  %392 = load %struct.twl4030_platform_data*, %struct.twl4030_platform_data** %5, align 8
  %393 = getelementptr inbounds %struct.twl4030_platform_data, %struct.twl4030_platform_data* %392, i32 0, i32 10
  %394 = load i32, i32* %393, align 8
  %395 = load i64, i64* %7, align 8
  %396 = call %struct.device* @add_regulator(i32 %391, i32 %394, i64 %395)
  store %struct.device* %396, %struct.device** %8, align 8
  %397 = load %struct.device*, %struct.device** %8, align 8
  %398 = call i64 @IS_ERR(%struct.device* %397)
  %399 = icmp ne i64 %398, 0
  br i1 %399, label %400, label %403

400:                                              ; preds = %390
  %401 = load %struct.device*, %struct.device** %8, align 8
  %402 = call i32 @PTR_ERR(%struct.device* %401)
  store i32 %402, i32* %4, align 4
  br label %579

403:                                              ; preds = %390
  %404 = load i32, i32* @TWL4030_REG_VINTANA2, align 4
  %405 = load %struct.twl4030_platform_data*, %struct.twl4030_platform_data** %5, align 8
  %406 = getelementptr inbounds %struct.twl4030_platform_data, %struct.twl4030_platform_data* %405, i32 0, i32 9
  %407 = load i32, i32* %406, align 4
  %408 = load i64, i64* %7, align 8
  %409 = call %struct.device* @add_regulator(i32 %404, i32 %407, i64 %408)
  store %struct.device* %409, %struct.device** %8, align 8
  %410 = load %struct.device*, %struct.device** %8, align 8
  %411 = call i64 @IS_ERR(%struct.device* %410)
  %412 = icmp ne i64 %411, 0
  br i1 %412, label %413, label %416

413:                                              ; preds = %403
  %414 = load %struct.device*, %struct.device** %8, align 8
  %415 = call i32 @PTR_ERR(%struct.device* %414)
  store i32 %415, i32* %4, align 4
  br label %579

416:                                              ; preds = %403
  %417 = load i32, i32* @TWL4030_REG_VINTDIG, align 4
  %418 = load %struct.twl4030_platform_data*, %struct.twl4030_platform_data** %5, align 8
  %419 = getelementptr inbounds %struct.twl4030_platform_data, %struct.twl4030_platform_data* %418, i32 0, i32 8
  %420 = load i32, i32* %419, align 8
  %421 = load i64, i64* %7, align 8
  %422 = call %struct.device* @add_regulator(i32 %417, i32 %420, i64 %421)
  store %struct.device* %422, %struct.device** %8, align 8
  %423 = load %struct.device*, %struct.device** %8, align 8
  %424 = call i64 @IS_ERR(%struct.device* %423)
  %425 = icmp ne i64 %424, 0
  br i1 %425, label %426, label %429

426:                                              ; preds = %416
  %427 = load %struct.device*, %struct.device** %8, align 8
  %428 = call i32 @PTR_ERR(%struct.device* %427)
  store i32 %428, i32* %4, align 4
  br label %579

429:                                              ; preds = %416
  br label %430

430:                                              ; preds = %429, %287, %283
  %431 = load i32, i32* @CONFIG_REGULATOR_TWL4030, align 4
  %432 = call i64 @IS_ENABLED(i32 %431)
  %433 = icmp ne i64 %432, 0
  br i1 %433, label %434, label %521

434:                                              ; preds = %430
  %435 = load i64, i64* %7, align 8
  %436 = load i64, i64* @TPS_SUBSET, align 8
  %437 = and i64 %435, %436
  %438 = icmp ne i64 %437, 0
  br i1 %438, label %521, label %439

439:                                              ; preds = %434
  %440 = call i64 (...) @twl_class_is_4030()
  %441 = icmp ne i64 %440, 0
  br i1 %441, label %442, label %521

442:                                              ; preds = %439
  %443 = load i32, i32* @TWL4030_REG_VPLL2, align 4
  %444 = load %struct.twl4030_platform_data*, %struct.twl4030_platform_data** %5, align 8
  %445 = getelementptr inbounds %struct.twl4030_platform_data, %struct.twl4030_platform_data* %444, i32 0, i32 7
  %446 = load i32, i32* %445, align 4
  %447 = load i64, i64* %7, align 8
  %448 = call %struct.device* @add_regulator(i32 %443, i32 %446, i64 %447)
  store %struct.device* %448, %struct.device** %8, align 8
  %449 = load %struct.device*, %struct.device** %8, align 8
  %450 = call i64 @IS_ERR(%struct.device* %449)
  %451 = icmp ne i64 %450, 0
  br i1 %451, label %452, label %455

452:                                              ; preds = %442
  %453 = load %struct.device*, %struct.device** %8, align 8
  %454 = call i32 @PTR_ERR(%struct.device* %453)
  store i32 %454, i32* %4, align 4
  br label %579

455:                                              ; preds = %442
  %456 = load i32, i32* @TWL4030_REG_VMMC2, align 4
  %457 = load %struct.twl4030_platform_data*, %struct.twl4030_platform_data** %5, align 8
  %458 = getelementptr inbounds %struct.twl4030_platform_data, %struct.twl4030_platform_data* %457, i32 0, i32 6
  %459 = load i32, i32* %458, align 8
  %460 = load i64, i64* %7, align 8
  %461 = call %struct.device* @add_regulator(i32 %456, i32 %459, i64 %460)
  store %struct.device* %461, %struct.device** %8, align 8
  %462 = load %struct.device*, %struct.device** %8, align 8
  %463 = call i64 @IS_ERR(%struct.device* %462)
  %464 = icmp ne i64 %463, 0
  br i1 %464, label %465, label %468

465:                                              ; preds = %455
  %466 = load %struct.device*, %struct.device** %8, align 8
  %467 = call i32 @PTR_ERR(%struct.device* %466)
  store i32 %467, i32* %4, align 4
  br label %579

468:                                              ; preds = %455
  %469 = load i32, i32* @TWL4030_REG_VSIM, align 4
  %470 = load %struct.twl4030_platform_data*, %struct.twl4030_platform_data** %5, align 8
  %471 = getelementptr inbounds %struct.twl4030_platform_data, %struct.twl4030_platform_data* %470, i32 0, i32 5
  %472 = load i32, i32* %471, align 4
  %473 = load i64, i64* %7, align 8
  %474 = call %struct.device* @add_regulator(i32 %469, i32 %472, i64 %473)
  store %struct.device* %474, %struct.device** %8, align 8
  %475 = load %struct.device*, %struct.device** %8, align 8
  %476 = call i64 @IS_ERR(%struct.device* %475)
  %477 = icmp ne i64 %476, 0
  br i1 %477, label %478, label %481

478:                                              ; preds = %468
  %479 = load %struct.device*, %struct.device** %8, align 8
  %480 = call i32 @PTR_ERR(%struct.device* %479)
  store i32 %480, i32* %4, align 4
  br label %579

481:                                              ; preds = %468
  %482 = load i32, i32* @TWL4030_REG_VAUX1, align 4
  %483 = load %struct.twl4030_platform_data*, %struct.twl4030_platform_data** %5, align 8
  %484 = getelementptr inbounds %struct.twl4030_platform_data, %struct.twl4030_platform_data* %483, i32 0, i32 4
  %485 = load i32, i32* %484, align 8
  %486 = load i64, i64* %7, align 8
  %487 = call %struct.device* @add_regulator(i32 %482, i32 %485, i64 %486)
  store %struct.device* %487, %struct.device** %8, align 8
  %488 = load %struct.device*, %struct.device** %8, align 8
  %489 = call i64 @IS_ERR(%struct.device* %488)
  %490 = icmp ne i64 %489, 0
  br i1 %490, label %491, label %494

491:                                              ; preds = %481
  %492 = load %struct.device*, %struct.device** %8, align 8
  %493 = call i32 @PTR_ERR(%struct.device* %492)
  store i32 %493, i32* %4, align 4
  br label %579

494:                                              ; preds = %481
  %495 = load i32, i32* @TWL4030_REG_VAUX3, align 4
  %496 = load %struct.twl4030_platform_data*, %struct.twl4030_platform_data** %5, align 8
  %497 = getelementptr inbounds %struct.twl4030_platform_data, %struct.twl4030_platform_data* %496, i32 0, i32 3
  %498 = load i32, i32* %497, align 4
  %499 = load i64, i64* %7, align 8
  %500 = call %struct.device* @add_regulator(i32 %495, i32 %498, i64 %499)
  store %struct.device* %500, %struct.device** %8, align 8
  %501 = load %struct.device*, %struct.device** %8, align 8
  %502 = call i64 @IS_ERR(%struct.device* %501)
  %503 = icmp ne i64 %502, 0
  br i1 %503, label %504, label %507

504:                                              ; preds = %494
  %505 = load %struct.device*, %struct.device** %8, align 8
  %506 = call i32 @PTR_ERR(%struct.device* %505)
  store i32 %506, i32* %4, align 4
  br label %579

507:                                              ; preds = %494
  %508 = load i32, i32* @TWL4030_REG_VAUX4, align 4
  %509 = load %struct.twl4030_platform_data*, %struct.twl4030_platform_data** %5, align 8
  %510 = getelementptr inbounds %struct.twl4030_platform_data, %struct.twl4030_platform_data* %509, i32 0, i32 2
  %511 = load i32, i32* %510, align 8
  %512 = load i64, i64* %7, align 8
  %513 = call %struct.device* @add_regulator(i32 %508, i32 %511, i64 %512)
  store %struct.device* %513, %struct.device** %8, align 8
  %514 = load %struct.device*, %struct.device** %8, align 8
  %515 = call i64 @IS_ERR(%struct.device* %514)
  %516 = icmp ne i64 %515, 0
  br i1 %516, label %517, label %520

517:                                              ; preds = %507
  %518 = load %struct.device*, %struct.device** %8, align 8
  %519 = call i32 @PTR_ERR(%struct.device* %518)
  store i32 %519, i32* %4, align 4
  br label %579

520:                                              ; preds = %507
  br label %521

521:                                              ; preds = %520, %439, %434, %430
  %522 = load i32, i32* @CONFIG_CHARGER_TWL4030, align 4
  %523 = call i64 @IS_ENABLED(i32 %522)
  %524 = icmp ne i64 %523, 0
  br i1 %524, label %525, label %556

525:                                              ; preds = %521
  %526 = load %struct.twl4030_platform_data*, %struct.twl4030_platform_data** %5, align 8
  %527 = getelementptr inbounds %struct.twl4030_platform_data, %struct.twl4030_platform_data* %526, i32 0, i32 1
  %528 = load i32*, i32** %527, align 8
  %529 = icmp ne i32* %528, null
  br i1 %529, label %530, label %556

530:                                              ; preds = %525
  %531 = load i64, i64* %7, align 8
  %532 = load i64, i64* @TPS_SUBSET, align 8
  %533 = load i64, i64* @TWL5031, align 8
  %534 = or i64 %532, %533
  %535 = and i64 %531, %534
  %536 = icmp ne i64 %535, 0
  br i1 %536, label %556, label %537

537:                                              ; preds = %530
  %538 = load i32, i32* @TWL_MODULE_MAIN_CHARGE, align 4
  %539 = load %struct.twl4030_platform_data*, %struct.twl4030_platform_data** %5, align 8
  %540 = getelementptr inbounds %struct.twl4030_platform_data, %struct.twl4030_platform_data* %539, i32 0, i32 1
  %541 = load i32*, i32** %540, align 8
  %542 = load i32, i32* %6, align 4
  %543 = load i32, i32* @BCI_PRES_INTR_OFFSET, align 4
  %544 = add i32 %542, %543
  %545 = load i32, i32* %6, align 4
  %546 = load i32, i32* @BCI_INTR_OFFSET, align 4
  %547 = add i32 %545, %546
  %548 = call %struct.device* @add_child(i32 %538, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i32* %541, i32 4, i32 0, i32 %544, i32 %547)
  store %struct.device* %548, %struct.device** %8, align 8
  %549 = load %struct.device*, %struct.device** %8, align 8
  %550 = call i64 @IS_ERR(%struct.device* %549)
  %551 = icmp ne i64 %550, 0
  br i1 %551, label %552, label %555

552:                                              ; preds = %537
  %553 = load %struct.device*, %struct.device** %8, align 8
  %554 = call i32 @PTR_ERR(%struct.device* %553)
  store i32 %554, i32* %4, align 4
  br label %579

555:                                              ; preds = %537
  br label %556

556:                                              ; preds = %555, %530, %525, %521
  %557 = load i32, i32* @CONFIG_TWL4030_POWER, align 4
  %558 = call i64 @IS_ENABLED(i32 %557)
  %559 = icmp ne i64 %558, 0
  br i1 %559, label %560, label %578

560:                                              ; preds = %556
  %561 = load %struct.twl4030_platform_data*, %struct.twl4030_platform_data** %5, align 8
  %562 = getelementptr inbounds %struct.twl4030_platform_data, %struct.twl4030_platform_data* %561, i32 0, i32 0
  %563 = load i32*, i32** %562, align 8
  %564 = icmp ne i32* %563, null
  br i1 %564, label %565, label %578

565:                                              ; preds = %560
  %566 = load i32, i32* @TWL_MODULE_PM_MASTER, align 4
  %567 = load %struct.twl4030_platform_data*, %struct.twl4030_platform_data** %5, align 8
  %568 = getelementptr inbounds %struct.twl4030_platform_data, %struct.twl4030_platform_data* %567, i32 0, i32 0
  %569 = load i32*, i32** %568, align 8
  %570 = call %struct.device* @add_child(i32 %566, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i32* %569, i32 4, i32 0, i32 0, i32 0)
  store %struct.device* %570, %struct.device** %8, align 8
  %571 = load %struct.device*, %struct.device** %8, align 8
  %572 = call i64 @IS_ERR(%struct.device* %571)
  %573 = icmp ne i64 %572, 0
  br i1 %573, label %574, label %577

574:                                              ; preds = %565
  %575 = load %struct.device*, %struct.device** %8, align 8
  %576 = call i32 @PTR_ERR(%struct.device* %575)
  store i32 %576, i32* %4, align 4
  br label %579

577:                                              ; preds = %565
  br label %578

578:                                              ; preds = %577, %560, %556
  store i32 0, i32* %4, align 4
  br label %579

579:                                              ; preds = %578, %574, %552, %517, %504, %491, %478, %465, %452, %426, %413, %400, %387, %365, %352, %339, %326, %313, %300, %279, %254, %234, %203, %184, %174, %164, %128, %114, %100, %83, %55, %30
  %580 = load i32, i32* %4, align 4
  ret i32 %580
}

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local %struct.device* @add_child(i32, i8*, i32*, i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.device*) #1

declare dso_local i32 @PTR_ERR(%struct.device*) #1

declare dso_local i64 @twl_class_is_4030(...) #1

declare dso_local %struct.device* @add_regulator_linked(i32, %struct.regulator_init_data*, %struct.regulator_consumer_supply*, i32, i64) #1

declare dso_local i8* @dev_name(%struct.device*) #1

declare dso_local %struct.device* @add_regulator(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
