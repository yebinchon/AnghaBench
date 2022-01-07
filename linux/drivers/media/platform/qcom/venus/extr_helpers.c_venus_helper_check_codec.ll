; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_helpers.c_venus_helper_check_codec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_helpers.c_venus_helper_check_codec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_inst = type { i32, %struct.venus_core* }
%struct.venus_core = type { i32, i32 }

@HFI_VIDEO_CODEC_H264 = common dso_local global i32 0, align 4
@HFI_VIDEO_CODEC_H263 = common dso_local global i32 0, align 4
@HFI_VIDEO_CODEC_MPEG1 = common dso_local global i32 0, align 4
@HFI_VIDEO_CODEC_MPEG2 = common dso_local global i32 0, align 4
@HFI_VIDEO_CODEC_MPEG4 = common dso_local global i32 0, align 4
@HFI_VIDEO_CODEC_VC1 = common dso_local global i32 0, align 4
@HFI_VIDEO_CODEC_VP8 = common dso_local global i32 0, align 4
@HFI_VIDEO_CODEC_VP9 = common dso_local global i32 0, align 4
@HFI_VIDEO_CODEC_DIVX = common dso_local global i32 0, align 4
@HFI_VIDEO_CODEC_HEVC = common dso_local global i32 0, align 4
@VIDC_SESSION_TYPE_ENC = common dso_local global i32 0, align 4
@VIDC_SESSION_TYPE_DEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @venus_helper_check_codec(%struct.venus_inst* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.venus_inst*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.venus_core*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.venus_inst* %0, %struct.venus_inst** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %10 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %9, i32 0, i32 1
  %11 = load %struct.venus_core*, %struct.venus_core** %10, align 8
  store %struct.venus_core* %11, %struct.venus_core** %6, align 8
  %12 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %13 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %36 [
    i32 137, label %16
    i32 138, label %18
    i32 135, label %20
    i32 134, label %22
    i32 133, label %24
    i32 132, label %26
    i32 131, label %26
    i32 130, label %28
    i32 129, label %30
    i32 128, label %32
    i32 136, label %34
  ]

16:                                               ; preds = %2
  %17 = load i32, i32* @HFI_VIDEO_CODEC_H264, align 4
  store i32 %17, i32* %8, align 4
  br label %37

18:                                               ; preds = %2
  %19 = load i32, i32* @HFI_VIDEO_CODEC_H263, align 4
  store i32 %19, i32* %8, align 4
  br label %37

20:                                               ; preds = %2
  %21 = load i32, i32* @HFI_VIDEO_CODEC_MPEG1, align 4
  store i32 %21, i32* %8, align 4
  br label %37

22:                                               ; preds = %2
  %23 = load i32, i32* @HFI_VIDEO_CODEC_MPEG2, align 4
  store i32 %23, i32* %8, align 4
  br label %37

24:                                               ; preds = %2
  %25 = load i32, i32* @HFI_VIDEO_CODEC_MPEG4, align 4
  store i32 %25, i32* %8, align 4
  br label %37

26:                                               ; preds = %2, %2
  %27 = load i32, i32* @HFI_VIDEO_CODEC_VC1, align 4
  store i32 %27, i32* %8, align 4
  br label %37

28:                                               ; preds = %2
  %29 = load i32, i32* @HFI_VIDEO_CODEC_VP8, align 4
  store i32 %29, i32* %8, align 4
  br label %37

30:                                               ; preds = %2
  %31 = load i32, i32* @HFI_VIDEO_CODEC_VP9, align 4
  store i32 %31, i32* %8, align 4
  br label %37

32:                                               ; preds = %2
  %33 = load i32, i32* @HFI_VIDEO_CODEC_DIVX, align 4
  store i32 %33, i32* %8, align 4
  br label %37

34:                                               ; preds = %2
  %35 = load i32, i32* @HFI_VIDEO_CODEC_HEVC, align 4
  store i32 %35, i32* %8, align 4
  br label %37

36:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %62

37:                                               ; preds = %34, %32, %30, %28, %26, %24, %22, %20, %18, %16
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @VIDC_SESSION_TYPE_ENC, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %37
  %42 = load %struct.venus_core*, %struct.venus_core** %6, align 8
  %43 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %8, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  store i32 1, i32* %3, align 4
  br label %62

49:                                               ; preds = %41, %37
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @VIDC_SESSION_TYPE_DEC, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %49
  %54 = load %struct.venus_core*, %struct.venus_core** %6, align 8
  %55 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %8, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  store i32 1, i32* %3, align 4
  br label %62

61:                                               ; preds = %53, %49
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %60, %48, %36
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
