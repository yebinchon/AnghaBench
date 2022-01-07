; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/stm32/extr_stm32-dcmi.c_dcmi_buffer_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/stm32/extr_stm32-dcmi.c_dcmi_buffer_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_dcmi = type { i32*, i32, i32, i32 }
%struct.dcmi_buf = type { %struct.vb2_v4l2_buffer, i32 }
%struct.vb2_v4l2_buffer = type { i64, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@VB2_BUF_STATE_ERROR = common dso_local global i32 0, align 4
@VB2_BUF_STATE_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"buffer[%d] done seq=%d, bytesused=%zu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stm32_dcmi*, %struct.dcmi_buf*, i64, i32)* @dcmi_buffer_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dcmi_buffer_done(%struct.stm32_dcmi* %0, %struct.dcmi_buf* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.stm32_dcmi*, align 8
  %6 = alloca %struct.dcmi_buf*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.vb2_v4l2_buffer*, align 8
  store %struct.stm32_dcmi* %0, %struct.stm32_dcmi** %5, align 8
  store %struct.dcmi_buf* %1, %struct.dcmi_buf** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.dcmi_buf*, %struct.dcmi_buf** %6, align 8
  %11 = icmp ne %struct.dcmi_buf* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %4
  br label %66

13:                                               ; preds = %4
  %14 = load %struct.dcmi_buf*, %struct.dcmi_buf** %6, align 8
  %15 = getelementptr inbounds %struct.dcmi_buf, %struct.dcmi_buf* %14, i32 0, i32 1
  %16 = call i32 @list_del_init(i32* %15)
  %17 = load %struct.dcmi_buf*, %struct.dcmi_buf** %6, align 8
  %18 = getelementptr inbounds %struct.dcmi_buf, %struct.dcmi_buf* %17, i32 0, i32 0
  store %struct.vb2_v4l2_buffer* %18, %struct.vb2_v4l2_buffer** %9, align 8
  %19 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %5, align 8
  %20 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 8
  %23 = sext i32 %21 to i64
  %24 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %9, align 8
  %25 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %27 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %9, align 8
  %28 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  %29 = call i32 (...) @ktime_get_ns()
  %30 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %9, align 8
  %31 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  store i32 %29, i32* %32, align 4
  %33 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %9, align 8
  %34 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %33, i32 0, i32 1
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @vb2_set_plane_payload(%struct.TYPE_3__* %34, i32 0, i64 %35)
  %37 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %9, align 8
  %38 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %37, i32 0, i32 1
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %13
  %42 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  br label %45

43:                                               ; preds = %13
  %44 = load i32, i32* @VB2_BUF_STATE_DONE, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  %47 = call i32 @vb2_buffer_done(%struct.TYPE_3__* %38, i32 %46)
  %48 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %5, align 8
  %49 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %9, align 8
  %52 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %9, align 8
  %56 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %7, align 8
  %59 = call i32 @dev_dbg(i32 %50, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %54, i64 %57, i64 %58)
  %60 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %5, align 8
  %61 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 8
  %64 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %5, align 8
  %65 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %64, i32 0, i32 0
  store i32* null, i32** %65, align 8
  br label %66

66:                                               ; preds = %45, %12
  ret void
}

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @ktime_get_ns(...) #1

declare dso_local i32 @vb2_set_plane_payload(%struct.TYPE_3__*, i32, i64) #1

declare dso_local i32 @vb2_buffer_done(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
