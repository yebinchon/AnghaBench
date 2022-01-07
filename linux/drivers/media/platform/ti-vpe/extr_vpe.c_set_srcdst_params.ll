; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpe.c_set_srcdst_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpe.c_set_srcdst_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpdma_data_format = type { i32 }
%struct.vpe_ctx = type { i32, %struct.TYPE_10__*, %struct.TYPE_9__, %struct.TYPE_8__, i32**, i32, i64, %struct.TYPE_6__, %struct.vpe_q_data* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { %struct.vpe_mmr_adb* }
%struct.vpe_mmr_adb = type { i32*, i32*, i32*, i32* }
%struct.vpe_q_data = type { i32, i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@Q_DATA_SRC = common dso_local global i64 0, align 8
@Q_DATA_DST = common dso_local global i64 0, align 8
@V4L2_FIELD_TOP = common dso_local global i32 0, align 4
@Q_IS_INTERLACED = common dso_local global i32 0, align 4
@vpdma_misc_fmts = common dso_local global %struct.vpdma_data_format* null, align 8
@VPDMA_DATA_FMT_MV = common dso_local global i64 0, align 8
@VPDMA_STRIDE_ALIGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vpe_ctx*)* @set_srcdst_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_srcdst_params(%struct.vpe_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vpe_ctx*, align 8
  %4 = alloca %struct.vpe_q_data*, align 8
  %5 = alloca %struct.vpe_q_data*, align 8
  %6 = alloca %struct.vpe_mmr_adb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.vpdma_data_format*, align 8
  store %struct.vpe_ctx* %0, %struct.vpe_ctx** %3, align 8
  %15 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %16 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %15, i32 0, i32 8
  %17 = load %struct.vpe_q_data*, %struct.vpe_q_data** %16, align 8
  %18 = load i64, i64* @Q_DATA_SRC, align 8
  %19 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %17, i64 %18
  store %struct.vpe_q_data* %19, %struct.vpe_q_data** %4, align 8
  %20 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %21 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %20, i32 0, i32 8
  %22 = load %struct.vpe_q_data*, %struct.vpe_q_data** %21, align 8
  %23 = load i64, i64* @Q_DATA_DST, align 8
  %24 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %22, i64 %23
  store %struct.vpe_q_data* %24, %struct.vpe_q_data** %5, align 8
  %25 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %26 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %25, i32 0, i32 7
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load %struct.vpe_mmr_adb*, %struct.vpe_mmr_adb** %27, align 8
  store %struct.vpe_mmr_adb* %28, %struct.vpe_mmr_adb** %6, align 8
  %29 = load %struct.vpe_q_data*, %struct.vpe_q_data** %4, align 8
  %30 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %7, align 4
  %33 = load %struct.vpe_q_data*, %struct.vpe_q_data** %4, align 8
  %34 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %8, align 4
  %37 = load %struct.vpe_q_data*, %struct.vpe_q_data** %5, align 8
  %38 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %9, align 4
  %41 = load %struct.vpe_q_data*, %struct.vpe_q_data** %5, align 8
  %42 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %10, align 4
  %45 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %46 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %45, i32 0, i32 6
  store i64 0, i64* %46, align 8
  %47 = load i32, i32* @V4L2_FIELD_TOP, align 4
  %48 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %49 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %48, i32 0, i32 5
  store i32 %47, i32* %49, align 8
  %50 = load %struct.vpe_q_data*, %struct.vpe_q_data** %4, align 8
  %51 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @Q_IS_INTERLACED, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %87

56:                                               ; preds = %1
  %57 = load %struct.vpe_q_data*, %struct.vpe_q_data** %5, align 8
  %58 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @Q_IS_INTERLACED, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %87, label %63

63:                                               ; preds = %56
  %64 = load %struct.vpdma_data_format*, %struct.vpdma_data_format** @vpdma_misc_fmts, align 8
  %65 = load i64, i64* @VPDMA_DATA_FMT_MV, align 8
  %66 = getelementptr inbounds %struct.vpdma_data_format, %struct.vpdma_data_format* %64, i64 %65
  store %struct.vpdma_data_format* %66, %struct.vpdma_data_format** %14, align 8
  %67 = load %struct.vpe_q_data*, %struct.vpe_q_data** %4, align 8
  %68 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.vpdma_data_format*, %struct.vpdma_data_format** %14, align 8
  %71 = getelementptr inbounds %struct.vpdma_data_format, %struct.vpdma_data_format* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = mul nsw i32 %69, %72
  %74 = ashr i32 %73, 3
  %75 = load i32, i32* @VPDMA_STRIDE_ALIGN, align 4
  %76 = call i32 @ALIGN(i32 %74, i32 %75)
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* %13, align 4
  %78 = load %struct.vpe_q_data*, %struct.vpe_q_data** %4, align 8
  %79 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = mul nsw i32 %77, %80
  %82 = sext i32 %81 to i64
  store i64 %82, i64* %11, align 8
  %83 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %84 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %83, i32 0, i32 0
  store i32 1, i32* %84, align 8
  %85 = load i32, i32* %8, align 4
  %86 = shl i32 %85, 1
  store i32 %86, i32* %8, align 4
  br label %90

87:                                               ; preds = %56, %1
  %88 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %89 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %88, i32 0, i32 0
  store i32 0, i32* %89, align 8
  store i64 0, i64* %11, align 8
  br label %90

90:                                               ; preds = %87, %63
  %91 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %92 = call i32 @free_vbs(%struct.vpe_ctx* %91)
  %93 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %94 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %93, i32 0, i32 4
  %95 = load i32**, i32*** %94, align 8
  %96 = getelementptr inbounds i32*, i32** %95, i64 0
  store i32* null, i32** %96, align 8
  %97 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %98 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %97, i32 0, i32 4
  %99 = load i32**, i32*** %98, align 8
  %100 = getelementptr inbounds i32*, i32** %99, i64 1
  store i32* null, i32** %100, align 8
  %101 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %102 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %101, i32 0, i32 4
  %103 = load i32**, i32*** %102, align 8
  %104 = getelementptr inbounds i32*, i32** %103, i64 2
  store i32* null, i32** %104, align 8
  %105 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %106 = load i64, i64* %11, align 8
  %107 = call i32 @realloc_mv_buffers(%struct.vpe_ctx* %105, i64 %106)
  store i32 %107, i32* %12, align 4
  %108 = load i32, i32* %12, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %90
  %111 = load i32, i32* %12, align 4
  store i32 %111, i32* %2, align 4
  br label %179

112:                                              ; preds = %90
  %113 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %114 = call i32 @set_cfg_modes(%struct.vpe_ctx* %113)
  %115 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %116 = call i32 @set_dei_regs(%struct.vpe_ctx* %115)
  %117 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %118 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %117, i32 0, i32 1
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.vpe_mmr_adb*, %struct.vpe_mmr_adb** %6, align 8
  %123 = getelementptr inbounds %struct.vpe_mmr_adb, %struct.vpe_mmr_adb* %122, i32 0, i32 3
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 0
  %126 = load %struct.vpe_q_data*, %struct.vpe_q_data** %4, align 8
  %127 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.vpe_q_data*, %struct.vpe_q_data** %5, align 8
  %130 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @csc_set_coeff(i32 %121, i32* %125, i32 %128, i32 %131)
  %133 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %134 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %133, i32 0, i32 1
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %139 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %138, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %7, align 4
  %143 = load i32, i32* %9, align 4
  %144 = call i32 @sc_set_hs_coeffs(i32 %137, i32 %141, i32 %142, i32 %143)
  %145 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %146 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %145, i32 0, i32 1
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %151 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* %8, align 4
  %155 = load i32, i32* %10, align 4
  %156 = call i32 @sc_set_vs_coeffs(i32 %149, i32 %153, i32 %154, i32 %155)
  %157 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %158 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %157, i32 0, i32 1
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.vpe_mmr_adb*, %struct.vpe_mmr_adb** %6, align 8
  %163 = getelementptr inbounds %struct.vpe_mmr_adb, %struct.vpe_mmr_adb* %162, i32 0, i32 2
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 0
  %166 = load %struct.vpe_mmr_adb*, %struct.vpe_mmr_adb** %6, align 8
  %167 = getelementptr inbounds %struct.vpe_mmr_adb, %struct.vpe_mmr_adb* %166, i32 0, i32 1
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 0
  %170 = load %struct.vpe_mmr_adb*, %struct.vpe_mmr_adb** %6, align 8
  %171 = getelementptr inbounds %struct.vpe_mmr_adb, %struct.vpe_mmr_adb* %170, i32 0, i32 0
  %172 = load i32*, i32** %171, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 0
  %174 = load i32, i32* %7, align 4
  %175 = load i32, i32* %8, align 4
  %176 = load i32, i32* %9, align 4
  %177 = load i32, i32* %10, align 4
  %178 = call i32 @sc_config_scaler(i32 %161, i32* %165, i32* %169, i32* %173, i32 %174, i32 %175, i32 %176, i32 %177)
  store i32 0, i32* %2, align 4
  br label %179

179:                                              ; preds = %112, %110
  %180 = load i32, i32* %2, align 4
  ret i32 %180
}

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @free_vbs(%struct.vpe_ctx*) #1

declare dso_local i32 @realloc_mv_buffers(%struct.vpe_ctx*, i64) #1

declare dso_local i32 @set_cfg_modes(%struct.vpe_ctx*) #1

declare dso_local i32 @set_dei_regs(%struct.vpe_ctx*) #1

declare dso_local i32 @csc_set_coeff(i32, i32*, i32, i32) #1

declare dso_local i32 @sc_set_hs_coeffs(i32, i32, i32, i32) #1

declare dso_local i32 @sc_set_vs_coeffs(i32, i32, i32, i32) #1

declare dso_local i32 @sc_config_scaler(i32, i32*, i32*, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
