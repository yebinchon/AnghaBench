; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/vdec/extr_vdec_vp9_if.c_vp9_free_all_sf_ref_fb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/vdec/extr_vdec_vp9_if.c_vp9_free_all_sf_ref_fb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vdec_vp9_inst = type { i32, %struct.vdec_vp9_vsi* }
%struct.vdec_vp9_vsi = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_5__, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vdec_vp9_inst*)* @vp9_free_all_sf_ref_fb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vp9_free_all_sf_ref_fb(%struct.vdec_vp9_inst* %0) #0 {
  %2 = alloca %struct.vdec_vp9_inst*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.vdec_vp9_vsi*, align 8
  store %struct.vdec_vp9_inst* %0, %struct.vdec_vp9_inst** %2, align 8
  %5 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %2, align 8
  %6 = getelementptr inbounds %struct.vdec_vp9_inst, %struct.vdec_vp9_inst* %5, i32 0, i32 1
  %7 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %6, align 8
  store %struct.vdec_vp9_vsi* %7, %struct.vdec_vp9_vsi** %4, align 8
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %60, %1
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %4, align 8
  %11 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %12)
  %14 = icmp slt i32 %9, %13
  br i1 %14, label %15, label %63

15:                                               ; preds = %8
  %16 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %4, align 8
  %17 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %59

27:                                               ; preds = %15
  %28 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %2, align 8
  %29 = getelementptr inbounds %struct.vdec_vp9_inst, %struct.vdec_vp9_inst* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %4, align 8
  %32 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = call i32 @mtk_vcodec_mem_free(i32 %30, %struct.TYPE_5__* %38)
  %40 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %2, align 8
  %41 = getelementptr inbounds %struct.vdec_vp9_inst, %struct.vdec_vp9_inst* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %4, align 8
  %44 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %43, i32 0, i32 0
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = call i32 @mtk_vcodec_mem_free(i32 %42, %struct.TYPE_5__* %50)
  %52 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %4, align 8
  %53 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %52, i32 0, i32 0
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  store i64 0, i64* %58, align 8
  br label %59

59:                                               ; preds = %27, %15
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %3, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %3, align 4
  br label %8

63:                                               ; preds = %8
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_6__*) #1

declare dso_local i32 @mtk_vcodec_mem_free(i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
