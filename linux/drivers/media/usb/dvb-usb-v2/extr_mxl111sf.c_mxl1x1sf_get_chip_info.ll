; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_mxl111sf.c_mxl1x1sf_get_chip_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_mxl111sf.c_mxl1x1sf_get_chip_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxl111sf_state = type { i32, i32, i32 }

@CHIP_ID_REG = common dso_local global i32 0, align 4
@TOP_CHIP_REV_ID_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"MxL101SF\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"MxL111SF\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"UNKNOWN MxL1X1\00", align 1
@MXL111SF_V6 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"v6\00", align 1
@MXL111SF_V8_100 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"v8_100\00", align 1
@MXL111SF_V8_200 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"v8_200\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"UNKNOWN REVISION\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"%s detected, %s (0x%x)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxl111sf_state*)* @mxl1x1sf_get_chip_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxl1x1sf_get_chip_info(%struct.mxl111sf_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mxl111sf_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.mxl111sf_state* %0, %struct.mxl111sf_state** %3, align 8
  %9 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %10 = getelementptr inbounds %struct.mxl111sf_state, %struct.mxl111sf_state* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %15 = getelementptr inbounds %struct.mxl111sf_state, %struct.mxl111sf_state* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %70

19:                                               ; preds = %13, %1
  %20 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %21 = load i32, i32* @CHIP_ID_REG, align 4
  %22 = call i32 @mxl111sf_read_reg(%struct.mxl111sf_state* %20, i32 %21, i32* %5)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i64 @mxl_fail(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %68

27:                                               ; preds = %19
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %30 = getelementptr inbounds %struct.mxl111sf_state, %struct.mxl111sf_state* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %32 = load i32, i32* @TOP_CHIP_REV_ID_REG, align 4
  %33 = call i32 @mxl111sf_read_reg(%struct.mxl111sf_state* %31, i32 %32, i32* %6)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i64 @mxl_fail(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  br label %68

38:                                               ; preds = %27
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %41 = getelementptr inbounds %struct.mxl111sf_state, %struct.mxl111sf_state* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %5, align 4
  switch i32 %42, label %45 [
    i32 97, label %43
    i32 99, label %44
  ]

43:                                               ; preds = %38
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  br label %46

44:                                               ; preds = %38
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  br label %46

45:                                               ; preds = %38
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  br label %46

46:                                               ; preds = %45, %44, %43
  %47 = load i32, i32* %6, align 4
  switch i32 %47, label %60 [
    i32 54, label %48
    i32 8, label %52
    i32 24, label %56
  ]

48:                                               ; preds = %46
  %49 = load i32, i32* @MXL111SF_V6, align 4
  %50 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %51 = getelementptr inbounds %struct.mxl111sf_state, %struct.mxl111sf_state* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8
  br label %63

52:                                               ; preds = %46
  %53 = load i32, i32* @MXL111SF_V8_100, align 4
  %54 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %55 = getelementptr inbounds %struct.mxl111sf_state, %struct.mxl111sf_state* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %8, align 8
  br label %63

56:                                               ; preds = %46
  %57 = load i32, i32* @MXL111SF_V8_200, align 4
  %58 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %59 = getelementptr inbounds %struct.mxl111sf_state, %struct.mxl111sf_state* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 4
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8** %8, align 8
  br label %63

60:                                               ; preds = %46
  %61 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %62 = getelementptr inbounds %struct.mxl111sf_state, %struct.mxl111sf_state* %61, i32 0, i32 2
  store i32 0, i32* %62, align 4
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8** %8, align 8
  br label %63

63:                                               ; preds = %60, %56, %52, %48
  %64 = load i8*, i8** %7, align 8
  %65 = load i8*, i8** %8, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @pr_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i8* %64, i8* %65, i32 %66)
  br label %68

68:                                               ; preds = %63, %37, %26
  %69 = load i32, i32* %4, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %68, %18
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @mxl111sf_read_reg(%struct.mxl111sf_state*, i32, i32*) #1

declare dso_local i64 @mxl_fail(i32) #1

declare dso_local i32 @pr_info(i8*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
