; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tda1997x.c_io_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tda1997x.c_io_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.tda1997x_state = type { i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"write reg error:reg=%2x,val=%2x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32, i32)* @io_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_write(%struct.v4l2_subdev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tda1997x_state*, align 8
  %8 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %10 = call %struct.tda1997x_state* @to_state(%struct.v4l2_subdev* %9)
  store %struct.tda1997x_state* %10, %struct.tda1997x_state** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.tda1997x_state*, %struct.tda1997x_state** %7, align 8
  %12 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = ashr i32 %15, 8
  %17 = call i64 @tda1997x_setpage(%struct.v4l2_subdev* %14, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 -1, i32* %8, align 4
  br label %39

20:                                               ; preds = %3
  %21 = load %struct.tda1997x_state*, %struct.tda1997x_state** %7, align 8
  %22 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %24, 255
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @i2c_smbus_write_byte_data(i32 %23, i32 %25, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %20
  %31 = load %struct.tda1997x_state*, %struct.tda1997x_state** %7, align 8
  %32 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %5, align 4
  %35 = and i32 %34, 255
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @v4l_err(i32 %33, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %36)
  store i32 -1, i32* %8, align 4
  br label %39

38:                                               ; preds = %20
  br label %39

39:                                               ; preds = %38, %30, %19
  %40 = load %struct.tda1997x_state*, %struct.tda1997x_state** %7, align 8
  %41 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %40, i32 0, i32 0
  %42 = call i32 @mutex_unlock(i32* %41)
  %43 = load i32, i32* %8, align 4
  ret i32 %43
}

declare dso_local %struct.tda1997x_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @tda1997x_setpage(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

declare dso_local i32 @v4l_err(i32, i8*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
