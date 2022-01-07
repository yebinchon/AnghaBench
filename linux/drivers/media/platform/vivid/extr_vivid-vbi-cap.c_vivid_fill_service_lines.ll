; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vbi-cap.c_vivid_fill_service_lines.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vbi-cap.c_vivid_fill_service_lines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_sliced_vbi_format = type { i32, i32, i32**, i32** }

@V4L2_SLICED_CAPTION_525 = common dso_local global i32 0, align 4
@V4L2_SLICED_WSS_625 = common dso_local global i32 0, align 4
@V4L2_SLICED_TELETEXT_B = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vivid_fill_service_lines(%struct.v4l2_sliced_vbi_format* %0, i32 %1) #0 {
  %3 = alloca %struct.v4l2_sliced_vbi_format*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.v4l2_sliced_vbi_format* %0, %struct.v4l2_sliced_vbi_format** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %3, align 8
  %7 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %6, i32 0, i32 0
  store i32 144, i32* %7, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %3, align 8
  %10 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 4
  %11 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %3, align 8
  %12 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %11, i32 0, i32 2
  %13 = load i32**, i32*** %12, align 8
  %14 = call i32 @memset(i32** %13, i32 0, i32 8)
  %15 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %3, align 8
  %16 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %15, i32 0, i32 3
  %17 = load i32**, i32*** %16, align 8
  %18 = call i32 @memset(i32** %17, i32 0, i32 8)
  %19 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %3, align 8
  %20 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %86

24:                                               ; preds = %2
  %25 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %3, align 8
  %26 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @V4L2_SLICED_CAPTION_525, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %24
  %32 = load i32, i32* @V4L2_SLICED_CAPTION_525, align 4
  %33 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %3, align 8
  %34 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %33, i32 0, i32 2
  %35 = load i32**, i32*** %34, align 8
  %36 = getelementptr inbounds i32*, i32** %35, i64 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 21
  store i32 %32, i32* %38, align 4
  %39 = load i32, i32* @V4L2_SLICED_CAPTION_525, align 4
  %40 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %3, align 8
  %41 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %40, i32 0, i32 2
  %42 = load i32**, i32*** %41, align 8
  %43 = getelementptr inbounds i32*, i32** %42, i64 1
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 21
  store i32 %39, i32* %45, align 4
  br label %46

46:                                               ; preds = %31, %24
  %47 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %3, align 8
  %48 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @V4L2_SLICED_WSS_625, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %86

53:                                               ; preds = %46
  store i32 7, i32* %5, align 4
  br label %54

54:                                               ; preds = %75, %53
  %55 = load i32, i32* %5, align 4
  %56 = icmp ule i32 %55, 18
  br i1 %56, label %57, label %78

57:                                               ; preds = %54
  %58 = load i32, i32* @V4L2_SLICED_TELETEXT_B, align 4
  %59 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %3, align 8
  %60 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %59, i32 0, i32 2
  %61 = load i32**, i32*** %60, align 8
  %62 = getelementptr inbounds i32*, i32** %61, i64 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  store i32 %58, i32* %66, align 4
  %67 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %3, align 8
  %68 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %67, i32 0, i32 2
  %69 = load i32**, i32*** %68, align 8
  %70 = getelementptr inbounds i32*, i32** %69, i64 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  store i32 %58, i32* %74, align 4
  br label %75

75:                                               ; preds = %57
  %76 = load i32, i32* %5, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %5, align 4
  br label %54

78:                                               ; preds = %54
  %79 = load i32, i32* @V4L2_SLICED_WSS_625, align 4
  %80 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %3, align 8
  %81 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %80, i32 0, i32 2
  %82 = load i32**, i32*** %81, align 8
  %83 = getelementptr inbounds i32*, i32** %82, i64 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 23
  store i32 %79, i32* %85, align 4
  br label %86

86:                                               ; preds = %23, %78, %46
  ret void
}

declare dso_local i32 @memset(i32**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
