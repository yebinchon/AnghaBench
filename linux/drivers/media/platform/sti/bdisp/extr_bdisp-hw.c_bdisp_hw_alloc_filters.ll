; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/bdisp/extr_bdisp-hw.c_bdisp_hw_alloc_filters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/bdisp/extr_bdisp-hw.c_bdisp_hw_alloc_filters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i8*, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i8*, i32, i32 }
%struct.device = type { i32 }

@BDISP_HF_NB = common dso_local global i32 0, align 4
@NB_H_FILTER = common dso_local global i32 0, align 4
@BDISP_VF_NB = common dso_local global i32 0, align 4
@NB_V_FILTER = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@DMA_ATTR_WRITE_COMBINE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@bdisp_h_spec = common dso_local global %struct.TYPE_7__* null, align 8
@bdisp_h_filter = common dso_local global %struct.TYPE_8__* null, align 8
@bdisp_v_spec = common dso_local global %struct.TYPE_5__* null, align 8
@bdisp_v_filter = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bdisp_hw_alloc_filters(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %8 = load i32, i32* @BDISP_HF_NB, align 4
  %9 = load i32, i32* @NB_H_FILTER, align 4
  %10 = mul i32 %8, %9
  %11 = load i32, i32* @BDISP_VF_NB, align 4
  %12 = load i32, i32* @NB_V_FILTER, align 4
  %13 = mul i32 %11, %12
  %14 = add i32 %10, %13
  store i32 %14, i32* %5, align 4
  %15 = load %struct.device*, %struct.device** %3, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = load i32, i32* @DMA_ATTR_WRITE_COMBINE, align 4
  %19 = call i8* @dma_alloc_attrs(%struct.device* %15, i32 %16, i32* %7, i32 %17, i32 %18)
  store i8* %19, i8** %6, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %144

25:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %81, %25
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @NB_H_FILTER, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %84

30:                                               ; preds = %26
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** @bdisp_h_spec, align 8
  %32 = load i32, i32* %4, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** @bdisp_h_filter, align 8
  %38 = load i32, i32* %4, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 3
  store i32 %36, i32* %41, align 4
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** @bdisp_h_spec, align 8
  %43 = load i32, i32* %4, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** @bdisp_h_filter, align 8
  %49 = load i32, i32* %4, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 2
  store i32 %47, i32* %52, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** @bdisp_h_spec, align 8
  %55 = load i32, i32* %4, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @BDISP_HF_NB, align 4
  %61 = call i32 @memcpy(i8* %53, i32 %59, i32 %60)
  %62 = load i8*, i8** %6, align 8
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** @bdisp_h_filter, align 8
  %64 = load i32, i32* %4, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  store i8* %62, i8** %67, align 8
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** @bdisp_h_filter, align 8
  %70 = load i32, i32* %4, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  store i32 %68, i32* %73, align 8
  %74 = load i32, i32* @BDISP_HF_NB, align 4
  %75 = load i8*, i8** %6, align 8
  %76 = zext i32 %74 to i64
  %77 = getelementptr i8, i8* %75, i64 %76
  store i8* %77, i8** %6, align 8
  %78 = load i32, i32* @BDISP_HF_NB, align 4
  %79 = load i32, i32* %7, align 4
  %80 = add i32 %79, %78
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %30
  %82 = load i32, i32* %4, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %4, align 4
  br label %26

84:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %140, %84
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* @NB_V_FILTER, align 4
  %88 = icmp ult i32 %86, %87
  br i1 %88, label %89, label %143

89:                                               ; preds = %85
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** @bdisp_v_spec, align 8
  %91 = load i32, i32* %4, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** @bdisp_v_filter, align 8
  %97 = load i32, i32* %4, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 3
  store i32 %95, i32* %100, align 4
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** @bdisp_v_spec, align 8
  %102 = load i32, i32* %4, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** @bdisp_v_filter, align 8
  %108 = load i32, i32* %4, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 2
  store i32 %106, i32* %111, align 8
  %112 = load i8*, i8** %6, align 8
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** @bdisp_v_spec, align 8
  %114 = load i32, i32* %4, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @BDISP_VF_NB, align 4
  %120 = call i32 @memcpy(i8* %112, i32 %118, i32 %119)
  %121 = load i8*, i8** %6, align 8
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** @bdisp_v_filter, align 8
  %123 = load i32, i32* %4, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 1
  store i8* %121, i8** %126, align 8
  %127 = load i32, i32* %7, align 4
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** @bdisp_v_filter, align 8
  %129 = load i32, i32* %4, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  store i32 %127, i32* %132, align 8
  %133 = load i32, i32* @BDISP_VF_NB, align 4
  %134 = load i8*, i8** %6, align 8
  %135 = zext i32 %133 to i64
  %136 = getelementptr i8, i8* %134, i64 %135
  store i8* %136, i8** %6, align 8
  %137 = load i32, i32* @BDISP_VF_NB, align 4
  %138 = load i32, i32* %7, align 4
  %139 = add i32 %138, %137
  store i32 %139, i32* %7, align 4
  br label %140

140:                                              ; preds = %89
  %141 = load i32, i32* %4, align 4
  %142 = add i32 %141, 1
  store i32 %142, i32* %4, align 4
  br label %85

143:                                              ; preds = %85
  store i32 0, i32* %2, align 4
  br label %144

144:                                              ; preds = %143, %22
  %145 = load i32, i32* %2, align 4
  ret i32 %145
}

declare dso_local i8* @dma_alloc_attrs(%struct.device*, i32, i32*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
