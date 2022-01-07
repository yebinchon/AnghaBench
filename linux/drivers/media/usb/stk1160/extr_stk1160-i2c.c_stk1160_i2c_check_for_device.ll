; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/stk1160/extr_stk1160-i2c.c_stk1160_i2c_check_for_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/stk1160/extr_stk1160-i2c.c_stk1160_i2c_check_for_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stk1160 = type { i32 }

@STK1160_SICTL_SDA = common dso_local global i32 0, align 4
@STK1160_SBUSR_RA = common dso_local global i32 0, align 4
@STK1160_SICTL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stk1160*, i8)* @stk1160_i2c_check_for_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stk1160_i2c_check_for_device(%struct.stk1160* %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stk1160*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store %struct.stk1160* %0, %struct.stk1160** %4, align 8
  store i8 %1, i8* %5, align 1
  %7 = load %struct.stk1160*, %struct.stk1160** %4, align 8
  %8 = load i32, i32* @STK1160_SICTL_SDA, align 4
  %9 = load i8, i8* %5, align 1
  %10 = zext i8 %9 to i32
  %11 = call i32 @stk1160_write_reg(%struct.stk1160* %7, i32 %8, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %41

16:                                               ; preds = %2
  %17 = load %struct.stk1160*, %struct.stk1160** %4, align 8
  %18 = load i32, i32* @STK1160_SBUSR_RA, align 4
  %19 = call i32 @stk1160_write_reg(%struct.stk1160* %17, i32 %18, i32 0)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %3, align 4
  br label %41

24:                                               ; preds = %16
  %25 = load %struct.stk1160*, %struct.stk1160** %4, align 8
  %26 = load i32, i32* @STK1160_SICTL, align 4
  %27 = call i32 @stk1160_write_reg(%struct.stk1160* %25, i32 %26, i32 32)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %3, align 4
  br label %41

32:                                               ; preds = %24
  %33 = load %struct.stk1160*, %struct.stk1160** %4, align 8
  %34 = call i32 @stk1160_i2c_busy_wait(%struct.stk1160* %33, i32 1)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %41

40:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %37, %30, %22, %14
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @stk1160_write_reg(%struct.stk1160*, i32, i32) #1

declare dso_local i32 @stk1160_i2c_busy_wait(%struct.stk1160*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
