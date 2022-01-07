; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_msp3400-driver.c_msp_log_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_msp3400-driver.c_msp_log_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i8* }
%struct.msp_state = type { i64, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i32 }
%struct.i2c_client = type { i32, i32 }

@V4L2_SUBDEV_NAME_SIZE = common dso_local global i32 0, align 4
@OPMODE_AUTOSELECT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"%s rev1 = 0x%04x rev2 = 0x%04x\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"%s: Audio:    \00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"AM (for carrier detect)\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"FM Radio\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Terrestrial FM-mono/stereo\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"Satellite FM-mono\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"NICAM/FM (B/G, D/K)\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"NICAM/FM (I)\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"NICAM/AM (L)\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"BTSC\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"External input\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"Mode:     %s\0A\00", align 1
@OPMODE_MANUAL = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [21 x i8] c"Mode:     %s (%s%s)\0A\00", align 1
@V4L2_TUNER_SUB_STEREO = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [7 x i8] c"stereo\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"mono\00", align 1
@V4L2_TUNER_SUB_LANG2 = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [7 x i8] c", dual\00", align 1
@.str.17 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@OPMODE_AUTODETECT = common dso_local global i64 0, align 8
@.str.18 = private unnamed_addr constant [21 x i8] c"Standard: %s (%s%s)\0A\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"Audmode:  0x%04x\0A\00", align 1
@.str.20 = private unnamed_addr constant [42 x i8] c"Routing:  0x%08x (input) 0x%08x (output)\0A\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"ACB:      0x%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*)* @msp_log_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msp_log_status(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca %struct.v4l2_subdev*, align 8
  %3 = alloca %struct.msp_state*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %2, align 8
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %9 = call %struct.msp_state* @to_state(%struct.v4l2_subdev* %8)
  store %struct.msp_state* %9, %struct.msp_state** %3, align 8
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %11 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %10)
  store %struct.i2c_client* %11, %struct.i2c_client** %4, align 8
  %12 = load i32, i32* @V4L2_SUBDEV_NAME_SIZE, align 4
  %13 = add nsw i32 %12, 20
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %17 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %18 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @OPMODE_AUTOSELECT, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = call i32 @msp_detect_stereo(%struct.i2c_client* %23)
  br label %25

25:                                               ; preds = %22, %1
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %26, i32 0, i32 0
  %28 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %29 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to i8*
  %33 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %34 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %33, i32 0, i32 10
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %37 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %36, i32 0, i32 9
  %38 = load i32, i32* %37, align 8
  %39 = call i32 (i32*, i8*, i8*, ...) @dev_info(i32* %27, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %32, i32 %35, i32 %38)
  %40 = trunc i64 %14 to i32
  %41 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %42 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @snprintf(i8* %16, i32 %40, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %43)
  %45 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %46 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %45, i32 0, i32 8
  %47 = call i32 @v4l2_ctrl_handler_log_status(i32* %46, i8* %16)
  %48 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %49 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  switch i32 %50, label %60 [
    i32 136, label %51
    i32 130, label %52
    i32 128, label %53
    i32 129, label %54
    i32 132, label %55
    i32 131, label %56
    i32 135, label %57
    i32 134, label %58
    i32 133, label %59
  ]

51:                                               ; preds = %25
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %61

52:                                               ; preds = %25
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %5, align 8
  br label %61

53:                                               ; preds = %25
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8** %5, align 8
  br label %61

54:                                               ; preds = %25
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8** %5, align 8
  br label %61

55:                                               ; preds = %25
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8** %5, align 8
  br label %61

56:                                               ; preds = %25
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8** %5, align 8
  br label %61

57:                                               ; preds = %25
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8** %5, align 8
  br label %61

58:                                               ; preds = %25
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8** %5, align 8
  br label %61

59:                                               ; preds = %25
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i8** %5, align 8
  br label %61

60:                                               ; preds = %25
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8** %5, align 8
  br label %61

61:                                               ; preds = %60, %59, %58, %57, %56, %55, %54, %53, %52, %51
  %62 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %63 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = icmp eq i32 %64, 133
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %68 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %67, i32 0, i32 0
  %69 = load i8*, i8** %5, align 8
  %70 = call i32 (i32*, i8*, i8*, ...) @dev_info(i32* %68, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* %69)
  br label %136

71:                                               ; preds = %61
  %72 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %73 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @OPMODE_MANUAL, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %98

77:                                               ; preds = %71
  %78 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %79 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %78, i32 0, i32 0
  %80 = load i8*, i8** %5, align 8
  %81 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %82 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @V4L2_TUNER_SUB_STEREO, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0)
  %89 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %90 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @V4L2_TUNER_SUB_LANG2, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i64 0, i64 0)
  %97 = call i32 (i32*, i8*, i8*, ...) @dev_info(i32* %79, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i8* %80, i8* %88, i8* %96)
  br label %135

98:                                               ; preds = %71
  %99 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %100 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @OPMODE_AUTODETECT, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %98
  %105 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %106 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %105, i32 0, i32 0
  %107 = load i8*, i8** %5, align 8
  %108 = call i32 (i32*, i8*, i8*, ...) @dev_info(i32* %106, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* %107)
  br label %109

109:                                              ; preds = %104, %98
  %110 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %111 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %110, i32 0, i32 0
  %112 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %113 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %112, i32 0, i32 7
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @msp_standard_std_name(i32 %114)
  %116 = sext i32 %115 to i64
  %117 = inttoptr i64 %116 to i8*
  %118 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %119 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @V4L2_TUNER_SUB_STEREO, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  %124 = zext i1 %123 to i64
  %125 = select i1 %123, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0)
  %126 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %127 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @V4L2_TUNER_SUB_LANG2, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  %132 = zext i1 %131 to i64
  %133 = select i1 %131, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i64 0, i64 0)
  %134 = call i32 (i32*, i8*, i8*, ...) @dev_info(i32* %111, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0), i8* %117, i8* %125, i8* %133)
  br label %135

135:                                              ; preds = %109, %77
  br label %136

136:                                              ; preds = %135, %66
  %137 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %138 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %137, i32 0, i32 0
  %139 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %140 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %139, i32 0, i32 3
  %141 = load i8*, i8** %140, align 8
  %142 = call i32 (i32*, i8*, i8*, ...) @dev_info(i32* %138, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i64 0, i64 0), i8* %141)
  %143 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %144 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %143, i32 0, i32 0
  %145 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %146 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %145, i32 0, i32 6
  %147 = load i32, i32* %146, align 4
  %148 = sext i32 %147 to i64
  %149 = inttoptr i64 %148 to i8*
  %150 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %151 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %150, i32 0, i32 5
  %152 = load i32, i32* %151, align 8
  %153 = call i32 (i32*, i8*, i8*, ...) @dev_info(i32* %144, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.20, i64 0, i64 0), i8* %149, i32 %152)
  %154 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %155 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %154, i32 0, i32 0
  %156 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %157 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %156, i32 0, i32 4
  %158 = load i8*, i8** %157, align 8
  %159 = call i32 (i32*, i8*, i8*, ...) @dev_info(i32* %155, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0), i8* %158)
  %160 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %160)
  ret i32 0
}

declare dso_local %struct.msp_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @msp_detect_stereo(%struct.i2c_client*) #1

declare dso_local i32 @dev_info(i32*, i8*, i8*, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @v4l2_ctrl_handler_log_status(i32*, i8*) #1

declare dso_local i32 @msp_standard_std_name(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
