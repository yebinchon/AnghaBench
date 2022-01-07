; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvaudio.c_tda9840_getrxsubchans.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvaudio.c_tda9840_getrxsubchans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CHIPSTATE = type { %struct.v4l2_subdev }
%struct.v4l2_subdev = type { i32 }

@V4L2_TUNER_SUB_MONO = common dso_local global i32 0, align 4
@TDA9840_DS_DUAL = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_LANG1 = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_LANG2 = common dso_local global i32 0, align 4
@TDA9840_ST_STEREO = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_STEREO = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"tda9840_getrxsubchans(): raw chip read: %d, return: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.CHIPSTATE*)* @tda9840_getrxsubchans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda9840_getrxsubchans(%struct.CHIPSTATE* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.CHIPSTATE*, align 8
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.CHIPSTATE* %0, %struct.CHIPSTATE** %3, align 8
  %7 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %3, align 8
  %8 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %7, i32 0, i32 0
  store %struct.v4l2_subdev* %8, %struct.v4l2_subdev** %4, align 8
  %9 = load i32, i32* @V4L2_TUNER_SUB_MONO, align 4
  store i32 %9, i32* %6, align 4
  %10 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %3, align 8
  %11 = call i32 @chip_read(%struct.CHIPSTATE* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %2, align 4
  br label %41

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @TDA9840_DS_DUAL, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = load i32, i32* @V4L2_TUNER_SUB_LANG1, align 4
  %23 = load i32, i32* @V4L2_TUNER_SUB_LANG2, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* %6, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %21, %16
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @TDA9840_ST_STEREO, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @V4L2_TUNER_SUB_STEREO, align 4
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %32, %27
  %35 = load i32, i32* @debug, align 4
  %36 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @v4l2_dbg(i32 1, i32 %35, %struct.v4l2_subdev* %36, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %38)
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %34, %14
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @chip_read(%struct.CHIPSTATE*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
