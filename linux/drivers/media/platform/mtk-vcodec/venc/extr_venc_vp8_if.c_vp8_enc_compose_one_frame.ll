; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/venc/extr_venc_vp8_if.c_vp8_enc_compose_one_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/venc/extr_venc_vp8_if.c_vp8_enc_compose_one_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venc_vp8_inst = type { %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.mtk_vcodec_mem = type { i32, i32 }

@MAX_AC_TAG_SIZE = common dso_local global i32 0, align 4
@VENC_BITSTREAM_FRAME_SIZE = common dso_local global i32 0, align 4
@VENC_BITSTREAM_HEADER_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"bitstream buf size is too small(%zu)\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@VENC_VP8_VPU_WORK_BUF_BS_HEADER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.venc_vp8_inst*, %struct.mtk_vcodec_mem*, i32*)* @vp8_enc_compose_one_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vp8_enc_compose_one_frame(%struct.venc_vp8_inst* %0, %struct.mtk_vcodec_mem* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.venc_vp8_inst*, align 8
  %6 = alloca %struct.mtk_vcodec_mem*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.venc_vp8_inst* %0, %struct.venc_vp8_inst** %5, align 8
  store %struct.mtk_vcodec_mem* %1, %struct.mtk_vcodec_mem** %6, align 8
  store i32* %2, i32** %7, align 8
  %16 = load i32, i32* @MAX_AC_TAG_SIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %12, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %13, align 8
  %20 = load %struct.venc_vp8_inst*, %struct.venc_vp8_inst** %5, align 8
  %21 = load i32, i32* @VENC_BITSTREAM_FRAME_SIZE, align 4
  %22 = call i32 @vp8_enc_read_reg(%struct.venc_vp8_inst* %20, i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load %struct.venc_vp8_inst*, %struct.venc_vp8_inst** %5, align 8
  %24 = load i32, i32* @VENC_BITSTREAM_HEADER_LEN, align 4
  %25 = call i32 @vp8_enc_read_reg(%struct.venc_vp8_inst* %23, i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load %struct.venc_vp8_inst*, %struct.venc_vp8_inst** %5, align 8
  %27 = getelementptr inbounds %struct.venc_vp8_inst, %struct.venc_vp8_inst* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %10, align 4
  %34 = shl i32 %33, 5
  %35 = or i32 %34, 16
  %36 = load i32, i32* %8, align 4
  %37 = or i32 %35, %36
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %14, align 4
  %39 = and i32 %38, 255
  %40 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 %39, i32* %40, align 16
  %41 = load i32, i32* %14, align 4
  %42 = ashr i32 %41, 8
  %43 = and i32 %42, 255
  %44 = getelementptr inbounds i32, i32* %19, i64 1
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* %14, align 4
  %46 = ashr i32 %45, 16
  %47 = and i32 %46, 255
  %48 = getelementptr inbounds i32, i32* %19, i64 2
  store i32 %47, i32* %48, align 8
  %49 = load i32, i32* %8, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %86

51:                                               ; preds = %3
  %52 = load i32, i32* @MAX_AC_TAG_SIZE, align 4
  store i32 %52, i32* %11, align 4
  %53 = getelementptr inbounds i32, i32* %19, i64 3
  store i32 157, i32* %53, align 4
  %54 = getelementptr inbounds i32, i32* %19, i64 4
  store i32 1, i32* %54, align 16
  %55 = getelementptr inbounds i32, i32* %19, i64 5
  store i32 42, i32* %55, align 4
  %56 = load %struct.venc_vp8_inst*, %struct.venc_vp8_inst** %5, align 8
  %57 = getelementptr inbounds %struct.venc_vp8_inst, %struct.venc_vp8_inst* %56, i32 0, i32 1
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds i32, i32* %19, i64 6
  store i32 %61, i32* %62, align 8
  %63 = load %struct.venc_vp8_inst*, %struct.venc_vp8_inst** %5, align 8
  %64 = getelementptr inbounds %struct.venc_vp8_inst, %struct.venc_vp8_inst* %63, i32 0, i32 1
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = ashr i32 %68, 8
  %70 = getelementptr inbounds i32, i32* %19, i64 7
  store i32 %69, i32* %70, align 4
  %71 = load %struct.venc_vp8_inst*, %struct.venc_vp8_inst** %5, align 8
  %72 = getelementptr inbounds %struct.venc_vp8_inst, %struct.venc_vp8_inst* %71, i32 0, i32 1
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds i32, i32* %19, i64 8
  store i32 %76, i32* %77, align 16
  %78 = load %struct.venc_vp8_inst*, %struct.venc_vp8_inst** %5, align 8
  %79 = getelementptr inbounds %struct.venc_vp8_inst, %struct.venc_vp8_inst* %78, i32 0, i32 1
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = ashr i32 %83, 8
  %85 = getelementptr inbounds i32, i32* %19, i64 9
  store i32 %84, i32* %85, align 4
  br label %87

86:                                               ; preds = %3
  store i32 3, i32* %11, align 4
  br label %87

87:                                               ; preds = %86, %51
  %88 = load %struct.mtk_vcodec_mem*, %struct.mtk_vcodec_mem** %6, align 8
  %89 = getelementptr inbounds %struct.mtk_vcodec_mem, %struct.mtk_vcodec_mem* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %9, align 4
  %93 = add nsw i32 %91, %92
  %94 = load i32, i32* %11, align 4
  %95 = add i32 %93, %94
  %96 = icmp ult i32 %90, %95
  br i1 %96, label %97, label %105

97:                                               ; preds = %87
  %98 = load %struct.venc_vp8_inst*, %struct.venc_vp8_inst** %5, align 8
  %99 = load %struct.mtk_vcodec_mem*, %struct.mtk_vcodec_mem** %6, align 8
  %100 = getelementptr inbounds %struct.mtk_vcodec_mem, %struct.mtk_vcodec_mem* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @mtk_vcodec_err(%struct.venc_vp8_inst* %98, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %144

105:                                              ; preds = %87
  %106 = load %struct.mtk_vcodec_mem*, %struct.mtk_vcodec_mem** %6, align 8
  %107 = getelementptr inbounds %struct.mtk_vcodec_mem, %struct.mtk_vcodec_mem* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %10, align 4
  %110 = add nsw i32 %108, %109
  %111 = load i32, i32* %11, align 4
  %112 = add i32 %110, %111
  %113 = zext i32 %112 to i64
  %114 = load %struct.mtk_vcodec_mem*, %struct.mtk_vcodec_mem** %6, align 8
  %115 = getelementptr inbounds %struct.mtk_vcodec_mem, %struct.mtk_vcodec_mem* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %9, align 4
  %118 = call i32 @memmove(i64 %113, i32 %116, i32 %117)
  %119 = load %struct.mtk_vcodec_mem*, %struct.mtk_vcodec_mem** %6, align 8
  %120 = getelementptr inbounds %struct.mtk_vcodec_mem, %struct.mtk_vcodec_mem* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %11, align 4
  %123 = add i32 %121, %122
  %124 = load %struct.venc_vp8_inst*, %struct.venc_vp8_inst** %5, align 8
  %125 = getelementptr inbounds %struct.venc_vp8_inst, %struct.venc_vp8_inst* %124, i32 0, i32 0
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %125, align 8
  %127 = load i64, i64* @VENC_VP8_VPU_WORK_BUF_BS_HEADER, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %10, align 4
  %132 = call i32 @memcpy(i32 %123, i32* %130, i32 %131)
  %133 = load %struct.mtk_vcodec_mem*, %struct.mtk_vcodec_mem** %6, align 8
  %134 = getelementptr inbounds %struct.mtk_vcodec_mem, %struct.mtk_vcodec_mem* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %11, align 4
  %137 = call i32 @memcpy(i32 %135, i32* %19, i32 %136)
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* %10, align 4
  %140 = add nsw i32 %138, %139
  %141 = load i32, i32* %11, align 4
  %142 = add i32 %140, %141
  %143 = load i32*, i32** %7, align 8
  store i32 %142, i32* %143, align 4
  store i32 0, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %144

144:                                              ; preds = %105, %97
  %145 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %145)
  %146 = load i32, i32* %4, align 4
  ret i32 %146
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @vp8_enc_read_reg(%struct.venc_vp8_inst*, i32) #2

declare dso_local i32 @mtk_vcodec_err(%struct.venc_vp8_inst*, i8*, i32) #2

declare dso_local i32 @memmove(i64, i32, i32) #2

declare dso_local i32 @memcpy(i32, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
