; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k5baf.c_s5k5baf_configure_gpios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k5baf.c_s5k5baf_configure_gpios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5k5baf = type { %struct.s5k5baf_gpio*, i32 }
%struct.s5k5baf_gpio = type { i32, i64 }
%struct.i2c_client = type { i32 }

@s5k5baf_configure_gpios.name = internal constant [2 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [13 x i8] c"S5K5BAF_STBY\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"S5K5BAF_RST\00", align 1
@NUM_GPIOS = common dso_local global i32 0, align 4
@GPIOF_DIR_OUT = common dso_local global i32 0, align 4
@GPIOF_INIT_HIGH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"failed to request gpio %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5k5baf*)* @s5k5baf_configure_gpios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5k5baf_configure_gpios(%struct.s5k5baf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.s5k5baf*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.s5k5baf_gpio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.s5k5baf* %0, %struct.s5k5baf** %3, align 8
  %9 = load %struct.s5k5baf*, %struct.s5k5baf** %3, align 8
  %10 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %9, i32 0, i32 1
  %11 = call %struct.i2c_client* @v4l2_get_subdevdata(i32* %10)
  store %struct.i2c_client* %11, %struct.i2c_client** %4, align 8
  %12 = load %struct.s5k5baf*, %struct.s5k5baf** %3, align 8
  %13 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %12, i32 0, i32 0
  %14 = load %struct.s5k5baf_gpio*, %struct.s5k5baf_gpio** %13, align 8
  store %struct.s5k5baf_gpio* %14, %struct.s5k5baf_gpio** %5, align 8
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %58, %1
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @NUM_GPIOS, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %61

19:                                               ; preds = %15
  %20 = load i32, i32* @GPIOF_DIR_OUT, align 4
  store i32 %20, i32* %8, align 4
  %21 = load %struct.s5k5baf_gpio*, %struct.s5k5baf_gpio** %5, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.s5k5baf_gpio, %struct.s5k5baf_gpio* %21, i64 %23
  %25 = getelementptr inbounds %struct.s5k5baf_gpio, %struct.s5k5baf_gpio* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %19
  %29 = load i32, i32* @GPIOF_INIT_HIGH, align 4
  %30 = load i32, i32* %8, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %28, %19
  %33 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %34 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %33, i32 0, i32 0
  %35 = load %struct.s5k5baf_gpio*, %struct.s5k5baf_gpio** %5, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.s5k5baf_gpio, %struct.s5k5baf_gpio* %35, i64 %37
  %39 = getelementptr inbounds %struct.s5k5baf_gpio, %struct.s5k5baf_gpio* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [2 x i8*], [2 x i8*]* @s5k5baf_configure_gpios.name, i64 0, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @devm_gpio_request_one(i32* %34, i32 %40, i32 %41, i8* %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %32
  %50 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [2 x i8*], [2 x i8*]* @s5k5baf_configure_gpios.name, i64 0, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @v4l2_err(%struct.i2c_client* %50, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %54)
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %2, align 4
  br label %62

57:                                               ; preds = %32
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %15

61:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %49
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(i32*) #1

declare dso_local i32 @devm_gpio_request_one(i32*, i32, i32, i8*) #1

declare dso_local i32 @v4l2_err(%struct.i2c_client*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
