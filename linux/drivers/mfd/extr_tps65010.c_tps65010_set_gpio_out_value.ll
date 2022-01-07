; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_tps65010.c_tps65010_set_gpio_out_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_tps65010.c_tps65010_set_gpio_out_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@the_tps = common dso_local global %struct.TYPE_2__* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@GPIO1 = common dso_local global i32 0, align 4
@GPIO4 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TPS_DEFGPIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"%s: gpio%dout = %s, defgpio 0x%02x\0A\00", align 1
@DRIVER_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"high\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"low\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tps65010_set_gpio_out_value(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_tps, align 8
  %9 = icmp ne %struct.TYPE_2__* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @ENODEV, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %75

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @GPIO1, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @GPIO4, align 4
  %20 = icmp ugt i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %17, %13
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %75

24:                                               ; preds = %17
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_tps, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_tps, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @TPS_DEFGPIO, align 4
  %32 = call i32 @i2c_smbus_read_byte_data(i32 %30, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %4, align 4
  %34 = add i32 %33, 3
  %35 = shl i32 1, %34
  %36 = load i32, i32* %7, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %5, align 4
  switch i32 %38, label %45 [
    i32 128, label %39
  ]

39:                                               ; preds = %24
  %40 = load i32, i32* %4, align 4
  %41 = sub i32 %40, 1
  %42 = shl i32 1, %41
  %43 = load i32, i32* %7, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %7, align 4
  br label %52

45:                                               ; preds = %24
  %46 = load i32, i32* %4, align 4
  %47 = sub i32 %46, 1
  %48 = shl i32 1, %47
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %7, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %45, %39
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_tps, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @TPS_DEFGPIO, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @i2c_smbus_write_byte_data(i32 %55, i32 %56, i32 %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* @DRIVER_NAME, align 4
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_tps, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @TPS_DEFGPIO, align 4
  %69 = call i32 @i2c_smbus_read_byte_data(i32 %67, i32 %68)
  %70 = call i32 @pr_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %60, i8* %64, i32 %69)
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_tps, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = call i32 @mutex_unlock(i32* %72)
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %52, %21, %10
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(i32, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
