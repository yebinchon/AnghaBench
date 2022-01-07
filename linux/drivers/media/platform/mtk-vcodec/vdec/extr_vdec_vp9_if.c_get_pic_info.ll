; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/vdec/extr_vdec_vp9_if.c_get_pic_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/vdec/extr_vdec_vp9_if.c_get_pic_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vdec_vp9_inst = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.vdec_pic_info = type { i64*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"pic(%d, %d), buf(%d, %d)\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"fb size: Y(%d), C(%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vdec_vp9_inst*, %struct.vdec_pic_info*)* @get_pic_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_pic_info(%struct.vdec_vp9_inst* %0, %struct.vdec_pic_info* %1) #0 {
  %3 = alloca %struct.vdec_vp9_inst*, align 8
  %4 = alloca %struct.vdec_pic_info*, align 8
  store %struct.vdec_vp9_inst* %0, %struct.vdec_vp9_inst** %3, align 8
  store %struct.vdec_pic_info* %1, %struct.vdec_pic_info** %4, align 8
  %5 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %3, align 8
  %6 = getelementptr inbounds %struct.vdec_vp9_inst, %struct.vdec_vp9_inst* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 7
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %3, align 8
  %11 = getelementptr inbounds %struct.vdec_vp9_inst, %struct.vdec_vp9_inst* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 6
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %9, %14
  %16 = load %struct.vdec_pic_info*, %struct.vdec_pic_info** %4, align 8
  %17 = getelementptr inbounds %struct.vdec_pic_info, %struct.vdec_pic_info* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 0
  store i64 %15, i64* %19, align 8
  %20 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %3, align 8
  %21 = getelementptr inbounds %struct.vdec_vp9_inst, %struct.vdec_vp9_inst* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 5
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %3, align 8
  %26 = getelementptr inbounds %struct.vdec_vp9_inst, %struct.vdec_vp9_inst* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %24, %29
  %31 = load %struct.vdec_pic_info*, %struct.vdec_pic_info** %4, align 8
  %32 = getelementptr inbounds %struct.vdec_pic_info, %struct.vdec_pic_info* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 1
  store i64 %30, i64* %34, align 8
  %35 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %3, align 8
  %36 = getelementptr inbounds %struct.vdec_vp9_inst, %struct.vdec_vp9_inst* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.vdec_pic_info*, %struct.vdec_pic_info** %4, align 8
  %41 = getelementptr inbounds %struct.vdec_pic_info, %struct.vdec_pic_info* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 4
  %42 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %3, align 8
  %43 = getelementptr inbounds %struct.vdec_vp9_inst, %struct.vdec_vp9_inst* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.vdec_pic_info*, %struct.vdec_pic_info** %4, align 8
  %48 = getelementptr inbounds %struct.vdec_pic_info, %struct.vdec_pic_info* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 8
  %49 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %3, align 8
  %50 = getelementptr inbounds %struct.vdec_vp9_inst, %struct.vdec_vp9_inst* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.vdec_pic_info*, %struct.vdec_pic_info** %4, align 8
  %55 = getelementptr inbounds %struct.vdec_pic_info, %struct.vdec_pic_info* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  %56 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %3, align 8
  %57 = getelementptr inbounds %struct.vdec_vp9_inst, %struct.vdec_vp9_inst* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.vdec_pic_info*, %struct.vdec_pic_info** %4, align 8
  %62 = getelementptr inbounds %struct.vdec_pic_info, %struct.vdec_pic_info* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 8
  %63 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %3, align 8
  %64 = load %struct.vdec_pic_info*, %struct.vdec_pic_info** %4, align 8
  %65 = getelementptr inbounds %struct.vdec_pic_info, %struct.vdec_pic_info* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = load %struct.vdec_pic_info*, %struct.vdec_pic_info** %4, align 8
  %69 = getelementptr inbounds %struct.vdec_pic_info, %struct.vdec_pic_info* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = load %struct.vdec_pic_info*, %struct.vdec_pic_info** %4, align 8
  %73 = getelementptr inbounds %struct.vdec_pic_info, %struct.vdec_pic_info* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.vdec_pic_info*, %struct.vdec_pic_info** %4, align 8
  %76 = getelementptr inbounds %struct.vdec_pic_info, %struct.vdec_pic_info* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 (%struct.vdec_vp9_inst*, i8*, i64, i64, ...) @mtk_vcodec_debug(%struct.vdec_vp9_inst* %63, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %67, i64 %71, i32 %74, i32 %77)
  %79 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %3, align 8
  %80 = load %struct.vdec_pic_info*, %struct.vdec_pic_info** %4, align 8
  %81 = getelementptr inbounds %struct.vdec_pic_info, %struct.vdec_pic_info* %80, i32 0, i32 0
  %82 = load i64*, i64** %81, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.vdec_pic_info*, %struct.vdec_pic_info** %4, align 8
  %86 = getelementptr inbounds %struct.vdec_pic_info, %struct.vdec_pic_info* %85, i32 0, i32 0
  %87 = load i64*, i64** %86, align 8
  %88 = getelementptr inbounds i64, i64* %87, i64 1
  %89 = load i64, i64* %88, align 8
  %90 = call i32 (%struct.vdec_vp9_inst*, i8*, i64, i64, ...) @mtk_vcodec_debug(%struct.vdec_vp9_inst* %79, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64 %84, i64 %89)
  ret void
}

declare dso_local i32 @mtk_vcodec_debug(%struct.vdec_vp9_inst*, i8*, i64, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
