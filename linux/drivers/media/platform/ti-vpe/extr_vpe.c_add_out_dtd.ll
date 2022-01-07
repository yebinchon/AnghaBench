; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpe.c_add_out_dtd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpe.c_add_out_dtd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpe_port_data = type { i32, i32 }
%struct.vpdma_data_format = type { i32 }
%struct.vpe_ctx = type { i32*, i32, %struct.TYPE_4__*, %struct.vpe_q_data*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.vpe_q_data = type { i32, i32*, i32, i32, i32, i32, %struct.vpe_fmt* }
%struct.vpe_fmt = type { %struct.vpdma_data_format**, i64 }
%struct.TYPE_3__ = type { %struct.vb2_buffer }
%struct.vb2_buffer = type { i32 }

@Q_DATA_DST = common dso_local global i64 0, align 8
@port_data = common dso_local global %struct.vpe_port_data* null, align 8
@VPE_PORT_MV_OUT = common dso_local global i32 0, align 4
@vpdma_misc_fmts = common dso_local global %struct.vpdma_data_format* null, align 8
@VPDMA_DATA_FMT_MV = common dso_local global i64 0, align 8
@Q_DATA_SRC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"acquiring output buffer(%d) dma_addr failed\0A\00", align 1
@Q_DATA_FRAME_1D = common dso_local global i32 0, align 4
@VPDMA_DATA_FRAME_1D = common dso_local global i32 0, align 4
@Q_DATA_MODE_TILED = common dso_local global i32 0, align 4
@VPDMA_DATA_MODE_TILED = common dso_local global i32 0, align 4
@VPDMA_MAX_SIZE1 = common dso_local global i32 0, align 4
@MAX_W = common dso_local global i32 0, align 4
@MAX_H = common dso_local global i32 0, align 4
@VPE_LUMA = common dso_local global i64 0, align 8
@MAX_OUT_WIDTH_REG1 = common dso_local global i32 0, align 4
@MAX_OUT_HEIGHT_REG1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vpe_ctx*, i32)* @add_out_dtd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_out_dtd(%struct.vpe_ctx* %0, i32 %1) #0 {
  %3 = alloca %struct.vpe_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vpe_q_data*, align 8
  %6 = alloca %struct.vpe_port_data*, align 8
  %7 = alloca %struct.vb2_buffer*, align 8
  %8 = alloca %struct.vpe_fmt*, align 8
  %9 = alloca %struct.vpdma_data_format*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.vpe_ctx* %0, %struct.vpe_ctx** %3, align 8
  store i32 %1, i32* %4, align 4
  %15 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %16 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %15, i32 0, i32 3
  %17 = load %struct.vpe_q_data*, %struct.vpe_q_data** %16, align 8
  %18 = load i64, i64* @Q_DATA_DST, align 8
  %19 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %17, i64 %18
  store %struct.vpe_q_data* %19, %struct.vpe_q_data** %5, align 8
  %20 = load %struct.vpe_port_data*, %struct.vpe_port_data** @port_data, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.vpe_port_data, %struct.vpe_port_data* %20, i64 %22
  store %struct.vpe_port_data* %23, %struct.vpe_port_data** %6, align 8
  %24 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %25 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %24, i32 0, i32 5
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store %struct.vb2_buffer* %27, %struct.vb2_buffer** %7, align 8
  %28 = load %struct.vpe_q_data*, %struct.vpe_q_data** %5, align 8
  %29 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %28, i32 0, i32 6
  %30 = load %struct.vpe_fmt*, %struct.vpe_fmt** %29, align 8
  store %struct.vpe_fmt* %30, %struct.vpe_fmt** %8, align 8
  %31 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %32 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %10, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @VPE_PORT_MV_OUT, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %56

40:                                               ; preds = %2
  %41 = load %struct.vpdma_data_format*, %struct.vpdma_data_format** @vpdma_misc_fmts, align 8
  %42 = load i64, i64* @VPDMA_DATA_FMT_MV, align 8
  %43 = getelementptr inbounds %struct.vpdma_data_format, %struct.vpdma_data_format* %41, i64 %42
  store %struct.vpdma_data_format* %43, %struct.vpdma_data_format** %9, align 8
  %44 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %45 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %11, align 4
  %51 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %52 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %51, i32 0, i32 3
  %53 = load %struct.vpe_q_data*, %struct.vpe_q_data** %52, align 8
  %54 = load i64, i64* @Q_DATA_SRC, align 8
  %55 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %53, i64 %54
  store %struct.vpe_q_data* %55, %struct.vpe_q_data** %5, align 8
  br label %111

56:                                               ; preds = %2
  %57 = load %struct.vpe_fmt*, %struct.vpe_fmt** %8, align 8
  %58 = getelementptr inbounds %struct.vpe_fmt, %struct.vpe_fmt* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load %struct.vpe_port_data*, %struct.vpe_port_data** %6, align 8
  %63 = getelementptr inbounds %struct.vpe_port_data, %struct.vpe_port_data* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  br label %66

65:                                               ; preds = %56
  br label %66

66:                                               ; preds = %65, %61
  %67 = phi i32 [ %64, %61 ], [ 0, %65 ]
  store i32 %67, i32* %14, align 4
  %68 = load %struct.vpe_fmt*, %struct.vpe_fmt** %8, align 8
  %69 = getelementptr inbounds %struct.vpe_fmt, %struct.vpe_fmt* %68, i32 0, i32 0
  %70 = load %struct.vpdma_data_format**, %struct.vpdma_data_format*** %69, align 8
  %71 = load i32, i32* %14, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.vpdma_data_format*, %struct.vpdma_data_format** %70, i64 %72
  %74 = load %struct.vpdma_data_format*, %struct.vpdma_data_format** %73, align 8
  store %struct.vpdma_data_format* %74, %struct.vpdma_data_format** %9, align 8
  %75 = load %struct.vpe_q_data*, %struct.vpe_q_data** %5, align 8
  %76 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %79, label %94

79:                                               ; preds = %66
  %80 = load i32, i32* %14, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %94

82:                                               ; preds = %79
  %83 = load %struct.vb2_buffer*, %struct.vb2_buffer** %7, align 8
  %84 = call i32 @vb2_dma_contig_plane_dma_addr(%struct.vb2_buffer* %83, i32 0)
  store i32 %84, i32* %11, align 4
  %85 = load %struct.vpe_q_data*, %struct.vpe_q_data** %5, align 8
  %86 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.vpe_q_data*, %struct.vpe_q_data** %5, align 8
  %91 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = mul nsw i32 %89, %92
  store i32 %93, i32* %13, align 4
  br label %98

94:                                               ; preds = %79, %66
  %95 = load %struct.vb2_buffer*, %struct.vb2_buffer** %7, align 8
  %96 = load i32, i32* %14, align 4
  %97 = call i32 @vb2_dma_contig_plane_dma_addr(%struct.vb2_buffer* %95, i32 %96)
  store i32 %97, i32* %11, align 4
  store i32 0, i32* %13, align 4
  br label %98

98:                                               ; preds = %94, %82
  %99 = load i32, i32* %11, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %107, label %101

101:                                              ; preds = %98
  %102 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %103 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %102, i32 0, i32 2
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = load i32, i32* %4, align 4
  %106 = call i32 @vpe_err(%struct.TYPE_4__* %104, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %105)
  br label %165

107:                                              ; preds = %98
  %108 = load i32, i32* %13, align 4
  %109 = load i32, i32* %11, align 4
  %110 = add nsw i32 %109, %108
  store i32 %110, i32* %11, align 4
  br label %111

111:                                              ; preds = %107, %40
  %112 = load %struct.vpe_q_data*, %struct.vpe_q_data** %5, align 8
  %113 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @Q_DATA_FRAME_1D, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %111
  %119 = load i32, i32* @VPDMA_DATA_FRAME_1D, align 4
  %120 = load i32, i32* %12, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %12, align 4
  br label %122

122:                                              ; preds = %118, %111
  %123 = load %struct.vpe_q_data*, %struct.vpe_q_data** %5, align 8
  %124 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @Q_DATA_MODE_TILED, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %122
  %130 = load i32, i32* @VPDMA_DATA_MODE_TILED, align 4
  %131 = load i32, i32* %12, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %12, align 4
  br label %133

133:                                              ; preds = %129, %122
  %134 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %135 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %134, i32 0, i32 2
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @VPDMA_MAX_SIZE1, align 4
  %140 = load i32, i32* @MAX_W, align 4
  %141 = load i32, i32* @MAX_H, align 4
  %142 = call i32 @vpdma_set_max_size(i32 %138, i32 %139, i32 %140, i32 %141)
  %143 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %144 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %143, i32 0, i32 1
  %145 = load %struct.vpe_q_data*, %struct.vpe_q_data** %5, align 8
  %146 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.vpe_q_data*, %struct.vpe_q_data** %5, align 8
  %149 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = load i64, i64* @VPE_LUMA, align 8
  %152 = getelementptr inbounds i32, i32* %150, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.vpe_q_data*, %struct.vpe_q_data** %5, align 8
  %155 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %154, i32 0, i32 4
  %156 = load %struct.vpdma_data_format*, %struct.vpdma_data_format** %9, align 8
  %157 = load i32, i32* %11, align 4
  %158 = load i32, i32* @MAX_OUT_WIDTH_REG1, align 4
  %159 = load i32, i32* @MAX_OUT_HEIGHT_REG1, align 4
  %160 = load %struct.vpe_port_data*, %struct.vpe_port_data** %6, align 8
  %161 = getelementptr inbounds %struct.vpe_port_data, %struct.vpe_port_data* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %12, align 4
  %164 = call i32 @vpdma_add_out_dtd(i32* %144, i32 %147, i32 %153, i32* %155, %struct.vpdma_data_format* %156, i32 %157, i32 %158, i32 %159, i32 %162, i32 %163)
  br label %165

165:                                              ; preds = %133, %101
  ret void
}

declare dso_local i32 @vb2_dma_contig_plane_dma_addr(%struct.vb2_buffer*, i32) #1

declare dso_local i32 @vpe_err(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @vpdma_set_max_size(i32, i32, i32, i32) #1

declare dso_local i32 @vpdma_add_out_dtd(i32*, i32, i32, i32*, %struct.vpdma_data_format*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
