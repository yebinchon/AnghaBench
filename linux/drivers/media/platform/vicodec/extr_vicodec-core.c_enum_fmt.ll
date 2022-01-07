; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vicodec/extr_vicodec-core.c_enum_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vicodec/extr_vicodec-core.c_enum_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_fmtdesc = type { i32, i32, i64, i32 }
%struct.vicodec_ctx = type { i64, i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.v4l2_fwht_pixfmt_info = type { i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.v4l2_fwht_pixfmt_info* }

@multiplanar = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_FWHT_STATELESS = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_FWHT = common dso_local global i32 0, align 4
@V4L2_FMT_FLAG_DYN_RESOLUTION = common dso_local global i32 0, align 4
@V4L2_FMT_FLAG_CONTINUOUS_BYTESTREAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_fmtdesc*, %struct.vicodec_ctx*, i32)* @enum_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enum_fmt(%struct.v4l2_fmtdesc* %0, %struct.vicodec_ctx* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_fmtdesc*, align 8
  %6 = alloca %struct.vicodec_ctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.v4l2_fwht_pixfmt_info*, align 8
  store %struct.v4l2_fmtdesc* %0, %struct.v4l2_fmtdesc** %5, align 8
  store %struct.vicodec_ctx* %1, %struct.vicodec_ctx** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %6, align 8
  %11 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %14, %3
  %18 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %6, align 8
  %19 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  br label %26

26:                                               ; preds = %22, %17
  %27 = phi i1 [ false, %17 ], [ %25, %22 ]
  br label %28

28:                                               ; preds = %26, %14
  %29 = phi i1 [ true, %14 ], [ %27, %26 ]
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %8, align 4
  %31 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %5, align 8
  %32 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @V4L2_TYPE_IS_MULTIPLANAR(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %28
  %37 = load i64, i64* @multiplanar, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %150

42:                                               ; preds = %36, %28
  %43 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %5, align 8
  %44 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @V4L2_TYPE_IS_MULTIPLANAR(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %42
  %49 = load i64, i64* @multiplanar, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %150

54:                                               ; preds = %48, %42
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %112

57:                                               ; preds = %54
  %58 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %6, align 8
  %59 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %5, align 8
  %60 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = call %struct.TYPE_8__* @get_q_data(%struct.vicodec_ctx* %58, i32 %61)
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load %struct.v4l2_fwht_pixfmt_info*, %struct.v4l2_fwht_pixfmt_info** %63, align 8
  store %struct.v4l2_fwht_pixfmt_info* %64, %struct.v4l2_fwht_pixfmt_info** %9, align 8
  %65 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %6, align 8
  %66 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %78, label %69

69:                                               ; preds = %57
  %70 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %6, align 8
  %71 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = call i32 @vb2_is_streaming(i32* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %69, %57
  %79 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %5, align 8
  %80 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = call %struct.v4l2_fwht_pixfmt_info* @v4l2_fwht_get_pixfmt(i64 %81)
  store %struct.v4l2_fwht_pixfmt_info* %82, %struct.v4l2_fwht_pixfmt_info** %9, align 8
  br label %100

83:                                               ; preds = %69
  %84 = load %struct.v4l2_fwht_pixfmt_info*, %struct.v4l2_fwht_pixfmt_info** %9, align 8
  %85 = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, %struct.v4l2_fwht_pixfmt_info* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.v4l2_fwht_pixfmt_info*, %struct.v4l2_fwht_pixfmt_info** %9, align 8
  %88 = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, %struct.v4l2_fwht_pixfmt_info* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.v4l2_fwht_pixfmt_info*, %struct.v4l2_fwht_pixfmt_info** %9, align 8
  %91 = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, %struct.v4l2_fwht_pixfmt_info* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.v4l2_fwht_pixfmt_info*, %struct.v4l2_fwht_pixfmt_info** %9, align 8
  %94 = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, %struct.v4l2_fwht_pixfmt_info* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %5, align 8
  %97 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = call %struct.v4l2_fwht_pixfmt_info* @v4l2_fwht_find_nth_fmt(i32 %86, i32 %89, i32 %92, i32 %95, i64 %98)
  store %struct.v4l2_fwht_pixfmt_info* %99, %struct.v4l2_fwht_pixfmt_info** %9, align 8
  br label %100

100:                                              ; preds = %83, %78
  %101 = load %struct.v4l2_fwht_pixfmt_info*, %struct.v4l2_fwht_pixfmt_info** %9, align 8
  %102 = icmp ne %struct.v4l2_fwht_pixfmt_info* %101, null
  br i1 %102, label %106, label %103

103:                                              ; preds = %100
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %4, align 4
  br label %150

106:                                              ; preds = %100
  %107 = load %struct.v4l2_fwht_pixfmt_info*, %struct.v4l2_fwht_pixfmt_info** %9, align 8
  %108 = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, %struct.v4l2_fwht_pixfmt_info* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %5, align 8
  %111 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  br label %149

112:                                              ; preds = %54
  %113 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %5, align 8
  %114 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %112
  %118 = load i32, i32* @EINVAL, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %4, align 4
  br label %150

120:                                              ; preds = %112
  %121 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %6, align 8
  %122 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %120
  %126 = load i32, i32* @V4L2_PIX_FMT_FWHT_STATELESS, align 4
  br label %129

127:                                              ; preds = %120
  %128 = load i32, i32* @V4L2_PIX_FMT_FWHT, align 4
  br label %129

129:                                              ; preds = %127, %125
  %130 = phi i32 [ %126, %125 ], [ %128, %127 ]
  %131 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %5, align 8
  %132 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %131, i32 0, i32 1
  store i32 %130, i32* %132, align 4
  %133 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %6, align 8
  %134 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %148, label %137

137:                                              ; preds = %129
  %138 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %6, align 8
  %139 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %148, label %142

142:                                              ; preds = %137
  %143 = load i32, i32* @V4L2_FMT_FLAG_DYN_RESOLUTION, align 4
  %144 = load i32, i32* @V4L2_FMT_FLAG_CONTINUOUS_BYTESTREAM, align 4
  %145 = or i32 %143, %144
  %146 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %5, align 8
  %147 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %146, i32 0, i32 0
  store i32 %145, i32* %147, align 8
  br label %148

148:                                              ; preds = %142, %137, %129
  br label %149

149:                                              ; preds = %148, %106
  store i32 0, i32* %4, align 4
  br label %150

150:                                              ; preds = %149, %117, %103, %51, %39
  %151 = load i32, i32* %4, align 4
  ret i32 %151
}

declare dso_local i64 @V4L2_TYPE_IS_MULTIPLANAR(i32) #1

declare dso_local %struct.TYPE_8__* @get_q_data(%struct.vicodec_ctx*, i32) #1

declare dso_local i32 @vb2_is_streaming(i32*) #1

declare dso_local %struct.v4l2_fwht_pixfmt_info* @v4l2_fwht_get_pixfmt(i64) #1

declare dso_local %struct.v4l2_fwht_pixfmt_info* @v4l2_fwht_find_nth_fmt(i32, i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
