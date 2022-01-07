; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-camera.c_em28xx_probe_sensor_omnivision.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-camera.c_em28xx_probe_sensor_omnivision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx = type { i64, i64, %struct.TYPE_2__*, %struct.i2c_client* }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_client = type { i32 }

@EM28XX_NOSENSOR = common dso_local global i64 0, align 8
@omnivision_sensor_addrs = common dso_local global i64* null, align 8
@I2C_CLIENT_END = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"couldn't read from i2c device 0x%02x: error %i\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"OV2640\00", align 1
@EM28XX_OV2640 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"OV7648\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"OV7660\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"OV7670\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"OV7720\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"OV7725\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"OV9640\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"OV9650\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"OV9655\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"unknown OmniVision sensor detected: 0x%04x\0A\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"unsupported sensor detected: %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"sensor %s detected\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.em28xx*)* @em28xx_probe_sensor_omnivision to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em28xx_probe_sensor_omnivision(%struct.em28xx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.em28xx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.i2c_client*, align 8
  store %struct.em28xx* %0, %struct.em28xx** %3, align 8
  %10 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %11 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %10, i32 0, i32 3
  %12 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %13 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %14 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i64 %15
  store %struct.i2c_client* %16, %struct.i2c_client** %9, align 8
  %17 = load i64, i64* @EM28XX_NOSENSOR, align 8
  %18 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %19 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %18, i32 0, i32 1
  store i64 %17, i64* %19, align 8
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %166, %1
  %21 = load i64*, i64** @omnivision_sensor_addrs, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @I2C_CLIENT_END, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %169

28:                                               ; preds = %20
  %29 = load i64*, i64** @omnivision_sensor_addrs, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %36 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  store i32 28, i32* %7, align 4
  %37 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %37, i32 %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %59

42:                                               ; preds = %28
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @ENXIO, align 4
  %45 = sub nsw i32 0, %44
  %46 = icmp ne i32 %43, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %42
  %48 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %49 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %48, i32 0, i32 2
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %53 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = shl i32 %54, 1
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @dev_err(i32* %51, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %47, %42
  br label %166

59:                                               ; preds = %28
  %60 = load i32, i32* %4, align 4
  %61 = shl i32 %60, 8
  store i32 %61, i32* %8, align 4
  store i32 29, i32* %7, align 4
  %62 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %62, i32 %63)
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %59
  %68 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %69 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %68, i32 0, i32 2
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %73 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = shl i32 %74, 1
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @dev_err(i32* %71, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %75, i32 %76)
  br label %166

78:                                               ; preds = %59
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 32674
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  br label %166

85:                                               ; preds = %78
  store i32 10, i32* %7, align 4
  %86 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %86, i32 %87)
  store i32 %88, i32* %4, align 4
  %89 = load i32, i32* %4, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %102

91:                                               ; preds = %85
  %92 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %93 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %92, i32 0, i32 2
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %97 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = shl i32 %98, 1
  %100 = load i32, i32* %4, align 4
  %101 = call i32 @dev_err(i32* %95, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %99, i32 %100)
  br label %166

102:                                              ; preds = %85
  %103 = load i32, i32* %4, align 4
  %104 = shl i32 %103, 8
  store i32 %104, i32* %8, align 4
  store i32 11, i32* %7, align 4
  %105 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %106 = load i32, i32* %7, align 4
  %107 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %105, i32 %106)
  store i32 %107, i32* %4, align 4
  %108 = load i32, i32* %4, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %121

110:                                              ; preds = %102
  %111 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %112 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %111, i32 0, i32 2
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %116 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = shl i32 %117, 1
  %119 = load i32, i32* %4, align 4
  %120 = call i32 @dev_err(i32* %114, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %118, i32 %119)
  br label %166

121:                                              ; preds = %102
  %122 = load i32, i32* %4, align 4
  %123 = load i32, i32* %8, align 4
  %124 = add nsw i32 %123, %122
  store i32 %124, i32* %8, align 4
  %125 = load i32, i32* %8, align 4
  switch i32 %125, label %138 [
    i32 9794, label %126
    i32 30280, label %130
    i32 30304, label %131
    i32 30323, label %132
    i32 30496, label %133
    i32 30497, label %134
    i32 38472, label %135
    i32 38473, label %135
    i32 38480, label %136
    i32 38482, label %136
    i32 38486, label %137
    i32 38487, label %137
  ]

126:                                              ; preds = %121
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  %127 = load i64, i64* @EM28XX_OV2640, align 8
  %128 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %129 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %128, i32 0, i32 1
  store i64 %127, i64* %129, align 8
  br label %145

130:                                              ; preds = %121
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  br label %145

131:                                              ; preds = %121
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8
  br label %145

132:                                              ; preds = %121
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %6, align 8
  br label %145

133:                                              ; preds = %121
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8** %6, align 8
  br label %145

134:                                              ; preds = %121
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8** %6, align 8
  br label %145

135:                                              ; preds = %121, %121
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8** %6, align 8
  br label %145

136:                                              ; preds = %121, %121
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8** %6, align 8
  br label %145

137:                                              ; preds = %121, %121
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8** %6, align 8
  br label %145

138:                                              ; preds = %121
  %139 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %140 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %139, i32 0, i32 2
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 0
  %143 = load i32, i32* %8, align 4
  %144 = call i32 (i32*, i8*, ...) @dev_info(i32* %142, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0), i32 %143)
  store i32 0, i32* %2, align 4
  br label %172

145:                                              ; preds = %137, %136, %135, %134, %133, %132, %131, %130, %126
  %146 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %147 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @EM28XX_NOSENSOR, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %158

151:                                              ; preds = %145
  %152 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %153 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %152, i32 0, i32 2
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 0
  %156 = load i8*, i8** %6, align 8
  %157 = call i32 (i32*, i8*, ...) @dev_info(i32* %155, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0), i8* %156)
  br label %165

158:                                              ; preds = %145
  %159 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %160 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %159, i32 0, i32 2
  %161 = load %struct.TYPE_2__*, %struct.TYPE_2__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 0
  %163 = load i8*, i8** %6, align 8
  %164 = call i32 (i32*, i8*, ...) @dev_info(i32* %162, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i8* %163)
  br label %165

165:                                              ; preds = %158, %151
  store i32 0, i32* %2, align 4
  br label %172

166:                                              ; preds = %110, %91, %84, %67, %58
  %167 = load i32, i32* %5, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %5, align 4
  br label %20

169:                                              ; preds = %20
  %170 = load i32, i32* @ENODEV, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %2, align 4
  br label %172

172:                                              ; preds = %169, %165, %138
  %173 = load i32, i32* %2, align 4
  ret i32 %173
}

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
