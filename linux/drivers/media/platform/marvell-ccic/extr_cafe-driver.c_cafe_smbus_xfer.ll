; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/marvell-ccic/extr_cafe-driver.c_cafe_smbus_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/marvell-ccic/extr_cafe-driver.c_cafe_smbus_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%union.i2c_smbus_data = type { i32 }
%struct.cafe_camera = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@I2C_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"funky xfer size %d\0A\00", align 1
@I2C_SMBUS_WRITE = common dso_local global i8 0, align 1
@I2C_SMBUS_READ = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, i32, i16, i8, i32, i32, %union.i2c_smbus_data*)* @cafe_smbus_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cafe_smbus_xfer(%struct.i2c_adapter* %0, i32 %1, i16 zeroext %2, i8 signext %3, i32 %4, i32 %5, %union.i2c_smbus_data* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.i2c_adapter*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %union.i2c_smbus_data*, align 8
  %16 = alloca %struct.cafe_camera*, align 8
  %17 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %9, align 8
  store i32 %1, i32* %10, align 4
  store i16 %2, i16* %11, align 2
  store i8 %3, i8* %12, align 1
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %union.i2c_smbus_data* %6, %union.i2c_smbus_data** %15, align 8
  %18 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %19 = call %struct.cafe_camera* @i2c_get_adapdata(%struct.i2c_adapter* %18)
  store %struct.cafe_camera* %19, %struct.cafe_camera** %16, align 8
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %17, align 4
  %22 = load i32, i32* %14, align 4
  %23 = load i32, i32* @I2C_SMBUS_BYTE_DATA, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %7
  %26 = load %struct.cafe_camera*, %struct.cafe_camera** %16, align 8
  %27 = load i32, i32* %14, align 4
  %28 = call i32 @cam_err(%struct.cafe_camera* %26, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %8, align 4
  br label %61

31:                                               ; preds = %7
  %32 = load i8, i8* %12, align 1
  %33 = sext i8 %32 to i32
  %34 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %31
  %38 = load %struct.cafe_camera*, %struct.cafe_camera** %16, align 8
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %13, align 4
  %41 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %42 = bitcast %union.i2c_smbus_data* %41 to i32*
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @cafe_smbus_write_data(%struct.cafe_camera* %38, i32 %39, i32 %40, i32 %43)
  store i32 %44, i32* %17, align 4
  br label %59

45:                                               ; preds = %31
  %46 = load i8, i8* %12, align 1
  %47 = sext i8 %46 to i32
  %48 = load i8, i8* @I2C_SMBUS_READ, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %45
  %52 = load %struct.cafe_camera*, %struct.cafe_camera** %16, align 8
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %13, align 4
  %55 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %56 = bitcast %union.i2c_smbus_data* %55 to i32*
  %57 = call i32 @cafe_smbus_read_data(%struct.cafe_camera* %52, i32 %53, i32 %54, i32* %56)
  store i32 %57, i32* %17, align 4
  br label %58

58:                                               ; preds = %51, %45
  br label %59

59:                                               ; preds = %58, %37
  %60 = load i32, i32* %17, align 4
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %59, %25
  %62 = load i32, i32* %8, align 4
  ret i32 %62
}

declare dso_local %struct.cafe_camera* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @cam_err(%struct.cafe_camera*, i8*, i32) #1

declare dso_local i32 @cafe_smbus_write_data(%struct.cafe_camera*, i32, i32, i32) #1

declare dso_local i32 @cafe_smbus_read_data(%struct.cafe_camera*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
