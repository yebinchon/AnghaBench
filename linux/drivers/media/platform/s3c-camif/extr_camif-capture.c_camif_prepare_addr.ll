; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-capture.c_camif_prepare_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-capture.c_camif_prepare_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camif_vp = type { %struct.TYPE_4__*, %struct.camif_frame }
%struct.TYPE_4__ = type { i32, i32 }
%struct.camif_frame = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.vb2_buffer = type { i32 }
%struct.camif_addr = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"colplanes: %d, pix_size: %u\0A\00", align 1
@IMG_FMT_YCBCR422P = common dso_local global i32 0, align 4
@IMG_FMT_YCRCB420 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"DMA address: y: %pad  cb: %pad cr: %pad\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.camif_vp*, %struct.vb2_buffer*, %struct.camif_addr*)* @camif_prepare_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @camif_prepare_addr(%struct.camif_vp* %0, %struct.vb2_buffer* %1, %struct.camif_addr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.camif_vp*, align 8
  %6 = alloca %struct.vb2_buffer*, align 8
  %7 = alloca %struct.camif_addr*, align 8
  %8 = alloca %struct.camif_frame*, align 8
  %9 = alloca i32, align 4
  store %struct.camif_vp* %0, %struct.camif_vp** %5, align 8
  store %struct.vb2_buffer* %1, %struct.vb2_buffer** %6, align 8
  store %struct.camif_addr* %2, %struct.camif_addr** %7, align 8
  %10 = load %struct.camif_vp*, %struct.camif_vp** %5, align 8
  %11 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %10, i32 0, i32 1
  store %struct.camif_frame* %11, %struct.camif_frame** %8, align 8
  %12 = load %struct.vb2_buffer*, %struct.vb2_buffer** %6, align 8
  %13 = icmp eq %struct.vb2_buffer* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load %struct.camif_frame*, %struct.camif_frame** %8, align 8
  %16 = icmp eq %struct.camif_frame* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %14, %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %123

20:                                               ; preds = %14
  %21 = load %struct.camif_frame*, %struct.camif_frame** %8, align 8
  %22 = getelementptr inbounds %struct.camif_frame, %struct.camif_frame* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.camif_frame*, %struct.camif_frame** %8, align 8
  %26 = getelementptr inbounds %struct.camif_frame, %struct.camif_frame* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = mul nsw i32 %24, %28
  store i32 %29, i32* %9, align 4
  %30 = load %struct.camif_vp*, %struct.camif_vp** %5, align 8
  %31 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %35)
  %37 = load %struct.vb2_buffer*, %struct.vb2_buffer** %6, align 8
  %38 = call i32 @vb2_dma_contig_plane_dma_addr(%struct.vb2_buffer* %37, i32 0)
  %39 = load %struct.camif_addr*, %struct.camif_addr** %7, align 8
  %40 = getelementptr inbounds %struct.camif_addr, %struct.camif_addr* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load %struct.camif_vp*, %struct.camif_vp** %5, align 8
  %42 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  switch i32 %45, label %111 [
    i32 1, label %46
    i32 2, label %51
    i32 3, label %61
  ]

46:                                               ; preds = %20
  %47 = load %struct.camif_addr*, %struct.camif_addr** %7, align 8
  %48 = getelementptr inbounds %struct.camif_addr, %struct.camif_addr* %47, i32 0, i32 0
  store i32 0, i32* %48, align 4
  %49 = load %struct.camif_addr*, %struct.camif_addr** %7, align 8
  %50 = getelementptr inbounds %struct.camif_addr, %struct.camif_addr* %49, i32 0, i32 1
  store i32 0, i32* %50, align 4
  br label %114

51:                                               ; preds = %20
  %52 = load %struct.camif_addr*, %struct.camif_addr** %7, align 8
  %53 = getelementptr inbounds %struct.camif_addr, %struct.camif_addr* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %54, %55
  %57 = load %struct.camif_addr*, %struct.camif_addr** %7, align 8
  %58 = getelementptr inbounds %struct.camif_addr, %struct.camif_addr* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load %struct.camif_addr*, %struct.camif_addr** %7, align 8
  %60 = getelementptr inbounds %struct.camif_addr, %struct.camif_addr* %59, i32 0, i32 1
  store i32 0, i32* %60, align 4
  br label %114

61:                                               ; preds = %20
  %62 = load %struct.camif_addr*, %struct.camif_addr** %7, align 8
  %63 = getelementptr inbounds %struct.camif_addr, %struct.camif_addr* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %64, %65
  %67 = load %struct.camif_addr*, %struct.camif_addr** %7, align 8
  %68 = getelementptr inbounds %struct.camif_addr, %struct.camif_addr* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  %69 = load %struct.camif_vp*, %struct.camif_vp** %5, align 8
  %70 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @IMG_FMT_YCBCR422P, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %85

76:                                               ; preds = %61
  %77 = load %struct.camif_addr*, %struct.camif_addr** %7, align 8
  %78 = getelementptr inbounds %struct.camif_addr, %struct.camif_addr* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %9, align 4
  %81 = ashr i32 %80, 1
  %82 = add nsw i32 %79, %81
  %83 = load %struct.camif_addr*, %struct.camif_addr** %7, align 8
  %84 = getelementptr inbounds %struct.camif_addr, %struct.camif_addr* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  br label %94

85:                                               ; preds = %61
  %86 = load %struct.camif_addr*, %struct.camif_addr** %7, align 8
  %87 = getelementptr inbounds %struct.camif_addr, %struct.camif_addr* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %9, align 4
  %90 = ashr i32 %89, 2
  %91 = add nsw i32 %88, %90
  %92 = load %struct.camif_addr*, %struct.camif_addr** %7, align 8
  %93 = getelementptr inbounds %struct.camif_addr, %struct.camif_addr* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  br label %94

94:                                               ; preds = %85, %76
  %95 = load %struct.camif_vp*, %struct.camif_vp** %5, align 8
  %96 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %95, i32 0, i32 0
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @IMG_FMT_YCRCB420, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %110

102:                                              ; preds = %94
  %103 = load %struct.camif_addr*, %struct.camif_addr** %7, align 8
  %104 = getelementptr inbounds %struct.camif_addr, %struct.camif_addr* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.camif_addr*, %struct.camif_addr** %7, align 8
  %107 = getelementptr inbounds %struct.camif_addr, %struct.camif_addr* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @swap(i32 %105, i32 %108)
  br label %110

110:                                              ; preds = %102, %94
  br label %114

111:                                              ; preds = %20
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %4, align 4
  br label %123

114:                                              ; preds = %110, %51, %46
  %115 = load %struct.camif_addr*, %struct.camif_addr** %7, align 8
  %116 = getelementptr inbounds %struct.camif_addr, %struct.camif_addr* %115, i32 0, i32 2
  %117 = ptrtoint i32* %116 to i32
  %118 = load %struct.camif_addr*, %struct.camif_addr** %7, align 8
  %119 = getelementptr inbounds %struct.camif_addr, %struct.camif_addr* %118, i32 0, i32 0
  %120 = load %struct.camif_addr*, %struct.camif_addr** %7, align 8
  %121 = getelementptr inbounds %struct.camif_addr, %struct.camif_addr* %120, i32 0, i32 1
  %122 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %117, i32* %119, i32* %121)
  store i32 0, i32* %4, align 4
  br label %123

123:                                              ; preds = %114, %111, %17
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @vb2_dma_contig_plane_dma_addr(%struct.vb2_buffer*, i32) #1

declare dso_local i32 @swap(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
