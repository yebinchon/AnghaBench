; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/vdec/extr_vdec_vp8_if.c_vdec_vp8_get_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/vdec/extr_vdec_vp8_if.c_vdec_vp8_get_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vdec_vp8_inst = type { i32 }

@VP8_DPB_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"invalid get parameter type=%d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*)* @vdec_vp8_get_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdec_vp8_get_param(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.vdec_vp8_inst*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.vdec_vp8_inst*
  store %struct.vdec_vp8_inst* %10, %struct.vdec_vp8_inst** %8, align 8
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %32 [
    i32 131, label %12
    i32 129, label %16
    i32 128, label %20
    i32 132, label %24
    i32 130, label %28
  ]

12:                                               ; preds = %3
  %13 = load %struct.vdec_vp8_inst*, %struct.vdec_vp8_inst** %8, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = call i32 @get_disp_fb(%struct.vdec_vp8_inst* %13, i8* %14)
  br label %38

16:                                               ; preds = %3
  %17 = load %struct.vdec_vp8_inst*, %struct.vdec_vp8_inst** %8, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 @get_free_fb(%struct.vdec_vp8_inst* %17, i8* %18)
  br label %38

20:                                               ; preds = %3
  %21 = load %struct.vdec_vp8_inst*, %struct.vdec_vp8_inst** %8, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @get_pic_info(%struct.vdec_vp8_inst* %21, i8* %22)
  br label %38

24:                                               ; preds = %3
  %25 = load %struct.vdec_vp8_inst*, %struct.vdec_vp8_inst** %8, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 @get_crop_info(%struct.vdec_vp8_inst* %25, i8* %26)
  br label %38

28:                                               ; preds = %3
  %29 = load i32, i32* @VP8_DPB_SIZE, align 4
  %30 = load i8*, i8** %7, align 8
  %31 = bitcast i8* %30 to i32*
  store i32 %29, i32* %31, align 4
  br label %38

32:                                               ; preds = %3
  %33 = load %struct.vdec_vp8_inst*, %struct.vdec_vp8_inst** %8, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @mtk_vcodec_err(%struct.vdec_vp8_inst* %33, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %39

38:                                               ; preds = %28, %24, %20, %16, %12
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %38, %32
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @get_disp_fb(%struct.vdec_vp8_inst*, i8*) #1

declare dso_local i32 @get_free_fb(%struct.vdec_vp8_inst*, i8*) #1

declare dso_local i32 @get_pic_info(%struct.vdec_vp8_inst*, i8*) #1

declare dso_local i32 @get_crop_info(%struct.vdec_vp8_inst*, i8*) #1

declare dso_local i32 @mtk_vcodec_err(%struct.vdec_vp8_inst*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
