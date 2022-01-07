; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-jpeg/extr_jpeg-core.c_get_byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-jpeg/extr_jpeg-core.c_get_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_jpeg_buffer = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5p_jpeg_buffer*)* @get_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_byte(%struct.s5p_jpeg_buffer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.s5p_jpeg_buffer*, align 8
  store %struct.s5p_jpeg_buffer* %0, %struct.s5p_jpeg_buffer** %3, align 8
  %4 = load %struct.s5p_jpeg_buffer*, %struct.s5p_jpeg_buffer** %3, align 8
  %5 = getelementptr inbounds %struct.s5p_jpeg_buffer, %struct.s5p_jpeg_buffer* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load %struct.s5p_jpeg_buffer*, %struct.s5p_jpeg_buffer** %3, align 8
  %8 = getelementptr inbounds %struct.s5p_jpeg_buffer, %struct.s5p_jpeg_buffer* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp sge i64 %6, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %24

12:                                               ; preds = %1
  %13 = load %struct.s5p_jpeg_buffer*, %struct.s5p_jpeg_buffer** %3, align 8
  %14 = getelementptr inbounds %struct.s5p_jpeg_buffer, %struct.s5p_jpeg_buffer* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = load %struct.s5p_jpeg_buffer*, %struct.s5p_jpeg_buffer** %3, align 8
  %18 = getelementptr inbounds %struct.s5p_jpeg_buffer, %struct.s5p_jpeg_buffer* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %19, 1
  store i64 %20, i64* %18, align 8
  %21 = getelementptr inbounds i8, i8* %16, i64 %19
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %12, %11
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
