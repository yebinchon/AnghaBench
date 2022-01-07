; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_wm8739.c_wm8739_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_wm8739.c_wm8739_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.i2c_client = type { i32 }

@TOT_REGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Invalid register R%d\0A\00", align 1
@debug = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"write: %02x %02x\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"I2C: cannot write %03x to register R%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32, i32)* @wm8739_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8739_write(%struct.v4l2_subdev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.i2c_client*, align 8
  %9 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %11 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %10)
  store %struct.i2c_client* %11, %struct.i2c_client** %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @TOT_REGS, align 4
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %14, %3
  %19 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 (%struct.v4l2_subdev*, i8*, i32, ...) @v4l2_err(%struct.v4l2_subdev* %19, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %20)
  store i32 -1, i32* %4, align 4
  br label %52

22:                                               ; preds = %14
  %23 = load i32, i32* @debug, align 4
  %24 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @v4l2_dbg(i32 1, i32 %23, %struct.v4l2_subdev* %24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %25, i32 %26)
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %44, %22
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %29, 3
  br i1 %30, label %31, label %47

31:                                               ; preds = %28
  %32 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %33 = load i32, i32* %6, align 4
  %34 = shl i32 %33, 1
  %35 = load i32, i32* %7, align 4
  %36 = ashr i32 %35, 8
  %37 = or i32 %34, %36
  %38 = load i32, i32* %7, align 4
  %39 = and i32 %38, 255
  %40 = call i64 @i2c_smbus_write_byte_data(%struct.i2c_client* %32, i32 %37, i32 %39)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %52

43:                                               ; preds = %31
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %9, align 4
  br label %28

47:                                               ; preds = %28
  %48 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 (%struct.v4l2_subdev*, i8*, i32, ...) @v4l2_err(%struct.v4l2_subdev* %48, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %49, i32 %50)
  store i32 -1, i32* %4, align 4
  br label %52

52:                                               ; preds = %47, %42, %18
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_err(%struct.v4l2_subdev*, i8*, i32, ...) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i32, i32) #1

declare dso_local i64 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
