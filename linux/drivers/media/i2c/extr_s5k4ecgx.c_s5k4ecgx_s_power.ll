; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k4ecgx.c_s5k4ecgx_s_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k4ecgx.c_s5k4ecgx_s_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.s5k4ecgx = type { i32 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Switching %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @s5k4ecgx_s_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5k4ecgx_s_power(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.s5k4ecgx*, align 8
  %7 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %9 = call %struct.s5k4ecgx* @to_s5k4ecgx(%struct.v4l2_subdev* %8)
  store %struct.s5k4ecgx* %9, %struct.s5k4ecgx** %6, align 8
  %10 = load i32, i32* @debug, align 4
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %16 = call i32 @v4l2_dbg(i32 1, i32 %10, %struct.v4l2_subdev* %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %39

19:                                               ; preds = %2
  %20 = load %struct.s5k4ecgx*, %struct.s5k4ecgx** %6, align 8
  %21 = call i32 @__s5k4ecgx_power_on(%struct.s5k4ecgx* %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %3, align 4
  br label %44

26:                                               ; preds = %19
  %27 = call i32 @msleep(i32 100)
  %28 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %29 = call i32 @s5k4ecgx_init_sensor(%struct.v4l2_subdev* %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load %struct.s5k4ecgx*, %struct.s5k4ecgx** %6, align 8
  %34 = call i32 @__s5k4ecgx_power_off(%struct.s5k4ecgx* %33)
  br label %38

35:                                               ; preds = %26
  %36 = load %struct.s5k4ecgx*, %struct.s5k4ecgx** %6, align 8
  %37 = getelementptr inbounds %struct.s5k4ecgx, %struct.s5k4ecgx* %36, i32 0, i32 0
  store i32 1, i32* %37, align 4
  br label %38

38:                                               ; preds = %35, %32
  br label %42

39:                                               ; preds = %2
  %40 = load %struct.s5k4ecgx*, %struct.s5k4ecgx** %6, align 8
  %41 = call i32 @__s5k4ecgx_power_off(%struct.s5k4ecgx* %40)
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %39, %38
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %42, %24
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.s5k4ecgx* @to_s5k4ecgx(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i8*) #1

declare dso_local i32 @__s5k4ecgx_power_on(%struct.s5k4ecgx*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @s5k4ecgx_init_sensor(%struct.v4l2_subdev*) #1

declare dso_local i32 @__s5k4ecgx_power_off(%struct.s5k4ecgx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
