; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/cx25840/extr_cx25840-core.c_cx25840_s_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/cx25840/extr_cx25840-core.c_cx25840_s_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.cx25840_state = type { i32 }
%struct.i2c_client = type { i32 }

@cx25840_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"%s video output\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @cx25840_s_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx25840_s_stream(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cx25840_state*, align 8
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %10 = call %struct.cx25840_state* @to_state(%struct.v4l2_subdev* %9)
  store %struct.cx25840_state* %10, %struct.cx25840_state** %6, align 8
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %12 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %11)
  store %struct.i2c_client* %12, %struct.i2c_client** %7, align 8
  %13 = load i32, i32* @cx25840_debug, align 4
  %14 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %19 = call i32 @v4l_dbg(i32 1, i32 %13, %struct.i2c_client* %14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %21 = call i64 @is_cx2388x(%struct.cx25840_state* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %2
  %24 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %25 = call i64 @is_cx231xx(%struct.cx25840_state* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %2
  store i32 0, i32* %3, align 4
  br label %58

28:                                               ; preds = %23
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %28
  %32 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %33 = call i32 @cx25840_read(%struct.i2c_client* %32, i32 277)
  %34 = or i32 %33, 12
  store i32 %34, i32* %8, align 4
  %35 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @cx25840_write(%struct.i2c_client* %35, i32 277, i32 %36)
  %38 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %39 = call i32 @cx25840_read(%struct.i2c_client* %38, i32 278)
  %40 = or i32 %39, 4
  store i32 %40, i32* %8, align 4
  %41 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @cx25840_write(%struct.i2c_client* %41, i32 278, i32 %42)
  br label %57

44:                                               ; preds = %28
  %45 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %46 = call i32 @cx25840_read(%struct.i2c_client* %45, i32 277)
  %47 = and i32 %46, -13
  store i32 %47, i32* %8, align 4
  %48 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @cx25840_write(%struct.i2c_client* %48, i32 277, i32 %49)
  %51 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %52 = call i32 @cx25840_read(%struct.i2c_client* %51, i32 278)
  %53 = and i32 %52, -5
  store i32 %53, i32* %8, align 4
  %54 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @cx25840_write(%struct.i2c_client* %54, i32 278, i32 %55)
  br label %57

57:                                               ; preds = %44, %31
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %27
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.cx25840_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l_dbg(i32, i32, %struct.i2c_client*, i8*, i8*) #1

declare dso_local i64 @is_cx2388x(%struct.cx25840_state*) #1

declare dso_local i64 @is_cx231xx(%struct.cx25840_state*) #1

declare dso_local i32 @cx25840_read(%struct.i2c_client*, i32) #1

declare dso_local i32 @cx25840_write(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
