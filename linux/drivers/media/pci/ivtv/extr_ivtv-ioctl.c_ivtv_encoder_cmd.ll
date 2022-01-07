; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-ioctl.c_ivtv_encoder_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-ioctl.c_ivtv_encoder_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_encoder_cmd = type { i32, i32 }
%struct.ivtv_open_id = type { %struct.ivtv* }
%struct.ivtv = type { i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"V4L2_ENC_CMD_START\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"V4L2_ENC_CMD_STOP\0A\00", align 1
@V4L2_ENC_CMD_STOP_AT_GOP_END = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"V4L2_ENC_CMD_PAUSE\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@IVTV_F_I_ENC_PAUSED = common dso_local global i32 0, align 4
@CX2341X_ENC_PAUSE_ENCODER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"V4L2_ENC_CMD_RESUME\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"Unknown cmd %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_encoder_cmd*)* @ivtv_encoder_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ivtv_encoder_cmd(%struct.file* %0, i8* %1, %struct.v4l2_encoder_cmd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_encoder_cmd*, align 8
  %8 = alloca %struct.ivtv_open_id*, align 8
  %9 = alloca %struct.ivtv*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_encoder_cmd* %2, %struct.v4l2_encoder_cmd** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call %struct.ivtv_open_id* @fh2id(i8* %10)
  store %struct.ivtv_open_id* %11, %struct.ivtv_open_id** %8, align 8
  %12 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %8, align 8
  %13 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %12, i32 0, i32 0
  %14 = load %struct.ivtv*, %struct.ivtv** %13, align 8
  store %struct.ivtv* %14, %struct.ivtv** %9, align 8
  %15 = load %struct.v4l2_encoder_cmd*, %struct.v4l2_encoder_cmd** %7, align 8
  %16 = getelementptr inbounds %struct.v4l2_encoder_cmd, %struct.v4l2_encoder_cmd* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %86 [
    i32 129, label %18
    i32 128, label %24
    i32 131, label %38
    i32 130, label %62
  ]

18:                                               ; preds = %3
  %19 = call i32 (i8*, ...) @IVTV_DEBUG_IOCTL(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.v4l2_encoder_cmd*, %struct.v4l2_encoder_cmd** %7, align 8
  %21 = getelementptr inbounds %struct.v4l2_encoder_cmd, %struct.v4l2_encoder_cmd* %20, i32 0, i32 1
  store i32 0, i32* %21, align 4
  %22 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %8, align 8
  %23 = call i32 @ivtv_start_capture(%struct.ivtv_open_id* %22)
  store i32 %23, i32* %4, align 4
  br label %94

24:                                               ; preds = %3
  %25 = call i32 (i8*, ...) @IVTV_DEBUG_IOCTL(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* @V4L2_ENC_CMD_STOP_AT_GOP_END, align 4
  %27 = load %struct.v4l2_encoder_cmd*, %struct.v4l2_encoder_cmd** %7, align 8
  %28 = getelementptr inbounds %struct.v4l2_encoder_cmd, %struct.v4l2_encoder_cmd* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %8, align 8
  %32 = load %struct.v4l2_encoder_cmd*, %struct.v4l2_encoder_cmd** %7, align 8
  %33 = getelementptr inbounds %struct.v4l2_encoder_cmd, %struct.v4l2_encoder_cmd* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @V4L2_ENC_CMD_STOP_AT_GOP_END, align 4
  %36 = and i32 %34, %35
  %37 = call i32 @ivtv_stop_capture(%struct.ivtv_open_id* %31, i32 %36)
  store i32 0, i32* %4, align 4
  br label %94

38:                                               ; preds = %3
  %39 = call i32 (i8*, ...) @IVTV_DEBUG_IOCTL(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %40 = load %struct.v4l2_encoder_cmd*, %struct.v4l2_encoder_cmd** %7, align 8
  %41 = getelementptr inbounds %struct.v4l2_encoder_cmd, %struct.v4l2_encoder_cmd* %40, i32 0, i32 1
  store i32 0, i32* %41, align 4
  %42 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %43 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %42, i32 0, i32 1
  %44 = call i32 @atomic_read(i32* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %38
  %47 = load i32, i32* @EPERM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %94

49:                                               ; preds = %38
  %50 = load i32, i32* @IVTV_F_I_ENC_PAUSED, align 4
  %51 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %52 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %51, i32 0, i32 0
  %53 = call i32 @test_and_set_bit(i32 %50, i32* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  br label %94

56:                                               ; preds = %49
  %57 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %58 = call i32 @ivtv_mute(%struct.ivtv* %57)
  %59 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %60 = load i32, i32* @CX2341X_ENC_PAUSE_ENCODER, align 4
  %61 = call i32 @ivtv_vapi(%struct.ivtv* %59, i32 %60, i32 1, i32 0)
  br label %93

62:                                               ; preds = %3
  %63 = call i32 (i8*, ...) @IVTV_DEBUG_IOCTL(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %64 = load %struct.v4l2_encoder_cmd*, %struct.v4l2_encoder_cmd** %7, align 8
  %65 = getelementptr inbounds %struct.v4l2_encoder_cmd, %struct.v4l2_encoder_cmd* %64, i32 0, i32 1
  store i32 0, i32* %65, align 4
  %66 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %67 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %66, i32 0, i32 1
  %68 = call i32 @atomic_read(i32* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %62
  %71 = load i32, i32* @EPERM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %4, align 4
  br label %94

73:                                               ; preds = %62
  %74 = load i32, i32* @IVTV_F_I_ENC_PAUSED, align 4
  %75 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %76 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %75, i32 0, i32 0
  %77 = call i32 @test_and_clear_bit(i32 %74, i32* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %73
  store i32 0, i32* %4, align 4
  br label %94

80:                                               ; preds = %73
  %81 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %82 = load i32, i32* @CX2341X_ENC_PAUSE_ENCODER, align 4
  %83 = call i32 @ivtv_vapi(%struct.ivtv* %81, i32 %82, i32 1, i32 1)
  %84 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %85 = call i32 @ivtv_unmute(%struct.ivtv* %84)
  br label %93

86:                                               ; preds = %3
  %87 = load %struct.v4l2_encoder_cmd*, %struct.v4l2_encoder_cmd** %7, align 8
  %88 = getelementptr inbounds %struct.v4l2_encoder_cmd, %struct.v4l2_encoder_cmd* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 (i8*, ...) @IVTV_DEBUG_IOCTL(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %4, align 4
  br label %94

93:                                               ; preds = %80, %56
  store i32 0, i32* %4, align 4
  br label %94

94:                                               ; preds = %93, %86, %79, %70, %55, %46, %24, %18
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local %struct.ivtv_open_id* @fh2id(i8*) #1

declare dso_local i32 @IVTV_DEBUG_IOCTL(i8*, ...) #1

declare dso_local i32 @ivtv_start_capture(%struct.ivtv_open_id*) #1

declare dso_local i32 @ivtv_stop_capture(%struct.ivtv_open_id*, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @ivtv_mute(%struct.ivtv*) #1

declare dso_local i32 @ivtv_vapi(%struct.ivtv*, i32, i32, i32) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @ivtv_unmute(%struct.ivtv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
