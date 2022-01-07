; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-mjpeg-dec.c_ipc_open_param_str.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-mjpeg-dec.c_ipc_open_param_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_video_decode_init_params_t = type { i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [101 x i8] c"jpeg_video_decode_init_params_t\0Acircular_buffer_begin_addr_p 0x%x\0Acircular_buffer_end_addr_p   0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.jpeg_video_decode_init_params_t*, i8*, i32)* @ipc_open_param_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ipc_open_param_str(%struct.jpeg_video_decode_init_params_t* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.jpeg_video_decode_init_params_t*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.jpeg_video_decode_init_params_t* %0, %struct.jpeg_video_decode_init_params_t** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i8*, i8** %6, align 8
  store i8* %9, i8** %8, align 8
  %10 = load %struct.jpeg_video_decode_init_params_t*, %struct.jpeg_video_decode_init_params_t** %5, align 8
  %11 = icmp ne %struct.jpeg_video_decode_init_params_t* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %27

13:                                               ; preds = %3
  %14 = load i8*, i8** %8, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.jpeg_video_decode_init_params_t*, %struct.jpeg_video_decode_init_params_t** %5, align 8
  %17 = getelementptr inbounds %struct.jpeg_video_decode_init_params_t, %struct.jpeg_video_decode_init_params_t* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.jpeg_video_decode_init_params_t*, %struct.jpeg_video_decode_init_params_t** %5, align 8
  %20 = getelementptr inbounds %struct.jpeg_video_decode_init_params_t, %struct.jpeg_video_decode_init_params_t* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @snprintf(i8* %14, i32 %15, i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.1, i64 0, i64 0), i32 %18, i32 %21)
  %23 = load i8*, i8** %8, align 8
  %24 = sext i32 %22 to i64
  %25 = getelementptr inbounds i8, i8* %23, i64 %24
  store i8* %25, i8** %8, align 8
  %26 = load i8*, i8** %6, align 8
  store i8* %26, i8** %4, align 8
  br label %27

27:                                               ; preds = %13, %12
  %28 = load i8*, i8** %4, align 8
  ret i8* %28
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
