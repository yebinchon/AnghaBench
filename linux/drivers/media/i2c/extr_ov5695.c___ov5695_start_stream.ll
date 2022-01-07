; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5695.c___ov5695_start_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5695.c___ov5695_start_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov5695 = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ov5695_global_regs = common dso_local global i32 0, align 4
@OV5695_REG_CTRL_MODE = common dso_local global i32 0, align 4
@OV5695_REG_VALUE_08BIT = common dso_local global i32 0, align 4
@OV5695_MODE_STREAMING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ov5695*)* @__ov5695_start_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ov5695_start_stream(%struct.ov5695* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ov5695*, align 8
  %4 = alloca i32, align 4
  store %struct.ov5695* %0, %struct.ov5695** %3, align 8
  %5 = load %struct.ov5695*, %struct.ov5695** %3, align 8
  %6 = getelementptr inbounds %struct.ov5695, %struct.ov5695* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @ov5695_global_regs, align 4
  %9 = call i32 @ov5695_write_array(i32 %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %44

14:                                               ; preds = %1
  %15 = load %struct.ov5695*, %struct.ov5695** %3, align 8
  %16 = getelementptr inbounds %struct.ov5695, %struct.ov5695* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.ov5695*, %struct.ov5695** %3, align 8
  %19 = getelementptr inbounds %struct.ov5695, %struct.ov5695* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ov5695_write_array(i32 %17, i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %14
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %44

28:                                               ; preds = %14
  %29 = load %struct.ov5695*, %struct.ov5695** %3, align 8
  %30 = getelementptr inbounds %struct.ov5695, %struct.ov5695* %29, i32 0, i32 1
  %31 = call i32 @__v4l2_ctrl_handler_setup(i32* %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* %2, align 4
  br label %44

36:                                               ; preds = %28
  %37 = load %struct.ov5695*, %struct.ov5695** %3, align 8
  %38 = getelementptr inbounds %struct.ov5695, %struct.ov5695* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @OV5695_REG_CTRL_MODE, align 4
  %41 = load i32, i32* @OV5695_REG_VALUE_08BIT, align 4
  %42 = load i32, i32* @OV5695_MODE_STREAMING, align 4
  %43 = call i32 @ov5695_write_reg(i32 %39, i32 %40, i32 %41, i32 %42)
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %36, %34, %26, %12
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @ov5695_write_array(i32, i32) #1

declare dso_local i32 @__v4l2_ctrl_handler_setup(i32*) #1

declare dso_local i32 @ov5695_write_reg(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
