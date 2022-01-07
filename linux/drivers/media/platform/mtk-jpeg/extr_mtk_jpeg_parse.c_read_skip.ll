; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-jpeg/extr_mtk_jpeg_parse.c_read_skip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-jpeg/extr_mtk_jpeg_parse.c_read_skip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_jpeg_stream = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_jpeg_stream*, i64)* @read_skip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_skip(%struct.mtk_jpeg_stream* %0, i64 %1) #0 {
  %3 = alloca %struct.mtk_jpeg_stream*, align 8
  %4 = alloca i64, align 8
  store %struct.mtk_jpeg_stream* %0, %struct.mtk_jpeg_stream** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = icmp sle i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %16

8:                                                ; preds = %2
  br label %9

9:                                                ; preds = %13, %8
  %10 = load i64, i64* %4, align 8
  %11 = add nsw i64 %10, -1
  store i64 %11, i64* %4, align 8
  %12 = icmp ne i64 %10, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load %struct.mtk_jpeg_stream*, %struct.mtk_jpeg_stream** %3, align 8
  %15 = call i32 @read_byte(%struct.mtk_jpeg_stream* %14)
  br label %9

16:                                               ; preds = %7, %9
  ret void
}

declare dso_local i32 @read_byte(%struct.mtk_jpeg_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
