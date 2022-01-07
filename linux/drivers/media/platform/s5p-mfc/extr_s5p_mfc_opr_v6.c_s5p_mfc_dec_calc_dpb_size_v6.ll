; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_opr_v6.c_s5p_mfc_dec_calc_dpb_size_v6.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_opr_v6.c_s5p_mfc_dec_calc_dpb_size_v6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_mfc_ctx = type { i32, i32, i64, i32, i8*, i8*, %struct.s5p_mfc_dev*, i8*, i8* }
%struct.s5p_mfc_dev = type { i32 }

@S5P_FIMV_NV12MT_HALIGN_V6 = common dso_local global i32 0, align 4
@S5P_FIMV_NV12MT_VALIGN_V6 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"SEQ Done: Movie dimensions %dx%d,\0Abuffer dimensions: %dx%d\0A\00", align 1
@S5P_FIMV_D_ALIGN_PLANE_SIZE_V8 = common dso_local global i64 0, align 8
@S5P_MFC_CODEC_H264_DEC = common dso_local global i64 0, align 8
@S5P_MFC_CODEC_H264_MVC_DEC = common dso_local global i64 0, align 8
@S5P_MFC_CODEC_HEVC_DEC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s5p_mfc_ctx*)* @s5p_mfc_dec_calc_dpb_size_v6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s5p_mfc_dec_calc_dpb_size_v6(%struct.s5p_mfc_ctx* %0) #0 {
  %2 = alloca %struct.s5p_mfc_ctx*, align 8
  %3 = alloca %struct.s5p_mfc_dev*, align 8
  store %struct.s5p_mfc_ctx* %0, %struct.s5p_mfc_ctx** %2, align 8
  %4 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %5 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %4, i32 0, i32 6
  %6 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %5, align 8
  store %struct.s5p_mfc_dev* %6, %struct.s5p_mfc_dev** %3, align 8
  %7 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %8 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @S5P_FIMV_NV12MT_HALIGN_V6, align 4
  %11 = call i8* @ALIGN(i32 %9, i32 %10)
  %12 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %13 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %12, i32 0, i32 8
  store i8* %11, i8** %13, align 8
  %14 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %15 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @S5P_FIMV_NV12MT_VALIGN_V6, align 4
  %18 = call i8* @ALIGN(i32 %16, i32 %17)
  %19 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %20 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %19, i32 0, i32 7
  store i8* %18, i8** %20, align 8
  %21 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %22 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %25 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %28 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %27, i32 0, i32 8
  %29 = load i8*, i8** %28, align 8
  %30 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %31 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %30, i32 0, i32 7
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @mfc_debug(i32 2, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %26, i8* %29, i8* %32)
  %34 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %35 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %38 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i8* @calc_plane(i32 %36, i32 %39)
  %41 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %42 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %41, i32 0, i32 5
  store i8* %40, i8** %42, align 8
  %43 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %44 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %47 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = ashr i32 %48, 1
  %50 = call i8* @calc_plane(i32 %45, i32 %49)
  %51 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %52 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %51, i32 0, i32 4
  store i8* %50, i8** %52, align 8
  %53 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %54 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %53, i32 0, i32 6
  %55 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %54, align 8
  %56 = call i64 @IS_MFCV8_PLUS(%struct.s5p_mfc_dev* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %1
  %59 = load i64, i64* @S5P_FIMV_D_ALIGN_PLANE_SIZE_V8, align 8
  %60 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %61 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %60, i32 0, i32 5
  %62 = load i8*, i8** %61, align 8
  %63 = getelementptr i8, i8* %62, i64 %59
  store i8* %63, i8** %61, align 8
  %64 = load i64, i64* @S5P_FIMV_D_ALIGN_PLANE_SIZE_V8, align 8
  %65 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %66 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %65, i32 0, i32 4
  %67 = load i8*, i8** %66, align 8
  %68 = getelementptr i8, i8* %67, i64 %64
  store i8* %68, i8** %66, align 8
  br label %69

69:                                               ; preds = %58, %1
  %70 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %71 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @S5P_MFC_CODEC_H264_DEC, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %81, label %75

75:                                               ; preds = %69
  %76 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %77 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @S5P_MFC_CODEC_H264_MVC_DEC, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %106

81:                                               ; preds = %75, %69
  %82 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %83 = call i64 @IS_MFCV10(%struct.s5p_mfc_dev* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %81
  %86 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %87 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %90 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @S5P_MFC_DEC_MV_SIZE_V10(i32 %88, i32 %91)
  %93 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %94 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %93, i32 0, i32 3
  store i32 %92, i32* %94, align 8
  br label %105

95:                                               ; preds = %81
  %96 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %97 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %100 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @S5P_MFC_DEC_MV_SIZE_V6(i32 %98, i32 %101)
  %103 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %104 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 8
  br label %105

105:                                              ; preds = %95, %85
  br label %133

106:                                              ; preds = %75
  %107 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %108 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @S5P_MFC_CODEC_HEVC_DEC, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %129

112:                                              ; preds = %106
  %113 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %114 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %117 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @s5p_mfc_dec_hevc_mv_size(i32 %115, i32 %118)
  %120 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %121 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %120, i32 0, i32 3
  store i32 %119, i32* %121, align 8
  %122 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %123 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 8
  %125 = call i8* @ALIGN(i32 %124, i32 32)
  %126 = ptrtoint i8* %125 to i32
  %127 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %128 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %127, i32 0, i32 3
  store i32 %126, i32* %128, align 8
  br label %132

129:                                              ; preds = %106
  %130 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %131 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %130, i32 0, i32 3
  store i32 0, i32* %131, align 8
  br label %132

132:                                              ; preds = %129, %112
  br label %133

133:                                              ; preds = %132, %105
  ret void
}

declare dso_local i8* @ALIGN(i32, i32) #1

declare dso_local i32 @mfc_debug(i32, i8*, i32, i32, i8*, i8*) #1

declare dso_local i8* @calc_plane(i32, i32) #1

declare dso_local i64 @IS_MFCV8_PLUS(%struct.s5p_mfc_dev*) #1

declare dso_local i64 @IS_MFCV10(%struct.s5p_mfc_dev*) #1

declare dso_local i32 @S5P_MFC_DEC_MV_SIZE_V10(i32, i32) #1

declare dso_local i32 @S5P_MFC_DEC_MV_SIZE_V6(i32, i32) #1

declare dso_local i32 @s5p_mfc_dec_hevc_mv_size(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
