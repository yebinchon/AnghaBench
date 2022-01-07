; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tw9910.c_tw9910_video_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tw9910.c_tw9910_video_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.tw9910_priv = type { i32, i32, i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"bus width error\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Product ID error %x:%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"tw9910 Product ID %0x:%0x\0A\00", align 1
@V4L2_STD_NTSC = common dso_local global i32 0, align 4
@tw9910_ntsc_scales = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @tw9910_video_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tw9910_video_probe(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.tw9910_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %7 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %8 = call %struct.tw9910_priv* @to_tw9910(%struct.i2c_client* %7)
  store %struct.tw9910_priv* %8, %struct.tw9910_priv** %4, align 8
  %9 = load %struct.tw9910_priv*, %struct.tw9910_priv** %4, align 8
  %10 = getelementptr inbounds %struct.tw9910_priv, %struct.tw9910_priv* %9, i32 0, i32 4
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 16
  br i1 %14, label %15, label %28

15:                                               ; preds = %1
  %16 = load %struct.tw9910_priv*, %struct.tw9910_priv** %4, align 8
  %17 = getelementptr inbounds %struct.tw9910_priv, %struct.tw9910_priv* %16, i32 0, i32 4
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 8
  br i1 %21, label %22, label %28

22:                                               ; preds = %15
  %23 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %24 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %23, i32 0, i32 0
  %25 = call i32 (i32*, i8*, ...) @dev_err(i32* %24, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %83

28:                                               ; preds = %15, %1
  %29 = load %struct.tw9910_priv*, %struct.tw9910_priv** %4, align 8
  %30 = getelementptr inbounds %struct.tw9910_priv, %struct.tw9910_priv* %29, i32 0, i32 1
  %31 = call i32 @tw9910_s_power(i32* %30, i32 1)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %2, align 4
  br label %83

36:                                               ; preds = %28
  %37 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %38 = load i32, i32* @ID, align 4
  %39 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %37, i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @GET_REV(i32 %40)
  %42 = load %struct.tw9910_priv*, %struct.tw9910_priv** %4, align 8
  %43 = getelementptr inbounds %struct.tw9910_priv, %struct.tw9910_priv* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @GET_ID(i32 %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 11
  br i1 %47, label %53, label %48

48:                                               ; preds = %36
  %49 = load %struct.tw9910_priv*, %struct.tw9910_priv** %4, align 8
  %50 = getelementptr inbounds %struct.tw9910_priv, %struct.tw9910_priv* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp sgt i32 %51, 1
  br i1 %52, label %53, label %63

53:                                               ; preds = %48, %36
  %54 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %55 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %54, i32 0, i32 0
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.tw9910_priv*, %struct.tw9910_priv** %4, align 8
  %58 = getelementptr inbounds %struct.tw9910_priv, %struct.tw9910_priv* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 (i32*, i8*, ...) @dev_err(i32* %55, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %56, i32 %59)
  %61 = load i32, i32* @ENODEV, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %6, align 4
  br label %78

63:                                               ; preds = %48
  %64 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %65 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %64, i32 0, i32 0
  %66 = load i32, i32* %5, align 4
  %67 = load %struct.tw9910_priv*, %struct.tw9910_priv** %4, align 8
  %68 = getelementptr inbounds %struct.tw9910_priv, %struct.tw9910_priv* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @dev_info(i32* %65, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %66, i32 %69)
  %71 = load i32, i32* @V4L2_STD_NTSC, align 4
  %72 = load %struct.tw9910_priv*, %struct.tw9910_priv** %4, align 8
  %73 = getelementptr inbounds %struct.tw9910_priv, %struct.tw9910_priv* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 8
  %74 = load i32*, i32** @tw9910_ntsc_scales, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load %struct.tw9910_priv*, %struct.tw9910_priv** %4, align 8
  %77 = getelementptr inbounds %struct.tw9910_priv, %struct.tw9910_priv* %76, i32 0, i32 2
  store i32* %75, i32** %77, align 8
  br label %78

78:                                               ; preds = %63, %53
  %79 = load %struct.tw9910_priv*, %struct.tw9910_priv** %4, align 8
  %80 = getelementptr inbounds %struct.tw9910_priv, %struct.tw9910_priv* %79, i32 0, i32 1
  %81 = call i32 @tw9910_s_power(i32* %80, i32 0)
  %82 = load i32, i32* %6, align 4
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %78, %34, %22
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local %struct.tw9910_priv* @to_tw9910(%struct.i2c_client*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @tw9910_s_power(i32*, i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @GET_REV(i32) #1

declare dso_local i32 @GET_ID(i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
