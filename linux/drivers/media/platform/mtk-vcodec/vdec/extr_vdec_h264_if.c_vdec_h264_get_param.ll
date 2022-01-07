; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/vdec/extr_vdec_h264_if.c_vdec_h264_get_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/vdec/extr_vdec_h264_if.c_vdec_h264_get_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vdec_h264_inst = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"invalid get parameter type=%d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*)* @vdec_h264_get_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdec_h264_get_param(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.vdec_h264_inst*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.vdec_h264_inst*
  store %struct.vdec_h264_inst* %10, %struct.vdec_h264_inst** %8, align 8
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %40 [
    i32 131, label %12
    i32 129, label %20
    i32 128, label %28
    i32 130, label %32
    i32 132, label %36
  ]

12:                                               ; preds = %3
  %13 = load %struct.vdec_h264_inst*, %struct.vdec_h264_inst** %8, align 8
  %14 = load %struct.vdec_h264_inst*, %struct.vdec_h264_inst** %8, align 8
  %15 = getelementptr inbounds %struct.vdec_h264_inst, %struct.vdec_h264_inst* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 @vdec_h264_get_fb(%struct.vdec_h264_inst* %13, i32* %17, i32 1, i8* %18)
  br label %46

20:                                               ; preds = %3
  %21 = load %struct.vdec_h264_inst*, %struct.vdec_h264_inst** %8, align 8
  %22 = load %struct.vdec_h264_inst*, %struct.vdec_h264_inst** %8, align 8
  %23 = getelementptr inbounds %struct.vdec_h264_inst, %struct.vdec_h264_inst* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 @vdec_h264_get_fb(%struct.vdec_h264_inst* %21, i32* %25, i32 0, i8* %26)
  br label %46

28:                                               ; preds = %3
  %29 = load %struct.vdec_h264_inst*, %struct.vdec_h264_inst** %8, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @get_pic_info(%struct.vdec_h264_inst* %29, i8* %30)
  br label %46

32:                                               ; preds = %3
  %33 = load %struct.vdec_h264_inst*, %struct.vdec_h264_inst** %8, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 @get_dpb_size(%struct.vdec_h264_inst* %33, i8* %34)
  br label %46

36:                                               ; preds = %3
  %37 = load %struct.vdec_h264_inst*, %struct.vdec_h264_inst** %8, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 @get_crop_info(%struct.vdec_h264_inst* %37, i8* %38)
  br label %46

40:                                               ; preds = %3
  %41 = load %struct.vdec_h264_inst*, %struct.vdec_h264_inst** %8, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @mtk_vcodec_err(%struct.vdec_h264_inst* %41, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %47

46:                                               ; preds = %36, %32, %28, %20, %12
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %46, %40
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @vdec_h264_get_fb(%struct.vdec_h264_inst*, i32*, i32, i8*) #1

declare dso_local i32 @get_pic_info(%struct.vdec_h264_inst*, i8*) #1

declare dso_local i32 @get_dpb_size(%struct.vdec_h264_inst*, i8*) #1

declare dso_local i32 @get_crop_info(%struct.vdec_h264_inst*, i8*) #1

declare dso_local i32 @mtk_vcodec_err(%struct.vdec_h264_inst*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
