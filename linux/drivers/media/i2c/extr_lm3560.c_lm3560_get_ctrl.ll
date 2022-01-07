; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_lm3560.c_lm3560_get_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_lm3560.c_lm3560_get_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.lm3560_flash = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_CID_FLASH_FAULT = common dso_local global i64 0, align 8
@REG_FLAG = common dso_local global i32 0, align 4
@FAULT_SHORT_CIRCUIT = common dso_local global i32 0, align 4
@V4L2_FLASH_FAULT_SHORT_CIRCUIT = common dso_local global i32 0, align 4
@FAULT_OVERTEMP = common dso_local global i32 0, align 4
@V4L2_FLASH_FAULT_OVER_TEMPERATURE = common dso_local global i32 0, align 4
@FAULT_TIMEOUT = common dso_local global i32 0, align 4
@V4L2_FLASH_FAULT_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ctrl*, i32)* @lm3560_get_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm3560_get_ctrl(%struct.v4l2_ctrl* %0, i32 %1) #0 {
  %3 = alloca %struct.v4l2_ctrl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lm3560_flash*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.v4l2_ctrl* %0, %struct.v4l2_ctrl** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.lm3560_flash* @to_lm3560_flash(%struct.v4l2_ctrl* %9, i32 %10)
  store %struct.lm3560_flash* %11, %struct.lm3560_flash** %5, align 8
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %6, align 4
  %14 = load %struct.lm3560_flash*, %struct.lm3560_flash** %5, align 8
  %15 = getelementptr inbounds %struct.lm3560_flash, %struct.lm3560_flash* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %18 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @V4L2_CID_FLASH_FAULT, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %63

22:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  %23 = load %struct.lm3560_flash*, %struct.lm3560_flash** %5, align 8
  %24 = getelementptr inbounds %struct.lm3560_flash, %struct.lm3560_flash* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @REG_FLAG, align 4
  %27 = call i32 @regmap_read(i32 %25, i32 %26, i32* %8)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %64

31:                                               ; preds = %22
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @FAULT_SHORT_CIRCUIT, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i32, i32* @V4L2_FLASH_FAULT_SHORT_CIRCUIT, align 4
  %38 = load i32, i32* %7, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %36, %31
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @FAULT_OVERTEMP, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i32, i32* @V4L2_FLASH_FAULT_OVER_TEMPERATURE, align 4
  %47 = load i32, i32* %7, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %45, %40
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @FAULT_TIMEOUT, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load i32, i32* @V4L2_FLASH_FAULT_TIMEOUT, align 4
  %56 = load i32, i32* %7, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %54, %49
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %61 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 8
  br label %63

63:                                               ; preds = %58, %2
  br label %64

64:                                               ; preds = %63, %30
  %65 = load %struct.lm3560_flash*, %struct.lm3560_flash** %5, align 8
  %66 = getelementptr inbounds %struct.lm3560_flash, %struct.lm3560_flash* %65, i32 0, i32 0
  %67 = call i32 @mutex_unlock(i32* %66)
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local %struct.lm3560_flash* @to_lm3560_flash(%struct.v4l2_ctrl*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
