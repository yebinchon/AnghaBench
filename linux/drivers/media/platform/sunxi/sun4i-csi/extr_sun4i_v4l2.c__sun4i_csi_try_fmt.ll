; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sunxi/sun4i-csi/extr_sun4i_v4l2.c__sun4i_csi_try_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sunxi/sun4i-csi/extr_sun4i_v4l2.c__sun4i_csi_try_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun4i_csi_format = type { i32, i32, i32, i32*, i32 }
%struct.sun4i_csi = type { i32 }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, %struct.TYPE_2__*, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@sun4i_csi_formats = common dso_local global %struct.sun4i_csi_format* null, align 8
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_SRGB = common dso_local global i32 0, align 4
@CSI_MAX_WIDTH = common dso_local global i32 0, align 4
@CSI_MAX_HEIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sun4i_csi*, %struct.v4l2_pix_format_mplane*)* @_sun4i_csi_try_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_sun4i_csi_try_fmt(%struct.sun4i_csi* %0, %struct.v4l2_pix_format_mplane* %1) #0 {
  %3 = alloca %struct.sun4i_csi*, align 8
  %4 = alloca %struct.v4l2_pix_format_mplane*, align 8
  %5 = alloca %struct.sun4i_csi_format*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sun4i_csi* %0, %struct.sun4i_csi** %3, align 8
  store %struct.v4l2_pix_format_mplane* %1, %struct.v4l2_pix_format_mplane** %4, align 8
  %12 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %4, align 8
  %13 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %12, i32 0, i32 5
  %14 = call %struct.sun4i_csi_format* @sun4i_csi_find_format(i32* %13, i32* null)
  store %struct.sun4i_csi_format* %14, %struct.sun4i_csi_format** %5, align 8
  %15 = load %struct.sun4i_csi_format*, %struct.sun4i_csi_format** %5, align 8
  %16 = icmp ne %struct.sun4i_csi_format* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load %struct.sun4i_csi_format*, %struct.sun4i_csi_format** @sun4i_csi_formats, align 8
  %19 = getelementptr inbounds %struct.sun4i_csi_format, %struct.sun4i_csi_format* %18, i64 0
  store %struct.sun4i_csi_format* %19, %struct.sun4i_csi_format** %5, align 8
  br label %20

20:                                               ; preds = %17, %2
  %21 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %22 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %4, align 8
  %23 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %22, i32 0, i32 10
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* @V4L2_COLORSPACE_SRGB, align 4
  %25 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %4, align 8
  %26 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %25, i32 0, i32 7
  store i32 %24, i32* %26, align 4
  %27 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %4, align 8
  %28 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %27, i32 0, i32 7
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @V4L2_MAP_XFER_FUNC_DEFAULT(i32 %29)
  %31 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %4, align 8
  %32 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %31, i32 0, i32 9
  store i32 %30, i32* %32, align 4
  %33 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %4, align 8
  %34 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @V4L2_MAP_YCBCR_ENC_DEFAULT(i32 %35)
  %37 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %4, align 8
  %38 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %37, i32 0, i32 6
  store i32 %36, i32* %38, align 8
  %39 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %4, align 8
  %40 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %39, i32 0, i32 7
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %4, align 8
  %43 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @V4L2_MAP_QUANTIZATION_DEFAULT(i32 1, i32 %41, i32 %44)
  %46 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %4, align 8
  %47 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %46, i32 0, i32 8
  store i32 %45, i32* %47, align 8
  %48 = load %struct.sun4i_csi_format*, %struct.sun4i_csi_format** %5, align 8
  %49 = getelementptr inbounds %struct.sun4i_csi_format, %struct.sun4i_csi_format* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %4, align 8
  %52 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.sun4i_csi_format*, %struct.sun4i_csi_format** %5, align 8
  %54 = getelementptr inbounds %struct.sun4i_csi_format, %struct.sun4i_csi_format* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %4, align 8
  %57 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %56, i32 0, i32 5
  store i32 %55, i32* %57, align 4
  %58 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %4, align 8
  %59 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @memset(i32 %60, i32 0, i32 4)
  %62 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %4, align 8
  %63 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.sun4i_csi_format*, %struct.sun4i_csi_format** %5, align 8
  %66 = getelementptr inbounds %struct.sun4i_csi_format, %struct.sun4i_csi_format* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @ALIGN(i32 %64, i32 %67)
  store i32 %68, i32* %7, align 4
  %69 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %4, align 8
  %70 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.sun4i_csi_format*, %struct.sun4i_csi_format** %5, align 8
  %73 = getelementptr inbounds %struct.sun4i_csi_format, %struct.sun4i_csi_format* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @ALIGN(i32 %71, i32 %74)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %7, align 4
  %77 = load %struct.sun4i_csi_format*, %struct.sun4i_csi_format** %5, align 8
  %78 = getelementptr inbounds %struct.sun4i_csi_format, %struct.sun4i_csi_format* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @CSI_MAX_WIDTH, align 4
  %81 = call i8* @clamp(i32 %76, i32 %79, i32 %80)
  %82 = ptrtoint i8* %81 to i32
  %83 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %4, align 8
  %84 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* %6, align 4
  %86 = load %struct.sun4i_csi_format*, %struct.sun4i_csi_format** %5, align 8
  %87 = getelementptr inbounds %struct.sun4i_csi_format, %struct.sun4i_csi_format* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @CSI_MAX_HEIGHT, align 4
  %90 = call i8* @clamp(i32 %85, i32 %88, i32 %89)
  %91 = ptrtoint i8* %90 to i32
  %92 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %4, align 8
  %93 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 8
  store i32 0, i32* %8, align 4
  br label %94

94:                                               ; preds = %164, %20
  %95 = load i32, i32* %8, align 4
  %96 = load %struct.sun4i_csi_format*, %struct.sun4i_csi_format** %5, align 8
  %97 = getelementptr inbounds %struct.sun4i_csi_format, %struct.sun4i_csi_format* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp ult i32 %95, %98
  br i1 %99, label %100, label %167

100:                                              ; preds = %94
  %101 = load i32, i32* %8, align 4
  %102 = icmp ugt i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %100
  %104 = load %struct.sun4i_csi_format*, %struct.sun4i_csi_format** %5, align 8
  %105 = getelementptr inbounds %struct.sun4i_csi_format, %struct.sun4i_csi_format* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  br label %108

107:                                              ; preds = %100
  br label %108

108:                                              ; preds = %107, %103
  %109 = phi i32 [ %106, %103 ], [ 1, %107 ]
  store i32 %109, i32* %9, align 4
  %110 = load i32, i32* %8, align 4
  %111 = icmp ugt i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %108
  %113 = load %struct.sun4i_csi_format*, %struct.sun4i_csi_format** %5, align 8
  %114 = getelementptr inbounds %struct.sun4i_csi_format, %struct.sun4i_csi_format* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  br label %117

116:                                              ; preds = %108
  br label %117

117:                                              ; preds = %116, %112
  %118 = phi i32 [ %115, %112 ], [ 1, %116 ]
  store i32 %118, i32* %10, align 4
  %119 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %4, align 8
  %120 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %9, align 4
  %123 = udiv i32 %121, %122
  %124 = load %struct.sun4i_csi_format*, %struct.sun4i_csi_format** %5, align 8
  %125 = getelementptr inbounds %struct.sun4i_csi_format, %struct.sun4i_csi_format* %124, i32 0, i32 3
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %8, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = mul i32 %123, %130
  %132 = udiv i32 %131, 8
  store i32 %132, i32* %11, align 4
  %133 = load i32, i32* %11, align 4
  %134 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %4, align 8
  %135 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %134, i32 0, i32 3
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** %135, align 8
  %137 = load i32, i32* %8, align 4
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 0
  store i32 %133, i32* %140, align 4
  %141 = load i32, i32* %11, align 4
  %142 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %4, align 8
  %143 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = mul i32 %141, %144
  %146 = load i32, i32* %10, align 4
  %147 = udiv i32 %145, %146
  %148 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %4, align 8
  %149 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %148, i32 0, i32 3
  %150 = load %struct.TYPE_2__*, %struct.TYPE_2__** %149, align 8
  %151 = load i32, i32* %8, align 4
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 1
  store i32 %147, i32* %154, align 4
  %155 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %4, align 8
  %156 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %155, i32 0, i32 3
  %157 = load %struct.TYPE_2__*, %struct.TYPE_2__** %156, align 8
  %158 = load i32, i32* %8, align 4
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @memset(i32 %162, i32 0, i32 4)
  br label %164

164:                                              ; preds = %117
  %165 = load i32, i32* %8, align 4
  %166 = add i32 %165, 1
  store i32 %166, i32* %8, align 4
  br label %94

167:                                              ; preds = %94
  ret void
}

declare dso_local %struct.sun4i_csi_format* @sun4i_csi_find_format(i32*, i32*) #1

declare dso_local i32 @V4L2_MAP_XFER_FUNC_DEFAULT(i32) #1

declare dso_local i32 @V4L2_MAP_YCBCR_ENC_DEFAULT(i32) #1

declare dso_local i32 @V4L2_MAP_QUANTIZATION_DEFAULT(i32, i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i8* @clamp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
