; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-v4l2.c_delta_try_decoder_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-v4l2.c_delta_try_decoder_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_decoder_cmd = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@V4L2_DEC_CMD_STOP = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@V4L2_DEC_CMD_STOP_TO_BLACK = common dso_local global i32 0, align 4
@V4L2_DEC_CMD_STOP_IMMEDIATELY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_decoder_cmd*)* @delta_try_decoder_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @delta_try_decoder_cmd(%struct.file* %0, i8* %1, %struct.v4l2_decoder_cmd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_decoder_cmd*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_decoder_cmd* %2, %struct.v4l2_decoder_cmd** %7, align 8
  %8 = load %struct.v4l2_decoder_cmd*, %struct.v4l2_decoder_cmd** %7, align 8
  %9 = getelementptr inbounds %struct.v4l2_decoder_cmd, %struct.v4l2_decoder_cmd* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @V4L2_DEC_CMD_STOP, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %43

16:                                               ; preds = %3
  %17 = load %struct.v4l2_decoder_cmd*, %struct.v4l2_decoder_cmd** %7, align 8
  %18 = getelementptr inbounds %struct.v4l2_decoder_cmd, %struct.v4l2_decoder_cmd* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @V4L2_DEC_CMD_STOP_TO_BLACK, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %43

26:                                               ; preds = %16
  %27 = load %struct.v4l2_decoder_cmd*, %struct.v4l2_decoder_cmd** %7, align 8
  %28 = getelementptr inbounds %struct.v4l2_decoder_cmd, %struct.v4l2_decoder_cmd* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @V4L2_DEC_CMD_STOP_IMMEDIATELY, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %26
  %34 = load %struct.v4l2_decoder_cmd*, %struct.v4l2_decoder_cmd** %7, align 8
  %35 = getelementptr inbounds %struct.v4l2_decoder_cmd, %struct.v4l2_decoder_cmd* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %43

42:                                               ; preds = %33, %26
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %42, %39, %23, %13
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
