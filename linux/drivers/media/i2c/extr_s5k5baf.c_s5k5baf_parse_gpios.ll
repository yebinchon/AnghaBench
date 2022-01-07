; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k5baf.c_s5k5baf_parse_gpios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k5baf.c_s5k5baf_parse_gpios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5k5baf_gpio = type { i32, i32 }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }

@s5k5baf_parse_gpios.names = internal constant [2 x i8*] [i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [12 x i8] c"stbyn-gpios\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"rstn-gpios\00", align 1
@NUM_GPIOS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"no %s GPIO pin provided\0A\00", align 1
@OF_GPIO_ACTIVE_LOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5k5baf_gpio*, %struct.device*)* @s5k5baf_parse_gpios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5k5baf_parse_gpios(%struct.s5k5baf_gpio* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.s5k5baf_gpio*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.s5k5baf_gpio* %0, %struct.s5k5baf_gpio** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %6, align 8
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %52, %2
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @NUM_GPIOS, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %55

17:                                               ; preds = %13
  %18 = load %struct.device_node*, %struct.device_node** %6, align 8
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [2 x i8*], [2 x i8*]* @s5k5baf_parse_gpios.names, i64 0, i64 %20
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @of_get_named_gpio_flags(%struct.device_node* %18, i8* %22, i32 0, i32* %7)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %17
  %27 = load %struct.device*, %struct.device** %5, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [2 x i8*], [2 x i8*]* @s5k5baf_parse_gpios.names, i64 0, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @dev_err(%struct.device* %27, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %31)
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %3, align 4
  br label %56

34:                                               ; preds = %17
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.s5k5baf_gpio*, %struct.s5k5baf_gpio** %4, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.s5k5baf_gpio, %struct.s5k5baf_gpio* %36, i64 %38
  %40 = getelementptr inbounds %struct.s5k5baf_gpio, %struct.s5k5baf_gpio* %39, i32 0, i32 0
  store i32 %35, i32* %40, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @OF_GPIO_ACTIVE_LOW, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = load %struct.s5k5baf_gpio*, %struct.s5k5baf_gpio** %4, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.s5k5baf_gpio, %struct.s5k5baf_gpio* %47, i64 %49
  %51 = getelementptr inbounds %struct.s5k5baf_gpio, %struct.s5k5baf_gpio* %50, i32 0, i32 1
  store i32 %46, i32* %51, align 4
  br label %52

52:                                               ; preds = %34
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %9, align 4
  br label %13

55:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %26
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @of_get_named_gpio_flags(%struct.device_node*, i8*, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
