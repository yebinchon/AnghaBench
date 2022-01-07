; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_bt856.c_bt856_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_bt856.c_bt856_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.bt856 = type { i32 }

@debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"init\0A\00", align 1
@V4L2_STD_NTSC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @bt856_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bt856_init(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bt856*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %7 = call %struct.bt856* @to_bt856(%struct.v4l2_subdev* %6)
  store %struct.bt856* %7, %struct.bt856** %5, align 8
  %8 = load i64, i64* @debug, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %10 = call i32 @v4l2_dbg(i32 1, i64 %8, %struct.v4l2_subdev* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.bt856*, %struct.bt856** %5, align 8
  %12 = call i32 @bt856_write(%struct.bt856* %11, i32 220, i32 24)
  %13 = load %struct.bt856*, %struct.bt856** %5, align 8
  %14 = call i32 @bt856_write(%struct.bt856* %13, i32 218, i32 0)
  %15 = load %struct.bt856*, %struct.bt856** %5, align 8
  %16 = call i32 @bt856_write(%struct.bt856* %15, i32 222, i32 0)
  %17 = load %struct.bt856*, %struct.bt856** %5, align 8
  %18 = call i32 @bt856_setbit(%struct.bt856* %17, i32 220, i32 3, i32 1)
  %19 = load %struct.bt856*, %struct.bt856** %5, align 8
  %20 = call i32 @bt856_setbit(%struct.bt856* %19, i32 220, i32 4, i32 1)
  %21 = load %struct.bt856*, %struct.bt856** %5, align 8
  %22 = getelementptr inbounds %struct.bt856, %struct.bt856* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @V4L2_STD_NTSC, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load %struct.bt856*, %struct.bt856** %5, align 8
  %29 = call i32 @bt856_setbit(%struct.bt856* %28, i32 220, i32 2, i32 0)
  br label %33

30:                                               ; preds = %2
  %31 = load %struct.bt856*, %struct.bt856** %5, align 8
  %32 = call i32 @bt856_setbit(%struct.bt856* %31, i32 220, i32 2, i32 1)
  br label %33

33:                                               ; preds = %30, %27
  %34 = load %struct.bt856*, %struct.bt856** %5, align 8
  %35 = call i32 @bt856_setbit(%struct.bt856* %34, i32 220, i32 1, i32 1)
  %36 = load %struct.bt856*, %struct.bt856** %5, align 8
  %37 = call i32 @bt856_setbit(%struct.bt856* %36, i32 222, i32 4, i32 0)
  %38 = load %struct.bt856*, %struct.bt856** %5, align 8
  %39 = call i32 @bt856_setbit(%struct.bt856* %38, i32 222, i32 3, i32 1)
  %40 = load i64, i64* @debug, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  %43 = load %struct.bt856*, %struct.bt856** %5, align 8
  %44 = call i32 @bt856_dump(%struct.bt856* %43)
  br label %45

45:                                               ; preds = %42, %33
  ret i32 0
}

declare dso_local %struct.bt856* @to_bt856(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_dbg(i32, i64, %struct.v4l2_subdev*, i8*) #1

declare dso_local i32 @bt856_write(%struct.bt856*, i32, i32) #1

declare dso_local i32 @bt856_setbit(%struct.bt856*, i32, i32, i32) #1

declare dso_local i32 @bt856_dump(%struct.bt856*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
