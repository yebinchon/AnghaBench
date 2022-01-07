; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_display.c_vpbe_try_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_display.c_vpbe_try_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpbe_display = type { %struct.vpbe_device* }
%struct.vpbe_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64 }
%struct.v4l2_pix_format = type { i64, i64, i32, i32, i32, i32 }

@V4L2_PIX_FMT_UYVY = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_NV12 = common dso_local global i64 0, align 8
@V4L2_FIELD_INTERLACED = common dso_local global i64 0, align 8
@V4L2_FIELD_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vpbe_display*, %struct.v4l2_pix_format*, i32)* @vpbe_try_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpbe_try_format(%struct.vpbe_display* %0, %struct.v4l2_pix_format* %1, i32 %2) #0 {
  %4 = alloca %struct.vpbe_display*, align 8
  %5 = alloca %struct.v4l2_pix_format*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vpbe_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.vpbe_display* %0, %struct.vpbe_display** %4, align 8
  store %struct.v4l2_pix_format* %1, %struct.v4l2_pix_format** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.vpbe_display*, %struct.vpbe_display** %4, align 8
  %14 = getelementptr inbounds %struct.vpbe_display, %struct.vpbe_display* %13, i32 0, i32 0
  %15 = load %struct.vpbe_device*, %struct.vpbe_device** %14, align 8
  store %struct.vpbe_device* %15, %struct.vpbe_device** %7, align 8
  store i32 1, i32* %8, align 4
  store i32 32, i32* %9, align 4
  %16 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %17 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @V4L2_PIX_FMT_UYVY, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %3
  %22 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %23 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @V4L2_PIX_FMT_NV12, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load i64, i64* @V4L2_PIX_FMT_UYVY, align 8
  %29 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %30 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  br label %31

31:                                               ; preds = %27, %21, %3
  %32 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %33 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @V4L2_FIELD_INTERLACED, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %58

37:                                               ; preds = %31
  %38 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %39 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @V4L2_FIELD_NONE, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %58

43:                                               ; preds = %37
  %44 = load %struct.vpbe_device*, %struct.vpbe_device** %7, align 8
  %45 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load i64, i64* @V4L2_FIELD_INTERLACED, align 8
  %51 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %52 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %51, i32 0, i32 1
  store i64 %50, i64* %52, align 8
  br label %57

53:                                               ; preds = %43
  %54 = load i64, i64* @V4L2_FIELD_NONE, align 8
  %55 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %56 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %55, i32 0, i32 1
  store i64 %54, i64* %56, align 8
  br label %57

57:                                               ; preds = %53, %49
  br label %58

58:                                               ; preds = %57, %37, %31
  %59 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %60 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @V4L2_FIELD_INTERLACED, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  store i32 2, i32* %8, align 4
  br label %65

65:                                               ; preds = %64, %58
  %66 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %67 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @V4L2_PIX_FMT_NV12, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  store i32 1, i32* %12, align 4
  br label %73

72:                                               ; preds = %65
  store i32 2, i32* %12, align 4
  br label %73

73:                                               ; preds = %72, %71
  %74 = load %struct.vpbe_device*, %struct.vpbe_device** %7, align 8
  %75 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  store i32 %77, i32* %11, align 4
  %78 = load %struct.vpbe_device*, %struct.vpbe_device** %7, align 8
  %79 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* %9, align 4
  %84 = sdiv i32 %83, %82
  store i32 %84, i32* %9, align 4
  %85 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %86 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %101

89:                                               ; preds = %73
  %90 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %91 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %9, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %101, label %95

95:                                               ; preds = %89
  %96 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %97 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* %11, align 4
  %100 = icmp sgt i32 %98, %99
  br i1 %100, label %101, label %108

101:                                              ; preds = %95, %89, %73
  %102 = load %struct.vpbe_device*, %struct.vpbe_device** %7, align 8
  %103 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %107 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 8
  br label %108

108:                                              ; preds = %101, %95
  %109 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %110 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %125

113:                                              ; preds = %108
  %114 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %115 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %8, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %125, label %119

119:                                              ; preds = %113
  %120 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %121 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %10, align 4
  %124 = icmp sgt i32 %122, %123
  br i1 %124, label %125, label %132

125:                                              ; preds = %119, %113, %108
  %126 = load %struct.vpbe_device*, %struct.vpbe_device** %7, align 8
  %127 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %131 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %130, i32 0, i32 3
  store i32 %129, i32* %131, align 4
  br label %132

132:                                              ; preds = %125, %119
  %133 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %134 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %137 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* %12, align 4
  %140 = mul nsw i32 %138, %139
  %141 = icmp slt i32 %135, %140
  br i1 %141, label %142, label %150

142:                                              ; preds = %132
  %143 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %144 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* %12, align 4
  %147 = mul nsw i32 %145, %146
  %148 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %149 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %148, i32 0, i32 4
  store i32 %147, i32* %149, align 8
  br label %150

150:                                              ; preds = %142, %132
  %151 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %152 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* %12, align 4
  %155 = mul nsw i32 %153, %154
  %156 = add nsw i32 %155, 31
  %157 = and i32 %156, -32
  %158 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %159 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %158, i32 0, i32 4
  store i32 %157, i32* %159, align 8
  %160 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %161 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @V4L2_PIX_FMT_NV12, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %184

165:                                              ; preds = %150
  %166 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %167 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %170 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = mul nsw i32 %168, %171
  %173 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %174 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %177 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 4
  %179 = mul nsw i32 %175, %178
  %180 = ashr i32 %179, 1
  %181 = add nsw i32 %172, %180
  %182 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %183 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %182, i32 0, i32 5
  store i32 %181, i32* %183, align 4
  br label %194

184:                                              ; preds = %150
  %185 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %186 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %185, i32 0, i32 4
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %189 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 4
  %191 = mul nsw i32 %187, %190
  %192 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %193 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %192, i32 0, i32 5
  store i32 %191, i32* %193, align 4
  br label %194

194:                                              ; preds = %184, %165
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
