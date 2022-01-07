; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/venc/extr_venc_h264_if.c_h264_get_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/venc/extr_venc_h264_if.c_h264_get_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venc_h264_inst = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"unsupported 1B\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"unsupported level %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.venc_h264_inst*, i32)* @h264_get_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @h264_get_level(%struct.venc_h264_inst* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.venc_h264_inst*, align 8
  %5 = alloca i32, align 4
  store %struct.venc_h264_inst* %0, %struct.venc_h264_inst** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %23 [
    i32 141, label %7
    i32 140, label %10
    i32 139, label %11
    i32 138, label %12
    i32 137, label %13
    i32 136, label %14
    i32 135, label %15
    i32 134, label %16
    i32 133, label %17
    i32 132, label %18
    i32 131, label %19
    i32 130, label %20
    i32 129, label %21
    i32 128, label %22
  ]

7:                                                ; preds = %2
  %8 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %4, align 8
  %9 = call i32 @mtk_vcodec_err(%struct.venc_h264_inst* %8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %27

10:                                               ; preds = %2
  store i32 10, i32* %3, align 4
  br label %27

11:                                               ; preds = %2
  store i32 11, i32* %3, align 4
  br label %27

12:                                               ; preds = %2
  store i32 12, i32* %3, align 4
  br label %27

13:                                               ; preds = %2
  store i32 13, i32* %3, align 4
  br label %27

14:                                               ; preds = %2
  store i32 20, i32* %3, align 4
  br label %27

15:                                               ; preds = %2
  store i32 21, i32* %3, align 4
  br label %27

16:                                               ; preds = %2
  store i32 22, i32* %3, align 4
  br label %27

17:                                               ; preds = %2
  store i32 30, i32* %3, align 4
  br label %27

18:                                               ; preds = %2
  store i32 31, i32* %3, align 4
  br label %27

19:                                               ; preds = %2
  store i32 32, i32* %3, align 4
  br label %27

20:                                               ; preds = %2
  store i32 40, i32* %3, align 4
  br label %27

21:                                               ; preds = %2
  store i32 41, i32* %3, align 4
  br label %27

22:                                               ; preds = %2
  store i32 42, i32* %3, align 4
  br label %27

23:                                               ; preds = %2
  %24 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @mtk_vcodec_debug(%struct.venc_h264_inst* %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  store i32 31, i32* %3, align 4
  br label %27

27:                                               ; preds = %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %7
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @mtk_vcodec_err(%struct.venc_h264_inst*, i8*) #1

declare dso_local i32 @mtk_vcodec_debug(%struct.venc_h264_inst*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
