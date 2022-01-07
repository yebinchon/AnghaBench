; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_msp3400-kthreads.c_msp3400c_detect_stereo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_msp3400-kthreads.c_msp3400c_detect_stereo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.msp_state = type { i32, i32, i32 }

@msp_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"stereo detect register: %d\0A\00", align 1
@V4L2_TUNER_SUB_STEREO = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_LANG1 = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_LANG2 = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_MONO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"nicam sync=%d, mode=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"watch: rxsubchans %02x => %02x\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"watch: nicam %d => %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @msp3400c_detect_stereo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msp3400c_detect_stereo(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.msp_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %9 = call i32 @i2c_get_clientdata(%struct.i2c_client* %8)
  %10 = call %struct.msp_state* @to_state(i32 %9)
  store %struct.msp_state* %10, %struct.msp_state** %3, align 8
  %11 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %12 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %15 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %17 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %18 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %82 [
    i32 128, label %20
    i32 130, label %49
    i32 129, label %49
    i32 131, label %49
  ]

20:                                               ; preds = %1
  %21 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %22 = call i32 @msp_read_dsp(%struct.i2c_client* %21, i32 24)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp sgt i32 %23, 32767
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* %4, align 4
  %27 = sub nsw i32 %26, 65536
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %25, %20
  %29 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %30 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %29, i32 0, i32 0
  %31 = load i32, i32* @msp_debug, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i32 (i32*, i32, i32, i8*, i32, ...) @dev_dbg_lvl(i32* %30, i32 2, i32 %31, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %4, align 4
  %35 = icmp sgt i32 %34, 8192
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i32, i32* @V4L2_TUNER_SUB_STEREO, align 4
  store i32 %37, i32* %5, align 4
  br label %48

38:                                               ; preds = %28
  %39 = load i32, i32* %4, align 4
  %40 = icmp slt i32 %39, -4096
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i32, i32* @V4L2_TUNER_SUB_LANG1, align 4
  %43 = load i32, i32* @V4L2_TUNER_SUB_LANG2, align 4
  %44 = or i32 %42, %43
  store i32 %44, i32* %5, align 4
  br label %47

45:                                               ; preds = %38
  %46 = load i32, i32* @V4L2_TUNER_SUB_MONO, align 4
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %45, %41
  br label %48

48:                                               ; preds = %47, %36
  store i32 0, i32* %6, align 4
  br label %82

49:                                               ; preds = %1, %1, %1
  %50 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %51 = call i32 @msp_read_dem(%struct.i2c_client* %50, i32 35)
  store i32 %51, i32* %4, align 4
  %52 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %53 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %52, i32 0, i32 0
  %54 = load i32, i32* @msp_debug, align 4
  %55 = load i32, i32* %4, align 4
  %56 = and i32 %55, 1
  %57 = load i32, i32* %4, align 4
  %58 = and i32 %57, 30
  %59 = ashr i32 %58, 1
  %60 = call i32 (i32*, i32, i32, i8*, i32, ...) @dev_dbg_lvl(i32* %53, i32 2, i32 %54, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %56, i32 %59)
  %61 = load i32, i32* %4, align 4
  %62 = and i32 %61, 1
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %79

64:                                               ; preds = %49
  %65 = load i32, i32* %4, align 4
  %66 = and i32 %65, 30
  %67 = ashr i32 %66, 1
  switch i32 %67, label %76 [
    i32 0, label %68
    i32 8, label %68
    i32 1, label %70
    i32 9, label %70
    i32 2, label %72
    i32 10, label %72
  ]

68:                                               ; preds = %64, %64
  %69 = load i32, i32* @V4L2_TUNER_SUB_STEREO, align 4
  store i32 %69, i32* %5, align 4
  br label %78

70:                                               ; preds = %64, %64
  %71 = load i32, i32* @V4L2_TUNER_SUB_MONO, align 4
  store i32 %71, i32* %5, align 4
  br label %78

72:                                               ; preds = %64, %64
  %73 = load i32, i32* @V4L2_TUNER_SUB_LANG1, align 4
  %74 = load i32, i32* @V4L2_TUNER_SUB_LANG2, align 4
  %75 = or i32 %73, %74
  store i32 %75, i32* %5, align 4
  br label %78

76:                                               ; preds = %64
  %77 = load i32, i32* @V4L2_TUNER_SUB_MONO, align 4
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %76, %72, %70, %68
  store i32 1, i32* %6, align 4
  br label %81

79:                                               ; preds = %49
  store i32 0, i32* %6, align 4
  %80 = load i32, i32* @V4L2_TUNER_SUB_MONO, align 4
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %79, %78
  br label %82

82:                                               ; preds = %1, %81, %48
  %83 = load i32, i32* %5, align 4
  %84 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %85 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %83, %86
  br i1 %87, label %88, label %100

88:                                               ; preds = %82
  store i32 1, i32* %7, align 4
  %89 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %90 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %89, i32 0, i32 0
  %91 = load i32, i32* @msp_debug, align 4
  %92 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %93 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %5, align 4
  %96 = call i32 (i32*, i32, i32, i8*, i32, ...) @dev_dbg_lvl(i32* %90, i32 1, i32 %91, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %94, i32 %95)
  %97 = load i32, i32* %5, align 4
  %98 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %99 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 4
  br label %100

100:                                              ; preds = %88, %82
  %101 = load i32, i32* %6, align 4
  %102 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %103 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %101, %104
  br i1 %105, label %106, label %118

106:                                              ; preds = %100
  store i32 1, i32* %7, align 4
  %107 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %108 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %107, i32 0, i32 0
  %109 = load i32, i32* @msp_debug, align 4
  %110 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %111 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %6, align 4
  %114 = call i32 (i32*, i32, i32, i8*, i32, ...) @dev_dbg_lvl(i32* %108, i32 1, i32 %109, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %112, i32 %113)
  %115 = load i32, i32* %6, align 4
  %116 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %117 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  br label %118

118:                                              ; preds = %106, %100
  %119 = load i32, i32* %7, align 4
  ret i32 %119
}

declare dso_local %struct.msp_state* @to_state(i32) #1

declare dso_local i32 @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @msp_read_dsp(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_dbg_lvl(i32*, i32, i32, i8*, i32, ...) #1

declare dso_local i32 @msp_read_dem(%struct.i2c_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
