; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-jpeg/extr_mtk_jpeg_parse.c_mtk_jpeg_parse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-jpeg/extr_mtk_jpeg_parse.c_mtk_jpeg_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_jpeg_dec_param = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mtk_jpeg_parse(%struct.mtk_jpeg_dec_param* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtk_jpeg_dec_param*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.mtk_jpeg_dec_param* %0, %struct.mtk_jpeg_dec_param** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %5, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = load i32, i32* %7, align 4
  %11 = call i32 @mtk_jpeg_do_parse(%struct.mtk_jpeg_dec_param* %8, i32* %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %20

14:                                               ; preds = %3
  %15 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %5, align 8
  %16 = call i64 @mtk_jpeg_dec_fill_param(%struct.mtk_jpeg_dec_param* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %20

19:                                               ; preds = %14
  store i32 1, i32* %4, align 4
  br label %20

20:                                               ; preds = %19, %18, %13
  %21 = load i32, i32* %4, align 4
  ret i32 %21
}

declare dso_local i32 @mtk_jpeg_do_parse(%struct.mtk_jpeg_dec_param*, i32*, i32) #1

declare dso_local i64 @mtk_jpeg_dec_fill_param(%struct.mtk_jpeg_dec_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
