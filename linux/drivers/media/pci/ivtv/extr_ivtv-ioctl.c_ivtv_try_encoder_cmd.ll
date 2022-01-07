; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-ioctl.c_ivtv_try_encoder_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-ioctl.c_ivtv_try_encoder_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_encoder_cmd = type { i32, i32 }
%struct.ivtv = type { i32 }
%struct.TYPE_2__ = type { %struct.ivtv* }

@.str = private unnamed_addr constant [20 x i8] c"V4L2_ENC_CMD_START\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"V4L2_ENC_CMD_STOP\0A\00", align 1
@V4L2_ENC_CMD_STOP_AT_GOP_END = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"V4L2_ENC_CMD_PAUSE\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"V4L2_ENC_CMD_RESUME\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"Unknown cmd %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_encoder_cmd*)* @ivtv_try_encoder_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ivtv_try_encoder_cmd(%struct.file* %0, i8* %1, %struct.v4l2_encoder_cmd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_encoder_cmd*, align 8
  %8 = alloca %struct.ivtv*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_encoder_cmd* %2, %struct.v4l2_encoder_cmd** %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = call %struct.TYPE_2__* @fh2id(i8* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.ivtv*, %struct.ivtv** %11, align 8
  store %struct.ivtv* %12, %struct.ivtv** %8, align 8
  %13 = load %struct.v4l2_encoder_cmd*, %struct.v4l2_encoder_cmd** %7, align 8
  %14 = getelementptr inbounds %struct.v4l2_encoder_cmd, %struct.v4l2_encoder_cmd* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %35 [
    i32 129, label %16
    i32 128, label %20
    i32 131, label %27
    i32 130, label %31
  ]

16:                                               ; preds = %3
  %17 = call i32 (i8*, ...) @IVTV_DEBUG_IOCTL(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.v4l2_encoder_cmd*, %struct.v4l2_encoder_cmd** %7, align 8
  %19 = getelementptr inbounds %struct.v4l2_encoder_cmd, %struct.v4l2_encoder_cmd* %18, i32 0, i32 1
  store i32 0, i32* %19, align 4
  store i32 0, i32* %4, align 4
  br label %42

20:                                               ; preds = %3
  %21 = call i32 (i8*, ...) @IVTV_DEBUG_IOCTL(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* @V4L2_ENC_CMD_STOP_AT_GOP_END, align 4
  %23 = load %struct.v4l2_encoder_cmd*, %struct.v4l2_encoder_cmd** %7, align 8
  %24 = getelementptr inbounds %struct.v4l2_encoder_cmd, %struct.v4l2_encoder_cmd* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, %22
  store i32 %26, i32* %24, align 4
  store i32 0, i32* %4, align 4
  br label %42

27:                                               ; preds = %3
  %28 = call i32 (i8*, ...) @IVTV_DEBUG_IOCTL(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %29 = load %struct.v4l2_encoder_cmd*, %struct.v4l2_encoder_cmd** %7, align 8
  %30 = getelementptr inbounds %struct.v4l2_encoder_cmd, %struct.v4l2_encoder_cmd* %29, i32 0, i32 1
  store i32 0, i32* %30, align 4
  store i32 0, i32* %4, align 4
  br label %42

31:                                               ; preds = %3
  %32 = call i32 (i8*, ...) @IVTV_DEBUG_IOCTL(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %33 = load %struct.v4l2_encoder_cmd*, %struct.v4l2_encoder_cmd** %7, align 8
  %34 = getelementptr inbounds %struct.v4l2_encoder_cmd, %struct.v4l2_encoder_cmd* %33, i32 0, i32 1
  store i32 0, i32* %34, align 4
  store i32 0, i32* %4, align 4
  br label %42

35:                                               ; preds = %3
  %36 = load %struct.v4l2_encoder_cmd*, %struct.v4l2_encoder_cmd** %7, align 8
  %37 = getelementptr inbounds %struct.v4l2_encoder_cmd, %struct.v4l2_encoder_cmd* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i8*, ...) @IVTV_DEBUG_IOCTL(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %35, %31, %27, %20, %16
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local %struct.TYPE_2__* @fh2id(i8*) #1

declare dso_local i32 @IVTV_DEBUG_IOCTL(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
