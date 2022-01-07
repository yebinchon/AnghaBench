; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_opr_v5.c_s5p_mfc_dec_calc_dpb_size_v5.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_opr_v5.c_s5p_mfc_dec_calc_dpb_size_v5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_mfc_ctx = type { i32, i32, i32, i32, i64, i32, i32, i32 }

@S5P_FIMV_NV12MT_HALIGN = common dso_local global i32 0, align 4
@S5P_FIMV_NV12MT_VALIGN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"SEQ Done: Movie dimensions %dx%d, buffer dimensions: %dx%d\0A\00", align 1
@S5P_MFC_CODEC_H264_DEC = common dso_local global i64 0, align 8
@S5P_FIMV_DEC_BUF_ALIGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s5p_mfc_ctx*)* @s5p_mfc_dec_calc_dpb_size_v5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s5p_mfc_dec_calc_dpb_size_v5(%struct.s5p_mfc_ctx* %0) #0 {
  %2 = alloca %struct.s5p_mfc_ctx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.s5p_mfc_ctx* %0, %struct.s5p_mfc_ctx** %2, align 8
  %5 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %6 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @S5P_FIMV_NV12MT_HALIGN, align 4
  %9 = call i32 @ALIGN(i32 %7, i32 %8)
  %10 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %11 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %13 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @S5P_FIMV_NV12MT_VALIGN, align 4
  %16 = call i32 @ALIGN(i32 %14, i32 %15)
  %17 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %18 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 8
  %19 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %20 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %23 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %26 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %29 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @mfc_debug(i32 2, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %24, i32 %27, i32 %30)
  %32 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %33 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @S5P_MFC_CODEC_H264_DEC, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %77

37:                                               ; preds = %1
  %38 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %39 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %42 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = mul i32 %40, %43
  %45 = load i32, i32* @S5P_FIMV_DEC_BUF_ALIGN, align 4
  %46 = call i32 @ALIGN(i32 %44, i32 %45)
  %47 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %48 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %47, i32 0, i32 5
  store i32 %46, i32* %48, align 8
  %49 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %50 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %53 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = lshr i32 %54, 1
  %56 = load i32, i32* @S5P_FIMV_NV12MT_VALIGN, align 4
  %57 = call i32 @ALIGN(i32 %55, i32 %56)
  %58 = mul i32 %51, %57
  %59 = load i32, i32* @S5P_FIMV_DEC_BUF_ALIGN, align 4
  %60 = call i32 @ALIGN(i32 %58, i32 %59)
  %61 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %62 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %61, i32 0, i32 6
  store i32 %60, i32* %62, align 4
  %63 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %64 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %67 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = lshr i32 %68, 2
  %70 = load i32, i32* @S5P_FIMV_NV12MT_VALIGN, align 4
  %71 = call i32 @ALIGN(i32 %69, i32 %70)
  %72 = mul i32 %65, %71
  %73 = load i32, i32* @S5P_FIMV_DEC_BUF_ALIGN, align 4
  %74 = call i32 @ALIGN(i32 %72, i32 %73)
  %75 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %76 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %75, i32 0, i32 7
  store i32 %74, i32* %76, align 8
  br label %119

77:                                               ; preds = %1
  %78 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %79 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = add i32 %80, 24
  %82 = load i32, i32* @S5P_FIMV_NV12MT_HALIGN, align 4
  %83 = call i32 @ALIGN(i32 %81, i32 %82)
  store i32 %83, i32* %3, align 4
  %84 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %85 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = add i32 %86, 16
  %88 = load i32, i32* @S5P_FIMV_NV12MT_VALIGN, align 4
  %89 = call i32 @ALIGN(i32 %87, i32 %88)
  store i32 %89, i32* %4, align 4
  %90 = load i32, i32* %3, align 4
  %91 = load i32, i32* %4, align 4
  %92 = mul i32 %90, %91
  %93 = load i32, i32* @S5P_FIMV_DEC_BUF_ALIGN, align 4
  %94 = call i32 @ALIGN(i32 %92, i32 %93)
  %95 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %96 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %95, i32 0, i32 5
  store i32 %94, i32* %96, align 8
  %97 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %98 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = add i32 %99, 16
  %101 = load i32, i32* @S5P_FIMV_NV12MT_HALIGN, align 4
  %102 = call i32 @ALIGN(i32 %100, i32 %101)
  store i32 %102, i32* %3, align 4
  %103 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %104 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = lshr i32 %105, 1
  %107 = add i32 %106, 4
  %108 = load i32, i32* @S5P_FIMV_NV12MT_VALIGN, align 4
  %109 = call i32 @ALIGN(i32 %107, i32 %108)
  store i32 %109, i32* %4, align 4
  %110 = load i32, i32* %3, align 4
  %111 = load i32, i32* %4, align 4
  %112 = mul i32 %110, %111
  %113 = load i32, i32* @S5P_FIMV_DEC_BUF_ALIGN, align 4
  %114 = call i32 @ALIGN(i32 %112, i32 %113)
  %115 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %116 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %115, i32 0, i32 6
  store i32 %114, i32* %116, align 4
  %117 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %118 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %117, i32 0, i32 7
  store i32 0, i32* %118, align 8
  br label %119

119:                                              ; preds = %77, %37
  ret void
}

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @mfc_debug(i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
