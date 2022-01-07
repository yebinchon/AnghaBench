; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-ioctl.c_cx18_encoder_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-ioctl.c_cx18_encoder_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_encoder_cmd = type { i32, i32 }
%struct.cx18_open_id = type { %struct.cx18* }
%struct.cx18 = type { i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"V4L2_ENC_CMD_START\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"V4L2_ENC_CMD_STOP\0A\00", align 1
@V4L2_ENC_CMD_STOP_AT_GOP_END = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"V4L2_ENC_CMD_PAUSE\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@CX18_F_I_ENC_PAUSED = common dso_local global i32 0, align 4
@CX18_INVALID_TASK_HANDLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [53 x i8] c"Can't find valid task handle for V4L2_ENC_CMD_PAUSE\0A\00", align 1
@EBADFD = common dso_local global i32 0, align 4
@CX18_CPU_CAPTURE_PAUSE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"V4L2_ENC_CMD_RESUME\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"Can't find valid task handle for V4L2_ENC_CMD_RESUME\0A\00", align 1
@CX18_CPU_CAPTURE_RESUME = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"Unknown cmd %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_encoder_cmd*)* @cx18_encoder_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx18_encoder_cmd(%struct.file* %0, i8* %1, %struct.v4l2_encoder_cmd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_encoder_cmd*, align 8
  %8 = alloca %struct.cx18_open_id*, align 8
  %9 = alloca %struct.cx18*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_encoder_cmd* %2, %struct.v4l2_encoder_cmd** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call %struct.cx18_open_id* @fh2id(i8* %11)
  store %struct.cx18_open_id* %12, %struct.cx18_open_id** %8, align 8
  %13 = load %struct.cx18_open_id*, %struct.cx18_open_id** %8, align 8
  %14 = getelementptr inbounds %struct.cx18_open_id, %struct.cx18_open_id* %13, i32 0, i32 0
  %15 = load %struct.cx18*, %struct.cx18** %14, align 8
  store %struct.cx18* %15, %struct.cx18** %9, align 8
  %16 = load %struct.v4l2_encoder_cmd*, %struct.v4l2_encoder_cmd** %7, align 8
  %17 = getelementptr inbounds %struct.v4l2_encoder_cmd, %struct.v4l2_encoder_cmd* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %109 [
    i32 129, label %19
    i32 128, label %25
    i32 131, label %39
    i32 130, label %74
  ]

19:                                               ; preds = %3
  %20 = call i32 (i8*, ...) @CX18_DEBUG_IOCTL(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.v4l2_encoder_cmd*, %struct.v4l2_encoder_cmd** %7, align 8
  %22 = getelementptr inbounds %struct.v4l2_encoder_cmd, %struct.v4l2_encoder_cmd* %21, i32 0, i32 1
  store i32 0, i32* %22, align 4
  %23 = load %struct.cx18_open_id*, %struct.cx18_open_id** %8, align 8
  %24 = call i32 @cx18_start_capture(%struct.cx18_open_id* %23)
  store i32 %24, i32* %4, align 4
  br label %117

25:                                               ; preds = %3
  %26 = call i32 (i8*, ...) @CX18_DEBUG_IOCTL(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @V4L2_ENC_CMD_STOP_AT_GOP_END, align 4
  %28 = load %struct.v4l2_encoder_cmd*, %struct.v4l2_encoder_cmd** %7, align 8
  %29 = getelementptr inbounds %struct.v4l2_encoder_cmd, %struct.v4l2_encoder_cmd* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load %struct.cx18_open_id*, %struct.cx18_open_id** %8, align 8
  %33 = load %struct.v4l2_encoder_cmd*, %struct.v4l2_encoder_cmd** %7, align 8
  %34 = getelementptr inbounds %struct.v4l2_encoder_cmd, %struct.v4l2_encoder_cmd* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @V4L2_ENC_CMD_STOP_AT_GOP_END, align 4
  %37 = and i32 %35, %36
  %38 = call i32 @cx18_stop_capture(%struct.cx18_open_id* %32, i32 %37)
  br label %116

39:                                               ; preds = %3
  %40 = call i32 (i8*, ...) @CX18_DEBUG_IOCTL(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %41 = load %struct.v4l2_encoder_cmd*, %struct.v4l2_encoder_cmd** %7, align 8
  %42 = getelementptr inbounds %struct.v4l2_encoder_cmd, %struct.v4l2_encoder_cmd* %41, i32 0, i32 1
  store i32 0, i32* %42, align 4
  %43 = load %struct.cx18*, %struct.cx18** %9, align 8
  %44 = getelementptr inbounds %struct.cx18, %struct.cx18* %43, i32 0, i32 1
  %45 = call i32 @atomic_read(i32* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %39
  %48 = load i32, i32* @EPERM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %117

50:                                               ; preds = %39
  %51 = load i32, i32* @CX18_F_I_ENC_PAUSED, align 4
  %52 = load %struct.cx18*, %struct.cx18** %9, align 8
  %53 = getelementptr inbounds %struct.cx18, %struct.cx18* %52, i32 0, i32 0
  %54 = call i32 @test_and_set_bit(i32 %51, i32* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  store i32 0, i32* %4, align 4
  br label %117

57:                                               ; preds = %50
  %58 = load %struct.cx18*, %struct.cx18** %9, align 8
  %59 = call i32 @cx18_find_handle(%struct.cx18* %58)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* @CX18_INVALID_TASK_HANDLE, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = call i32 @CX18_ERR(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0))
  %65 = load i32, i32* @EBADFD, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %117

67:                                               ; preds = %57
  %68 = load %struct.cx18*, %struct.cx18** %9, align 8
  %69 = call i32 @cx18_mute(%struct.cx18* %68)
  %70 = load %struct.cx18*, %struct.cx18** %9, align 8
  %71 = load i32, i32* @CX18_CPU_CAPTURE_PAUSE, align 4
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @cx18_vapi(%struct.cx18* %70, i32 %71, i32 1, i32 %72)
  br label %116

74:                                               ; preds = %3
  %75 = call i32 (i8*, ...) @CX18_DEBUG_IOCTL(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %76 = load %struct.v4l2_encoder_cmd*, %struct.v4l2_encoder_cmd** %7, align 8
  %77 = getelementptr inbounds %struct.v4l2_encoder_cmd, %struct.v4l2_encoder_cmd* %76, i32 0, i32 1
  store i32 0, i32* %77, align 4
  %78 = load %struct.cx18*, %struct.cx18** %9, align 8
  %79 = getelementptr inbounds %struct.cx18, %struct.cx18* %78, i32 0, i32 1
  %80 = call i32 @atomic_read(i32* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %74
  %83 = load i32, i32* @EPERM, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %4, align 4
  br label %117

85:                                               ; preds = %74
  %86 = load i32, i32* @CX18_F_I_ENC_PAUSED, align 4
  %87 = load %struct.cx18*, %struct.cx18** %9, align 8
  %88 = getelementptr inbounds %struct.cx18, %struct.cx18* %87, i32 0, i32 0
  %89 = call i32 @test_and_clear_bit(i32 %86, i32* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %85
  store i32 0, i32* %4, align 4
  br label %117

92:                                               ; preds = %85
  %93 = load %struct.cx18*, %struct.cx18** %9, align 8
  %94 = call i32 @cx18_find_handle(%struct.cx18* %93)
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* @CX18_INVALID_TASK_HANDLE, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %92
  %99 = call i32 @CX18_ERR(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0))
  %100 = load i32, i32* @EBADFD, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %4, align 4
  br label %117

102:                                              ; preds = %92
  %103 = load %struct.cx18*, %struct.cx18** %9, align 8
  %104 = load i32, i32* @CX18_CPU_CAPTURE_RESUME, align 4
  %105 = load i32, i32* %10, align 4
  %106 = call i32 @cx18_vapi(%struct.cx18* %103, i32 %104, i32 1, i32 %105)
  %107 = load %struct.cx18*, %struct.cx18** %9, align 8
  %108 = call i32 @cx18_unmute(%struct.cx18* %107)
  br label %116

109:                                              ; preds = %3
  %110 = load %struct.v4l2_encoder_cmd*, %struct.v4l2_encoder_cmd** %7, align 8
  %111 = getelementptr inbounds %struct.v4l2_encoder_cmd, %struct.v4l2_encoder_cmd* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 (i8*, ...) @CX18_DEBUG_IOCTL(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %112)
  %114 = load i32, i32* @EINVAL, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %4, align 4
  br label %117

116:                                              ; preds = %102, %67, %25
  store i32 0, i32* %4, align 4
  br label %117

117:                                              ; preds = %116, %109, %98, %91, %82, %63, %56, %47, %19
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local %struct.cx18_open_id* @fh2id(i8*) #1

declare dso_local i32 @CX18_DEBUG_IOCTL(i8*, ...) #1

declare dso_local i32 @cx18_start_capture(%struct.cx18_open_id*) #1

declare dso_local i32 @cx18_stop_capture(%struct.cx18_open_id*, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @cx18_find_handle(%struct.cx18*) #1

declare dso_local i32 @CX18_ERR(i8*) #1

declare dso_local i32 @cx18_mute(%struct.cx18*) #1

declare dso_local i32 @cx18_vapi(%struct.cx18*, i32, i32, i32) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @cx18_unmute(%struct.cx18*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
