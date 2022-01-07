; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvaudio.c_tda9874a_getrxsubchans.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvaudio.c_tda9874a_getrxsubchans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CHIPSTATE = type { %struct.TYPE_2__, %struct.v4l2_subdev }
%struct.TYPE_2__ = type { i32* }
%struct.v4l2_subdev = type { i32 }

@V4L2_TUNER_SUB_MONO = common dso_local global i32 0, align 4
@TDA9874A_DSR = common dso_local global i32 0, align 4
@TDA9874A_NSR = common dso_local global i32 0, align 4
@TDA9874A_NECR = common dso_local global i32 0, align 4
@MAXREGS = common dso_local global i32 0, align 4
@tda9874a_mode = common dso_local global i64 0, align 8
@V4L2_TUNER_SUB_STEREO = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_LANG1 = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_LANG2 = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"tda9874a_getrxsubchans(): DSR=0x%X, NSR=0x%X, NECR=0x%X, return: %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.CHIPSTATE*)* @tda9874a_getrxsubchans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda9874a_getrxsubchans(%struct.CHIPSTATE* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.CHIPSTATE*, align 8
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.CHIPSTATE* %0, %struct.CHIPSTATE** %3, align 8
  %9 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %3, align 8
  %10 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %9, i32 0, i32 1
  store %struct.v4l2_subdev* %10, %struct.v4l2_subdev** %4, align 8
  %11 = load i32, i32* @V4L2_TUNER_SUB_MONO, align 4
  store i32 %11, i32* %7, align 4
  %12 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %3, align 8
  %13 = load i32, i32* @TDA9874A_DSR, align 4
  %14 = call i32 @chip_read2(%struct.CHIPSTATE* %12, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %2, align 4
  br label %99

19:                                               ; preds = %1
  %20 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %3, align 8
  %21 = load i32, i32* @TDA9874A_NSR, align 4
  %22 = call i32 @chip_read2(%struct.CHIPSTATE* %20, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %2, align 4
  br label %99

27:                                               ; preds = %19
  %28 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %3, align 8
  %29 = load i32, i32* @TDA9874A_NECR, align 4
  %30 = call i32 @chip_read2(%struct.CHIPSTATE* %28, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %2, align 4
  br label %99

35:                                               ; preds = %27
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %3, align 8
  %38 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* @MAXREGS, align 4
  %42 = sub nsw i32 %41, 2
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  store i32 %36, i32* %44, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %3, align 8
  %47 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* @MAXREGS, align 4
  %51 = sub nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  store i32 %45, i32* %53, align 4
  %54 = load i64, i64* @tda9874a_mode, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %73

56:                                               ; preds = %35
  %57 = load i32, i32* %6, align 4
  %58 = and i32 %57, 2
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i32, i32* @V4L2_TUNER_SUB_STEREO, align 4
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %60, %56
  %63 = load i32, i32* %6, align 4
  %64 = and i32 %63, 1
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %62
  %67 = load i32, i32* @V4L2_TUNER_SUB_LANG1, align 4
  %68 = load i32, i32* @V4L2_TUNER_SUB_LANG2, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* %7, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %66, %62
  br label %90

73:                                               ; preds = %35
  %74 = load i32, i32* %5, align 4
  %75 = and i32 %74, 2
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = load i32, i32* @V4L2_TUNER_SUB_STEREO, align 4
  store i32 %78, i32* %7, align 4
  br label %79

79:                                               ; preds = %77, %73
  %80 = load i32, i32* %5, align 4
  %81 = and i32 %80, 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %79
  %84 = load i32, i32* @V4L2_TUNER_SUB_LANG1, align 4
  %85 = load i32, i32* @V4L2_TUNER_SUB_LANG2, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* %7, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %7, align 4
  br label %89

89:                                               ; preds = %83, %79
  br label %90

90:                                               ; preds = %89, %72
  %91 = load i32, i32* @debug, align 4
  %92 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @v4l2_dbg(i32 1, i32 %91, %struct.v4l2_subdev* %92, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i32 %93, i32 %94, i32 %95, i32 %96)
  %98 = load i32, i32* %7, align 4
  store i32 %98, i32* %2, align 4
  br label %99

99:                                               ; preds = %90, %33, %25, %17
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i32 @chip_read2(%struct.CHIPSTATE*, i32) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
