; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ioctl.c_v4l_print_jpegcompression.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ioctl.c_v4l_print_jpegcompression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_jpegcompression = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [64 x i8] c"quality=%d, APPn=%d, APP_len=%d, COM_len=%d, jpeg_markers=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @v4l_print_jpegcompression to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @v4l_print_jpegcompression(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_jpegcompression*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.v4l2_jpegcompression*
  store %struct.v4l2_jpegcompression* %7, %struct.v4l2_jpegcompression** %5, align 8
  %8 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %5, align 8
  %9 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %5, align 8
  %12 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %5, align 8
  %15 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %5, align 8
  %18 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %5, align 8
  %21 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @pr_cont(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %13, i32 %16, i32 %19, i32 %22)
  ret void
}

declare dso_local i32 @pr_cont(i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
