; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/et8ek8/extr_et8ek8_driver.c_et8ek8_dev_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/et8ek8/extr_et8ek8_driver.c_et8ek8_dev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.et8ek8_sensor = type { i32, i32, i32 }
%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"could not power on\0A\00", align 1
@ET8EK8_REG_8BIT = common dso_local global i32 0, align 4
@REG_REVISION_NUMBER_L = common dso_local global i32 0, align 4
@REG_REVISION_NUMBER_H = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"no et8ek8 sensor detected\0A\00", align 1
@ET8EK8_REV_1 = common dso_local global i32 0, align 4
@ET8EK8_REV_2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"unknown version 0x%x detected, continuing anyway\0A\00", align 1
@meta_reglist = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"invalid register list %s, import failed\0A\00", align 1
@ET8EK8_NAME = common dso_local global i32 0, align 4
@ET8EK8_REGLIST_MODE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"invalid register list %s, no mode found\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ET8EK8_REGLIST_POWERON = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [49 x i8] c"invalid register list %s, no POWERON mode found\0A\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"can not read OTP (EEPROM) memory from sensor\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*)* @et8ek8_dev_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @et8ek8_dev_init(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.et8ek8_sensor*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %10 = call %struct.et8ek8_sensor* @to_et8ek8_sensor(%struct.v4l2_subdev* %9)
  store %struct.et8ek8_sensor* %10, %struct.et8ek8_sensor** %4, align 8
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %12 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %11)
  store %struct.i2c_client* %12, %struct.i2c_client** %5, align 8
  %13 = load %struct.et8ek8_sensor*, %struct.et8ek8_sensor** %4, align 8
  %14 = call i32 @et8ek8_power_on(%struct.et8ek8_sensor* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %19 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %18, i32 0, i32 0
  %20 = call i32 (i32*, i8*, ...) @dev_err(i32* %19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %2, align 4
  br label %141

22:                                               ; preds = %1
  %23 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %24 = load i32, i32* @ET8EK8_REG_8BIT, align 4
  %25 = load i32, i32* @REG_REVISION_NUMBER_L, align 4
  %26 = call i32 @et8ek8_i2c_read_reg(%struct.i2c_client* %23, i32 %24, i32 %25, i32* %7)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %22
  %30 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %31 = load i32, i32* @ET8EK8_REG_8BIT, align 4
  %32 = load i32, i32* @REG_REVISION_NUMBER_H, align 4
  %33 = call i32 @et8ek8_i2c_read_reg(%struct.i2c_client* %30, i32 %31, i32 %32, i32* %8)
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %29, %22
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %39 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %38, i32 0, i32 0
  %40 = call i32 (i32*, i8*, ...) @dev_err(i32* %39, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %137

41:                                               ; preds = %34
  %42 = load i32, i32* %8, align 4
  %43 = shl i32 %42, 8
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %43, %44
  %46 = load %struct.et8ek8_sensor*, %struct.et8ek8_sensor** %4, align 8
  %47 = getelementptr inbounds %struct.et8ek8_sensor, %struct.et8ek8_sensor* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.et8ek8_sensor*, %struct.et8ek8_sensor** %4, align 8
  %49 = getelementptr inbounds %struct.et8ek8_sensor, %struct.et8ek8_sensor* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @ET8EK8_REV_1, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %66

53:                                               ; preds = %41
  %54 = load %struct.et8ek8_sensor*, %struct.et8ek8_sensor** %4, align 8
  %55 = getelementptr inbounds %struct.et8ek8_sensor, %struct.et8ek8_sensor* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @ET8EK8_REV_2, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %53
  %60 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %61 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %60, i32 0, i32 0
  %62 = load %struct.et8ek8_sensor*, %struct.et8ek8_sensor** %4, align 8
  %63 = getelementptr inbounds %struct.et8ek8_sensor, %struct.et8ek8_sensor* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @dev_info(i32* %61, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %59, %53, %41
  %67 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %68 = call i32 @et8ek8_reglist_import(%struct.i2c_client* %67, i32* @meta_reglist)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %73 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %72, i32 0, i32 0
  %74 = load i32, i32* @ET8EK8_NAME, align 4
  %75 = call i32 (i32*, i8*, ...) @dev_err(i32* %73, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %74)
  br label %137

76:                                               ; preds = %66
  %77 = load i32, i32* @ET8EK8_REGLIST_MODE, align 4
  %78 = call i32 @et8ek8_reglist_find_type(i32* @meta_reglist, i32 %77)
  %79 = load %struct.et8ek8_sensor*, %struct.et8ek8_sensor** %4, align 8
  %80 = getelementptr inbounds %struct.et8ek8_sensor, %struct.et8ek8_sensor* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 4
  %81 = load %struct.et8ek8_sensor*, %struct.et8ek8_sensor** %4, align 8
  %82 = getelementptr inbounds %struct.et8ek8_sensor, %struct.et8ek8_sensor* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %92, label %85

85:                                               ; preds = %76
  %86 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %87 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %86, i32 0, i32 0
  %88 = load i32, i32* @ET8EK8_NAME, align 4
  %89 = call i32 (i32*, i8*, ...) @dev_err(i32* %87, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* @ENODEV, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %6, align 4
  br label %137

92:                                               ; preds = %76
  %93 = load %struct.et8ek8_sensor*, %struct.et8ek8_sensor** %4, align 8
  %94 = getelementptr inbounds %struct.et8ek8_sensor, %struct.et8ek8_sensor* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.et8ek8_sensor*, %struct.et8ek8_sensor** %4, align 8
  %97 = getelementptr inbounds %struct.et8ek8_sensor, %struct.et8ek8_sensor* %96, i32 0, i32 1
  %98 = call i32 @et8ek8_reglist_to_mbus(i32 %95, i32* %97)
  %99 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %100 = load i32, i32* @ET8EK8_REGLIST_POWERON, align 4
  %101 = call i32 @et8ek8_i2c_reglist_find_write(%struct.i2c_client* %99, i32* @meta_reglist, i32 %100)
  store i32 %101, i32* %6, align 4
  %102 = load i32, i32* %6, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %92
  %105 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %106 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %105, i32 0, i32 0
  %107 = load i32, i32* @ET8EK8_NAME, align 4
  %108 = call i32 (i32*, i8*, ...) @dev_err(i32* %106, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i32 %107)
  br label %137

109:                                              ; preds = %92
  %110 = load %struct.et8ek8_sensor*, %struct.et8ek8_sensor** %4, align 8
  %111 = call i32 @et8ek8_stream_on(%struct.et8ek8_sensor* %110)
  store i32 %111, i32* %6, align 4
  %112 = load i32, i32* %6, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %109
  br label %137

115:                                              ; preds = %109
  %116 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %117 = call i32 @et8ek8_g_priv_mem(%struct.v4l2_subdev* %116)
  store i32 %117, i32* %6, align 4
  %118 = load i32, i32* %6, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %115
  %121 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %122 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %121, i32 0, i32 0
  %123 = call i32 @dev_warn(i32* %122, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0))
  br label %124

124:                                              ; preds = %120, %115
  %125 = load %struct.et8ek8_sensor*, %struct.et8ek8_sensor** %4, align 8
  %126 = call i32 @et8ek8_stream_off(%struct.et8ek8_sensor* %125)
  store i32 %126, i32* %6, align 4
  %127 = load i32, i32* %6, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %124
  br label %137

130:                                              ; preds = %124
  %131 = load %struct.et8ek8_sensor*, %struct.et8ek8_sensor** %4, align 8
  %132 = call i32 @et8ek8_power_off(%struct.et8ek8_sensor* %131)
  store i32 %132, i32* %6, align 4
  %133 = load i32, i32* %6, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %130
  br label %137

136:                                              ; preds = %130
  store i32 0, i32* %2, align 4
  br label %141

137:                                              ; preds = %135, %129, %114, %104, %85, %71, %37
  %138 = load %struct.et8ek8_sensor*, %struct.et8ek8_sensor** %4, align 8
  %139 = call i32 @et8ek8_power_off(%struct.et8ek8_sensor* %138)
  %140 = load i32, i32* %6, align 4
  store i32 %140, i32* %2, align 4
  br label %141

141:                                              ; preds = %137, %136, %17
  %142 = load i32, i32* %2, align 4
  ret i32 %142
}

declare dso_local %struct.et8ek8_sensor* @to_et8ek8_sensor(%struct.v4l2_subdev*) #1

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @et8ek8_power_on(%struct.et8ek8_sensor*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @et8ek8_i2c_read_reg(%struct.i2c_client*, i32, i32, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @et8ek8_reglist_import(%struct.i2c_client*, i32*) #1

declare dso_local i32 @et8ek8_reglist_find_type(i32*, i32) #1

declare dso_local i32 @et8ek8_reglist_to_mbus(i32, i32*) #1

declare dso_local i32 @et8ek8_i2c_reglist_find_write(%struct.i2c_client*, i32*, i32) #1

declare dso_local i32 @et8ek8_stream_on(%struct.et8ek8_sensor*) #1

declare dso_local i32 @et8ek8_g_priv_mem(%struct.v4l2_subdev*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @et8ek8_stream_off(%struct.et8ek8_sensor*) #1

declare dso_local i32 @et8ek8_power_off(%struct.et8ek8_sensor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
