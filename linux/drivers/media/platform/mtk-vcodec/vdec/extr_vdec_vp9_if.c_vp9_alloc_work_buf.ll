; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/vdec/extr_vdec_vp9_if.c_vp9_alloc_work_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/vdec/extr_vdec_vp9_if.c_vp9_alloc_work_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vdec_vp9_inst = type { %struct.TYPE_9__*, %struct.mtk_vcodec_mem, %struct.mtk_vcodec_mem, %struct.vdec_vp9_vsi* }
%struct.TYPE_9__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.mtk_vcodec_mem = type { i32, i64, i64 }
%struct.vdec_vp9_vsi = type { i32, i32, i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_7__, i32 }
%struct.TYPE_8__ = type { i64, i64, i32 }
%struct.TYPE_7__ = type { i64, i64, i32 }

@VCODEC_CAPABILITY_4K_DISABLED = common dso_local global i32 0, align 4
@VCODEC_DEC_4K_CODED_WIDTH = common dso_local global i32 0, align 4
@VCODEC_DEC_4K_CODED_HEIGHT = common dso_local global i32 0, align 4
@MTK_VDEC_MAX_W = common dso_local global i32 0, align 4
@MTK_VDEC_MAX_H = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Invalid w/h %d/%d\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"BUF CHG(%d): w/h/sb_w/sb_h=%d/%d/%d/%d\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Cannot allocate mv_buf\00", align 1
@VP9_SEG_ID_SZ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Cannot allocate seg_id_buf\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vdec_vp9_inst*)* @vp9_alloc_work_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vp9_alloc_work_buf(%struct.vdec_vp9_inst* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vdec_vp9_inst*, align 8
  %4 = alloca %struct.vdec_vp9_vsi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mtk_vcodec_mem*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vdec_vp9_inst* %0, %struct.vdec_vp9_inst** %3, align 8
  %9 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %3, align 8
  %10 = getelementptr inbounds %struct.vdec_vp9_inst, %struct.vdec_vp9_inst* %9, i32 0, i32 3
  %11 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %10, align 8
  store %struct.vdec_vp9_vsi* %11, %struct.vdec_vp9_vsi** %4, align 8
  %12 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %3, align 8
  %13 = getelementptr inbounds %struct.vdec_vp9_inst, %struct.vdec_vp9_inst* %12, i32 0, i32 0
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @VCODEC_CAPABILITY_4K_DISABLED, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @VCODEC_DEC_4K_CODED_WIDTH, align 4
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* @VCODEC_DEC_4K_CODED_HEIGHT, align 4
  store i32 %24, i32* %8, align 4
  br label %28

25:                                               ; preds = %1
  %26 = load i32, i32* @MTK_VDEC_MAX_W, align 4
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* @MTK_VDEC_MAX_H, align 4
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %25, %22
  %29 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %4, align 8
  %30 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = icmp ugt i32 %31, %32
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %4, align 8
  %36 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ugt i32 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %34, %28
  %41 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %3, align 8
  %42 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %4, align 8
  %43 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %4, align 8
  %46 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (%struct.vdec_vp9_inst*, i8*, ...) @mtk_vcodec_err(%struct.vdec_vp9_inst* %41, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %47)
  store i32 0, i32* %2, align 4
  br label %178

49:                                               ; preds = %34
  %50 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %3, align 8
  %51 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %4, align 8
  %52 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %51, i32 0, i32 7
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %4, align 8
  %55 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %4, align 8
  %58 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %4, align 8
  %61 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %4, align 8
  %64 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @mtk_vcodec_debug(%struct.vdec_vp9_inst* %50, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %56, i32 %59, i32 %62, i32 %65)
  %67 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %3, align 8
  %68 = getelementptr inbounds %struct.vdec_vp9_inst, %struct.vdec_vp9_inst* %67, i32 0, i32 2
  store %struct.mtk_vcodec_mem* %68, %struct.mtk_vcodec_mem** %6, align 8
  %69 = load %struct.mtk_vcodec_mem*, %struct.mtk_vcodec_mem** %6, align 8
  %70 = getelementptr inbounds %struct.mtk_vcodec_mem, %struct.mtk_vcodec_mem* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %49
  %74 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %3, align 8
  %75 = getelementptr inbounds %struct.vdec_vp9_inst, %struct.vdec_vp9_inst* %74, i32 0, i32 0
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = load %struct.mtk_vcodec_mem*, %struct.mtk_vcodec_mem** %6, align 8
  %78 = call i32 @mtk_vcodec_mem_free(%struct.TYPE_9__* %76, %struct.mtk_vcodec_mem* %77)
  br label %79

79:                                               ; preds = %73, %49
  %80 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %4, align 8
  %81 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = sdiv i32 %82, 64
  %84 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %4, align 8
  %85 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = sdiv i32 %86, 64
  %88 = mul nsw i32 %83, %87
  %89 = add nsw i32 %88, 2
  %90 = mul nsw i32 %89, 36
  %91 = mul nsw i32 %90, 16
  %92 = load %struct.mtk_vcodec_mem*, %struct.mtk_vcodec_mem** %6, align 8
  %93 = getelementptr inbounds %struct.mtk_vcodec_mem, %struct.mtk_vcodec_mem* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  %94 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %3, align 8
  %95 = getelementptr inbounds %struct.vdec_vp9_inst, %struct.vdec_vp9_inst* %94, i32 0, i32 0
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %95, align 8
  %97 = load %struct.mtk_vcodec_mem*, %struct.mtk_vcodec_mem** %6, align 8
  %98 = call i32 @mtk_vcodec_mem_alloc(%struct.TYPE_9__* %96, %struct.mtk_vcodec_mem* %97)
  store i32 %98, i32* %5, align 4
  %99 = load i32, i32* %5, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %79
  %102 = load %struct.mtk_vcodec_mem*, %struct.mtk_vcodec_mem** %6, align 8
  %103 = getelementptr inbounds %struct.mtk_vcodec_mem, %struct.mtk_vcodec_mem* %102, i32 0, i32 0
  store i32 0, i32* %103, align 8
  %104 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %3, align 8
  %105 = call i32 (%struct.vdec_vp9_inst*, i8*, ...) @mtk_vcodec_err(%struct.vdec_vp9_inst* %104, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %178

106:                                              ; preds = %79
  %107 = load %struct.mtk_vcodec_mem*, %struct.mtk_vcodec_mem** %6, align 8
  %108 = getelementptr inbounds %struct.mtk_vcodec_mem, %struct.mtk_vcodec_mem* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %4, align 8
  %111 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %110, i32 0, i32 6
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  store i64 %109, i64* %112, align 8
  %113 = load %struct.mtk_vcodec_mem*, %struct.mtk_vcodec_mem** %6, align 8
  %114 = getelementptr inbounds %struct.mtk_vcodec_mem, %struct.mtk_vcodec_mem* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %4, align 8
  %117 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %116, i32 0, i32 6
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 1
  store i64 %115, i64* %118, align 8
  %119 = load %struct.mtk_vcodec_mem*, %struct.mtk_vcodec_mem** %6, align 8
  %120 = getelementptr inbounds %struct.mtk_vcodec_mem, %struct.mtk_vcodec_mem* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %4, align 8
  %123 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %122, i32 0, i32 6
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 2
  store i32 %121, i32* %124, align 8
  %125 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %3, align 8
  %126 = getelementptr inbounds %struct.vdec_vp9_inst, %struct.vdec_vp9_inst* %125, i32 0, i32 1
  store %struct.mtk_vcodec_mem* %126, %struct.mtk_vcodec_mem** %6, align 8
  %127 = load %struct.mtk_vcodec_mem*, %struct.mtk_vcodec_mem** %6, align 8
  %128 = getelementptr inbounds %struct.mtk_vcodec_mem, %struct.mtk_vcodec_mem* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %106
  %132 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %3, align 8
  %133 = getelementptr inbounds %struct.vdec_vp9_inst, %struct.vdec_vp9_inst* %132, i32 0, i32 0
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %133, align 8
  %135 = load %struct.mtk_vcodec_mem*, %struct.mtk_vcodec_mem** %6, align 8
  %136 = call i32 @mtk_vcodec_mem_free(%struct.TYPE_9__* %134, %struct.mtk_vcodec_mem* %135)
  br label %137

137:                                              ; preds = %131, %106
  %138 = load i32, i32* @VP9_SEG_ID_SZ, align 4
  %139 = load %struct.mtk_vcodec_mem*, %struct.mtk_vcodec_mem** %6, align 8
  %140 = getelementptr inbounds %struct.mtk_vcodec_mem, %struct.mtk_vcodec_mem* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 8
  %141 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %3, align 8
  %142 = getelementptr inbounds %struct.vdec_vp9_inst, %struct.vdec_vp9_inst* %141, i32 0, i32 0
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %142, align 8
  %144 = load %struct.mtk_vcodec_mem*, %struct.mtk_vcodec_mem** %6, align 8
  %145 = call i32 @mtk_vcodec_mem_alloc(%struct.TYPE_9__* %143, %struct.mtk_vcodec_mem* %144)
  store i32 %145, i32* %5, align 4
  %146 = load i32, i32* %5, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %137
  %149 = load %struct.mtk_vcodec_mem*, %struct.mtk_vcodec_mem** %6, align 8
  %150 = getelementptr inbounds %struct.mtk_vcodec_mem, %struct.mtk_vcodec_mem* %149, i32 0, i32 0
  store i32 0, i32* %150, align 8
  %151 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %3, align 8
  %152 = call i32 (%struct.vdec_vp9_inst*, i8*, ...) @mtk_vcodec_err(%struct.vdec_vp9_inst* %151, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %178

153:                                              ; preds = %137
  %154 = load %struct.mtk_vcodec_mem*, %struct.mtk_vcodec_mem** %6, align 8
  %155 = getelementptr inbounds %struct.mtk_vcodec_mem, %struct.mtk_vcodec_mem* %154, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %4, align 8
  %158 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %157, i32 0, i32 5
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 0
  store i64 %156, i64* %159, align 8
  %160 = load %struct.mtk_vcodec_mem*, %struct.mtk_vcodec_mem** %6, align 8
  %161 = getelementptr inbounds %struct.mtk_vcodec_mem, %struct.mtk_vcodec_mem* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %4, align 8
  %164 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %163, i32 0, i32 5
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 1
  store i64 %162, i64* %165, align 8
  %166 = load %struct.mtk_vcodec_mem*, %struct.mtk_vcodec_mem** %6, align 8
  %167 = getelementptr inbounds %struct.mtk_vcodec_mem, %struct.mtk_vcodec_mem* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %4, align 8
  %170 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %169, i32 0, i32 5
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 2
  store i32 %168, i32* %171, align 8
  %172 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %3, align 8
  %173 = call i32 @vp9_free_all_sf_ref_fb(%struct.vdec_vp9_inst* %172)
  %174 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %3, align 8
  %175 = call i32 @vp9_get_sf_ref_fb(%struct.vdec_vp9_inst* %174)
  %176 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %4, align 8
  %177 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %176, i32 0, i32 4
  store i32 %175, i32* %177, align 8
  store i32 1, i32* %2, align 4
  br label %178

178:                                              ; preds = %153, %148, %101, %40
  %179 = load i32, i32* %2, align 4
  ret i32 %179
}

declare dso_local i32 @mtk_vcodec_err(%struct.vdec_vp9_inst*, i8*, ...) #1

declare dso_local i32 @mtk_vcodec_debug(%struct.vdec_vp9_inst*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mtk_vcodec_mem_free(%struct.TYPE_9__*, %struct.mtk_vcodec_mem*) #1

declare dso_local i32 @mtk_vcodec_mem_alloc(%struct.TYPE_9__*, %struct.mtk_vcodec_mem*) #1

declare dso_local i32 @vp9_free_all_sf_ref_fb(%struct.vdec_vp9_inst*) #1

declare dso_local i32 @vp9_get_sf_ref_fb(%struct.vdec_vp9_inst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
