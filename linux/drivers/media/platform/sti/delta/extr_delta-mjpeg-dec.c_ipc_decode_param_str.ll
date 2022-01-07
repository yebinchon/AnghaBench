; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-mjpeg-dec.c_ipc_decode_param_str.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-mjpeg-dec.c_ipc_decode_param_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_decode_params_t = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [415 x i8] c"jpeg_decode_params_t\0Apicture_start_addr_p                  0x%x\0Apicture_end_addr_p                    0x%x\0Adecoding_mode                        %d\0Adisplay_buffer_addr.display_decimated_luma_p   0x%x\0Adisplay_buffer_addr.display_decimated_chroma_p 0x%x\0Amain_aux_enable                       %d\0Aadditional_flags                     0x%x\0Afield_flag                           %x\0Ais_jpeg_image                        %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.jpeg_decode_params_t*, i8*, i32)* @ipc_decode_param_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ipc_decode_param_str(%struct.jpeg_decode_params_t* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.jpeg_decode_params_t*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.jpeg_decode_params_t* %0, %struct.jpeg_decode_params_t** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i8*, i8** %6, align 8
  store i8* %9, i8** %8, align 8
  %10 = load %struct.jpeg_decode_params_t*, %struct.jpeg_decode_params_t** %5, align 8
  %11 = icmp ne %struct.jpeg_decode_params_t* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %50

13:                                               ; preds = %3
  %14 = load i8*, i8** %8, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.jpeg_decode_params_t*, %struct.jpeg_decode_params_t** %5, align 8
  %17 = getelementptr inbounds %struct.jpeg_decode_params_t, %struct.jpeg_decode_params_t* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.jpeg_decode_params_t*, %struct.jpeg_decode_params_t** %5, align 8
  %20 = getelementptr inbounds %struct.jpeg_decode_params_t, %struct.jpeg_decode_params_t* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.jpeg_decode_params_t*, %struct.jpeg_decode_params_t** %5, align 8
  %23 = getelementptr inbounds %struct.jpeg_decode_params_t, %struct.jpeg_decode_params_t* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.jpeg_decode_params_t*, %struct.jpeg_decode_params_t** %5, align 8
  %26 = getelementptr inbounds %struct.jpeg_decode_params_t, %struct.jpeg_decode_params_t* %25, i32 0, i32 7
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.jpeg_decode_params_t*, %struct.jpeg_decode_params_t** %5, align 8
  %30 = getelementptr inbounds %struct.jpeg_decode_params_t, %struct.jpeg_decode_params_t* %29, i32 0, i32 7
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.jpeg_decode_params_t*, %struct.jpeg_decode_params_t** %5, align 8
  %34 = getelementptr inbounds %struct.jpeg_decode_params_t, %struct.jpeg_decode_params_t* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.jpeg_decode_params_t*, %struct.jpeg_decode_params_t** %5, align 8
  %37 = getelementptr inbounds %struct.jpeg_decode_params_t, %struct.jpeg_decode_params_t* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.jpeg_decode_params_t*, %struct.jpeg_decode_params_t** %5, align 8
  %40 = getelementptr inbounds %struct.jpeg_decode_params_t, %struct.jpeg_decode_params_t* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.jpeg_decode_params_t*, %struct.jpeg_decode_params_t** %5, align 8
  %43 = getelementptr inbounds %struct.jpeg_decode_params_t, %struct.jpeg_decode_params_t* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @snprintf(i8* %14, i32 %15, i8* getelementptr inbounds ([415 x i8], [415 x i8]* @.str.1, i64 0, i64 0), i32 %18, i32 %21, i32 %24, i32 %28, i32 %32, i32 %35, i32 %38, i32 %41, i32 %44)
  %46 = load i8*, i8** %8, align 8
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  store i8* %48, i8** %8, align 8
  %49 = load i8*, i8** %6, align 8
  store i8* %49, i8** %4, align 8
  br label %50

50:                                               ; preds = %13, %12
  %51 = load i8*, i8** %4, align 8
  ret i8* %51
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
