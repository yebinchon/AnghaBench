; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vbi-cap.c_vivid_g_fmt_vbi_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vbi-cap.c_vivid_g_fmt_vbi_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vivid_dev = type { i32*, i64, i64 }
%struct.v4l2_vbi_format = type { i32, i32, i32, i32*, i64*, i32, i64*, i32 }

@V4L2_STD_525_60 = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_GREY = common dso_local global i32 0, align 4
@V4L2_VBI_ITU_525_F1_START = common dso_local global i64 0, align 8
@V4L2_VBI_ITU_625_F1_START = common dso_local global i64 0, align 8
@V4L2_VBI_ITU_525_F2_START = common dso_local global i64 0, align 8
@V4L2_VBI_ITU_625_F2_START = common dso_local global i64 0, align 8
@V4L2_VBI_INTERLACED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vivid_dev*, %struct.v4l2_vbi_format*)* @vivid_g_fmt_vbi_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vivid_g_fmt_vbi_cap(%struct.vivid_dev* %0, %struct.v4l2_vbi_format* %1) #0 {
  %3 = alloca %struct.vivid_dev*, align 8
  %4 = alloca %struct.v4l2_vbi_format*, align 8
  %5 = alloca i32, align 4
  store %struct.vivid_dev* %0, %struct.vivid_dev** %3, align 8
  store %struct.v4l2_vbi_format* %1, %struct.v4l2_vbi_format** %4, align 8
  %6 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %7 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %10 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds i32, i32* %8, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @V4L2_STD_525_60, align 4
  %15 = and i32 %13, %14
  store i32 %15, i32* %5, align 4
  %16 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %4, align 8
  %17 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %16, i32 0, i32 0
  store i32 27000000, i32* %17, align 8
  %18 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %4, align 8
  %19 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %18, i32 0, i32 1
  store i32 24, i32* %19, align 4
  %20 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %4, align 8
  %21 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %20, i32 0, i32 2
  store i32 1440, i32* %21, align 8
  %22 = load i32, i32* @V4L2_PIX_FMT_GREY, align 4
  %23 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %4, align 8
  %24 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %23, i32 0, i32 7
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load i64, i64* @V4L2_VBI_ITU_525_F1_START, align 8
  %29 = add nsw i64 %28, 9
  br label %33

30:                                               ; preds = %2
  %31 = load i64, i64* @V4L2_VBI_ITU_625_F1_START, align 8
  %32 = add nsw i64 %31, 5
  br label %33

33:                                               ; preds = %30, %27
  %34 = phi i64 [ %29, %27 ], [ %32, %30 ]
  %35 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %4, align 8
  %36 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %35, i32 0, i32 6
  %37 = load i64*, i64** %36, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 0
  store i64 %34, i64* %38, align 8
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = load i64, i64* @V4L2_VBI_ITU_525_F2_START, align 8
  %43 = add nsw i64 %42, 9
  br label %47

44:                                               ; preds = %33
  %45 = load i64, i64* @V4L2_VBI_ITU_625_F2_START, align 8
  %46 = add nsw i64 %45, 5
  br label %47

47:                                               ; preds = %44, %41
  %48 = phi i64 [ %43, %41 ], [ %46, %44 ]
  %49 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %4, align 8
  %50 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %49, i32 0, i32 6
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 1
  store i64 %48, i64* %52, align 8
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i32 12, i32 18
  %57 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %4, align 8
  %58 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %57, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  store i32 %56, i32* %60, align 4
  %61 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %4, align 8
  %62 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %61, i32 0, i32 3
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  store i32 %56, i32* %64, align 4
  %65 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %66 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %47
  %70 = load i32, i32* @V4L2_VBI_INTERLACED, align 4
  br label %72

71:                                               ; preds = %47
  br label %72

72:                                               ; preds = %71, %69
  %73 = phi i32 [ %70, %69 ], [ 0, %71 ]
  %74 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %4, align 8
  %75 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %74, i32 0, i32 5
  store i32 %73, i32* %75, align 8
  %76 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %4, align 8
  %77 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %76, i32 0, i32 4
  %78 = load i64*, i64** %77, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 0
  store i64 0, i64* %79, align 8
  %80 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %4, align 8
  %81 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %80, i32 0, i32 4
  %82 = load i64*, i64** %81, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 1
  store i64 0, i64* %83, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
