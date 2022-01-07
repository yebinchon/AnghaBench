; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/vdec/extr_vdec_vp9_if.c_vp9_get_sf_ref_fb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/vdec/extr_vdec_vp9_if.c_vp9_get_sf_ref_fb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vdec_vp9_inst = type { i32, %struct.vdec_vp9_vsi* }
%struct.vdec_vp9_vsi = type { %struct.TYPE_4__*, i64, i64, i64, i64 }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.mtk_vcodec_mem, %struct.mtk_vcodec_mem }
%struct.mtk_vcodec_mem = type { i64, i32* }

@.str = private unnamed_addr constant [10 x i8] c"List Full\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Cannot allocate sf_ref_buf y_buf\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Cannot allocate sf_ref_fb c_buf\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vdec_vp9_inst*)* @vp9_get_sf_ref_fb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vp9_get_sf_ref_fb(%struct.vdec_vp9_inst* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vdec_vp9_inst*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtk_vcodec_mem*, align 8
  %6 = alloca %struct.mtk_vcodec_mem*, align 8
  %7 = alloca %struct.vdec_vp9_vsi*, align 8
  store %struct.vdec_vp9_inst* %0, %struct.vdec_vp9_inst** %3, align 8
  %8 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %3, align 8
  %9 = getelementptr inbounds %struct.vdec_vp9_inst, %struct.vdec_vp9_inst* %8, i32 0, i32 1
  %10 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %9, align 8
  store %struct.vdec_vp9_vsi* %10, %struct.vdec_vp9_vsi** %7, align 8
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %43, %1
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %7, align 8
  %14 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %15)
  %17 = icmp slt i32 %12, %16
  br i1 %17, label %18, label %46

18:                                               ; preds = %11
  %19 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %7, align 8
  %20 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.mtk_vcodec_mem, %struct.mtk_vcodec_mem* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %42

30:                                               ; preds = %18
  %31 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %7, align 8
  %32 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %30
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %2, align 4
  br label %144

42:                                               ; preds = %30, %18
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %11

46:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %68, %46
  %48 = load i32, i32* %4, align 4
  %49 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %7, align 8
  %50 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %51)
  %53 = icmp slt i32 %48, %52
  br i1 %53, label %54, label %71

54:                                               ; preds = %47
  %55 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %7, align 8
  %56 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.mtk_vcodec_mem, %struct.mtk_vcodec_mem* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %54
  br label %71

67:                                               ; preds = %54
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %4, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %4, align 4
  br label %47

71:                                               ; preds = %66, %47
  %72 = load i32, i32* %4, align 4
  %73 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %7, align 8
  %74 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %73, i32 0, i32 0
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %75)
  %77 = icmp eq i32 %72, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %71
  %79 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %3, align 8
  %80 = call i32 @mtk_vcodec_err(%struct.vdec_vp9_inst* %79, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %144

81:                                               ; preds = %71
  %82 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %7, align 8
  %83 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %82, i32 0, i32 0
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = load i32, i32* %4, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  store %struct.mtk_vcodec_mem* %89, %struct.mtk_vcodec_mem** %5, align 8
  %90 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %7, align 8
  %91 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %90, i32 0, i32 4
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %7, align 8
  %94 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %92, %95
  %97 = load %struct.mtk_vcodec_mem*, %struct.mtk_vcodec_mem** %5, align 8
  %98 = getelementptr inbounds %struct.mtk_vcodec_mem, %struct.mtk_vcodec_mem* %97, i32 0, i32 0
  store i64 %96, i64* %98, align 8
  %99 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %3, align 8
  %100 = getelementptr inbounds %struct.vdec_vp9_inst, %struct.vdec_vp9_inst* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.mtk_vcodec_mem*, %struct.mtk_vcodec_mem** %5, align 8
  %103 = call i64 @mtk_vcodec_mem_alloc(i32 %101, %struct.mtk_vcodec_mem* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %81
  %106 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %3, align 8
  %107 = call i32 @mtk_vcodec_err(%struct.vdec_vp9_inst* %106, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %144

108:                                              ; preds = %81
  %109 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %7, align 8
  %110 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %109, i32 0, i32 0
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = load i32, i32* %4, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  store %struct.mtk_vcodec_mem* %116, %struct.mtk_vcodec_mem** %6, align 8
  %117 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %7, align 8
  %118 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %7, align 8
  %121 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = add nsw i64 %119, %122
  %124 = load %struct.mtk_vcodec_mem*, %struct.mtk_vcodec_mem** %6, align 8
  %125 = getelementptr inbounds %struct.mtk_vcodec_mem, %struct.mtk_vcodec_mem* %124, i32 0, i32 0
  store i64 %123, i64* %125, align 8
  %126 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %3, align 8
  %127 = getelementptr inbounds %struct.vdec_vp9_inst, %struct.vdec_vp9_inst* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.mtk_vcodec_mem*, %struct.mtk_vcodec_mem** %6, align 8
  %130 = call i64 @mtk_vcodec_mem_alloc(i32 %128, %struct.mtk_vcodec_mem* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %108
  %133 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %3, align 8
  %134 = call i32 @mtk_vcodec_err(%struct.vdec_vp9_inst* %133, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %144

135:                                              ; preds = %108
  %136 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %7, align 8
  %137 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %136, i32 0, i32 0
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %137, align 8
  %139 = load i32, i32* %4, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  store i64 0, i64* %142, align 8
  %143 = load i32, i32* %4, align 4
  store i32 %143, i32* %2, align 4
  br label %144

144:                                              ; preds = %135, %132, %105, %78, %40
  %145 = load i32, i32* %2, align 4
  ret i32 %145
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #1

declare dso_local i32 @mtk_vcodec_err(%struct.vdec_vp9_inst*, i8*) #1

declare dso_local i64 @mtk_vcodec_mem_alloc(i32, %struct.mtk_vcodec_mem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
