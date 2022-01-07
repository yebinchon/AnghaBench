; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/vdec/extr_vdec_vp9_if.c_vp9_ref_cnt_fb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/vdec/extr_vdec_vp9_if.c_vp9_ref_cnt_fb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vdec_vp9_inst = type { %struct.vdec_vp9_vsi* }
%struct.vdec_vp9_vsi = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.vdec_fb = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vdec_vp9_inst*, i32*, i32)* @vp9_ref_cnt_fb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vp9_ref_cnt_fb(%struct.vdec_vp9_inst* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.vdec_vp9_inst*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vdec_vp9_vsi*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.vdec_fb*, align 8
  store %struct.vdec_vp9_inst* %0, %struct.vdec_vp9_inst** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %4, align 8
  %11 = getelementptr inbounds %struct.vdec_vp9_inst, %struct.vdec_vp9_inst* %10, i32 0, i32 0
  %12 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %11, align 8
  store %struct.vdec_vp9_vsi* %12, %struct.vdec_vp9_vsi** %7, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %90

17:                                               ; preds = %3
  %18 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %7, align 8
  %19 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %18, i32 0, i32 0
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %90

27:                                               ; preds = %17
  %28 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %7, align 8
  %29 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %28, i32 0, i32 0
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, -1
  store i64 %36, i64* %34, align 8
  %37 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %7, align 8
  %38 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %37, i32 0, i32 0
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %89

46:                                               ; preds = %27
  %47 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %4, align 8
  %48 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %7, align 8
  %49 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %48, i32 0, i32 0
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = call i32 @vp9_is_sf_ref_fb(%struct.vdec_vp9_inst* %47, %struct.TYPE_9__* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %77, label %59

59:                                               ; preds = %46
  %60 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %4, align 8
  %61 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %7, align 8
  %62 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %61, i32 0, i32 0
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call %struct.vdec_fb* @vp9_rm_from_fb_use_list(%struct.vdec_vp9_inst* %60, i32 %72)
  store %struct.vdec_fb* %73, %struct.vdec_fb** %9, align 8
  %74 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %4, align 8
  %75 = load %struct.vdec_fb*, %struct.vdec_fb** %9, align 8
  %76 = call i32 @vp9_add_to_fb_free_list(%struct.vdec_vp9_inst* %74, %struct.vdec_fb* %75)
  br label %88

77:                                               ; preds = %46
  %78 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %7, align 8
  %79 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %78, i32 0, i32 0
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %85, align 8
  %87 = call i32 @vp9_free_sf_ref_fb(%struct.TYPE_9__* %86)
  br label %88

88:                                               ; preds = %77, %59
  br label %89

89:                                               ; preds = %88, %27
  br label %90

90:                                               ; preds = %89, %17, %3
  %91 = load i32, i32* %6, align 4
  %92 = load i32*, i32** %5, align 8
  store i32 %91, i32* %92, align 4
  %93 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %7, align 8
  %94 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %93, i32 0, i32 0
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = add nsw i64 %100, 1
  store i64 %101, i64* %99, align 8
  ret void
}

declare dso_local i32 @vp9_is_sf_ref_fb(%struct.vdec_vp9_inst*, %struct.TYPE_9__*) #1

declare dso_local %struct.vdec_fb* @vp9_rm_from_fb_use_list(%struct.vdec_vp9_inst*, i32) #1

declare dso_local i32 @vp9_add_to_fb_free_list(%struct.vdec_vp9_inst*, %struct.vdec_fb*) #1

declare dso_local i32 @vp9_free_sf_ref_fb(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
