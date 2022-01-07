; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-mjpeg-dec.c_delta_mjpeg_ipc_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-mjpeg-dec.c_delta_mjpeg_ipc_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.delta_ctx = type { i32, %struct.delta_dev* }
%struct.delta_dev = type { i32 }
%struct.delta_mjpeg_ctx = type { i8*, %struct.delta_buf*, i32 }
%struct.delta_buf = type { i32 }
%struct.jpeg_video_decode_init_params_t = type { i32, i32 }
%struct.delta_ipc_param = type { i32, %struct.jpeg_video_decode_init_params_t* }

@.str = private unnamed_addr constant [8 x i8] c"%s  %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"JPEG_DECODER_HW0\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"%s  dumping command %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.delta_ctx*)* @delta_mjpeg_ipc_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @delta_mjpeg_ipc_open(%struct.delta_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.delta_ctx*, align 8
  %4 = alloca %struct.delta_dev*, align 8
  %5 = alloca %struct.delta_mjpeg_ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.jpeg_video_decode_init_params_t, align 4
  %8 = alloca %struct.jpeg_video_decode_init_params_t*, align 8
  %9 = alloca %struct.delta_buf*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.delta_ipc_param, align 8
  %12 = alloca i8*, align 8
  store %struct.delta_ctx* %0, %struct.delta_ctx** %3, align 8
  %13 = load %struct.delta_ctx*, %struct.delta_ctx** %3, align 8
  %14 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %13, i32 0, i32 1
  %15 = load %struct.delta_dev*, %struct.delta_dev** %14, align 8
  store %struct.delta_dev* %15, %struct.delta_dev** %4, align 8
  %16 = load %struct.delta_ctx*, %struct.delta_ctx** %3, align 8
  %17 = call %struct.delta_mjpeg_ctx* @to_ctx(%struct.delta_ctx* %16)
  store %struct.delta_mjpeg_ctx* %17, %struct.delta_mjpeg_ctx** %5, align 8
  store i32 0, i32* %6, align 4
  store %struct.jpeg_video_decode_init_params_t* %7, %struct.jpeg_video_decode_init_params_t** %8, align 8
  %18 = load %struct.jpeg_video_decode_init_params_t*, %struct.jpeg_video_decode_init_params_t** %8, align 8
  %19 = call i32 @memset(%struct.jpeg_video_decode_init_params_t* %18, i32 0, i32 8)
  %20 = load %struct.jpeg_video_decode_init_params_t*, %struct.jpeg_video_decode_init_params_t** %8, align 8
  %21 = getelementptr inbounds %struct.jpeg_video_decode_init_params_t, %struct.jpeg_video_decode_init_params_t* %20, i32 0, i32 0
  store i32 0, i32* %21, align 4
  %22 = load %struct.jpeg_video_decode_init_params_t*, %struct.jpeg_video_decode_init_params_t** %8, align 8
  %23 = getelementptr inbounds %struct.jpeg_video_decode_init_params_t, %struct.jpeg_video_decode_init_params_t* %22, i32 0, i32 1
  store i32 -1, i32* %23, align 4
  %24 = load %struct.delta_dev*, %struct.delta_dev** %4, align 8
  %25 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.delta_ctx*, %struct.delta_ctx** %3, align 8
  %28 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.jpeg_video_decode_init_params_t*, %struct.jpeg_video_decode_init_params_t** %8, align 8
  %31 = load %struct.delta_mjpeg_ctx*, %struct.delta_mjpeg_ctx** %5, align 8
  %32 = getelementptr inbounds %struct.delta_mjpeg_ctx, %struct.delta_mjpeg_ctx* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @ipc_open_param_str(%struct.jpeg_video_decode_init_params_t* %30, i32 %33, i32 4)
  %35 = call i32 @dev_vdbg(i32 %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %34)
  %36 = getelementptr inbounds %struct.delta_ipc_param, %struct.delta_ipc_param* %11, i32 0, i32 0
  store i32 8, i32* %36, align 8
  %37 = load %struct.jpeg_video_decode_init_params_t*, %struct.jpeg_video_decode_init_params_t** %8, align 8
  %38 = getelementptr inbounds %struct.delta_ipc_param, %struct.delta_ipc_param* %11, i32 0, i32 1
  store %struct.jpeg_video_decode_init_params_t* %37, %struct.jpeg_video_decode_init_params_t** %38, align 8
  store i32 8, i32* %10, align 4
  %39 = load %struct.delta_ctx*, %struct.delta_ctx** %3, align 8
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @delta_ipc_open(%struct.delta_ctx* %39, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), %struct.delta_ipc_param* %11, i32 %40, %struct.delta_buf** %9, i8** %12)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %58

44:                                               ; preds = %1
  %45 = load %struct.delta_dev*, %struct.delta_dev** %4, align 8
  %46 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.delta_ctx*, %struct.delta_ctx** %3, align 8
  %49 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.jpeg_video_decode_init_params_t*, %struct.jpeg_video_decode_init_params_t** %8, align 8
  %52 = load %struct.delta_mjpeg_ctx*, %struct.delta_mjpeg_ctx** %5, align 8
  %53 = getelementptr inbounds %struct.delta_mjpeg_ctx, %struct.delta_mjpeg_ctx* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @ipc_open_param_str(%struct.jpeg_video_decode_init_params_t* %51, i32 %54, i32 4)
  %56 = call i32 @dev_err(i32 %47, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %50, i32 %55)
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %2, align 4
  br label %65

58:                                               ; preds = %1
  %59 = load %struct.delta_buf*, %struct.delta_buf** %9, align 8
  %60 = load %struct.delta_mjpeg_ctx*, %struct.delta_mjpeg_ctx** %5, align 8
  %61 = getelementptr inbounds %struct.delta_mjpeg_ctx, %struct.delta_mjpeg_ctx* %60, i32 0, i32 1
  store %struct.delta_buf* %59, %struct.delta_buf** %61, align 8
  %62 = load i8*, i8** %12, align 8
  %63 = load %struct.delta_mjpeg_ctx*, %struct.delta_mjpeg_ctx** %5, align 8
  %64 = getelementptr inbounds %struct.delta_mjpeg_ctx, %struct.delta_mjpeg_ctx* %63, i32 0, i32 0
  store i8* %62, i8** %64, align 8
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %58, %44
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local %struct.delta_mjpeg_ctx* @to_ctx(%struct.delta_ctx*) #1

declare dso_local i32 @memset(%struct.jpeg_video_decode_init_params_t*, i32, i32) #1

declare dso_local i32 @dev_vdbg(i32, i8*, i32, i32) #1

declare dso_local i32 @ipc_open_param_str(%struct.jpeg_video_decode_init_params_t*, i32, i32) #1

declare dso_local i32 @delta_ipc_open(%struct.delta_ctx*, i8*, %struct.delta_ipc_param*, i32, %struct.delta_buf**, i8**) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
