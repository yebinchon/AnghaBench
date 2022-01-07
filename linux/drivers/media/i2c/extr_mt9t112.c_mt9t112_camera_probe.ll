; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9t112.c_mt9t112_camera_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9t112.c_mt9t112_camera_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.mt9t112_priv = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"mt9t111\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"mt9t112\00", align 1
@mt9t112_cfmts = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Product ID error %04x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"%s chip ID %04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @mt9t112_camera_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9t112_camera_probe(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.mt9t112_priv*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %9 = call %struct.mt9t112_priv* @to_mt9t112(%struct.i2c_client* %8)
  store %struct.mt9t112_priv* %9, %struct.mt9t112_priv** %4, align 8
  %10 = load %struct.mt9t112_priv*, %struct.mt9t112_priv** %4, align 8
  %11 = getelementptr inbounds %struct.mt9t112_priv, %struct.mt9t112_priv* %10, i32 0, i32 1
  %12 = call i32 @mt9t112_s_power(i32* %11, i32 1)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %2, align 4
  br label %48

17:                                               ; preds = %1
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %20 = call i32 @mt9t112_reg_read(i32 %18, %struct.i2c_client* %19, i32 0)
  %21 = load i32, i32* %6, align 4
  switch i32 %21, label %30 [
    i32 9856, label %22
    i32 9858, label %25
  ]

22:                                               ; preds = %17
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %23 = load %struct.mt9t112_priv*, %struct.mt9t112_priv** %4, align 8
  %24 = getelementptr inbounds %struct.mt9t112_priv, %struct.mt9t112_priv* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  br label %37

25:                                               ; preds = %17
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  %26 = load i32, i32* @mt9t112_cfmts, align 4
  %27 = call i32 @ARRAY_SIZE(i32 %26)
  %28 = load %struct.mt9t112_priv*, %struct.mt9t112_priv** %4, align 8
  %29 = getelementptr inbounds %struct.mt9t112_priv, %struct.mt9t112_priv* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  br label %37

30:                                               ; preds = %17
  %31 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %32 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %31, i32 0, i32 0
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @dev_err(i32* %32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %7, align 4
  br label %43

37:                                               ; preds = %25, %22
  %38 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %39 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %38, i32 0, i32 0
  %40 = load i8*, i8** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @dev_info(i32* %39, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* %40, i32 %41)
  br label %43

43:                                               ; preds = %37, %30
  %44 = load %struct.mt9t112_priv*, %struct.mt9t112_priv** %4, align 8
  %45 = getelementptr inbounds %struct.mt9t112_priv, %struct.mt9t112_priv* %44, i32 0, i32 1
  %46 = call i32 @mt9t112_s_power(i32* %45, i32 0)
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %43, %15
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.mt9t112_priv* @to_mt9t112(%struct.i2c_client*) #1

declare dso_local i32 @mt9t112_s_power(i32*, i32) #1

declare dso_local i32 @mt9t112_reg_read(i32, %struct.i2c_client*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
