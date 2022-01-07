; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos-gsc/extr_gsc-core.c_gsc_prepare_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos-gsc/extr_gsc-core.c_gsc_prepare_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsc_ctx = type { i32 }
%struct.vb2_buffer = type { i32 }
%struct.gsc_frame = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i64, i32 }
%struct.gsc_addr = type { i32, i8*, i8* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"num_planes= %d, num_comp= %d, pix_size= %d\00", align 1
@GSC_YUV420 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Invalid the number of color planes\00", align 1
@V4L2_PIX_FMT_VYUY = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_YVYU = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_YVU420 = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_YVU420M = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"ADDR: y= %pad  cb= %pad cr= %pad ret= %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gsc_prepare_addr(%struct.gsc_ctx* %0, %struct.vb2_buffer* %1, %struct.gsc_frame* %2, %struct.gsc_addr* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gsc_ctx*, align 8
  %7 = alloca %struct.vb2_buffer*, align 8
  %8 = alloca %struct.gsc_frame*, align 8
  %9 = alloca %struct.gsc_addr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.gsc_ctx* %0, %struct.gsc_ctx** %6, align 8
  store %struct.vb2_buffer* %1, %struct.vb2_buffer** %7, align 8
  store %struct.gsc_frame* %2, %struct.gsc_frame** %8, align 8
  store %struct.gsc_addr* %3, %struct.gsc_addr** %9, align 8
  store i32 0, i32* %10, align 4
  %12 = load %struct.vb2_buffer*, %struct.vb2_buffer** %7, align 8
  %13 = icmp eq %struct.vb2_buffer* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = load %struct.gsc_frame*, %struct.gsc_frame** %8, align 8
  %16 = icmp eq %struct.gsc_frame* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %14, %4
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %195

20:                                               ; preds = %14
  %21 = load %struct.gsc_frame*, %struct.gsc_frame** %8, align 8
  %22 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.gsc_frame*, %struct.gsc_frame** %8, align 8
  %25 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %23, %26
  store i32 %27, i32* %11, align 4
  %28 = load %struct.gsc_frame*, %struct.gsc_frame** %8, align 8
  %29 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.gsc_frame*, %struct.gsc_frame** %8, align 8
  %34 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %33, i32 0, i32 2
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %11, align 4
  %39 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %37, i32 %38)
  %40 = load %struct.vb2_buffer*, %struct.vb2_buffer** %7, align 8
  %41 = call i8* @vb2_dma_contig_plane_dma_addr(%struct.vb2_buffer* %40, i32 0)
  %42 = load %struct.gsc_addr*, %struct.gsc_addr** %9, align 8
  %43 = getelementptr inbounds %struct.gsc_addr, %struct.gsc_addr* %42, i32 0, i32 2
  store i8* %41, i8** %43, align 8
  %44 = load %struct.gsc_frame*, %struct.gsc_frame** %8, align 8
  %45 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %44, i32 0, i32 2
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %118

50:                                               ; preds = %20
  %51 = load %struct.gsc_frame*, %struct.gsc_frame** %8, align 8
  %52 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %51, i32 0, i32 2
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  switch i32 %55, label %113 [
    i32 1, label %56
    i32 2, label %61
    i32 3, label %73
  ]

56:                                               ; preds = %50
  %57 = load %struct.gsc_addr*, %struct.gsc_addr** %9, align 8
  %58 = getelementptr inbounds %struct.gsc_addr, %struct.gsc_addr* %57, i32 0, i32 0
  store i32 0, i32* %58, align 8
  %59 = load %struct.gsc_addr*, %struct.gsc_addr** %9, align 8
  %60 = getelementptr inbounds %struct.gsc_addr, %struct.gsc_addr* %59, i32 0, i32 1
  store i8* null, i8** %60, align 8
  br label %117

61:                                               ; preds = %50
  %62 = load %struct.gsc_addr*, %struct.gsc_addr** %9, align 8
  %63 = getelementptr inbounds %struct.gsc_addr, %struct.gsc_addr* %62, i32 0, i32 2
  %64 = load i8*, i8** %63, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr i8, i8* %64, i64 %66
  %68 = ptrtoint i8* %67 to i32
  %69 = load %struct.gsc_addr*, %struct.gsc_addr** %9, align 8
  %70 = getelementptr inbounds %struct.gsc_addr, %struct.gsc_addr* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load %struct.gsc_addr*, %struct.gsc_addr** %9, align 8
  %72 = getelementptr inbounds %struct.gsc_addr, %struct.gsc_addr* %71, i32 0, i32 1
  store i8* null, i8** %72, align 8
  br label %117

73:                                               ; preds = %50
  %74 = load %struct.gsc_addr*, %struct.gsc_addr** %9, align 8
  %75 = getelementptr inbounds %struct.gsc_addr, %struct.gsc_addr* %74, i32 0, i32 2
  %76 = load i8*, i8** %75, align 8
  %77 = load i32, i32* %11, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr i8, i8* %76, i64 %78
  %80 = ptrtoint i8* %79 to i32
  %81 = load %struct.gsc_addr*, %struct.gsc_addr** %9, align 8
  %82 = getelementptr inbounds %struct.gsc_addr, %struct.gsc_addr* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load i32, i32* @GSC_YUV420, align 4
  %84 = load %struct.gsc_frame*, %struct.gsc_frame** %8, align 8
  %85 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %84, i32 0, i32 2
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = icmp eq i32 %83, %88
  br i1 %89, label %90, label %101

90:                                               ; preds = %73
  %91 = load %struct.gsc_addr*, %struct.gsc_addr** %9, align 8
  %92 = getelementptr inbounds %struct.gsc_addr, %struct.gsc_addr* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %11, align 4
  %95 = ashr i32 %94, 2
  %96 = add nsw i32 %93, %95
  %97 = sext i32 %96 to i64
  %98 = inttoptr i64 %97 to i8*
  %99 = load %struct.gsc_addr*, %struct.gsc_addr** %9, align 8
  %100 = getelementptr inbounds %struct.gsc_addr, %struct.gsc_addr* %99, i32 0, i32 1
  store i8* %98, i8** %100, align 8
  br label %112

101:                                              ; preds = %73
  %102 = load %struct.gsc_addr*, %struct.gsc_addr** %9, align 8
  %103 = getelementptr inbounds %struct.gsc_addr, %struct.gsc_addr* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* %11, align 4
  %106 = ashr i32 %105, 1
  %107 = add nsw i32 %104, %106
  %108 = sext i32 %107 to i64
  %109 = inttoptr i64 %108 to i8*
  %110 = load %struct.gsc_addr*, %struct.gsc_addr** %9, align 8
  %111 = getelementptr inbounds %struct.gsc_addr, %struct.gsc_addr* %110, i32 0, i32 1
  store i8* %109, i8** %111, align 8
  br label %112

112:                                              ; preds = %101, %90
  br label %117

113:                                              ; preds = %50
  %114 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %5, align 4
  br label %195

117:                                              ; preds = %112, %61, %56
  br label %144

118:                                              ; preds = %20
  %119 = load %struct.gsc_frame*, %struct.gsc_frame** %8, align 8
  %120 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %119, i32 0, i32 2
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp sge i32 %123, 2
  br i1 %124, label %125, label %131

125:                                              ; preds = %118
  %126 = load %struct.vb2_buffer*, %struct.vb2_buffer** %7, align 8
  %127 = call i8* @vb2_dma_contig_plane_dma_addr(%struct.vb2_buffer* %126, i32 1)
  %128 = ptrtoint i8* %127 to i32
  %129 = load %struct.gsc_addr*, %struct.gsc_addr** %9, align 8
  %130 = getelementptr inbounds %struct.gsc_addr, %struct.gsc_addr* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 8
  br label %131

131:                                              ; preds = %125, %118
  %132 = load %struct.gsc_frame*, %struct.gsc_frame** %8, align 8
  %133 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %132, i32 0, i32 2
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = icmp eq i32 %136, 3
  br i1 %137, label %138, label %143

138:                                              ; preds = %131
  %139 = load %struct.vb2_buffer*, %struct.vb2_buffer** %7, align 8
  %140 = call i8* @vb2_dma_contig_plane_dma_addr(%struct.vb2_buffer* %139, i32 2)
  %141 = load %struct.gsc_addr*, %struct.gsc_addr** %9, align 8
  %142 = getelementptr inbounds %struct.gsc_addr, %struct.gsc_addr* %141, i32 0, i32 1
  store i8* %140, i8** %142, align 8
  br label %143

143:                                              ; preds = %138, %131
  br label %144

144:                                              ; preds = %143, %117
  %145 = load %struct.gsc_frame*, %struct.gsc_frame** %8, align 8
  %146 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %145, i32 0, i32 2
  %147 = load %struct.TYPE_2__*, %struct.TYPE_2__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @V4L2_PIX_FMT_VYUY, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %176, label %152

152:                                              ; preds = %144
  %153 = load %struct.gsc_frame*, %struct.gsc_frame** %8, align 8
  %154 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %153, i32 0, i32 2
  %155 = load %struct.TYPE_2__*, %struct.TYPE_2__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @V4L2_PIX_FMT_YVYU, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %176, label %160

160:                                              ; preds = %152
  %161 = load %struct.gsc_frame*, %struct.gsc_frame** %8, align 8
  %162 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %161, i32 0, i32 2
  %163 = load %struct.TYPE_2__*, %struct.TYPE_2__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @V4L2_PIX_FMT_YVU420, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %176, label %168

168:                                              ; preds = %160
  %169 = load %struct.gsc_frame*, %struct.gsc_frame** %8, align 8
  %170 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %169, i32 0, i32 2
  %171 = load %struct.TYPE_2__*, %struct.TYPE_2__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 2
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @V4L2_PIX_FMT_YVU420M, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %184

176:                                              ; preds = %168, %160, %152, %144
  %177 = load %struct.gsc_addr*, %struct.gsc_addr** %9, align 8
  %178 = getelementptr inbounds %struct.gsc_addr, %struct.gsc_addr* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.gsc_addr*, %struct.gsc_addr** %9, align 8
  %181 = getelementptr inbounds %struct.gsc_addr, %struct.gsc_addr* %180, i32 0, i32 1
  %182 = load i8*, i8** %181, align 8
  %183 = call i32 @swap(i32 %179, i8* %182)
  br label %184

184:                                              ; preds = %176, %168
  %185 = load %struct.gsc_addr*, %struct.gsc_addr** %9, align 8
  %186 = getelementptr inbounds %struct.gsc_addr, %struct.gsc_addr* %185, i32 0, i32 2
  %187 = ptrtoint i8** %186 to i32
  %188 = load %struct.gsc_addr*, %struct.gsc_addr** %9, align 8
  %189 = getelementptr inbounds %struct.gsc_addr, %struct.gsc_addr* %188, i32 0, i32 0
  %190 = load %struct.gsc_addr*, %struct.gsc_addr** %9, align 8
  %191 = getelementptr inbounds %struct.gsc_addr, %struct.gsc_addr* %190, i32 0, i32 1
  %192 = load i32, i32* %10, align 4
  %193 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %187, i32* %189, i8** %191, i32 %192)
  %194 = load i32, i32* %10, align 4
  store i32 %194, i32* %5, align 4
  br label %195

195:                                              ; preds = %184, %113, %17
  %196 = load i32, i32* %5, align 4
  ret i32 %196
}

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i8* @vb2_dma_contig_plane_dma_addr(%struct.vb2_buffer*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @swap(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
