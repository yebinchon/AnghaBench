; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-camera.c_em28xx_probe_sensor_micron.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-camera.c_em28xx_probe_sensor_micron.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx = type { i64, i64, %struct.TYPE_2__*, %struct.i2c_client* }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_client = type { i32 }

@EM28XX_NOSENSOR = common dso_local global i64 0, align 8
@micron_sensor_addrs = common dso_local global i64* null, align 8
@I2C_CLIENT_END = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"couldn't read from i2c device 0x%02x: error %i\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"MT9V012\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"MT9V112\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"MT9M011\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"MT9M111\00", align 1
@EM28XX_MT9M111 = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [8 x i8] c"MT9M112\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"MT9D011\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"MT9V011\00", align 1
@EM28XX_MT9V011 = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [8 x i8] c"MT9M001\00", align 1
@EM28XX_MT9M001 = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [40 x i8] c"unknown Micron sensor detected: 0x%04x\0A\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"unsupported sensor detected: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"sensor %s detected\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.em28xx*)* @em28xx_probe_sensor_micron to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em28xx_probe_sensor_micron(%struct.em28xx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.em28xx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.i2c_client*, align 8
  store %struct.em28xx* %0, %struct.em28xx** %3, align 8
  %9 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %10 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %9, i32 0, i32 3
  %11 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %12 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %13 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i64 %14
  store %struct.i2c_client* %15, %struct.i2c_client** %8, align 8
  %16 = load i64, i64* @EM28XX_NOSENSOR, align 8
  %17 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %18 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %17, i32 0, i32 1
  store i64 %16, i64* %18, align 8
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %128, %1
  %20 = load i64*, i64** @micron_sensor_addrs, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @I2C_CLIENT_END, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %131

27:                                               ; preds = %19
  %28 = load i64*, i64** @micron_sensor_addrs, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %35 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %37 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %36, i32 0)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %57

40:                                               ; preds = %27
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @ENXIO, align 4
  %43 = sub nsw i32 0, %42
  %44 = icmp ne i32 %41, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %40
  %46 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %47 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %46, i32 0, i32 2
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %51 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = shl i32 %52, 1
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @dev_err(i32* %49, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %45, %40
  br label %128

57:                                               ; preds = %27
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @swab16(i32 %58)
  store i32 %59, i32* %7, align 4
  %60 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %61 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %60, i32 255)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %57
  %65 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %66 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %65, i32 0, i32 2
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %70 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = shl i32 %71, 1
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @dev_err(i32* %68, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %72, i32 %73)
  br label %128

75:                                               ; preds = %57
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @swab16(i32 %77)
  %79 = icmp ne i32 %76, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  br label %128

81:                                               ; preds = %75
  %82 = load i32, i32* %7, align 4
  switch i32 %82, label %100 [
    i32 4642, label %83
    i32 4649, label %84
    i32 5171, label %85
    i32 5178, label %86
    i32 5260, label %90
    i32 5393, label %91
    i32 33330, label %92
    i32 33347, label %92
    i32 33841, label %96
  ]

83:                                               ; preds = %81
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  br label %107

84:                                               ; preds = %81
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  br label %107

85:                                               ; preds = %81
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8
  br label %107

86:                                               ; preds = %81
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %6, align 8
  %87 = load i64, i64* @EM28XX_MT9M111, align 8
  %88 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %89 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %88, i32 0, i32 1
  store i64 %87, i64* %89, align 8
  br label %107

90:                                               ; preds = %81
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8** %6, align 8
  br label %107

91:                                               ; preds = %81
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8** %6, align 8
  br label %107

92:                                               ; preds = %81, %81
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8** %6, align 8
  %93 = load i64, i64* @EM28XX_MT9V011, align 8
  %94 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %95 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %94, i32 0, i32 1
  store i64 %93, i64* %95, align 8
  br label %107

96:                                               ; preds = %81
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8** %6, align 8
  %97 = load i64, i64* @EM28XX_MT9M001, align 8
  %98 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %99 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %98, i32 0, i32 1
  store i64 %97, i64* %99, align 8
  br label %107

100:                                              ; preds = %81
  %101 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %102 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %101, i32 0, i32 2
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32, i32* %7, align 4
  %106 = call i32 (i32*, i8*, ...) @dev_info(i32* %104, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0), i32 %105)
  store i32 0, i32* %2, align 4
  br label %134

107:                                              ; preds = %96, %92, %91, %90, %86, %85, %84, %83
  %108 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %109 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @EM28XX_NOSENSOR, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %120

113:                                              ; preds = %107
  %114 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %115 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %114, i32 0, i32 2
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i8*, i8** %6, align 8
  %119 = call i32 (i32*, i8*, ...) @dev_info(i32* %117, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i8* %118)
  br label %127

120:                                              ; preds = %107
  %121 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %122 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %121, i32 0, i32 2
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i8*, i8** %6, align 8
  %126 = call i32 (i32*, i8*, ...) @dev_info(i32* %124, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i8* %125)
  br label %127

127:                                              ; preds = %120, %113
  store i32 0, i32* %2, align 4
  br label %134

128:                                              ; preds = %80, %64, %56
  %129 = load i32, i32* %5, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %5, align 4
  br label %19

131:                                              ; preds = %19
  %132 = load i32, i32* @ENODEV, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %2, align 4
  br label %134

134:                                              ; preds = %131, %127, %100
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

declare dso_local i32 @i2c_smbus_read_word_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @swab16(i32) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
