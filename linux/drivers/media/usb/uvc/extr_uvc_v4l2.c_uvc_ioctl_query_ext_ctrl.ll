; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_v4l2.c_uvc_ioctl_query_ext_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_v4l2.c_uvc_ioctl_query_ext_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_query_ext_ctrl = type { i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.uvc_fh = type { %struct.uvc_video_chain* }
%struct.uvc_video_chain = type { i32 }
%struct.v4l2_queryctrl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_query_ext_ctrl*)* @uvc_ioctl_query_ext_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvc_ioctl_query_ext_ctrl(%struct.file* %0, i8* %1, %struct.v4l2_query_ext_ctrl* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_query_ext_ctrl*, align 8
  %8 = alloca %struct.uvc_fh*, align 8
  %9 = alloca %struct.uvc_video_chain*, align 8
  %10 = alloca %struct.v4l2_queryctrl, align 4
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_query_ext_ctrl* %2, %struct.v4l2_query_ext_ctrl** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.uvc_fh*
  store %struct.uvc_fh* %13, %struct.uvc_fh** %8, align 8
  %14 = load %struct.uvc_fh*, %struct.uvc_fh** %8, align 8
  %15 = getelementptr inbounds %struct.uvc_fh, %struct.uvc_fh* %14, i32 0, i32 0
  %16 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %15, align 8
  store %struct.uvc_video_chain* %16, %struct.uvc_video_chain** %9, align 8
  %17 = bitcast %struct.v4l2_queryctrl* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %17, i8 0, i64 36, i1 false)
  %18 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %10, i32 0, i32 0
  %19 = load %struct.v4l2_query_ext_ctrl*, %struct.v4l2_query_ext_ctrl** %7, align 8
  %20 = getelementptr inbounds %struct.v4l2_query_ext_ctrl, %struct.v4l2_query_ext_ctrl* %19, i32 0, i32 12
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %18, align 4
  %22 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %9, align 8
  %23 = call i32 @uvc_query_v4l2_ctrl(%struct.uvc_video_chain* %22, %struct.v4l2_queryctrl* %10)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* %11, align 4
  store i32 %27, i32* %4, align 4
  br label %77

28:                                               ; preds = %3
  %29 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %10, i32 0, i32 7
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.v4l2_query_ext_ctrl*, %struct.v4l2_query_ext_ctrl** %7, align 8
  %32 = getelementptr inbounds %struct.v4l2_query_ext_ctrl, %struct.v4l2_query_ext_ctrl* %31, i32 0, i32 12
  store i32 %30, i32* %32, align 4
  %33 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %10, i32 0, i32 6
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.v4l2_query_ext_ctrl*, %struct.v4l2_query_ext_ctrl** %7, align 8
  %36 = getelementptr inbounds %struct.v4l2_query_ext_ctrl, %struct.v4l2_query_ext_ctrl* %35, i32 0, i32 11
  store i32 %34, i32* %36, align 8
  %37 = load %struct.v4l2_query_ext_ctrl*, %struct.v4l2_query_ext_ctrl** %7, align 8
  %38 = getelementptr inbounds %struct.v4l2_query_ext_ctrl, %struct.v4l2_query_ext_ctrl* %37, i32 0, i32 10
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %10, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @strscpy(i32 %39, i32 %41, i32 4)
  %43 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %10, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.v4l2_query_ext_ctrl*, %struct.v4l2_query_ext_ctrl** %7, align 8
  %46 = getelementptr inbounds %struct.v4l2_query_ext_ctrl, %struct.v4l2_query_ext_ctrl* %45, i32 0, i32 9
  store i32 %44, i32* %46, align 8
  %47 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %10, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.v4l2_query_ext_ctrl*, %struct.v4l2_query_ext_ctrl** %7, align 8
  %50 = getelementptr inbounds %struct.v4l2_query_ext_ctrl, %struct.v4l2_query_ext_ctrl* %49, i32 0, i32 8
  store i32 %48, i32* %50, align 4
  %51 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %10, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.v4l2_query_ext_ctrl*, %struct.v4l2_query_ext_ctrl** %7, align 8
  %54 = getelementptr inbounds %struct.v4l2_query_ext_ctrl, %struct.v4l2_query_ext_ctrl* %53, i32 0, i32 7
  store i32 %52, i32* %54, align 8
  %55 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %10, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.v4l2_query_ext_ctrl*, %struct.v4l2_query_ext_ctrl** %7, align 8
  %58 = getelementptr inbounds %struct.v4l2_query_ext_ctrl, %struct.v4l2_query_ext_ctrl* %57, i32 0, i32 6
  store i32 %56, i32* %58, align 4
  %59 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %10, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.v4l2_query_ext_ctrl*, %struct.v4l2_query_ext_ctrl** %7, align 8
  %62 = getelementptr inbounds %struct.v4l2_query_ext_ctrl, %struct.v4l2_query_ext_ctrl* %61, i32 0, i32 5
  store i32 %60, i32* %62, align 8
  %63 = load %struct.v4l2_query_ext_ctrl*, %struct.v4l2_query_ext_ctrl** %7, align 8
  %64 = getelementptr inbounds %struct.v4l2_query_ext_ctrl, %struct.v4l2_query_ext_ctrl* %63, i32 0, i32 0
  store i32 4, i32* %64, align 8
  %65 = load %struct.v4l2_query_ext_ctrl*, %struct.v4l2_query_ext_ctrl** %7, align 8
  %66 = getelementptr inbounds %struct.v4l2_query_ext_ctrl, %struct.v4l2_query_ext_ctrl* %65, i32 0, i32 1
  store i32 1, i32* %66, align 4
  %67 = load %struct.v4l2_query_ext_ctrl*, %struct.v4l2_query_ext_ctrl** %7, align 8
  %68 = getelementptr inbounds %struct.v4l2_query_ext_ctrl, %struct.v4l2_query_ext_ctrl* %67, i32 0, i32 4
  store i64 0, i64* %68, align 8
  %69 = load %struct.v4l2_query_ext_ctrl*, %struct.v4l2_query_ext_ctrl** %7, align 8
  %70 = getelementptr inbounds %struct.v4l2_query_ext_ctrl, %struct.v4l2_query_ext_ctrl* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @memset(i32 %71, i32 0, i32 4)
  %73 = load %struct.v4l2_query_ext_ctrl*, %struct.v4l2_query_ext_ctrl** %7, align 8
  %74 = getelementptr inbounds %struct.v4l2_query_ext_ctrl, %struct.v4l2_query_ext_ctrl* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @memset(i32 %75, i32 0, i32 4)
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %28, %26
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @uvc_query_v4l2_ctrl(%struct.uvc_video_chain*, %struct.v4l2_queryctrl*) #2

declare dso_local i32 @strscpy(i32, i32, i32) #2

declare dso_local i32 @memset(i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
