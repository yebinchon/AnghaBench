; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-ioctl.c_ivtv_overlay.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-ioctl.c_ivtv_overlay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.ivtv_open_id = type { i64, %struct.ivtv* }
%struct.ivtv = type { i32, %struct.ivtv_stream* }
%struct.ivtv_stream = type { i32 }

@V4L2_CAP_VIDEO_OUTPUT_OVERLAY = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@CX2341X_OSD_SET_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32)* @ivtv_overlay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ivtv_overlay(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ivtv_open_id*, align 8
  %9 = alloca %struct.ivtv*, align 8
  %10 = alloca %struct.ivtv_stream*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = call %struct.ivtv_open_id* @fh2id(i8* %11)
  store %struct.ivtv_open_id* %12, %struct.ivtv_open_id** %8, align 8
  %13 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %8, align 8
  %14 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %13, i32 0, i32 1
  %15 = load %struct.ivtv*, %struct.ivtv** %14, align 8
  store %struct.ivtv* %15, %struct.ivtv** %9, align 8
  %16 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %17 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %16, i32 0, i32 1
  %18 = load %struct.ivtv_stream*, %struct.ivtv_stream** %17, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call %struct.ivtv_open_id* @fh2id(i8* %19)
  %21 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %18, i64 %22
  store %struct.ivtv_stream* %23, %struct.ivtv_stream** %10, align 8
  %24 = load %struct.ivtv_stream*, %struct.ivtv_stream** %10, align 8
  %25 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @V4L2_CAP_VIDEO_OUTPUT_OVERLAY, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %3
  %31 = load i32, i32* @ENOTTY, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %48

33:                                               ; preds = %3
  %34 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %35 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* @ENOTTY, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %48

41:                                               ; preds = %33
  %42 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %43 = load i32, i32* @CX2341X_OSD_SET_STATE, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i32
  %47 = call i32 @ivtv_vapi(%struct.ivtv* %42, i32 %43, i32 1, i32 %46)
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %41, %38, %30
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local %struct.ivtv_open_id* @fh2id(i8*) #1

declare dso_local i32 @ivtv_vapi(%struct.ivtv*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
