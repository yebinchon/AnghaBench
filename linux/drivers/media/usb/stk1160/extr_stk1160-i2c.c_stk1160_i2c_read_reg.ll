; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/stk1160/extr_stk1160-i2c.c_stk1160_i2c_read_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/stk1160/extr_stk1160-i2c.c_stk1160_i2c_read_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stk1160 = type { i32 }

@STK1160_SICTL_SDA = common dso_local global i32 0, align 4
@STK1160_SBUSR_RA = common dso_local global i32 0, align 4
@STK1160_SICTL = common dso_local global i32 0, align 4
@STK1160_SBUSR_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stk1160*, i32, i32, i32*)* @stk1160_i2c_read_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stk1160_i2c_read_reg(%struct.stk1160* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.stk1160*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.stk1160* %0, %struct.stk1160** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %11 = load %struct.stk1160*, %struct.stk1160** %6, align 8
  %12 = load i32, i32* @STK1160_SICTL_SDA, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @stk1160_write_reg(%struct.stk1160* %11, i32 %12, i32 %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* %5, align 4
  br label %53

19:                                               ; preds = %4
  %20 = load %struct.stk1160*, %struct.stk1160** %6, align 8
  %21 = load i32, i32* @STK1160_SBUSR_RA, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @stk1160_write_reg(%struct.stk1160* %20, i32 %21, i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %5, align 4
  br label %53

28:                                               ; preds = %19
  %29 = load %struct.stk1160*, %struct.stk1160** %6, align 8
  %30 = load i32, i32* @STK1160_SICTL, align 4
  %31 = call i32 @stk1160_write_reg(%struct.stk1160* %29, i32 %30, i32 32)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %5, align 4
  br label %53

36:                                               ; preds = %28
  %37 = load %struct.stk1160*, %struct.stk1160** %6, align 8
  %38 = call i32 @stk1160_i2c_busy_wait(%struct.stk1160* %37, i32 1)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %5, align 4
  br label %53

43:                                               ; preds = %36
  %44 = load %struct.stk1160*, %struct.stk1160** %6, align 8
  %45 = load i32, i32* @STK1160_SBUSR_RD, align 4
  %46 = load i32*, i32** %9, align 8
  %47 = call i32 @stk1160_read_reg(%struct.stk1160* %44, i32 %45, i32* %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %5, align 4
  br label %53

52:                                               ; preds = %43
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %52, %50, %41, %34, %26, %17
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i32 @stk1160_write_reg(%struct.stk1160*, i32, i32) #1

declare dso_local i32 @stk1160_i2c_busy_wait(%struct.stk1160*, i32) #1

declare dso_local i32 @stk1160_read_reg(%struct.stk1160*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
