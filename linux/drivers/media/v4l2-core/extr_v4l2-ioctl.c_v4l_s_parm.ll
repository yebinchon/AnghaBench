; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ioctl.c_v4l_s_parm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ioctl.c_v4l_s_parm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ioctl_ops = type { i32 (%struct.file*, i8*, %struct.v4l2_streamparm*)* }
%struct.file = type opaque
%struct.v4l2_streamparm = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i64, i32 }
%struct.TYPE_4__ = type { i32, i64, i32 }
%struct.file.0 = type { i32 }

@V4L2_MODE_HIGHQUALITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ioctl_ops*, %struct.file.0*, i8*, i8*)* @v4l_s_parm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v4l_s_parm(%struct.v4l2_ioctl_ops* %0, %struct.file.0* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_ioctl_ops*, align 8
  %7 = alloca %struct.file.0*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.v4l2_streamparm*, align 8
  %11 = alloca i32, align 4
  store %struct.v4l2_ioctl_ops* %0, %struct.v4l2_ioctl_ops** %6, align 8
  store %struct.file.0* %1, %struct.file.0** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load i8*, i8** %9, align 8
  %13 = bitcast i8* %12 to %struct.v4l2_streamparm*
  store %struct.v4l2_streamparm* %13, %struct.v4l2_streamparm** %10, align 8
  %14 = load %struct.file.0*, %struct.file.0** %7, align 8
  %15 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %10, align 8
  %16 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @check_fmt(%struct.file.0* %14, i32 %17)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* %11, align 4
  store i32 %22, i32* %5, align 4
  br label %74

23:                                               ; preds = %4
  %24 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %10, align 8
  %25 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @V4L2_TYPE_IS_OUTPUT(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %47

29:                                               ; preds = %23
  %30 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %10, align 8
  %31 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @memset(i32 %34, i32 0, i32 4)
  %36 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %10, align 8
  %37 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  store i64 0, i64* %39, align 8
  %40 = load i32, i32* @V4L2_MODE_HIGHQUALITY, align 4
  %41 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %10, align 8
  %42 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = and i32 %45, %40
  store i32 %46, i32* %44, align 8
  br label %65

47:                                               ; preds = %23
  %48 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %10, align 8
  %49 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @memset(i32 %52, i32 0, i32 4)
  %54 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %10, align 8
  %55 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  store i64 0, i64* %57, align 8
  %58 = load i32, i32* @V4L2_MODE_HIGHQUALITY, align 4
  %59 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %10, align 8
  %60 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = and i32 %63, %58
  store i32 %64, i32* %62, align 8
  br label %65

65:                                               ; preds = %47, %29
  %66 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %6, align 8
  %67 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %66, i32 0, i32 0
  %68 = load i32 (%struct.file*, i8*, %struct.v4l2_streamparm*)*, i32 (%struct.file*, i8*, %struct.v4l2_streamparm*)** %67, align 8
  %69 = load %struct.file.0*, %struct.file.0** %7, align 8
  %70 = bitcast %struct.file.0* %69 to %struct.file*
  %71 = load i8*, i8** %8, align 8
  %72 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %10, align 8
  %73 = call i32 %68(%struct.file* %70, i8* %71, %struct.v4l2_streamparm* %72)
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %65, %21
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i32 @check_fmt(%struct.file.0*, i32) #1

declare dso_local i64 @V4L2_TYPE_IS_OUTPUT(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
