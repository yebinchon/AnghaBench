; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_tc3589x.c_tc3589x_chip_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_tc3589x.c_tc3589x_chip_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tc3589x = type { i32 }

@TC3589x_MANFCODE = common dso_local global i32 0, align 4
@TC3589x_VERSION = common dso_local global i32 0, align 4
@TC3589x_MANFCODE_MAGIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"unknown manufacturer: %#x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"manufacturer: %#x, version: %#x\0A\00", align 1
@TC3589x_RSTCTRL = common dso_local global i32 0, align 4
@TC3589x_RSTCTRL_TIMRST = common dso_local global i32 0, align 4
@TC3589x_RSTCTRL_ROTRST = common dso_local global i32 0, align 4
@TC3589x_RSTCTRL_KBDRST = common dso_local global i32 0, align 4
@TC3589x_RSTINTCLR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tc3589x*)* @tc3589x_chip_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc3589x_chip_init(%struct.tc3589x* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tc3589x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tc3589x* %0, %struct.tc3589x** %3, align 8
  %7 = load %struct.tc3589x*, %struct.tc3589x** %3, align 8
  %8 = load i32, i32* @TC3589x_MANFCODE, align 4
  %9 = call i32 @tc3589x_reg_read(%struct.tc3589x* %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %57

14:                                               ; preds = %1
  %15 = load %struct.tc3589x*, %struct.tc3589x** %3, align 8
  %16 = load i32, i32* @TC3589x_VERSION, align 4
  %17 = call i32 @tc3589x_reg_read(%struct.tc3589x* %15, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %57

22:                                               ; preds = %14
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @TC3589x_MANFCODE_MAGIC, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %22
  %27 = load %struct.tc3589x*, %struct.tc3589x** %3, align 8
  %28 = getelementptr inbounds %struct.tc3589x, %struct.tc3589x* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @dev_err(i32 %29, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %57

34:                                               ; preds = %22
  %35 = load %struct.tc3589x*, %struct.tc3589x** %3, align 8
  %36 = getelementptr inbounds %struct.tc3589x, %struct.tc3589x* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @dev_info(i32 %37, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %39)
  %41 = load %struct.tc3589x*, %struct.tc3589x** %3, align 8
  %42 = load i32, i32* @TC3589x_RSTCTRL, align 4
  %43 = load i32, i32* @TC3589x_RSTCTRL_TIMRST, align 4
  %44 = load i32, i32* @TC3589x_RSTCTRL_ROTRST, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @TC3589x_RSTCTRL_KBDRST, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @tc3589x_reg_write(%struct.tc3589x* %41, i32 %42, i32 %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %34
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %2, align 4
  br label %57

53:                                               ; preds = %34
  %54 = load %struct.tc3589x*, %struct.tc3589x** %3, align 8
  %55 = load i32, i32* @TC3589x_RSTINTCLR, align 4
  %56 = call i32 @tc3589x_reg_write(%struct.tc3589x* %54, i32 %55, i32 1)
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %53, %51, %26, %20, %12
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @tc3589x_reg_read(%struct.tc3589x*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32) #1

declare dso_local i32 @tc3589x_reg_write(%struct.tc3589x*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
