; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-ioctl.c_ivtv_decoder_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-ioctl.c_ivtv_decoder_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_decoder_cmd = type { i32 }
%struct.ivtv_open_id = type { %struct.ivtv* }
%struct.ivtv = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"VIDIOC_DECODER_CMD %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_decoder_cmd*)* @ivtv_decoder_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ivtv_decoder_cmd(%struct.file* %0, i8* %1, %struct.v4l2_decoder_cmd* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_decoder_cmd*, align 8
  %7 = alloca %struct.ivtv_open_id*, align 8
  %8 = alloca %struct.ivtv*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_decoder_cmd* %2, %struct.v4l2_decoder_cmd** %6, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.ivtv_open_id* @fh2id(i32 %11)
  store %struct.ivtv_open_id* %12, %struct.ivtv_open_id** %7, align 8
  %13 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %7, align 8
  %14 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %13, i32 0, i32 0
  %15 = load %struct.ivtv*, %struct.ivtv** %14, align 8
  store %struct.ivtv* %15, %struct.ivtv** %8, align 8
  %16 = load %struct.v4l2_decoder_cmd*, %struct.v4l2_decoder_cmd** %6, align 8
  %17 = getelementptr inbounds %struct.v4l2_decoder_cmd, %struct.v4l2_decoder_cmd* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @IVTV_DEBUG_IOCTL(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %21 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %7, align 8
  %22 = load %struct.v4l2_decoder_cmd*, %struct.v4l2_decoder_cmd** %6, align 8
  %23 = call i32 @ivtv_video_command(%struct.ivtv* %20, %struct.ivtv_open_id* %21, %struct.v4l2_decoder_cmd* %22, i32 0)
  ret i32 %23
}

declare dso_local %struct.ivtv_open_id* @fh2id(i32) #1

declare dso_local i32 @IVTV_DEBUG_IOCTL(i8*, i32) #1

declare dso_local i32 @ivtv_video_command(%struct.ivtv*, %struct.ivtv_open_id*, %struct.v4l2_decoder_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
