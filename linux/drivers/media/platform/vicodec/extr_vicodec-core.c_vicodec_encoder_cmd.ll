; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vicodec/extr_vicodec-core.c_vicodec_encoder_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vicodec/extr_vicodec-core.c_vicodec_encoder_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_encoder_cmd = type { i64 }
%struct.vicodec_ctx = type { i32, i32, %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@V4L2_ENC_CMD_STOP = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_encoder_cmd*)* @vicodec_encoder_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vicodec_encoder_cmd(%struct.file* %0, i8* %1, %struct.v4l2_encoder_cmd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_encoder_cmd*, align 8
  %8 = alloca %struct.vicodec_ctx*, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_encoder_cmd* %2, %struct.v4l2_encoder_cmd** %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call %struct.vicodec_ctx* @file2ctx(%struct.file* %10)
  store %struct.vicodec_ctx* %11, %struct.vicodec_ctx** %8, align 8
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load %struct.v4l2_encoder_cmd*, %struct.v4l2_encoder_cmd** %7, align 8
  %15 = call i32 @v4l2_m2m_ioctl_try_encoder_cmd(%struct.file* %12, i8* %13, %struct.v4l2_encoder_cmd* %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %4, align 4
  br label %82

20:                                               ; preds = %3
  %21 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %8, align 8
  %22 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = call i32 @vb2_is_streaming(i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %20
  %30 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %8, align 8
  %31 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = call i32 @vb2_is_streaming(i32* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %29, %20
  store i32 0, i32* %4, align 4
  br label %82

39:                                               ; preds = %29
  %40 = load %struct.v4l2_encoder_cmd*, %struct.v4l2_encoder_cmd** %7, align 8
  %41 = getelementptr inbounds %struct.v4l2_encoder_cmd, %struct.v4l2_encoder_cmd* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @V4L2_ENC_CMD_STOP, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %8, align 8
  %47 = call i32 @vicodec_mark_last_buf(%struct.vicodec_ctx* %46)
  store i32 %47, i32* %4, align 4
  br label %82

48:                                               ; preds = %39
  store i32 0, i32* %9, align 4
  %49 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %8, align 8
  %50 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @spin_lock(i32 %51)
  %53 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %8, align 8
  %54 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %48
  %58 = load i32, i32* @EBUSY, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %9, align 4
  br label %76

60:                                               ; preds = %48
  %61 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %8, align 8
  %62 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %60
  %66 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %8, align 8
  %67 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %66, i32 0, i32 0
  store i32 0, i32* %67, align 8
  %68 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %8, align 8
  %69 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = call i32 @vb2_clear_last_buffer_dequeued(i32* %73)
  br label %75

75:                                               ; preds = %65, %60
  br label %76

76:                                               ; preds = %75, %57
  %77 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %8, align 8
  %78 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @spin_unlock(i32 %79)
  %81 = load i32, i32* %9, align 4
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %76, %45, %38, %18
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local %struct.vicodec_ctx* @file2ctx(%struct.file*) #1

declare dso_local i32 @v4l2_m2m_ioctl_try_encoder_cmd(%struct.file*, i8*, %struct.v4l2_encoder_cmd*) #1

declare dso_local i32 @vb2_is_streaming(i32*) #1

declare dso_local i32 @vicodec_mark_last_buf(%struct.vicodec_ctx*) #1

declare dso_local i32 @spin_lock(i32) #1

declare dso_local i32 @vb2_clear_last_buffer_dequeued(i32*) #1

declare dso_local i32 @spin_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
