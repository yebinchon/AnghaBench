; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-core.c_fimc_prepare_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-core.c_fimc_prepare_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_ctx = type { i32 }
%struct.vb2_buffer = type { i32 }
%struct.fimc_frame = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.fimc_addr = type { i32, i32, i8* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"memplanes= %d, colplanes= %d, pix_size= %d\00", align 1
@FIMC_FMT_YCBCR420 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"PHYS_ADDR: y= 0x%X  cb= 0x%X cr= 0x%X ret= %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fimc_prepare_addr(%struct.fimc_ctx* %0, %struct.vb2_buffer* %1, %struct.fimc_frame* %2, %struct.fimc_addr* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fimc_ctx*, align 8
  %7 = alloca %struct.vb2_buffer*, align 8
  %8 = alloca %struct.fimc_frame*, align 8
  %9 = alloca %struct.fimc_addr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.fimc_ctx* %0, %struct.fimc_ctx** %6, align 8
  store %struct.vb2_buffer* %1, %struct.vb2_buffer** %7, align 8
  store %struct.fimc_frame* %2, %struct.fimc_frame** %8, align 8
  store %struct.fimc_addr* %3, %struct.fimc_addr** %9, align 8
  store i32 0, i32* %10, align 4
  %12 = load %struct.vb2_buffer*, %struct.vb2_buffer** %7, align 8
  %13 = icmp eq %struct.vb2_buffer* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = load %struct.fimc_frame*, %struct.fimc_frame** %8, align 8
  %16 = icmp eq %struct.fimc_frame* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %14, %4
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %162

20:                                               ; preds = %14
  %21 = load %struct.fimc_frame*, %struct.fimc_frame** %8, align 8
  %22 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.fimc_frame*, %struct.fimc_frame** %8, align 8
  %25 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %23, %26
  store i32 %27, i32* %11, align 4
  %28 = load %struct.fimc_frame*, %struct.fimc_frame** %8, align 8
  %29 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.fimc_frame*, %struct.fimc_frame** %8, align 8
  %34 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %33, i32 0, i32 2
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %11, align 4
  %39 = call i32 (i8*, i32, i32, i32, ...) @dbg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %37, i32 %38)
  %40 = load %struct.vb2_buffer*, %struct.vb2_buffer** %7, align 8
  %41 = call i8* @vb2_dma_contig_plane_dma_addr(%struct.vb2_buffer* %40, i32 0)
  %42 = load %struct.fimc_addr*, %struct.fimc_addr** %9, align 8
  %43 = getelementptr inbounds %struct.fimc_addr, %struct.fimc_addr* %42, i32 0, i32 2
  store i8* %41, i8** %43, align 8
  %44 = load %struct.fimc_frame*, %struct.fimc_frame** %8, align 8
  %45 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %44, i32 0, i32 2
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %113

50:                                               ; preds = %20
  %51 = load %struct.fimc_frame*, %struct.fimc_frame** %8, align 8
  %52 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %51, i32 0, i32 2
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  switch i32 %55, label %109 [
    i32 1, label %56
    i32 2, label %61
    i32 3, label %73
  ]

56:                                               ; preds = %50
  %57 = load %struct.fimc_addr*, %struct.fimc_addr** %9, align 8
  %58 = getelementptr inbounds %struct.fimc_addr, %struct.fimc_addr* %57, i32 0, i32 0
  store i32 0, i32* %58, align 8
  %59 = load %struct.fimc_addr*, %struct.fimc_addr** %9, align 8
  %60 = getelementptr inbounds %struct.fimc_addr, %struct.fimc_addr* %59, i32 0, i32 1
  store i32 0, i32* %60, align 4
  br label %112

61:                                               ; preds = %50
  %62 = load %struct.fimc_addr*, %struct.fimc_addr** %9, align 8
  %63 = getelementptr inbounds %struct.fimc_addr, %struct.fimc_addr* %62, i32 0, i32 2
  %64 = load i8*, i8** %63, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr i8, i8* %64, i64 %66
  %68 = ptrtoint i8* %67 to i32
  %69 = load %struct.fimc_addr*, %struct.fimc_addr** %9, align 8
  %70 = getelementptr inbounds %struct.fimc_addr, %struct.fimc_addr* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load %struct.fimc_addr*, %struct.fimc_addr** %9, align 8
  %72 = getelementptr inbounds %struct.fimc_addr, %struct.fimc_addr* %71, i32 0, i32 1
  store i32 0, i32* %72, align 4
  br label %112

73:                                               ; preds = %50
  %74 = load %struct.fimc_addr*, %struct.fimc_addr** %9, align 8
  %75 = getelementptr inbounds %struct.fimc_addr, %struct.fimc_addr* %74, i32 0, i32 2
  %76 = load i8*, i8** %75, align 8
  %77 = load i32, i32* %11, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr i8, i8* %76, i64 %78
  %80 = ptrtoint i8* %79 to i32
  %81 = load %struct.fimc_addr*, %struct.fimc_addr** %9, align 8
  %82 = getelementptr inbounds %struct.fimc_addr, %struct.fimc_addr* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load i32, i32* @FIMC_FMT_YCBCR420, align 4
  %84 = load %struct.fimc_frame*, %struct.fimc_frame** %8, align 8
  %85 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %84, i32 0, i32 2
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %83, %88
  br i1 %89, label %90, label %99

90:                                               ; preds = %73
  %91 = load %struct.fimc_addr*, %struct.fimc_addr** %9, align 8
  %92 = getelementptr inbounds %struct.fimc_addr, %struct.fimc_addr* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %11, align 4
  %95 = ashr i32 %94, 2
  %96 = add nsw i32 %93, %95
  %97 = load %struct.fimc_addr*, %struct.fimc_addr** %9, align 8
  %98 = getelementptr inbounds %struct.fimc_addr, %struct.fimc_addr* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  br label %108

99:                                               ; preds = %73
  %100 = load %struct.fimc_addr*, %struct.fimc_addr** %9, align 8
  %101 = getelementptr inbounds %struct.fimc_addr, %struct.fimc_addr* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %11, align 4
  %104 = ashr i32 %103, 1
  %105 = add nsw i32 %102, %104
  %106 = load %struct.fimc_addr*, %struct.fimc_addr** %9, align 8
  %107 = getelementptr inbounds %struct.fimc_addr, %struct.fimc_addr* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  br label %108

108:                                              ; preds = %99, %90
  br label %112

109:                                              ; preds = %50
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %5, align 4
  br label %162

112:                                              ; preds = %108, %61, %56
  br label %148

113:                                              ; preds = %20
  %114 = load %struct.fimc_frame*, %struct.fimc_frame** %8, align 8
  %115 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %114, i32 0, i32 2
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %147, label %120

120:                                              ; preds = %113
  %121 = load %struct.fimc_frame*, %struct.fimc_frame** %8, align 8
  %122 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %121, i32 0, i32 2
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = icmp sge i32 %125, 2
  br i1 %126, label %127, label %133

127:                                              ; preds = %120
  %128 = load %struct.vb2_buffer*, %struct.vb2_buffer** %7, align 8
  %129 = call i8* @vb2_dma_contig_plane_dma_addr(%struct.vb2_buffer* %128, i32 1)
  %130 = ptrtoint i8* %129 to i32
  %131 = load %struct.fimc_addr*, %struct.fimc_addr** %9, align 8
  %132 = getelementptr inbounds %struct.fimc_addr, %struct.fimc_addr* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 8
  br label %133

133:                                              ; preds = %127, %120
  %134 = load %struct.fimc_frame*, %struct.fimc_frame** %8, align 8
  %135 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %134, i32 0, i32 2
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = icmp eq i32 %138, 3
  br i1 %139, label %140, label %146

140:                                              ; preds = %133
  %141 = load %struct.vb2_buffer*, %struct.vb2_buffer** %7, align 8
  %142 = call i8* @vb2_dma_contig_plane_dma_addr(%struct.vb2_buffer* %141, i32 2)
  %143 = ptrtoint i8* %142 to i32
  %144 = load %struct.fimc_addr*, %struct.fimc_addr** %9, align 8
  %145 = getelementptr inbounds %struct.fimc_addr, %struct.fimc_addr* %144, i32 0, i32 1
  store i32 %143, i32* %145, align 4
  br label %146

146:                                              ; preds = %140, %133
  br label %147

147:                                              ; preds = %146, %113
  br label %148

148:                                              ; preds = %147, %112
  %149 = load %struct.fimc_addr*, %struct.fimc_addr** %9, align 8
  %150 = getelementptr inbounds %struct.fimc_addr, %struct.fimc_addr* %149, i32 0, i32 2
  %151 = load i8*, i8** %150, align 8
  %152 = ptrtoint i8* %151 to i32
  %153 = load %struct.fimc_addr*, %struct.fimc_addr** %9, align 8
  %154 = getelementptr inbounds %struct.fimc_addr, %struct.fimc_addr* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.fimc_addr*, %struct.fimc_addr** %9, align 8
  %157 = getelementptr inbounds %struct.fimc_addr, %struct.fimc_addr* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %10, align 4
  %160 = call i32 (i8*, i32, i32, i32, ...) @dbg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %152, i32 %155, i32 %158, i32 %159)
  %161 = load i32, i32* %10, align 4
  store i32 %161, i32* %5, align 4
  br label %162

162:                                              ; preds = %148, %109, %17
  %163 = load i32, i32* %5, align 4
  ret i32 %163
}

declare dso_local i32 @dbg(i8*, i32, i32, i32, ...) #1

declare dso_local i8* @vb2_dma_contig_plane_dma_addr(%struct.vb2_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
