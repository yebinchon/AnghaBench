; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-driver.c_bttv_s_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-driver.c_bttv_s_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.bttv_format = type { i32 }
%struct.bttv_fh = type { i32, i32, %struct.TYPE_5__, %struct.bttv_format*, %struct.bttv* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.bttv = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, %struct.bttv_format* }

@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @bttv_s_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bttv_s_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.bttv_format*, align 8
  %10 = alloca %struct.bttv_fh*, align 8
  %11 = alloca %struct.bttv*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = bitcast i8* %17 to %struct.bttv_fh*
  store %struct.bttv_fh* %18, %struct.bttv_fh** %10, align 8
  %19 = load %struct.bttv_fh*, %struct.bttv_fh** %10, align 8
  %20 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %19, i32 0, i32 4
  %21 = load %struct.bttv*, %struct.bttv** %20, align 8
  store %struct.bttv* %21, %struct.bttv** %11, align 8
  %22 = load %struct.bttv_fh*, %struct.bttv_fh** %10, align 8
  %23 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %24 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @bttv_switch_type(%struct.bttv_fh* %22, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 0, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %3
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %4, align 4
  br label %132

31:                                               ; preds = %3
  %32 = load %struct.file*, %struct.file** %5, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %35 = call i32 @bttv_try_fmt_vid_cap(%struct.file* %32, i8* %33, %struct.v4l2_format* %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 0, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %4, align 4
  br label %132

40:                                               ; preds = %31
  %41 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %42 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %12, align 4
  %46 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %47 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %13, align 4
  %51 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %52 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %16, align 4
  %56 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %57 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = call %struct.bttv_format* @format_by_fourcc(i32 %60)
  store %struct.bttv_format* %61, %struct.bttv_format** %9, align 8
  %62 = load %struct.bttv_format*, %struct.bttv_format** %9, align 8
  %63 = call i32 @bttv_get_width_mask_vid_cap(%struct.bttv_format* %62, i32* %14, i32* %15)
  %64 = load %struct.bttv_fh*, %struct.bttv_fh** %10, align 8
  %65 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %66 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* %15, align 4
  %72 = call i32 @limit_scaled_size_lock(%struct.bttv_fh* %64, i32* %12, i32* %13, i32 %69, i32 %70, i32 %71, i32 1, i32 1)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 0, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %40
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %4, align 4
  br label %132

77:                                               ; preds = %40
  %78 = load i32, i32* %16, align 4
  %79 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %80 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  store i32 %78, i32* %82, align 4
  %83 = load %struct.bttv_format*, %struct.bttv_format** %9, align 8
  %84 = load %struct.bttv_fh*, %struct.bttv_fh** %10, align 8
  %85 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %84, i32 0, i32 3
  store %struct.bttv_format* %83, %struct.bttv_format** %85, align 8
  %86 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %87 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.bttv_fh*, %struct.bttv_fh** %10, align 8
  %92 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  store i32 %90, i32* %93, align 8
  %94 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %95 = load %struct.bttv_fh*, %struct.bttv_fh** %10, align 8
  %96 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  store i32 %94, i32* %97, align 4
  %98 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %99 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.bttv_fh*, %struct.bttv_fh** %10, align 8
  %104 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  %105 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %106 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.bttv_fh*, %struct.bttv_fh** %10, align 8
  %111 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 8
  %112 = load %struct.bttv_format*, %struct.bttv_format** %9, align 8
  %113 = load %struct.bttv*, %struct.bttv** %11, align 8
  %114 = getelementptr inbounds %struct.bttv, %struct.bttv* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 2
  store %struct.bttv_format* %112, %struct.bttv_format** %115, align 8
  %116 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %117 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.bttv*, %struct.bttv** %11, align 8
  %122 = getelementptr inbounds %struct.bttv, %struct.bttv* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 1
  store i32 %120, i32* %123, align 4
  %124 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %125 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.bttv*, %struct.bttv** %11, align 8
  %130 = getelementptr inbounds %struct.bttv, %struct.bttv* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  store i32 %128, i32* %131, align 8
  store i32 0, i32* %4, align 4
  br label %132

132:                                              ; preds = %77, %75, %38, %29
  %133 = load i32, i32* %4, align 4
  ret i32 %133
}

declare dso_local i32 @bttv_switch_type(%struct.bttv_fh*, i32) #1

declare dso_local i32 @bttv_try_fmt_vid_cap(%struct.file*, i8*, %struct.v4l2_format*) #1

declare dso_local %struct.bttv_format* @format_by_fourcc(i32) #1

declare dso_local i32 @bttv_get_width_mask_vid_cap(%struct.bttv_format*, i32*, i32*) #1

declare dso_local i32 @limit_scaled_size_lock(%struct.bttv_fh*, i32*, i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
