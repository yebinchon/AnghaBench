; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-mem2mem.c_v4l2_m2m_ioctl_try_decoder_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-mem2mem.c_v4l2_m2m_ioctl_try_decoder_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_decoder_cmd = type { i64, %struct.TYPE_3__, %struct.TYPE_4__, i64 }
%struct.TYPE_3__ = type { i32, i64 }
%struct.TYPE_4__ = type { i64 }

@V4L2_DEC_CMD_STOP = common dso_local global i64 0, align 8
@V4L2_DEC_CMD_START = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@V4L2_DEC_START_FMT_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v4l2_m2m_ioctl_try_decoder_cmd(%struct.file* %0, i8* %1, %struct.v4l2_decoder_cmd* %2) #0 {
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
  br i1 %12, label %13, label %22

13:                                               ; preds = %3
  %14 = load %struct.v4l2_decoder_cmd*, %struct.v4l2_decoder_cmd** %7, align 8
  %15 = getelementptr inbounds %struct.v4l2_decoder_cmd, %struct.v4l2_decoder_cmd* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @V4L2_DEC_CMD_START, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %50

22:                                               ; preds = %13, %3
  %23 = load %struct.v4l2_decoder_cmd*, %struct.v4l2_decoder_cmd** %7, align 8
  %24 = getelementptr inbounds %struct.v4l2_decoder_cmd, %struct.v4l2_decoder_cmd* %23, i32 0, i32 3
  store i64 0, i64* %24, align 8
  %25 = load %struct.v4l2_decoder_cmd*, %struct.v4l2_decoder_cmd** %7, align 8
  %26 = getelementptr inbounds %struct.v4l2_decoder_cmd, %struct.v4l2_decoder_cmd* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @V4L2_DEC_CMD_STOP, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %22
  %31 = load %struct.v4l2_decoder_cmd*, %struct.v4l2_decoder_cmd** %7, align 8
  %32 = getelementptr inbounds %struct.v4l2_decoder_cmd, %struct.v4l2_decoder_cmd* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  br label %49

34:                                               ; preds = %22
  %35 = load %struct.v4l2_decoder_cmd*, %struct.v4l2_decoder_cmd** %7, align 8
  %36 = getelementptr inbounds %struct.v4l2_decoder_cmd, %struct.v4l2_decoder_cmd* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @V4L2_DEC_CMD_START, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %34
  %41 = load %struct.v4l2_decoder_cmd*, %struct.v4l2_decoder_cmd** %7, align 8
  %42 = getelementptr inbounds %struct.v4l2_decoder_cmd, %struct.v4l2_decoder_cmd* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  store i64 0, i64* %43, align 8
  %44 = load i32, i32* @V4L2_DEC_START_FMT_NONE, align 4
  %45 = load %struct.v4l2_decoder_cmd*, %struct.v4l2_decoder_cmd** %7, align 8
  %46 = getelementptr inbounds %struct.v4l2_decoder_cmd, %struct.v4l2_decoder_cmd* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 8
  br label %48

48:                                               ; preds = %40, %34
  br label %49

49:                                               ; preds = %48, %30
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %19
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
