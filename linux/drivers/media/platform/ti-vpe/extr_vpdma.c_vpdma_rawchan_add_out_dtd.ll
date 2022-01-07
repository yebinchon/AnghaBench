; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpdma.c_vpdma_rawchan_add_out_dtd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpdma.c_vpdma_rawchan_add_out_dtd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpdma_desc_list = type { %struct.vpdma_dtd*, %struct.TYPE_2__ }
%struct.vpdma_dtd = type { i32, i64, i64, i32, i32, i32, i64, i32 }
%struct.TYPE_2__ = type { i8*, i32 }
%struct.v4l2_rect = type { i32, i32, i32 }
%struct.vpdma_data_format = type { i32, i64, i64 }

@VPDMA_DATA_FMT_TYPE_YUV = common dso_local global i64 0, align 8
@DATA_TYPE_C420 = common dso_local global i64 0, align 8
@VPDMA_DATA_FRAME_1D = common dso_local global i32 0, align 4
@VPDMA_DATA_EVEN_LINE_SKIP = common dso_local global i32 0, align 4
@VPDMA_DATA_ODD_LINE_SKIP = common dso_local global i32 0, align 4
@VPDMA_DATA_MODE_TILED = common dso_local global i32 0, align 4
@DTD_DIR_OUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vpdma_rawchan_add_out_dtd(%struct.vpdma_desc_list* %0, i32 %1, i32 %2, %struct.v4l2_rect* %3, %struct.vpdma_data_format* %4, i64 %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca %struct.vpdma_desc_list*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.v4l2_rect*, align 8
  %15 = alloca %struct.vpdma_data_format*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.v4l2_rect, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.vpdma_dtd*, align 8
  store %struct.vpdma_desc_list* %0, %struct.vpdma_desc_list** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store %struct.v4l2_rect* %3, %struct.v4l2_rect** %14, align 8
  store %struct.vpdma_data_format* %4, %struct.vpdma_data_format** %15, align 8
  store i64 %5, i64* %16, align 8
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 1, i32* %23, align 4
  %29 = load %struct.v4l2_rect*, %struct.v4l2_rect** %14, align 8
  %30 = bitcast %struct.v4l2_rect* %26 to i8*
  %31 = bitcast %struct.v4l2_rect* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 %31, i64 12, i1 false)
  %32 = load %struct.vpdma_data_format*, %struct.vpdma_data_format** %15, align 8
  %33 = getelementptr inbounds %struct.vpdma_data_format, %struct.vpdma_data_format* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %27, align 4
  %35 = load i32, i32* %19, align 4
  store i32 %35, i32* %25, align 4
  store i32 %35, i32* %24, align 4
  %36 = load %struct.vpdma_data_format*, %struct.vpdma_data_format** %15, align 8
  %37 = getelementptr inbounds %struct.vpdma_data_format, %struct.vpdma_data_format* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @VPDMA_DATA_FMT_TYPE_YUV, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %54

41:                                               ; preds = %10
  %42 = load %struct.vpdma_data_format*, %struct.vpdma_data_format** %15, align 8
  %43 = getelementptr inbounds %struct.vpdma_data_format, %struct.vpdma_data_format* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @DATA_TYPE_C420, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %26, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = ashr i32 %49, 1
  store i32 %50, i32* %48, align 4
  %51 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %26, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = ashr i32 %52, 1
  store i32 %53, i32* %51, align 4
  store i32 8, i32* %27, align 4
  br label %54

54:                                               ; preds = %47, %41, %10
  %55 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %26, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %13, align 4
  %58 = mul nsw i32 %56, %57
  %59 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %26, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %27, align 4
  %62 = mul nsw i32 %60, %61
  %63 = ashr i32 %62, 3
  %64 = add nsw i32 %58, %63
  %65 = sext i32 %64 to i64
  %66 = load i64, i64* %16, align 8
  %67 = add nsw i64 %66, %65
  store i64 %67, i64* %16, align 8
  %68 = load %struct.vpdma_desc_list*, %struct.vpdma_desc_list** %11, align 8
  %69 = getelementptr inbounds %struct.vpdma_desc_list, %struct.vpdma_desc_list* %68, i32 0, i32 0
  %70 = load %struct.vpdma_dtd*, %struct.vpdma_dtd** %69, align 8
  store %struct.vpdma_dtd* %70, %struct.vpdma_dtd** %28, align 8
  %71 = load %struct.vpdma_dtd*, %struct.vpdma_dtd** %28, align 8
  %72 = getelementptr inbounds %struct.vpdma_dtd, %struct.vpdma_dtd* %71, i64 1
  %73 = bitcast %struct.vpdma_dtd* %72 to i8*
  %74 = load %struct.vpdma_desc_list*, %struct.vpdma_desc_list** %11, align 8
  %75 = getelementptr inbounds %struct.vpdma_desc_list, %struct.vpdma_desc_list* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = load %struct.vpdma_desc_list*, %struct.vpdma_desc_list** %11, align 8
  %79 = getelementptr inbounds %struct.vpdma_desc_list, %struct.vpdma_desc_list* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = getelementptr i8, i8* %77, i64 %82
  %84 = icmp ugt i8* %73, %83
  %85 = zext i1 %84 to i32
  %86 = call i32 @WARN_ON(i32 %85)
  %87 = load %struct.vpdma_data_format*, %struct.vpdma_data_format** %15, align 8
  %88 = getelementptr inbounds %struct.vpdma_data_format, %struct.vpdma_data_format* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load i32, i32* %23, align 4
  %91 = load i32, i32* %22, align 4
  %92 = load i32, i32* %20, align 4
  %93 = load i32, i32* @VPDMA_DATA_FRAME_1D, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  %96 = xor i1 %95, true
  %97 = xor i1 %96, true
  %98 = zext i1 %97 to i32
  %99 = load i32, i32* %20, align 4
  %100 = load i32, i32* @VPDMA_DATA_EVEN_LINE_SKIP, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  %103 = xor i1 %102, true
  %104 = xor i1 %103, true
  %105 = zext i1 %104 to i32
  %106 = load i32, i32* %20, align 4
  %107 = load i32, i32* @VPDMA_DATA_ODD_LINE_SKIP, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  %110 = xor i1 %109, true
  %111 = xor i1 %110, true
  %112 = zext i1 %111 to i32
  %113 = load i32, i32* %13, align 4
  %114 = call i32 @dtd_type_ctl_stride(i64 %89, i32 %90, i32 %91, i32 %98, i32 %105, i32 %112, i32 %113)
  %115 = load %struct.vpdma_dtd*, %struct.vpdma_dtd** %28, align 8
  %116 = getelementptr inbounds %struct.vpdma_dtd, %struct.vpdma_dtd* %115, i32 0, i32 7
  store i32 %114, i32* %116, align 8
  %117 = load %struct.vpdma_dtd*, %struct.vpdma_dtd** %28, align 8
  %118 = getelementptr inbounds %struct.vpdma_dtd, %struct.vpdma_dtd* %117, i32 0, i32 6
  store i64 0, i64* %118, align 8
  %119 = load i64, i64* %16, align 8
  %120 = trunc i64 %119 to i32
  %121 = load %struct.vpdma_dtd*, %struct.vpdma_dtd** %28, align 8
  %122 = getelementptr inbounds %struct.vpdma_dtd, %struct.vpdma_dtd* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 8
  %123 = load i32, i32* %20, align 4
  %124 = load i32, i32* @VPDMA_DATA_MODE_TILED, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  %127 = xor i1 %126, true
  %128 = xor i1 %127, true
  %129 = zext i1 %128 to i32
  %130 = load i32, i32* @DTD_DIR_OUT, align 4
  %131 = load i32, i32* %24, align 4
  %132 = load i32, i32* %21, align 4
  %133 = load i32, i32* %25, align 4
  %134 = call i32 @dtd_pkt_ctl(i32 %129, i32 %130, i32 %131, i32 %132, i32 %133)
  %135 = load %struct.vpdma_dtd*, %struct.vpdma_dtd** %28, align 8
  %136 = getelementptr inbounds %struct.vpdma_dtd, %struct.vpdma_dtd* %135, i32 0, i32 5
  store i32 %134, i32* %136, align 8
  %137 = call i32 @dtd_desc_write_addr(i32 0, i32 0, i32 0, i32 0)
  %138 = load %struct.vpdma_dtd*, %struct.vpdma_dtd** %28, align 8
  %139 = getelementptr inbounds %struct.vpdma_dtd, %struct.vpdma_dtd* %138, i32 0, i32 4
  store i32 %137, i32* %139, align 4
  %140 = load i32, i32* %17, align 4
  %141 = load i32, i32* %18, align 4
  %142 = call i32 @dtd_max_width_height(i32 %140, i32 %141)
  %143 = load %struct.vpdma_dtd*, %struct.vpdma_dtd** %28, align 8
  %144 = getelementptr inbounds %struct.vpdma_dtd, %struct.vpdma_dtd* %143, i32 0, i32 3
  store i32 %142, i32* %144, align 8
  %145 = load %struct.vpdma_dtd*, %struct.vpdma_dtd** %28, align 8
  %146 = getelementptr inbounds %struct.vpdma_dtd, %struct.vpdma_dtd* %145, i32 0, i32 2
  store i64 0, i64* %146, align 8
  %147 = load %struct.vpdma_dtd*, %struct.vpdma_dtd** %28, align 8
  %148 = getelementptr inbounds %struct.vpdma_dtd, %struct.vpdma_dtd* %147, i32 0, i32 1
  store i64 0, i64* %148, align 8
  %149 = load %struct.vpdma_dtd*, %struct.vpdma_dtd** %28, align 8
  %150 = getelementptr inbounds %struct.vpdma_dtd, %struct.vpdma_dtd* %149, i64 1
  %151 = load %struct.vpdma_desc_list*, %struct.vpdma_desc_list** %11, align 8
  %152 = getelementptr inbounds %struct.vpdma_desc_list, %struct.vpdma_desc_list* %151, i32 0, i32 0
  store %struct.vpdma_dtd* %150, %struct.vpdma_dtd** %152, align 8
  %153 = load %struct.vpdma_dtd*, %struct.vpdma_dtd** %28, align 8
  %154 = call i32 @dump_dtd(%struct.vpdma_dtd* %153)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @WARN_ON(i32) #2

declare dso_local i32 @dtd_type_ctl_stride(i64, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @dtd_pkt_ctl(i32, i32, i32, i32, i32) #2

declare dso_local i32 @dtd_desc_write_addr(i32, i32, i32, i32) #2

declare dso_local i32 @dtd_max_width_height(i32, i32) #2

declare dso_local i32 @dump_dtd(%struct.vpdma_dtd*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
