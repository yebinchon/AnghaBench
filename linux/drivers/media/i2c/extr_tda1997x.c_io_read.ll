; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tda1997x.c_io_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tda1997x.c_io_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.tda1997x_state = type { i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"read reg error: reg=%2x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @io_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_read(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tda1997x_state*, align 8
  %6 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %8 = call %struct.tda1997x_state* @to_state(%struct.v4l2_subdev* %7)
  store %struct.tda1997x_state* %8, %struct.tda1997x_state** %5, align 8
  %9 = load %struct.tda1997x_state*, %struct.tda1997x_state** %5, align 8
  %10 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = ashr i32 %13, 8
  %15 = call i64 @tda1997x_setpage(%struct.v4l2_subdev* %12, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 -1, i32* %6, align 4
  br label %35

18:                                               ; preds = %2
  %19 = load %struct.tda1997x_state*, %struct.tda1997x_state** %5, align 8
  %20 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %4, align 4
  %23 = and i32 %22, 255
  %24 = call i32 @i2c_smbus_read_byte_data(i32 %21, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %18
  %28 = load %struct.tda1997x_state*, %struct.tda1997x_state** %5, align 8
  %29 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %4, align 4
  %32 = and i32 %31, 255
  %33 = call i32 @v4l_err(i32 %30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %32)
  store i32 -1, i32* %6, align 4
  br label %35

34:                                               ; preds = %18
  br label %35

35:                                               ; preds = %34, %27, %17
  %36 = load %struct.tda1997x_state*, %struct.tda1997x_state** %5, align 8
  %37 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %36, i32 0, i32 0
  %38 = call i32 @mutex_unlock(i32* %37)
  %39 = load i32, i32* %6, align 4
  ret i32 %39
}

declare dso_local %struct.tda1997x_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @tda1997x_setpage(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(i32, i32) #1

declare dso_local i32 @v4l_err(i32, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
