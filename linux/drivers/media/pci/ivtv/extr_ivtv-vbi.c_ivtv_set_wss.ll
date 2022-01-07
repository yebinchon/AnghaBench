; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-vbi.c_ivtv_set_wss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-vbi.c_ivtv_set_wss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv = type { i32, i32 }
%struct.v4l2_sliced_vbi_data = type { i32, i32*, i64, i32 }

@V4L2_CAP_VIDEO_OUTPUT = common dso_local global i32 0, align 4
@V4L2_STD_625_50 = common dso_local global i32 0, align 4
@V4L2_SLICED_WSS_625 = common dso_local global i32 0, align 4
@IVTV_HW_SAA7127 = common dso_local global i32 0, align 4
@vbi = common dso_local global i32 0, align 4
@s_vbi_data = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ivtv*, i32, i32)* @ivtv_set_wss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ivtv_set_wss(%struct.ivtv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ivtv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.v4l2_sliced_vbi_data, align 8
  store %struct.ivtv* %0, %struct.ivtv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %9 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @V4L2_CAP_VIDEO_OUTPUT, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %51

15:                                               ; preds = %3
  %16 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %17 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @V4L2_STD_625_50, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %15
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  store i32 1, i32* %5, align 4
  store i32 8, i32* %6, align 4
  br label %26

26:                                               ; preds = %25, %22, %15
  %27 = load i32, i32* @V4L2_SLICED_WSS_625, align 4
  %28 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %7, i32 0, i32 3
  store i32 %27, i32* %28, align 8
  %29 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %7, i32 0, i32 2
  store i64 0, i64* %29, align 8
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 23, i32 0
  %34 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %7, i32 0, i32 0
  store i32 %33, i32* %34, align 8
  %35 = load i32, i32* %6, align 4
  %36 = and i32 %35, 255
  %37 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %7, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  store i32 %36, i32* %39, align 4
  %40 = load i32, i32* %6, align 4
  %41 = ashr i32 %40, 8
  %42 = and i32 %41, 255
  %43 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %7, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  store i32 %42, i32* %45, align 4
  %46 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %47 = load i32, i32* @IVTV_HW_SAA7127, align 4
  %48 = load i32, i32* @vbi, align 4
  %49 = load i32, i32* @s_vbi_data, align 4
  %50 = call i32 @ivtv_call_hw(%struct.ivtv* %46, i32 %47, i32 %48, i32 %49, %struct.v4l2_sliced_vbi_data* %7)
  br label %51

51:                                               ; preds = %26, %14
  ret void
}

declare dso_local i32 @ivtv_call_hw(%struct.ivtv*, i32, i32, i32, %struct.v4l2_sliced_vbi_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
