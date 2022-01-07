; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-gpio.c_cx18_reset_tuner_gpio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-gpio.c_cx18_reset_tuner_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_algo_bit_data = type { %struct.cx18_i2c_algo_callback_data* }
%struct.cx18_i2c_algo_callback_data = type { %struct.cx18* }
%struct.cx18 = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@XC2028_TUNER_RESET = common dso_local global i32 0, align 4
@TUNER_XC2028 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"Resetting XCeive tuner\0A\00", align 1
@core = common dso_local global i32 0, align 4
@reset = common dso_local global i32 0, align 4
@CX18_GPIO_RESET_XC2028 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx18_reset_tuner_gpio(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.i2c_algo_bit_data*, align 8
  %11 = alloca %struct.cx18_i2c_algo_callback_data*, align 8
  %12 = alloca %struct.cx18*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.i2c_algo_bit_data*
  store %struct.i2c_algo_bit_data* %14, %struct.i2c_algo_bit_data** %10, align 8
  %15 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %10, align 8
  %16 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %15, i32 0, i32 0
  %17 = load %struct.cx18_i2c_algo_callback_data*, %struct.cx18_i2c_algo_callback_data** %16, align 8
  store %struct.cx18_i2c_algo_callback_data* %17, %struct.cx18_i2c_algo_callback_data** %11, align 8
  %18 = load %struct.cx18_i2c_algo_callback_data*, %struct.cx18_i2c_algo_callback_data** %11, align 8
  %19 = getelementptr inbounds %struct.cx18_i2c_algo_callback_data, %struct.cx18_i2c_algo_callback_data* %18, i32 0, i32 0
  %20 = load %struct.cx18*, %struct.cx18** %19, align 8
  store %struct.cx18* %20, %struct.cx18** %12, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @XC2028_TUNER_RESET, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %35, label %24

24:                                               ; preds = %4
  %25 = load %struct.cx18*, %struct.cx18** %12, align 8
  %26 = getelementptr inbounds %struct.cx18, %struct.cx18* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @TUNER_XC2028, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %24, %4
  store i32 0, i32* %5, align 4
  br label %44

36:                                               ; preds = %24
  %37 = call i32 @CX18_DEBUG_INFO(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.cx18*, %struct.cx18** %12, align 8
  %39 = getelementptr inbounds %struct.cx18, %struct.cx18* %38, i32 0, i32 0
  %40 = load i32, i32* @core, align 4
  %41 = load i32, i32* @reset, align 4
  %42 = load i32, i32* @CX18_GPIO_RESET_XC2028, align 4
  %43 = call i32 @v4l2_subdev_call(i32* %39, i32 %40, i32 %41, i32 %42)
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %36, %35
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32 @CX18_DEBUG_INFO(i8*) #1

declare dso_local i32 @v4l2_subdev_call(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
