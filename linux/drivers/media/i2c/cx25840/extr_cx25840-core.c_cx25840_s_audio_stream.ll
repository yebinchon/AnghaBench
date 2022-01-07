; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/cx25840/extr_cx25840-core.c_cx25840_s_audio_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/cx25840/extr_cx25840-core.c_cx25840_s_audio_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.cx25840_state = type { i32 }
%struct.i2c_client = type { i32 }

@cx25840_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"%s audio output\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @cx25840_s_audio_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx25840_s_audio_stream(%struct.v4l2_subdev* %0, i32 %1) #0 {
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
  %13 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %14 = call i64 @is_cx2583x(%struct.cx25840_state* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %2
  %17 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %18 = call i64 @is_cx2388x(%struct.cx25840_state* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %22 = call i64 @is_cx231xx(%struct.cx25840_state* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20, %16, %2
  store i32 0, i32* %3, align 4
  br label %62

25:                                               ; preds = %20
  %26 = load i32, i32* @cx25840_debug, align 4
  %27 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %32 = call i32 @v4l_dbg(i32 1, i32 %26, %struct.i2c_client* %27, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %31)
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %25
  %36 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %37 = call i32 @cx25840_read(%struct.i2c_client* %36, i32 277)
  %38 = or i32 %37, 128
  store i32 %38, i32* %8, align 4
  %39 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @cx25840_write(%struct.i2c_client* %39, i32 277, i32 %40)
  %42 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %43 = call i32 @cx25840_read(%struct.i2c_client* %42, i32 278)
  %44 = or i32 %43, 3
  store i32 %44, i32* %8, align 4
  %45 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @cx25840_write(%struct.i2c_client* %45, i32 278, i32 %46)
  br label %61

48:                                               ; preds = %25
  %49 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %50 = call i32 @cx25840_read(%struct.i2c_client* %49, i32 277)
  %51 = and i32 %50, -129
  store i32 %51, i32* %8, align 4
  %52 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @cx25840_write(%struct.i2c_client* %52, i32 277, i32 %53)
  %55 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %56 = call i32 @cx25840_read(%struct.i2c_client* %55, i32 278)
  %57 = and i32 %56, -4
  store i32 %57, i32* %8, align 4
  %58 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @cx25840_write(%struct.i2c_client* %58, i32 278, i32 %59)
  br label %61

61:                                               ; preds = %48, %35
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %24
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local %struct.cx25840_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i64 @is_cx2583x(%struct.cx25840_state*) #1

declare dso_local i64 @is_cx2388x(%struct.cx25840_state*) #1

declare dso_local i64 @is_cx231xx(%struct.cx25840_state*) #1

declare dso_local i32 @v4l_dbg(i32, i32, %struct.i2c_client*, i8*, i8*) #1

declare dso_local i32 @cx25840_read(%struct.i2c_client*, i32) #1

declare dso_local i32 @cx25840_write(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
