; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_bt856.c_bt856_s_std_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_bt856.c_bt856_s_std_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.bt856 = type { i32 }

@debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"set norm %llx\0A\00", align 1
@V4L2_STD_NTSC = common dso_local global i32 0, align 4
@V4L2_STD_PAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @bt856_s_std_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bt856_s_std_output(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bt856*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %8 = call %struct.bt856* @to_bt856(%struct.v4l2_subdev* %7)
  store %struct.bt856* %8, %struct.bt856** %6, align 8
  %9 = load i64, i64* @debug, align 8
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = call i32 @v4l2_dbg(i32 1, i64 %9, %struct.v4l2_subdev* %10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64 %12)
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @V4L2_STD_NTSC, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.bt856*, %struct.bt856** %6, align 8
  %20 = call i32 @bt856_setbit(%struct.bt856* %19, i32 220, i32 2, i32 0)
  br label %35

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @V4L2_STD_PAL, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.bt856*, %struct.bt856** %6, align 8
  %28 = call i32 @bt856_setbit(%struct.bt856* %27, i32 220, i32 2, i32 1)
  %29 = load %struct.bt856*, %struct.bt856** %6, align 8
  %30 = call i32 @bt856_setbit(%struct.bt856* %29, i32 218, i32 0, i32 0)
  br label %34

31:                                               ; preds = %21
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %45

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %34, %18
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.bt856*, %struct.bt856** %6, align 8
  %38 = getelementptr inbounds %struct.bt856, %struct.bt856* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load i64, i64* @debug, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load %struct.bt856*, %struct.bt856** %6, align 8
  %43 = call i32 @bt856_dump(%struct.bt856* %42)
  br label %44

44:                                               ; preds = %41, %35
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %31
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.bt856* @to_bt856(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_dbg(i32, i64, %struct.v4l2_subdev*, i8*, i64) #1

declare dso_local i32 @bt856_setbit(%struct.bt856*, i32, i32, i32) #1

declare dso_local i32 @bt856_dump(%struct.bt856*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
