; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_wm8350-core.c_wm8350_device_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_wm8350-core.c_wm8350_device_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm8350 = type { %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, i32, i64, i32, i32, %struct.TYPE_8__, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i8*, i8* }
%struct.wm8350_platform_data = type { i32 (%struct.wm8350.0*)* }
%struct.wm8350.0 = type opaque

@WM8350_RESET_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Failed to read ID: %d\0A\00", align 1
@WM8350_ID = common dso_local global i32 0, align 4
@WM8350_REVISION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to read revision: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Device with ID %x is not a WM8350\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@WM8350_CONF_STS_MASK = common dso_local global i32 0, align 4
@WM8350_CUST_ID_MASK = common dso_local global i32 0, align 4
@WM8350_CHIP_REV_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [51 x i8] c"CONF_STS %d, CUST_ID %d, MASK_REV %d, CHIP_REV %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Unsupported CUST_ID\0A\00", align 1
@WM8350_DCDC_6 = common dso_local global i8* null, align 8
@WM8350_ISINK_B = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [14 x i8] c"WM8350 Rev E\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"WM8350 Rev F\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"WM8350 Rev G\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"WM8350 Rev H\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"Unknown WM8350 CHIP_REV\0A\00", align 1
@WM8350_DCDC_4 = common dso_local global i8* null, align 8
@WM8350_ISINK_A = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [14 x i8] c"WM8351 Rev A\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"WM8351 Rev B\0A\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"Unknown WM8351 CHIP_REV\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"WM8352 Rev A\0A\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"Unknown WM8352 CHIP_REV\0A\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"Unknown MASK_REV\0A\00", align 1
@WM8350_IRQ_AUXADC_DATARDY = common dso_local global i64 0, align 8
@wm8350_auxadc_irq = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [7 x i8] c"auxadc\00", align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"Failed to request AUXADC IRQ: %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"Platform init() failed: %d\0A\00", align 1
@WM8350_SYSTEM_INTERRUPTS_MASK = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [13 x i8] c"wm8350-codec\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"wm8350-gpio\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"wm8350-hwmon\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"wm8350-power\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"wm8350-rtc\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"wm8350-wdt\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wm8350_device_init(%struct.wm8350* %0, i32 %1, %struct.wm8350_platform_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wm8350*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wm8350_platform_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.wm8350* %0, %struct.wm8350** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.wm8350_platform_data* %2, %struct.wm8350_platform_data** %7, align 8
  %15 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %16 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %19 = call i32 @dev_set_drvdata(i32 %17, %struct.wm8350* %18)
  %20 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %21 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %20, i32 0, i32 11
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @WM8350_RESET_ID, align 4
  %24 = call i32 @regmap_read(i32 %22, i32 %23, i32* %9)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %3
  %28 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %29 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 (i32, i8*, ...) @dev_err(i32 %30, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %313

33:                                               ; preds = %3
  %34 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %35 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %34, i32 0, i32 11
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @WM8350_ID, align 4
  %38 = call i32 @regmap_read(i32 %36, i32 %37, i32* %10)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %33
  %42 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %43 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 (i32, i8*, ...) @dev_err(i32 %44, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %45)
  br label %313

47:                                               ; preds = %33
  %48 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %49 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %48, i32 0, i32 11
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @WM8350_REVISION, align 4
  %52 = call i32 @regmap_read(i32 %50, i32 %51, i32* %11)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %47
  %56 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %57 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call i32 (i32, i8*, ...) @dev_err(i32 %58, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  br label %313

61:                                               ; preds = %47
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 24899
  br i1 %63, label %64, label %72

64:                                               ; preds = %61
  %65 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %66 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %9, align 4
  %69 = call i32 (i32, i8*, ...) @dev_err(i32 %67, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* @ENODEV, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %8, align 4
  br label %313

72:                                               ; preds = %61
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @WM8350_CONF_STS_MASK, align 4
  %75 = and i32 %73, %74
  %76 = lshr i32 %75, 10
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* @WM8350_CUST_ID_MASK, align 4
  %79 = and i32 %77, %78
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* @WM8350_CHIP_REV_MASK, align 4
  %82 = and i32 %80, %81
  %83 = lshr i32 %82, 12
  store i32 %83, i32* %14, align 4
  %84 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %85 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %84, i32 0, i32 6
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* %14, align 4
  %91 = call i32 (i32, i8*, ...) @dev_info(i32 %86, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %87, i32 %88, i32 %89, i32 %90)
  %92 = load i32, i32* %12, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %72
  %95 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %96 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %95, i32 0, i32 6
  %97 = load i32, i32* %96, align 4
  %98 = call i32 (i32, i8*, ...) @dev_err(i32 %97, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %99 = load i32, i32* @ENODEV, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %8, align 4
  br label %313

101:                                              ; preds = %72
  %102 = load i32, i32* %11, align 4
  switch i32 %102, label %207 [
    i32 0, label %103
    i32 1, label %147
    i32 2, label %181
  ]

103:                                              ; preds = %101
  %104 = load i8*, i8** @WM8350_DCDC_6, align 8
  %105 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %106 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %105, i32 0, i32 10
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 1
  store i8* %104, i8** %107, align 8
  %108 = load i8*, i8** @WM8350_ISINK_B, align 8
  %109 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %110 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %109, i32 0, i32 10
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  store i8* %108, i8** %111, align 8
  %112 = load i32, i32* %14, align 4
  switch i32 %112, label %139 [
    i32 131, label %113
    i32 130, label %118
    i32 129, label %123
    i32 128, label %131
  ]

113:                                              ; preds = %103
  %114 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %115 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %114, i32 0, i32 6
  %116 = load i32, i32* %115, align 4
  %117 = call i32 (i32, i8*, ...) @dev_info(i32 %116, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  br label %146

118:                                              ; preds = %103
  %119 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %120 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %119, i32 0, i32 6
  %121 = load i32, i32* %120, align 4
  %122 = call i32 (i32, i8*, ...) @dev_info(i32 %121, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  br label %146

123:                                              ; preds = %103
  %124 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %125 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %124, i32 0, i32 6
  %126 = load i32, i32* %125, align 4
  %127 = call i32 (i32, i8*, ...) @dev_info(i32 %126, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  %128 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %129 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 0
  store i32 1, i32* %130, align 8
  br label %146

131:                                              ; preds = %103
  %132 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %133 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %132, i32 0, i32 6
  %134 = load i32, i32* %133, align 4
  %135 = call i32 (i32, i8*, ...) @dev_info(i32 %134, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %136 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %137 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 0
  store i32 1, i32* %138, align 8
  br label %146

139:                                              ; preds = %103
  %140 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %141 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %140, i32 0, i32 6
  %142 = load i32, i32* %141, align 4
  %143 = call i32 (i32, i8*, ...) @dev_err(i32 %142, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  %144 = load i32, i32* @ENODEV, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %8, align 4
  br label %313

146:                                              ; preds = %131, %123, %118, %113
  br label %214

147:                                              ; preds = %101
  %148 = load i8*, i8** @WM8350_DCDC_4, align 8
  %149 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %150 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %149, i32 0, i32 10
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 1
  store i8* %148, i8** %151, align 8
  %152 = load i8*, i8** @WM8350_ISINK_A, align 8
  %153 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %154 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %153, i32 0, i32 10
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  store i8* %152, i8** %155, align 8
  %156 = load i32, i32* %14, align 4
  switch i32 %156, label %173 [
    i32 0, label %157
    i32 1, label %165
  ]

157:                                              ; preds = %147
  %158 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %159 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %158, i32 0, i32 6
  %160 = load i32, i32* %159, align 4
  %161 = call i32 (i32, i8*, ...) @dev_info(i32 %160, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  %162 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %163 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 0
  store i32 1, i32* %164, align 8
  br label %180

165:                                              ; preds = %147
  %166 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %167 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %166, i32 0, i32 6
  %168 = load i32, i32* %167, align 4
  %169 = call i32 (i32, i8*, ...) @dev_info(i32 %168, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  %170 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %171 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 0
  store i32 1, i32* %172, align 8
  br label %180

173:                                              ; preds = %147
  %174 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %175 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %174, i32 0, i32 6
  %176 = load i32, i32* %175, align 4
  %177 = call i32 (i32, i8*, ...) @dev_err(i32 %176, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0))
  %178 = load i32, i32* @ENODEV, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %8, align 4
  br label %313

180:                                              ; preds = %165, %157
  br label %214

181:                                              ; preds = %101
  %182 = load i8*, i8** @WM8350_DCDC_6, align 8
  %183 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %184 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %183, i32 0, i32 10
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 1
  store i8* %182, i8** %185, align 8
  %186 = load i8*, i8** @WM8350_ISINK_B, align 8
  %187 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %188 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %187, i32 0, i32 10
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 0
  store i8* %186, i8** %189, align 8
  %190 = load i32, i32* %14, align 4
  switch i32 %190, label %199 [
    i32 0, label %191
  ]

191:                                              ; preds = %181
  %192 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %193 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %192, i32 0, i32 6
  %194 = load i32, i32* %193, align 4
  %195 = call i32 (i32, i8*, ...) @dev_info(i32 %194, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  %196 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %197 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %196, i32 0, i32 2
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 0
  store i32 1, i32* %198, align 8
  br label %206

199:                                              ; preds = %181
  %200 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %201 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %200, i32 0, i32 6
  %202 = load i32, i32* %201, align 4
  %203 = call i32 (i32, i8*, ...) @dev_err(i32 %202, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0))
  %204 = load i32, i32* @ENODEV, align 4
  %205 = sub nsw i32 0, %204
  store i32 %205, i32* %8, align 4
  br label %313

206:                                              ; preds = %191
  br label %214

207:                                              ; preds = %101
  %208 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %209 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %208, i32 0, i32 6
  %210 = load i32, i32* %209, align 4
  %211 = call i32 (i32, i8*, ...) @dev_err(i32 %210, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0))
  %212 = load i32, i32* @ENODEV, align 4
  %213 = sub nsw i32 0, %212
  store i32 %213, i32* %8, align 4
  br label %313

214:                                              ; preds = %206, %180, %146
  %215 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %216 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %215, i32 0, i32 9
  %217 = call i32 @mutex_init(i32* %216)
  %218 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %219 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %218, i32 0, i32 8
  %220 = call i32 @init_completion(i32* %219)
  %221 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %222 = load i32, i32* %6, align 4
  %223 = load %struct.wm8350_platform_data*, %struct.wm8350_platform_data** %7, align 8
  %224 = call i32 @wm8350_irq_init(%struct.wm8350* %221, i32 %222, %struct.wm8350_platform_data* %223)
  store i32 %224, i32* %8, align 4
  %225 = load i32, i32* %8, align 4
  %226 = icmp slt i32 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %214
  br label %313

228:                                              ; preds = %214
  %229 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %230 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %229, i32 0, i32 7
  %231 = load i64, i64* %230, align 8
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %252

233:                                              ; preds = %228
  %234 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %235 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %234, i32 0, i32 7
  %236 = load i64, i64* %235, align 8
  %237 = load i64, i64* @WM8350_IRQ_AUXADC_DATARDY, align 8
  %238 = add nsw i64 %236, %237
  %239 = load i32, i32* @wm8350_auxadc_irq, align 4
  %240 = load i32, i32* @IRQF_ONESHOT, align 4
  %241 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %242 = call i32 @request_threaded_irq(i64 %238, i32* null, i32 %239, i32 %240, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), %struct.wm8350* %241)
  store i32 %242, i32* %8, align 4
  %243 = load i32, i32* %8, align 4
  %244 = icmp slt i32 %243, 0
  br i1 %244, label %245, label %251

245:                                              ; preds = %233
  %246 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %247 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %246, i32 0, i32 6
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* %8, align 4
  %250 = call i32 @dev_warn(i32 %248, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.17, i64 0, i64 0), i32 %249)
  br label %251

251:                                              ; preds = %245, %233
  br label %252

252:                                              ; preds = %251, %228
  %253 = load %struct.wm8350_platform_data*, %struct.wm8350_platform_data** %7, align 8
  %254 = icmp ne %struct.wm8350_platform_data* %253, null
  br i1 %254, label %255, label %276

255:                                              ; preds = %252
  %256 = load %struct.wm8350_platform_data*, %struct.wm8350_platform_data** %7, align 8
  %257 = getelementptr inbounds %struct.wm8350_platform_data, %struct.wm8350_platform_data* %256, i32 0, i32 0
  %258 = load i32 (%struct.wm8350.0*)*, i32 (%struct.wm8350.0*)** %257, align 8
  %259 = icmp ne i32 (%struct.wm8350.0*)* %258, null
  br i1 %259, label %260, label %276

260:                                              ; preds = %255
  %261 = load %struct.wm8350_platform_data*, %struct.wm8350_platform_data** %7, align 8
  %262 = getelementptr inbounds %struct.wm8350_platform_data, %struct.wm8350_platform_data* %261, i32 0, i32 0
  %263 = load i32 (%struct.wm8350.0*)*, i32 (%struct.wm8350.0*)** %262, align 8
  %264 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %265 = bitcast %struct.wm8350* %264 to %struct.wm8350.0*
  %266 = call i32 %263(%struct.wm8350.0* %265)
  store i32 %266, i32* %8, align 4
  %267 = load i32, i32* %8, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %275

269:                                              ; preds = %260
  %270 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %271 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %270, i32 0, i32 6
  %272 = load i32, i32* %271, align 4
  %273 = load i32, i32* %8, align 4
  %274 = call i32 (i32, i8*, ...) @dev_err(i32 %272, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i64 0, i64 0), i32 %273)
  br label %310

275:                                              ; preds = %260
  br label %276

276:                                              ; preds = %275, %255, %252
  %277 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %278 = load i32, i32* @WM8350_SYSTEM_INTERRUPTS_MASK, align 4
  %279 = call i32 @wm8350_reg_write(%struct.wm8350* %277, i32 %278, i32 0)
  %280 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %281 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %282 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %281, i32 0, i32 5
  %283 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %282, i32 0, i32 0
  %284 = call i32 @wm8350_client_dev_register(%struct.wm8350* %280, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0), i32* %283)
  %285 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %286 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %287 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %286, i32 0, i32 4
  %288 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %287, i32 0, i32 0
  %289 = call i32 @wm8350_client_dev_register(%struct.wm8350* %285, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i32* %288)
  %290 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %291 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %292 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %291, i32 0, i32 3
  %293 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %292, i32 0, i32 0
  %294 = call i32 @wm8350_client_dev_register(%struct.wm8350* %290, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i64 0, i64 0), i32* %293)
  %295 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %296 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %297 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %296, i32 0, i32 2
  %298 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %297, i32 0, i32 1
  %299 = call i32 @wm8350_client_dev_register(%struct.wm8350* %295, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0), i32* %298)
  %300 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %301 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %302 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %301, i32 0, i32 1
  %303 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %302, i32 0, i32 0
  %304 = call i32 @wm8350_client_dev_register(%struct.wm8350* %300, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i64 0, i64 0), i32* %303)
  %305 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %306 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %307 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %306, i32 0, i32 0
  %308 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %307, i32 0, i32 0
  %309 = call i32 @wm8350_client_dev_register(%struct.wm8350* %305, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i64 0, i64 0), i32* %308)
  store i32 0, i32* %4, align 4
  br label %315

310:                                              ; preds = %269
  %311 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %312 = call i32 @wm8350_irq_exit(%struct.wm8350* %311)
  br label %313

313:                                              ; preds = %310, %227, %207, %199, %173, %139, %94, %64, %55, %41, %27
  %314 = load i32, i32* %8, align 4
  store i32 %314, i32* %4, align 4
  br label %315

315:                                              ; preds = %313, %276
  %316 = load i32, i32* %4, align 4
  ret i32 %316
}

declare dso_local i32 @dev_set_drvdata(i32, %struct.wm8350*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @dev_info(i32, i8*, ...) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @wm8350_irq_init(%struct.wm8350*, i32, %struct.wm8350_platform_data*) #1

declare dso_local i32 @request_threaded_irq(i64, i32*, i32, i32, i8*, %struct.wm8350*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @wm8350_reg_write(%struct.wm8350*, i32, i32) #1

declare dso_local i32 @wm8350_client_dev_register(%struct.wm8350*, i8*, i32*) #1

declare dso_local i32 @wm8350_irq_exit(%struct.wm8350*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
