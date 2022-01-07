; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpdma.c_vpdma_add_in_dtd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpdma.c_vpdma_add_in_dtd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.vpdma_desc_list = type { %struct.vpdma_dtd*, %struct.TYPE_3__ }
%struct.vpdma_dtd = type { i32, i64, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i8*, i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.vpdma_data_format = type { i32, i64, i64 }

@chan_info = common dso_local global %struct.TYPE_4__* null, align 8
@VPDMA_DATA_FMT_TYPE_YUV = common dso_local global i64 0, align 8
@DATA_TYPE_C420 = common dso_local global i64 0, align 8
@VPDMA_DATA_FRAME_1D = common dso_local global i32 0, align 4
@VPDMA_DATA_EVEN_LINE_SKIP = common dso_local global i32 0, align 4
@VPDMA_DATA_ODD_LINE_SKIP = common dso_local global i32 0, align 4
@VPDMA_DATA_MODE_TILED = common dso_local global i32 0, align 4
@DTD_DIR_IN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vpdma_add_in_dtd(%struct.vpdma_desc_list* %0, i32 %1, i32 %2, %struct.v4l2_rect* %3, %struct.vpdma_data_format* %4, i64 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12) #0 {
  %14 = alloca %struct.vpdma_desc_list*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.v4l2_rect*, align 8
  %18 = alloca %struct.vpdma_data_format*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca %struct.v4l2_rect, align 4
  %33 = alloca %struct.vpdma_dtd*, align 8
  store %struct.vpdma_desc_list* %0, %struct.vpdma_desc_list** %14, align 8
  store i32 %1, i32* %15, align 4
  store i32 %2, i32* %16, align 4
  store %struct.v4l2_rect* %3, %struct.v4l2_rect** %17, align 8
  store %struct.vpdma_data_format* %4, %struct.vpdma_data_format** %18, align 8
  store i64 %5, i64* %19, align 8
  store i32 %6, i32* %20, align 4
  store i32 %7, i32* %21, align 4
  store i32 %8, i32* %22, align 4
  store i32 %9, i32* %23, align 4
  store i32 %10, i32* %24, align 4
  store i32 %11, i32* %25, align 4
  store i32 %12, i32* %26, align 4
  store i32 0, i32* %27, align 4
  store i32 1, i32* %28, align 4
  %34 = load %struct.vpdma_data_format*, %struct.vpdma_data_format** %18, align 8
  %35 = getelementptr inbounds %struct.vpdma_data_format, %struct.vpdma_data_format* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %29, align 4
  %37 = load %struct.v4l2_rect*, %struct.v4l2_rect** %17, align 8
  %38 = bitcast %struct.v4l2_rect* %32 to i8*
  %39 = bitcast %struct.v4l2_rect* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %38, i8* align 4 %39, i64 16, i1 false)
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @chan_info, align 8
  %41 = load i32, i32* %20, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %31, align 4
  store i32 %45, i32* %30, align 4
  %46 = load %struct.vpdma_data_format*, %struct.vpdma_data_format** %18, align 8
  %47 = getelementptr inbounds %struct.vpdma_data_format, %struct.vpdma_data_format* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @VPDMA_DATA_FMT_TYPE_YUV, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %64

51:                                               ; preds = %13
  %52 = load %struct.vpdma_data_format*, %struct.vpdma_data_format** %18, align 8
  %53 = getelementptr inbounds %struct.vpdma_data_format, %struct.vpdma_data_format* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @DATA_TYPE_C420, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %32, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = ashr i32 %59, 1
  store i32 %60, i32* %58, align 4
  %61 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %32, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = ashr i32 %62, 1
  store i32 %63, i32* %61, align 4
  store i32 8, i32* %29, align 4
  br label %64

64:                                               ; preds = %57, %51, %13
  %65 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %32, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %16, align 4
  %68 = mul nsw i32 %66, %67
  %69 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %32, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %29, align 4
  %72 = mul nsw i32 %70, %71
  %73 = ashr i32 %72, 3
  %74 = add nsw i32 %68, %73
  %75 = sext i32 %74 to i64
  %76 = load i64, i64* %19, align 8
  %77 = add nsw i64 %76, %75
  store i64 %77, i64* %19, align 8
  %78 = load %struct.vpdma_desc_list*, %struct.vpdma_desc_list** %14, align 8
  %79 = getelementptr inbounds %struct.vpdma_desc_list, %struct.vpdma_desc_list* %78, i32 0, i32 0
  %80 = load %struct.vpdma_dtd*, %struct.vpdma_dtd** %79, align 8
  store %struct.vpdma_dtd* %80, %struct.vpdma_dtd** %33, align 8
  %81 = load %struct.vpdma_dtd*, %struct.vpdma_dtd** %33, align 8
  %82 = getelementptr inbounds %struct.vpdma_dtd, %struct.vpdma_dtd* %81, i64 1
  %83 = bitcast %struct.vpdma_dtd* %82 to i8*
  %84 = load %struct.vpdma_desc_list*, %struct.vpdma_desc_list** %14, align 8
  %85 = getelementptr inbounds %struct.vpdma_desc_list, %struct.vpdma_desc_list* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = load %struct.vpdma_desc_list*, %struct.vpdma_desc_list** %14, align 8
  %89 = getelementptr inbounds %struct.vpdma_desc_list, %struct.vpdma_desc_list* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  %93 = getelementptr i8, i8* %87, i64 %92
  %94 = icmp ugt i8* %83, %93
  %95 = zext i1 %94 to i32
  %96 = call i32 @WARN_ON(i32 %95)
  %97 = load %struct.vpdma_data_format*, %struct.vpdma_data_format** %18, align 8
  %98 = getelementptr inbounds %struct.vpdma_data_format, %struct.vpdma_data_format* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = load i32, i32* %28, align 4
  %101 = load i32, i32* %21, align 4
  %102 = load i32, i32* %22, align 4
  %103 = load i32, i32* @VPDMA_DATA_FRAME_1D, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  %106 = xor i1 %105, true
  %107 = xor i1 %106, true
  %108 = zext i1 %107 to i32
  %109 = load i32, i32* %22, align 4
  %110 = load i32, i32* @VPDMA_DATA_EVEN_LINE_SKIP, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  %113 = xor i1 %112, true
  %114 = xor i1 %113, true
  %115 = zext i1 %114 to i32
  %116 = load i32, i32* %22, align 4
  %117 = load i32, i32* @VPDMA_DATA_ODD_LINE_SKIP, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  %120 = xor i1 %119, true
  %121 = xor i1 %120, true
  %122 = zext i1 %121 to i32
  %123 = load i32, i32* %16, align 4
  %124 = call i32 @dtd_type_ctl_stride(i64 %99, i32 %100, i32 %101, i32 %108, i32 %115, i32 %122, i32 %123)
  %125 = load %struct.vpdma_dtd*, %struct.vpdma_dtd** %33, align 8
  %126 = getelementptr inbounds %struct.vpdma_dtd, %struct.vpdma_dtd* %125, i32 0, i32 7
  store i32 %124, i32* %126, align 8
  %127 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %32, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %32, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @dtd_xfer_length_height(i32 %128, i32 %130)
  %132 = load %struct.vpdma_dtd*, %struct.vpdma_dtd** %33, align 8
  %133 = getelementptr inbounds %struct.vpdma_dtd, %struct.vpdma_dtd* %132, i32 0, i32 6
  store i32 %131, i32* %133, align 4
  %134 = load i64, i64* %19, align 8
  %135 = trunc i64 %134 to i32
  %136 = load %struct.vpdma_dtd*, %struct.vpdma_dtd** %33, align 8
  %137 = getelementptr inbounds %struct.vpdma_dtd, %struct.vpdma_dtd* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 8
  %138 = load i32, i32* %22, align 4
  %139 = load i32, i32* @VPDMA_DATA_MODE_TILED, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  %142 = xor i1 %141, true
  %143 = xor i1 %142, true
  %144 = zext i1 %143 to i32
  %145 = load i32, i32* @DTD_DIR_IN, align 4
  %146 = load i32, i32* %30, align 4
  %147 = load i32, i32* %27, align 4
  %148 = load i32, i32* %31, align 4
  %149 = call i32 @dtd_pkt_ctl(i32 %144, i32 %145, i32 %146, i32 %147, i32 %148)
  %150 = load %struct.vpdma_dtd*, %struct.vpdma_dtd** %33, align 8
  %151 = getelementptr inbounds %struct.vpdma_dtd, %struct.vpdma_dtd* %150, i32 0, i32 5
  store i32 %149, i32* %151, align 8
  %152 = load i32, i32* %23, align 4
  %153 = load i32, i32* %24, align 4
  %154 = call i32 @dtd_frame_width_height(i32 %152, i32 %153)
  %155 = load %struct.vpdma_dtd*, %struct.vpdma_dtd** %33, align 8
  %156 = getelementptr inbounds %struct.vpdma_dtd, %struct.vpdma_dtd* %155, i32 0, i32 4
  store i32 %154, i32* %156, align 4
  %157 = load i32, i32* %25, align 4
  %158 = load i32, i32* %26, align 4
  %159 = call i32 @dtd_start_h_v(i32 %157, i32 %158)
  %160 = load %struct.vpdma_dtd*, %struct.vpdma_dtd** %33, align 8
  %161 = getelementptr inbounds %struct.vpdma_dtd, %struct.vpdma_dtd* %160, i32 0, i32 3
  store i32 %159, i32* %161, align 8
  %162 = load %struct.vpdma_dtd*, %struct.vpdma_dtd** %33, align 8
  %163 = getelementptr inbounds %struct.vpdma_dtd, %struct.vpdma_dtd* %162, i32 0, i32 2
  store i64 0, i64* %163, align 8
  %164 = load %struct.vpdma_dtd*, %struct.vpdma_dtd** %33, align 8
  %165 = getelementptr inbounds %struct.vpdma_dtd, %struct.vpdma_dtd* %164, i32 0, i32 1
  store i64 0, i64* %165, align 8
  %166 = load %struct.vpdma_dtd*, %struct.vpdma_dtd** %33, align 8
  %167 = getelementptr inbounds %struct.vpdma_dtd, %struct.vpdma_dtd* %166, i64 1
  %168 = load %struct.vpdma_desc_list*, %struct.vpdma_desc_list** %14, align 8
  %169 = getelementptr inbounds %struct.vpdma_desc_list, %struct.vpdma_desc_list* %168, i32 0, i32 0
  store %struct.vpdma_dtd* %167, %struct.vpdma_dtd** %169, align 8
  %170 = load %struct.vpdma_dtd*, %struct.vpdma_dtd** %33, align 8
  %171 = call i32 @dump_dtd(%struct.vpdma_dtd* %170)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @WARN_ON(i32) #2

declare dso_local i32 @dtd_type_ctl_stride(i64, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @dtd_xfer_length_height(i32, i32) #2

declare dso_local i32 @dtd_pkt_ctl(i32, i32, i32, i32, i32) #2

declare dso_local i32 @dtd_frame_width_height(i32, i32) #2

declare dso_local i32 @dtd_start_h_v(i32, i32) #2

declare dso_local i32 @dump_dtd(%struct.vpdma_dtd*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
