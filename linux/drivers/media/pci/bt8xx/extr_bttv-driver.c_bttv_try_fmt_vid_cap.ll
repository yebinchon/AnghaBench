; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-driver.c_bttv_try_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-driver.c_bttv_try_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }
%struct.bttv_format = type { i32 }
%struct.bttv_fh = type { i32, %struct.bttv* }
%struct.bttv = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@FORMAT_FLAGS_PLANAR = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_SMPTE170M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @bttv_try_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bttv_try_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.bttv_format*, align 8
  %9 = alloca %struct.bttv_fh*, align 8
  %10 = alloca %struct.bttv*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = bitcast i8* %18 to %struct.bttv_fh*
  store %struct.bttv_fh* %19, %struct.bttv_fh** %9, align 8
  %20 = load %struct.bttv_fh*, %struct.bttv_fh** %9, align 8
  %21 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %20, i32 0, i32 1
  %22 = load %struct.bttv*, %struct.bttv** %21, align 8
  store %struct.bttv* %22, %struct.bttv** %10, align 8
  %23 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %24 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.bttv_format* @format_by_fourcc(i32 %27)
  store %struct.bttv_format* %28, %struct.bttv_format** %8, align 8
  %29 = load %struct.bttv_format*, %struct.bttv_format** %8, align 8
  %30 = icmp eq %struct.bttv_format* null, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %3
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %117

34:                                               ; preds = %3
  %35 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %36 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  switch i32 %40, label %51 [
    i32 128, label %41
    i32 132, label %41
    i32 133, label %41
    i32 131, label %41
    i32 130, label %42
    i32 129, label %42
  ]

41:                                               ; preds = %34, %34, %34, %34
  br label %77

42:                                               ; preds = %34, %34
  %43 = load %struct.bttv_format*, %struct.bttv_format** %8, align 8
  %44 = getelementptr inbounds %struct.bttv_format, %struct.bttv_format* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @FORMAT_FLAGS_PLANAR, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %42
  store i32 129, i32* %11, align 4
  br label %77

50:                                               ; preds = %42
  br label %51

51:                                               ; preds = %34, %50
  %52 = load %struct.bttv*, %struct.bttv** %10, align 8
  %53 = getelementptr inbounds %struct.bttv, %struct.bttv* %52, i32 0, i32 0
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = load %struct.bttv_fh*, %struct.bttv_fh** %9, align 8
  %56 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = ashr i32 %66, 1
  store i32 %67, i32* %14, align 4
  %68 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %69 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %14, align 4
  %74 = icmp sgt i32 %72, %73
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i32 131, i32 132
  store i32 %76, i32* %11, align 4
  br label %77

77:                                               ; preds = %51, %49, %41
  %78 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %79 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %12, align 4
  %83 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %84 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %13, align 4
  %88 = load %struct.bttv_format*, %struct.bttv_format** %8, align 8
  %89 = call i32 @bttv_get_width_mask_vid_cap(%struct.bttv_format* %88, i32* %15, i32* %16)
  %90 = load %struct.bttv_fh*, %struct.bttv_fh** %9, align 8
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* %15, align 4
  %93 = load i32, i32* %16, align 4
  %94 = call i32 @limit_scaled_size_lock(%struct.bttv_fh* %90, i32* %12, i32* %13, i32 %91, i32 %92, i32 %93, i32 1, i32 0)
  store i32 %94, i32* %17, align 4
  %95 = load i32, i32* %17, align 4
  %96 = icmp ne i32 0, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %77
  %98 = load i32, i32* %17, align 4
  store i32 %98, i32* %4, align 4
  br label %117

99:                                               ; preds = %77
  %100 = load i32, i32* %11, align 4
  %101 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %102 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  store i32 %100, i32* %104, align 4
  %105 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %106 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = load %struct.bttv_format*, %struct.bttv_format** %8, align 8
  %109 = load i32, i32* %12, align 4
  %110 = load i32, i32* %13, align 4
  %111 = call i32 @pix_format_set_size(%struct.TYPE_8__* %107, %struct.bttv_format* %108, i32 %109, i32 %110)
  %112 = load i32, i32* @V4L2_COLORSPACE_SMPTE170M, align 4
  %113 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %114 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 3
  store i32 %112, i32* %116, align 4
  store i32 0, i32* %4, align 4
  br label %117

117:                                              ; preds = %99, %97, %31
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local %struct.bttv_format* @format_by_fourcc(i32) #1

declare dso_local i32 @bttv_get_width_mask_vid_cap(%struct.bttv_format*, i32*, i32*) #1

declare dso_local i32 @limit_scaled_size_lock(%struct.bttv_fh*, i32*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pix_format_set_size(%struct.TYPE_8__*, %struct.bttv_format*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
