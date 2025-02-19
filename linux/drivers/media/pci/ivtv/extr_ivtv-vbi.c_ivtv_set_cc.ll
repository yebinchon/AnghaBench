; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-vbi.c_ivtv_set_cc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-vbi.c_ivtv_set_cc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv = type { i32 }
%struct.vbi_cc = type { i32*, i32* }
%struct.v4l2_sliced_vbi_data = type { i32, i32, i32*, i32 }

@V4L2_CAP_VIDEO_OUTPUT = common dso_local global i32 0, align 4
@V4L2_SLICED_CAPTION_525 = common dso_local global i32 0, align 4
@IVTV_HW_SAA7127 = common dso_local global i32 0, align 4
@vbi = common dso_local global i32 0, align 4
@s_vbi_data = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ivtv*, i32, %struct.vbi_cc*)* @ivtv_set_cc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ivtv_set_cc(%struct.ivtv* %0, i32 %1, %struct.vbi_cc* %2) #0 {
  %4 = alloca %struct.ivtv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vbi_cc*, align 8
  %7 = alloca %struct.v4l2_sliced_vbi_data, align 8
  store %struct.ivtv* %0, %struct.ivtv** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.vbi_cc* %2, %struct.vbi_cc** %6, align 8
  %8 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %9 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @V4L2_CAP_VIDEO_OUTPUT, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %74

15:                                               ; preds = %3
  %16 = load i32, i32* @V4L2_SLICED_CAPTION_525, align 4
  %17 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %7, i32 0, i32 3
  store i32 %16, i32* %17, align 8
  %18 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %7, i32 0, i32 0
  store i32 0, i32* %18, align 8
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, 1
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 21, i32 0
  %24 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %7, i32 0, i32 1
  store i32 %23, i32* %24, align 4
  %25 = load %struct.vbi_cc*, %struct.vbi_cc** %6, align 8
  %26 = getelementptr inbounds %struct.vbi_cc, %struct.vbi_cc* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %7, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  store i32 %29, i32* %32, align 4
  %33 = load %struct.vbi_cc*, %struct.vbi_cc** %6, align 8
  %34 = getelementptr inbounds %struct.vbi_cc, %struct.vbi_cc* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %7, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  store i32 %37, i32* %40, align 4
  %41 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %42 = load i32, i32* @IVTV_HW_SAA7127, align 4
  %43 = load i32, i32* @vbi, align 4
  %44 = load i32, i32* @s_vbi_data, align 4
  %45 = call i32 @ivtv_call_hw(%struct.ivtv* %41, i32 %42, i32 %43, i32 %44, %struct.v4l2_sliced_vbi_data* %7)
  %46 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %7, i32 0, i32 0
  store i32 1, i32* %46, align 8
  %47 = load i32, i32* %5, align 4
  %48 = and i32 %47, 2
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 21, i32 0
  %52 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %7, i32 0, i32 1
  store i32 %51, i32* %52, align 4
  %53 = load %struct.vbi_cc*, %struct.vbi_cc** %6, align 8
  %54 = getelementptr inbounds %struct.vbi_cc, %struct.vbi_cc* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %7, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  store i32 %57, i32* %60, align 4
  %61 = load %struct.vbi_cc*, %struct.vbi_cc** %6, align 8
  %62 = getelementptr inbounds %struct.vbi_cc, %struct.vbi_cc* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %7, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  store i32 %65, i32* %68, align 4
  %69 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %70 = load i32, i32* @IVTV_HW_SAA7127, align 4
  %71 = load i32, i32* @vbi, align 4
  %72 = load i32, i32* @s_vbi_data, align 4
  %73 = call i32 @ivtv_call_hw(%struct.ivtv* %69, i32 %70, i32 %71, i32 %72, %struct.v4l2_sliced_vbi_data* %7)
  br label %74

74:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @ivtv_call_hw(%struct.ivtv*, i32, i32, i32, %struct.v4l2_sliced_vbi_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
