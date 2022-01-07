; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ioctl.c_v4l_reqbufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ioctl.c_v4l_reqbufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ioctl_ops = type { i32 (%struct.file*, i8*, %struct.v4l2_requestbuffers*)* }
%struct.file = type opaque
%struct.v4l2_requestbuffers = type { i32 }
%struct.file.0 = type { i32 }

@capabilities = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ioctl_ops*, %struct.file.0*, i8*, i8*)* @v4l_reqbufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v4l_reqbufs(%struct.v4l2_ioctl_ops* %0, %struct.file.0* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_ioctl_ops*, align 8
  %7 = alloca %struct.file.0*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.v4l2_requestbuffers*, align 8
  %11 = alloca i32, align 4
  store %struct.v4l2_ioctl_ops* %0, %struct.v4l2_ioctl_ops** %6, align 8
  store %struct.file.0* %1, %struct.file.0** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load i8*, i8** %9, align 8
  %13 = bitcast i8* %12 to %struct.v4l2_requestbuffers*
  store %struct.v4l2_requestbuffers* %13, %struct.v4l2_requestbuffers** %10, align 8
  %14 = load %struct.file.0*, %struct.file.0** %7, align 8
  %15 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %10, align 8
  %16 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @check_fmt(%struct.file.0* %14, i32 %17)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* %11, align 4
  store i32 %22, i32* %5, align 4
  br label %35

23:                                               ; preds = %4
  %24 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %10, align 8
  %25 = load i32, i32* @capabilities, align 4
  %26 = call i32 @CLEAR_AFTER_FIELD(%struct.v4l2_requestbuffers* %24, i32 %25)
  %27 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %6, align 8
  %28 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %27, i32 0, i32 0
  %29 = load i32 (%struct.file*, i8*, %struct.v4l2_requestbuffers*)*, i32 (%struct.file*, i8*, %struct.v4l2_requestbuffers*)** %28, align 8
  %30 = load %struct.file.0*, %struct.file.0** %7, align 8
  %31 = bitcast %struct.file.0* %30 to %struct.file*
  %32 = load i8*, i8** %8, align 8
  %33 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %10, align 8
  %34 = call i32 %29(%struct.file* %31, i8* %32, %struct.v4l2_requestbuffers* %33)
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %23, %21
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i32 @check_fmt(%struct.file.0*, i32) #1

declare dso_local i32 @CLEAR_AFTER_FIELD(%struct.v4l2_requestbuffers*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
