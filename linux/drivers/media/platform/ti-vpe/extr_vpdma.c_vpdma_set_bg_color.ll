; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpdma.c_vpdma_set_bg_color.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpdma.c_vpdma_set_bg_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpdma_data = type { i32 }
%struct.vpdma_data_format = type { i64 }

@VPDMA_DATA_FMT_TYPE_RGB = common dso_local global i64 0, align 8
@VPDMA_BG_RGB = common dso_local global i32 0, align 4
@VPDMA_DATA_FMT_TYPE_YUV = common dso_local global i64 0, align 8
@VPDMA_BG_YUV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vpdma_set_bg_color(%struct.vpdma_data* %0, %struct.vpdma_data_format* %1, i32 %2) #0 {
  %4 = alloca %struct.vpdma_data*, align 8
  %5 = alloca %struct.vpdma_data_format*, align 8
  %6 = alloca i32, align 4
  store %struct.vpdma_data* %0, %struct.vpdma_data** %4, align 8
  store %struct.vpdma_data_format* %1, %struct.vpdma_data_format** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.vpdma_data_format*, %struct.vpdma_data_format** %5, align 8
  %8 = getelementptr inbounds %struct.vpdma_data_format, %struct.vpdma_data_format* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @VPDMA_DATA_FMT_TYPE_RGB, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load %struct.vpdma_data*, %struct.vpdma_data** %4, align 8
  %14 = load i32, i32* @VPDMA_BG_RGB, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @write_reg(%struct.vpdma_data* %13, i32 %14, i32 %15)
  br label %29

17:                                               ; preds = %3
  %18 = load %struct.vpdma_data_format*, %struct.vpdma_data_format** %5, align 8
  %19 = getelementptr inbounds %struct.vpdma_data_format, %struct.vpdma_data_format* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @VPDMA_DATA_FMT_TYPE_YUV, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load %struct.vpdma_data*, %struct.vpdma_data** %4, align 8
  %25 = load i32, i32* @VPDMA_BG_YUV, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @write_reg(%struct.vpdma_data* %24, i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %23, %17
  br label %29

29:                                               ; preds = %28, %12
  ret void
}

declare dso_local i32 @write_reg(%struct.vpdma_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
