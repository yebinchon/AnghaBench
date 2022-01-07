; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_rj54n1cb0c.c_rj54n1_video_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_rj54n1cb0c.c_rj54n1_video_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.rj54n1_pdata = type { i32 }
%struct.rj54n1 = type { i32, i32 }

@RJ54N1_DEV_CODE = common dso_local global i32 0, align 4
@RJ54N1_DEV_CODE2 = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"No RJ54N1CB0C found, read 0x%x:0x%x\0A\00", align 1
@RJ54N1_IOC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Detected a RJ54N1CB0C chip ID 0x%x:0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.rj54n1_pdata*)* @rj54n1_video_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rj54n1_video_probe(%struct.i2c_client* %0, %struct.rj54n1_pdata* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.rj54n1_pdata*, align 8
  %6 = alloca %struct.rj54n1*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.rj54n1_pdata* %1, %struct.rj54n1_pdata** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = call %struct.rj54n1* @to_rj54n1(%struct.i2c_client* %10)
  store %struct.rj54n1* %11, %struct.rj54n1** %6, align 8
  %12 = load %struct.rj54n1*, %struct.rj54n1** %6, align 8
  %13 = getelementptr inbounds %struct.rj54n1, %struct.rj54n1* %12, i32 0, i32 0
  %14 = call i32 @rj54n1_s_power(i32* %13, i32 1)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %3, align 4
  br label %64

19:                                               ; preds = %2
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = load i32, i32* @RJ54N1_DEV_CODE, align 4
  %22 = call i32 @reg_read(%struct.i2c_client* %20, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = load i32, i32* @RJ54N1_DEV_CODE2, align 4
  %25 = call i32 @reg_read(%struct.i2c_client* %23, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 81
  br i1 %27, label %31, label %28

28:                                               ; preds = %19
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 16
  br i1 %30, label %31, label %39

31:                                               ; preds = %28, %19
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %9, align 4
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %34, i32 0, i32 0
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @dev_info(i32* %35, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %37)
  br label %59

39:                                               ; preds = %28
  %40 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %41 = load i32, i32* @RJ54N1_IOC, align 4
  %42 = load %struct.rj54n1_pdata*, %struct.rj54n1_pdata** %5, align 8
  %43 = getelementptr inbounds %struct.rj54n1_pdata, %struct.rj54n1_pdata* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = shl i32 %44, 7
  %46 = call i32 @reg_write(%struct.i2c_client* %40, i32 %41, i32 %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %39
  br label %59

50:                                               ; preds = %39
  %51 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %52 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %51, i32 0, i32 0
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @dev_info(i32* %52, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %54)
  %56 = load %struct.rj54n1*, %struct.rj54n1** %6, align 8
  %57 = getelementptr inbounds %struct.rj54n1, %struct.rj54n1* %56, i32 0, i32 1
  %58 = call i32 @v4l2_ctrl_handler_setup(i32* %57)
  store i32 %58, i32* %9, align 4
  br label %59

59:                                               ; preds = %50, %49, %31
  %60 = load %struct.rj54n1*, %struct.rj54n1** %6, align 8
  %61 = getelementptr inbounds %struct.rj54n1, %struct.rj54n1* %60, i32 0, i32 0
  %62 = call i32 @rj54n1_s_power(i32* %61, i32 0)
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %59, %17
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local %struct.rj54n1* @to_rj54n1(%struct.i2c_client*) #1

declare dso_local i32 @rj54n1_s_power(i32*, i32) #1

declare dso_local i32 @reg_read(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

declare dso_local i32 @reg_write(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_setup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
