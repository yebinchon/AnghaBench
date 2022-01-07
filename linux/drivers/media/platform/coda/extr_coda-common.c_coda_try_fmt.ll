; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-common.c_coda_try_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-common.c_coda_try_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coda_ctx = type { %struct.coda_dev* }
%struct.coda_dev = type { i32 }
%struct.coda_codec = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

@V4L2_FIELD_ANY = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MIN_W = common dso_local global i32 0, align 4
@W_ALIGN = common dso_local global i32 0, align 4
@MIN_H = common dso_local global i32 0, align 4
@H_ALIGN = common dso_local global i32 0, align 4
@S_ALIGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.coda_ctx*, %struct.coda_codec*, %struct.v4l2_format*)* @coda_try_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coda_try_fmt(%struct.coda_ctx* %0, %struct.coda_codec* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.coda_ctx*, align 8
  %6 = alloca %struct.coda_codec*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.coda_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.coda_ctx* %0, %struct.coda_ctx** %5, align 8
  store %struct.coda_codec* %1, %struct.coda_codec** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %12 = load %struct.coda_ctx*, %struct.coda_ctx** %5, align 8
  %13 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %12, i32 0, i32 0
  %14 = load %struct.coda_dev*, %struct.coda_dev** %13, align 8
  store %struct.coda_dev* %14, %struct.coda_dev** %8, align 8
  %15 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %16 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* @V4L2_FIELD_ANY, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* @V4L2_FIELD_NONE, align 4
  store i32 %24, i32* %11, align 4
  br label %33

25:                                               ; preds = %3
  %26 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %174

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %32, %23
  %34 = load i32, i32* %11, align 4
  %35 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %36 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store i32 %34, i32* %38, align 4
  %39 = load %struct.coda_dev*, %struct.coda_dev** %8, align 8
  %40 = load %struct.coda_codec*, %struct.coda_codec** %6, align 8
  %41 = call i32 @coda_get_max_dimensions(%struct.coda_dev* %39, %struct.coda_codec* %40, i32* %9, i32* %10)
  %42 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %43 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 5
  %46 = load i32, i32* @MIN_W, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @W_ALIGN, align 4
  %49 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %50 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i32, i32* @MIN_H, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @H_ALIGN, align 4
  %56 = load i32, i32* @S_ALIGN, align 4
  %57 = call i32 @v4l_bound_align_image(i32* %45, i32 %46, i32 %47, i32 %48, i32* %52, i32 %53, i32 %54, i32 %55, i32 %56)
  %58 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %59 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  switch i32 %62, label %171 [
    i32 132, label %63
    i32 131, label %63
    i32 128, label %63
    i32 129, label %91
    i32 130, label %118
    i32 135, label %145
    i32 136, label %145
    i32 133, label %145
    i32 134, label %145
  ]

63:                                               ; preds = %33, %33, %33
  %64 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %65 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @round_up(i32 %68, i32 16)
  %70 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %71 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 3
  store i32 %69, i32* %73, align 4
  %74 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %75 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %80 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = mul nsw i32 %78, %83
  %85 = mul nsw i32 %84, 3
  %86 = sdiv i32 %85, 2
  %87 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %88 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 4
  store i32 %86, i32* %90, align 4
  br label %173

91:                                               ; preds = %33
  %92 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %93 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @round_up(i32 %96, i32 16)
  %98 = mul nsw i32 %97, 2
  %99 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %100 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 3
  store i32 %98, i32* %102, align 4
  %103 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %104 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %109 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = mul nsw i32 %107, %112
  %114 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %115 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 4
  store i32 %113, i32* %117, align 4
  br label %173

118:                                              ; preds = %33
  %119 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %120 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @round_up(i32 %123, i32 16)
  %125 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %126 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 3
  store i32 %124, i32* %128, align 4
  %129 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %130 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %135 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = mul nsw i32 %133, %138
  %140 = mul nsw i32 %139, 2
  %141 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %142 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 4
  store i32 %140, i32* %144, align 4
  br label %173

145:                                              ; preds = %33, %33, %33, %33
  %146 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %147 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 3
  store i32 0, i32* %149, align 4
  %150 = load %struct.coda_ctx*, %struct.coda_ctx** %5, align 8
  %151 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %152 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %157 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 5
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %162 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @coda_estimate_sizeimage(%struct.coda_ctx* %150, i32 %155, i32 %160, i32 %165)
  %167 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %168 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 4
  store i32 %166, i32* %170, align 4
  br label %173

171:                                              ; preds = %33
  %172 = call i32 (...) @BUG()
  br label %173

173:                                              ; preds = %171, %145, %118, %91, %63
  store i32 0, i32* %4, align 4
  br label %174

174:                                              ; preds = %173, %29
  %175 = load i32, i32* %4, align 4
  ret i32 %175
}

declare dso_local i32 @coda_get_max_dimensions(%struct.coda_dev*, %struct.coda_codec*, i32*, i32*) #1

declare dso_local i32 @v4l_bound_align_image(i32*, i32, i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @round_up(i32, i32) #1

declare dso_local i32 @coda_estimate_sizeimage(%struct.coda_ctx*, i32, i32, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
