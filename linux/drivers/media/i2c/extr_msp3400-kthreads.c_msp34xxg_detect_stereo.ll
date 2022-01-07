; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_msp3400-kthreads.c_msp34xxg_detect_stereo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_msp3400-kthreads.c_msp34xxg_detect_stereo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.msp_state = type { i32, i64, i32 }

@MSP_MODE_EXTERN = common dso_local global i64 0, align 8
@V4L2_TUNER_SUB_STEREO = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_MONO = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_SAP = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_LANG1 = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_LANG2 = common dso_local global i32 0, align 4
@msp_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"status=0x%x, stereo=%d, bilingual=%d -> rxsubchans=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @msp34xxg_detect_stereo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msp34xxg_detect_stereo(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.msp_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %10 = call i32 @i2c_get_clientdata(%struct.i2c_client* %9)
  %11 = call %struct.msp_state* @to_state(i32 %10)
  store %struct.msp_state* %11, %struct.msp_state** %4, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %13 = call i32 @msp_read_dem(%struct.i2c_client* %12, i32 512)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, 256
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, 64
  store i32 %17, i32* %7, align 4
  %18 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %19 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %8, align 4
  %21 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %22 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MSP_MODE_EXTERN, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %78

27:                                               ; preds = %1
  %28 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %29 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %28, i32 0, i32 0
  store i32 0, i32* %29, align 8
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i32, i32* @V4L2_TUNER_SUB_STEREO, align 4
  %34 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %35 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  br label %40

36:                                               ; preds = %27
  %37 = load i32, i32* @V4L2_TUNER_SUB_MONO, align 4
  %38 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %39 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  br label %40

40:                                               ; preds = %36, %32
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %61

43:                                               ; preds = %40
  %44 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %45 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %46, 32
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load i32, i32* @V4L2_TUNER_SUB_SAP, align 4
  %50 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %51 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 8
  br label %60

54:                                               ; preds = %43
  %55 = load i32, i32* @V4L2_TUNER_SUB_LANG1, align 4
  %56 = load i32, i32* @V4L2_TUNER_SUB_LANG2, align 4
  %57 = or i32 %55, %56
  %58 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %59 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  br label %60

60:                                               ; preds = %54, %48
  br label %61

61:                                               ; preds = %60, %40
  %62 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %63 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %62, i32 0, i32 0
  %64 = load i32, i32* @msp_debug, align 4
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %6, align 4
  %68 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %69 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @dev_dbg_lvl(i32* %63, i32 1, i32 %64, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %65, i32 %66, i32 %67, i32 %70)
  %72 = load i32, i32* %8, align 4
  %73 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %74 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %72, %75
  %77 = zext i1 %76 to i32
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %61, %26
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local %struct.msp_state* @to_state(i32) #1

declare dso_local i32 @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @msp_read_dem(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_dbg_lvl(i32*, i32, i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
