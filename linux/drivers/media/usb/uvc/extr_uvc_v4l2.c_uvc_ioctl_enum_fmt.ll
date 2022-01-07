; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_v4l2.c_uvc_ioctl_enum_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_v4l2.c_uvc_ioctl_enum_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_streaming = type { i32, i64, %struct.uvc_format* }
%struct.uvc_format = type { i32, i32, i32 }
%struct.v4l2_fmtdesc = type { i32, i64, i32, i64*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@UVC_FMT_FLAG_COMPRESSED = common dso_local global i32 0, align 4
@V4L2_FMT_FLAG_COMPRESSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uvc_streaming*, %struct.v4l2_fmtdesc*)* @uvc_ioctl_enum_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvc_ioctl_enum_fmt(%struct.uvc_streaming* %0, %struct.v4l2_fmtdesc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uvc_streaming*, align 8
  %5 = alloca %struct.v4l2_fmtdesc*, align 8
  %6 = alloca %struct.uvc_format*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.uvc_streaming* %0, %struct.uvc_streaming** %4, align 8
  store %struct.v4l2_fmtdesc* %1, %struct.v4l2_fmtdesc** %5, align 8
  %9 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %5, align 8
  %10 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %7, align 4
  %12 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %5, align 8
  %13 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %8, align 8
  %15 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %5, align 8
  %16 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %19 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %17, %20
  br i1 %21, label %30, label %22

22:                                               ; preds = %2
  %23 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %5, align 8
  %24 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %27 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp uge i64 %25, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %22, %2
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %80

33:                                               ; preds = %22
  %34 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %5, align 8
  %35 = call i32 @memset(%struct.v4l2_fmtdesc* %34, i32 0, i32 40)
  %36 = load i64, i64* %8, align 8
  %37 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %5, align 8
  %38 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %5, align 8
  %41 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %43 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %42, i32 0, i32 2
  %44 = load %struct.uvc_format*, %struct.uvc_format** %43, align 8
  %45 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %5, align 8
  %46 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.uvc_format, %struct.uvc_format* %44, i64 %47
  store %struct.uvc_format* %48, %struct.uvc_format** %6, align 8
  %49 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %5, align 8
  %50 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %49, i32 0, i32 4
  store i32 0, i32* %50, align 8
  %51 = load %struct.uvc_format*, %struct.uvc_format** %6, align 8
  %52 = getelementptr inbounds %struct.uvc_format, %struct.uvc_format* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @UVC_FMT_FLAG_COMPRESSED, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %33
  %58 = load i32, i32* @V4L2_FMT_FLAG_COMPRESSED, align 4
  %59 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %5, align 8
  %60 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 8
  br label %63

63:                                               ; preds = %57, %33
  %64 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %5, align 8
  %65 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %64, i32 0, i32 3
  %66 = load i64*, i64** %65, align 8
  %67 = load %struct.uvc_format*, %struct.uvc_format** %6, align 8
  %68 = getelementptr inbounds %struct.uvc_format, %struct.uvc_format* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @strscpy(i64* %66, i32 %69, i32 8)
  %71 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %5, align 8
  %72 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %71, i32 0, i32 3
  %73 = load i64*, i64** %72, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 7
  store i64 0, i64* %74, align 8
  %75 = load %struct.uvc_format*, %struct.uvc_format** %6, align 8
  %76 = getelementptr inbounds %struct.uvc_format, %struct.uvc_format* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %5, align 8
  %79 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %63, %30
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @memset(%struct.v4l2_fmtdesc*, i32, i32) #1

declare dso_local i32 @strscpy(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
