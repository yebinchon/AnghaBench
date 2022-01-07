; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/stk1160/extr_stk1160-i2c.c_stk1160_i2c_busy_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/stk1160/extr_stk1160-i2c.c_stk1160_i2c_busy_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stk1160 = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@STK1160_I2C_TIMEOUT = common dso_local global i32 0, align 4
@STK1160_SICTL = common dso_local global i64 0, align 8
@USEC_PER_MSEC = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stk1160*, i32)* @stk1160_i2c_busy_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stk1160_i2c_busy_wait(%struct.stk1160* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stk1160*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.stk1160* %0, %struct.stk1160** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i64, i64* @jiffies, align 8
  %9 = load i32, i32* @STK1160_I2C_TIMEOUT, align 4
  %10 = call i64 @msecs_to_jiffies(i32 %9)
  %11 = add i64 %8, %10
  store i64 %11, i64* %6, align 8
  br label %12

12:                                               ; preds = %26, %2
  %13 = load i64, i64* %6, align 8
  %14 = call i64 @time_is_after_jiffies(i64 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %32

16:                                               ; preds = %12
  %17 = load %struct.stk1160*, %struct.stk1160** %4, align 8
  %18 = load i64, i64* @STK1160_SICTL, align 8
  %19 = add nsw i64 %18, 1
  %20 = call i32 @stk1160_read_reg(%struct.stk1160* %17, i64 %19, i32* %7)
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  br label %35

26:                                               ; preds = %16
  %27 = load i32, i32* @USEC_PER_MSEC, align 4
  %28 = mul nsw i32 10, %27
  %29 = load i32, i32* @USEC_PER_MSEC, align 4
  %30 = mul nsw i32 20, %29
  %31 = call i32 @usleep_range(i32 %28, i32 %30)
  br label %12

32:                                               ; preds = %12
  %33 = load i32, i32* @ETIMEDOUT, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %36

35:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %32
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_is_after_jiffies(i64) #1

declare dso_local i32 @stk1160_read_reg(%struct.stk1160*, i64, i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
