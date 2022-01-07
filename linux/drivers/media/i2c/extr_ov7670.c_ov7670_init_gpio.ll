; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov7670.c_ov7670_init_gpio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov7670.c_ov7670_init_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.ov7670_info = type { i8*, i8* }

@.str = private unnamed_addr constant [10 x i8] c"powerdown\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"can't get %s GPIO\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.ov7670_info*)* @ov7670_init_gpio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov7670_init_gpio(%struct.i2c_client* %0, %struct.ov7670_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.ov7670_info*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.ov7670_info* %1, %struct.ov7670_info** %5, align 8
  %6 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %7 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %6, i32 0, i32 0
  %8 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %9 = call i8* @devm_gpiod_get_optional(i32* %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.ov7670_info*, %struct.ov7670_info** %5, align 8
  %11 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %10, i32 0, i32 1
  store i8* %9, i8** %11, align 8
  %12 = load %struct.ov7670_info*, %struct.ov7670_info** %5, align 8
  %13 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %12, i32 0, i32 1
  %14 = load i8*, i8** %13, align 8
  %15 = call i64 @IS_ERR(i8* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %2
  %18 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %19 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %18, i32 0, i32 0
  %20 = call i32 @dev_info(i32* %19, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.ov7670_info*, %struct.ov7670_info** %5, align 8
  %22 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @PTR_ERR(i8* %23)
  store i32 %24, i32* %3, align 4
  br label %47

25:                                               ; preds = %2
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %26, i32 0, i32 0
  %28 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %29 = call i8* @devm_gpiod_get_optional(i32* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  %30 = load %struct.ov7670_info*, %struct.ov7670_info** %5, align 8
  %31 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %30, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  %32 = load %struct.ov7670_info*, %struct.ov7670_info** %5, align 8
  %33 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i64 @IS_ERR(i8* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %25
  %38 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %39 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %38, i32 0, i32 0
  %40 = call i32 @dev_info(i32* %39, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %41 = load %struct.ov7670_info*, %struct.ov7670_info** %5, align 8
  %42 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @PTR_ERR(i8* %43)
  store i32 %44, i32* %3, align 4
  br label %47

45:                                               ; preds = %25
  %46 = call i32 @usleep_range(i32 3000, i32 5000)
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %45, %37, %17
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i8* @devm_gpiod_get_optional(i32*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @dev_info(i32*, i8*, i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
