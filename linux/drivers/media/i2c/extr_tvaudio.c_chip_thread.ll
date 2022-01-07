; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvaudio.c_chip_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvaudio.c_chip_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CHIPSTATE = type { i32, i32, i32, i64, %struct.v4l2_subdev, %struct.CHIPDESC* }
%struct.v4l2_subdev = type { i32 }
%struct.CHIPDESC = type { i32 (%struct.CHIPSTATE*)*, i32 (%struct.CHIPSTATE*, i32)* }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"thread started\0A\00", align 1
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"thread wakeup\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"thread checkmode\0A\00", align 1
@V4L2_TUNER_SUB_LANG1 = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_STEREO = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_LANG2 = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"thread exiting\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @chip_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chip_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.CHIPSTATE*, align 8
  %4 = alloca %struct.CHIPDESC*, align 8
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.CHIPSTATE*
  store %struct.CHIPSTATE* %9, %struct.CHIPSTATE** %3, align 8
  %10 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %3, align 8
  %11 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %10, i32 0, i32 5
  %12 = load %struct.CHIPDESC*, %struct.CHIPDESC** %11, align 8
  store %struct.CHIPDESC* %12, %struct.CHIPDESC** %4, align 8
  %13 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %3, align 8
  %14 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %13, i32 0, i32 4
  store %struct.v4l2_subdev* %14, %struct.v4l2_subdev** %5, align 8
  %15 = load i32, i32* @debug, align 4
  %16 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %17 = call i32 @v4l2_dbg(i32 1, i32 %15, %struct.v4l2_subdev* %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 (...) @set_freezable()
  br label %19

19:                                               ; preds = %113, %53, %41, %1
  %20 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %21 = call i32 @set_current_state(i32 %20)
  %22 = call i64 (...) @kthread_should_stop()
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = call i32 (...) @schedule()
  br label %26

26:                                               ; preds = %24, %19
  %27 = load i32, i32* @TASK_RUNNING, align 4
  %28 = call i32 @set_current_state(i32 %27)
  %29 = call i32 (...) @try_to_freeze()
  %30 = call i64 (...) @kthread_should_stop()
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %126

33:                                               ; preds = %26
  %34 = load i32, i32* @debug, align 4
  %35 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %36 = call i32 @v4l2_dbg(i32 1, i32 %34, %struct.v4l2_subdev* %35, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %37 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %3, align 8
  %38 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  br label %19

42:                                               ; preds = %33
  %43 = load %struct.CHIPDESC*, %struct.CHIPDESC** %4, align 8
  %44 = getelementptr inbounds %struct.CHIPDESC, %struct.CHIPDESC* %43, i32 0, i32 0
  %45 = load i32 (%struct.CHIPSTATE*)*, i32 (%struct.CHIPSTATE*)** %44, align 8
  %46 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %3, align 8
  %47 = call i32 %45(%struct.CHIPSTATE* %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %3, align 8
  %50 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp eq i32 %48, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %42
  br label %19

54:                                               ; preds = %42
  %55 = load i32, i32* @debug, align 4
  %56 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %57 = call i32 @v4l2_dbg(i32 1, i32 %55, %struct.v4l2_subdev* %56, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %3, align 8
  %60 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  store i32 129, i32* %7, align 4
  %61 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %3, align 8
  %62 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  switch i32 %63, label %113 [
    i32 129, label %64
    i32 128, label %71
    i32 132, label %71
    i32 130, label %85
    i32 131, label %99
  ]

64:                                               ; preds = %54
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @V4L2_TUNER_SUB_LANG1, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  store i32 132, i32* %7, align 4
  br label %70

70:                                               ; preds = %69, %64
  br label %113

71:                                               ; preds = %54, %54
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @V4L2_TUNER_SUB_LANG1, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  store i32 132, i32* %7, align 4
  br label %84

77:                                               ; preds = %71
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* @V4L2_TUNER_SUB_STEREO, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  store i32 128, i32* %7, align 4
  br label %83

83:                                               ; preds = %82, %77
  br label %84

84:                                               ; preds = %83, %76
  br label %113

85:                                               ; preds = %54
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @V4L2_TUNER_SUB_LANG2, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  store i32 130, i32* %7, align 4
  br label %98

91:                                               ; preds = %85
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @V4L2_TUNER_SUB_STEREO, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  store i32 128, i32* %7, align 4
  br label %97

97:                                               ; preds = %96, %91
  br label %98

98:                                               ; preds = %97, %90
  br label %113

99:                                               ; preds = %54
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* @V4L2_TUNER_SUB_LANG2, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  store i32 131, i32* %7, align 4
  br label %112

105:                                              ; preds = %99
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* @V4L2_TUNER_SUB_STEREO, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  store i32 128, i32* %7, align 4
  br label %111

111:                                              ; preds = %110, %105
  br label %112

112:                                              ; preds = %111, %104
  br label %113

113:                                              ; preds = %112, %54, %98, %84, %70
  %114 = load %struct.CHIPDESC*, %struct.CHIPDESC** %4, align 8
  %115 = getelementptr inbounds %struct.CHIPDESC, %struct.CHIPDESC* %114, i32 0, i32 1
  %116 = load i32 (%struct.CHIPSTATE*, i32)*, i32 (%struct.CHIPSTATE*, i32)** %115, align 8
  %117 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %3, align 8
  %118 = load i32, i32* %7, align 4
  %119 = call i32 %116(%struct.CHIPSTATE* %117, i32 %118)
  %120 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %3, align 8
  %121 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %120, i32 0, i32 2
  %122 = load i64, i64* @jiffies, align 8
  %123 = call i64 @msecs_to_jiffies(i32 2000)
  %124 = add nsw i64 %122, %123
  %125 = call i32 @mod_timer(i32* %121, i64 %124)
  br label %19

126:                                              ; preds = %32
  %127 = load i32, i32* @debug, align 4
  %128 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %129 = call i32 @v4l2_dbg(i32 1, i32 %127, %struct.v4l2_subdev* %128, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*) #1

declare dso_local i32 @set_freezable(...) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @try_to_freeze(...) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
