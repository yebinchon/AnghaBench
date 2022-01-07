; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tw2804.c_tw2804_g_volatile_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tw2804.c_tw2804_g_volatile_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl = type { i32, i8* }
%struct.tw2804 = type { i32 }
%struct.i2c_client = type { i32 }

@TW2804_REG_GAIN = common dso_local global i32 0, align 4
@TW2804_REG_CHROMA_GAIN = common dso_local global i32 0, align 4
@TW2804_REG_BLUE_BALANCE = common dso_local global i32 0, align 4
@TW2804_REG_RED_BALANCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ctrl*)* @tw2804_g_volatile_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tw2804_g_volatile_ctrl(%struct.v4l2_ctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_ctrl*, align 8
  %4 = alloca %struct.tw2804*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  store %struct.v4l2_ctrl* %0, %struct.v4l2_ctrl** %3, align 8
  %6 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %7 = call %struct.tw2804* @to_state_from_ctrl(%struct.v4l2_ctrl* %6)
  store %struct.tw2804* %7, %struct.tw2804** %4, align 8
  %8 = load %struct.tw2804*, %struct.tw2804** %4, align 8
  %9 = getelementptr inbounds %struct.tw2804, %struct.tw2804* %8, i32 0, i32 0
  %10 = call %struct.i2c_client* @v4l2_get_subdevdata(i32* %9)
  store %struct.i2c_client* %10, %struct.i2c_client** %5, align 8
  %11 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %12 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %38 [
    i32 129, label %14
    i32 130, label %20
    i32 131, label %26
    i32 128, label %32
  ]

14:                                               ; preds = %1
  %15 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %16 = load i32, i32* @TW2804_REG_GAIN, align 4
  %17 = call i8* @read_reg(%struct.i2c_client* %15, i32 %16, i32 0)
  %18 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %19 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %18, i32 0, i32 1
  store i8* %17, i8** %19, align 8
  store i32 0, i32* %2, align 4
  br label %39

20:                                               ; preds = %1
  %21 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %22 = load i32, i32* @TW2804_REG_CHROMA_GAIN, align 4
  %23 = call i8* @read_reg(%struct.i2c_client* %21, i32 %22, i32 0)
  %24 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %25 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  store i32 0, i32* %2, align 4
  br label %39

26:                                               ; preds = %1
  %27 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %28 = load i32, i32* @TW2804_REG_BLUE_BALANCE, align 4
  %29 = call i8* @read_reg(%struct.i2c_client* %27, i32 %28, i32 0)
  %30 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %31 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  store i32 0, i32* %2, align 4
  br label %39

32:                                               ; preds = %1
  %33 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %34 = load i32, i32* @TW2804_REG_RED_BALANCE, align 4
  %35 = call i8* @read_reg(%struct.i2c_client* %33, i32 %34, i32 0)
  %36 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %37 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  store i32 0, i32* %2, align 4
  br label %39

38:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %32, %26, %20, %14
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local %struct.tw2804* @to_state_from_ctrl(%struct.v4l2_ctrl*) #1

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(i32*) #1

declare dso_local i8* @read_reg(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
