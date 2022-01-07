; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/venc/extr_venc_h264_if.c_h264_enc_set_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/venc/extr_venc_h264_if.c_h264_enc_set_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venc_enc_param = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.venc_h264_inst = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"->type=%d\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"set prepend header mode\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.venc_enc_param*)* @h264_enc_set_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @h264_enc_set_param(i8* %0, i32 %1, %struct.venc_enc_param* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.venc_enc_param*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.venc_h264_inst*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.venc_enc_param* %2, %struct.venc_enc_param** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.venc_h264_inst*
  store %struct.venc_h264_inst* %10, %struct.venc_h264_inst** %8, align 8
  %11 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %8, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 (%struct.venc_h264_inst*, i8*, ...) @mtk_vcodec_debug(%struct.venc_h264_inst* %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %145 [
    i32 129, label %15
    i32 128, label %140
  ]

15:                                               ; preds = %3
  %16 = load %struct.venc_enc_param*, %struct.venc_enc_param** %6, align 8
  %17 = getelementptr inbounds %struct.venc_enc_param, %struct.venc_enc_param* %16, i32 0, i32 10
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %8, align 8
  %20 = getelementptr inbounds %struct.venc_h264_inst, %struct.venc_h264_inst* %19, i32 0, i32 3
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 11
  store i32 %18, i32* %23, align 4
  %24 = load %struct.venc_enc_param*, %struct.venc_enc_param** %6, align 8
  %25 = getelementptr inbounds %struct.venc_enc_param, %struct.venc_enc_param* %24, i32 0, i32 9
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %8, align 8
  %28 = getelementptr inbounds %struct.venc_h264_inst, %struct.venc_h264_inst* %27, i32 0, i32 3
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 10
  store i32 %26, i32* %31, align 4
  %32 = load %struct.venc_enc_param*, %struct.venc_enc_param** %6, align 8
  %33 = getelementptr inbounds %struct.venc_enc_param, %struct.venc_enc_param* %32, i32 0, i32 8
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %8, align 8
  %36 = getelementptr inbounds %struct.venc_h264_inst, %struct.venc_h264_inst* %35, i32 0, i32 3
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 9
  store i32 %34, i32* %39, align 4
  %40 = load %struct.venc_enc_param*, %struct.venc_enc_param** %6, align 8
  %41 = getelementptr inbounds %struct.venc_enc_param, %struct.venc_enc_param* %40, i32 0, i32 7
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %8, align 8
  %44 = getelementptr inbounds %struct.venc_h264_inst, %struct.venc_h264_inst* %43, i32 0, i32 3
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 8
  store i32 %42, i32* %47, align 4
  %48 = load %struct.venc_enc_param*, %struct.venc_enc_param** %6, align 8
  %49 = getelementptr inbounds %struct.venc_enc_param, %struct.venc_enc_param* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %8, align 8
  %52 = getelementptr inbounds %struct.venc_h264_inst, %struct.venc_h264_inst* %51, i32 0, i32 3
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 7
  store i32 %50, i32* %55, align 4
  %56 = load %struct.venc_enc_param*, %struct.venc_enc_param** %6, align 8
  %57 = getelementptr inbounds %struct.venc_enc_param, %struct.venc_enc_param* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %8, align 8
  %60 = getelementptr inbounds %struct.venc_h264_inst, %struct.venc_h264_inst* %59, i32 0, i32 3
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 6
  store i32 %58, i32* %63, align 4
  %64 = load %struct.venc_enc_param*, %struct.venc_enc_param** %6, align 8
  %65 = getelementptr inbounds %struct.venc_enc_param, %struct.venc_enc_param* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %8, align 8
  %68 = getelementptr inbounds %struct.venc_h264_inst, %struct.venc_h264_inst* %67, i32 0, i32 3
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 5
  store i32 %66, i32* %71, align 4
  %72 = load %struct.venc_enc_param*, %struct.venc_enc_param** %6, align 8
  %73 = getelementptr inbounds %struct.venc_enc_param, %struct.venc_enc_param* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %8, align 8
  %76 = getelementptr inbounds %struct.venc_h264_inst, %struct.venc_h264_inst* %75, i32 0, i32 3
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 4
  store i32 %74, i32* %79, align 4
  %80 = load %struct.venc_enc_param*, %struct.venc_enc_param** %6, align 8
  %81 = getelementptr inbounds %struct.venc_enc_param, %struct.venc_enc_param* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %8, align 8
  %84 = getelementptr inbounds %struct.venc_h264_inst, %struct.venc_h264_inst* %83, i32 0, i32 3
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 3
  store i32 %82, i32* %87, align 4
  %88 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %8, align 8
  %89 = load %struct.venc_enc_param*, %struct.venc_enc_param** %6, align 8
  %90 = getelementptr inbounds %struct.venc_enc_param, %struct.venc_enc_param* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @h264_get_profile(%struct.venc_h264_inst* %88, i32 %91)
  %93 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %8, align 8
  %94 = getelementptr inbounds %struct.venc_h264_inst, %struct.venc_h264_inst* %93, i32 0, i32 3
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 2
  store i32 %92, i32* %97, align 4
  %98 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %8, align 8
  %99 = load %struct.venc_enc_param*, %struct.venc_enc_param** %6, align 8
  %100 = getelementptr inbounds %struct.venc_enc_param, %struct.venc_enc_param* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @h264_get_level(%struct.venc_h264_inst* %98, i32 %101)
  %103 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %8, align 8
  %104 = getelementptr inbounds %struct.venc_h264_inst, %struct.venc_h264_inst* %103, i32 0, i32 3
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 1
  store i32 %102, i32* %107, align 4
  %108 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %8, align 8
  %109 = getelementptr inbounds %struct.venc_h264_inst, %struct.venc_h264_inst* %108, i32 0, i32 3
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  store i32 0, i32* %112, align 4
  %113 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %8, align 8
  %114 = getelementptr inbounds %struct.venc_h264_inst, %struct.venc_h264_inst* %113, i32 0, i32 2
  %115 = load i32, i32* %5, align 4
  %116 = load %struct.venc_enc_param*, %struct.venc_enc_param** %6, align 8
  %117 = call i32 @vpu_enc_set_param(i32* %114, i32 %115, %struct.venc_enc_param* %116)
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* %7, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %15
  br label %151

121:                                              ; preds = %15
  %122 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %8, align 8
  %123 = getelementptr inbounds %struct.venc_h264_inst, %struct.venc_h264_inst* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %121
  %127 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %8, align 8
  %128 = call i32 @h264_enc_free_work_buf(%struct.venc_h264_inst* %127)
  %129 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %8, align 8
  %130 = getelementptr inbounds %struct.venc_h264_inst, %struct.venc_h264_inst* %129, i32 0, i32 0
  store i32 0, i32* %130, align 8
  br label %131

131:                                              ; preds = %126, %121
  %132 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %8, align 8
  %133 = call i32 @h264_enc_alloc_work_buf(%struct.venc_h264_inst* %132)
  store i32 %133, i32* %7, align 4
  %134 = load i32, i32* %7, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %131
  br label %151

137:                                              ; preds = %131
  %138 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %8, align 8
  %139 = getelementptr inbounds %struct.venc_h264_inst, %struct.venc_h264_inst* %138, i32 0, i32 0
  store i32 1, i32* %139, align 8
  br label %151

140:                                              ; preds = %3
  %141 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %8, align 8
  %142 = getelementptr inbounds %struct.venc_h264_inst, %struct.venc_h264_inst* %141, i32 0, i32 1
  store i32 1, i32* %142, align 4
  %143 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %8, align 8
  %144 = call i32 (%struct.venc_h264_inst*, i8*, ...) @mtk_vcodec_debug(%struct.venc_h264_inst* %143, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %151

145:                                              ; preds = %3
  %146 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %8, align 8
  %147 = getelementptr inbounds %struct.venc_h264_inst, %struct.venc_h264_inst* %146, i32 0, i32 2
  %148 = load i32, i32* %5, align 4
  %149 = load %struct.venc_enc_param*, %struct.venc_enc_param** %6, align 8
  %150 = call i32 @vpu_enc_set_param(i32* %147, i32 %148, %struct.venc_enc_param* %149)
  store i32 %150, i32* %7, align 4
  br label %151

151:                                              ; preds = %145, %140, %137, %136, %120
  %152 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %8, align 8
  %153 = call i32 @mtk_vcodec_debug_leave(%struct.venc_h264_inst* %152)
  %154 = load i32, i32* %7, align 4
  ret i32 %154
}

declare dso_local i32 @mtk_vcodec_debug(%struct.venc_h264_inst*, i8*, ...) #1

declare dso_local i32 @h264_get_profile(%struct.venc_h264_inst*, i32) #1

declare dso_local i32 @h264_get_level(%struct.venc_h264_inst*, i32) #1

declare dso_local i32 @vpu_enc_set_param(i32*, i32, %struct.venc_enc_param*) #1

declare dso_local i32 @h264_enc_free_work_buf(%struct.venc_h264_inst*) #1

declare dso_local i32 @h264_enc_alloc_work_buf(%struct.venc_h264_inst*) #1

declare dso_local i32 @mtk_vcodec_debug_leave(%struct.venc_h264_inst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
