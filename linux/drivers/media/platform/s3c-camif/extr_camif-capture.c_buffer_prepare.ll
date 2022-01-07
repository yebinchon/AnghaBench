; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-capture.c_buffer_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-capture.c_buffer_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_buffer = type { i32 }
%struct.camif_vp = type { i64, i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"buffer too small: %lu, required: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_buffer*)* @buffer_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @buffer_prepare(%struct.vb2_buffer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vb2_buffer*, align 8
  %4 = alloca %struct.camif_vp*, align 8
  store %struct.vb2_buffer* %0, %struct.vb2_buffer** %3, align 8
  %5 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %6 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.camif_vp* @vb2_get_drv_priv(i32 %7)
  store %struct.camif_vp* %8, %struct.camif_vp** %4, align 8
  %9 = load %struct.camif_vp*, %struct.camif_vp** %4, align 8
  %10 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %40

16:                                               ; preds = %1
  %17 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %18 = call i64 @vb2_plane_size(%struct.vb2_buffer* %17, i32 0)
  %19 = load %struct.camif_vp*, %struct.camif_vp** %4, align 8
  %20 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp slt i64 %18, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %16
  %24 = load %struct.camif_vp*, %struct.camif_vp** %4, align 8
  %25 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %24, i32 0, i32 1
  %26 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %27 = call i64 @vb2_plane_size(%struct.vb2_buffer* %26, i32 0)
  %28 = load %struct.camif_vp*, %struct.camif_vp** %4, align 8
  %29 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @v4l2_err(i32* %25, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %27, i64 %30)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %40

34:                                               ; preds = %16
  %35 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %36 = load %struct.camif_vp*, %struct.camif_vp** %4, align 8
  %37 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @vb2_set_plane_payload(%struct.vb2_buffer* %35, i32 0, i64 %38)
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %34, %23, %13
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local %struct.camif_vp* @vb2_get_drv_priv(i32) #1

declare dso_local i64 @vb2_plane_size(%struct.vb2_buffer*, i32) #1

declare dso_local i32 @v4l2_err(i32*, i8*, i64, i64) #1

declare dso_local i32 @vb2_set_plane_payload(%struct.vb2_buffer*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
