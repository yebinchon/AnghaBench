; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_xdp_tx_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_xdp_tx_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpsw_priv = type { i32, %struct.TYPE_8__*, %struct.cpsw_common* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.cpsw_common = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.cpdma_chan* }
%struct.cpdma_chan = type { i32 }
%struct.xdp_frame = type { i32, i32, i32 }
%struct.page = type { i32 }
%struct.cpsw_meta_xdp = type { i64, %struct.TYPE_8__* }

@CPSW_XMETA_OFFSET = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpsw_priv*, %struct.xdp_frame*, %struct.page*)* @cpsw_xdp_tx_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpsw_xdp_tx_frame(%struct.cpsw_priv* %0, %struct.xdp_frame* %1, %struct.page* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpsw_priv*, align 8
  %6 = alloca %struct.xdp_frame*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca %struct.cpsw_common*, align 8
  %9 = alloca %struct.cpsw_meta_xdp*, align 8
  %10 = alloca %struct.cpdma_chan*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.cpsw_priv* %0, %struct.cpsw_priv** %5, align 8
  store %struct.xdp_frame* %1, %struct.xdp_frame** %6, align 8
  store %struct.page* %2, %struct.page** %7, align 8
  %14 = load %struct.cpsw_priv*, %struct.cpsw_priv** %5, align 8
  %15 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %14, i32 0, i32 2
  %16 = load %struct.cpsw_common*, %struct.cpsw_common** %15, align 8
  store %struct.cpsw_common* %16, %struct.cpsw_common** %8, align 8
  %17 = load %struct.xdp_frame*, %struct.xdp_frame** %6, align 8
  %18 = bitcast %struct.xdp_frame* %17 to i8*
  %19 = load i32, i32* @CPSW_XMETA_OFFSET, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr i8, i8* %18, i64 %20
  %22 = bitcast i8* %21 to %struct.cpsw_meta_xdp*
  store %struct.cpsw_meta_xdp* %22, %struct.cpsw_meta_xdp** %9, align 8
  %23 = load %struct.cpsw_priv*, %struct.cpsw_priv** %5, align 8
  %24 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %23, i32 0, i32 1
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = load %struct.cpsw_meta_xdp*, %struct.cpsw_meta_xdp** %9, align 8
  %27 = getelementptr inbounds %struct.cpsw_meta_xdp, %struct.cpsw_meta_xdp* %26, i32 0, i32 1
  store %struct.TYPE_8__* %25, %struct.TYPE_8__** %27, align 8
  %28 = load %struct.cpsw_meta_xdp*, %struct.cpsw_meta_xdp** %9, align 8
  %29 = getelementptr inbounds %struct.cpsw_meta_xdp, %struct.cpsw_meta_xdp* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  %30 = load %struct.cpsw_common*, %struct.cpsw_common** %8, align 8
  %31 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %30, i32 0, i32 1
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i64 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load %struct.cpdma_chan*, %struct.cpdma_chan** %34, align 8
  store %struct.cpdma_chan* %35, %struct.cpdma_chan** %10, align 8
  %36 = load %struct.cpsw_priv*, %struct.cpsw_priv** %5, align 8
  %37 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.cpsw_common*, %struct.cpsw_common** %8, align 8
  %40 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %38, %42
  store i32 %43, i32* %13, align 4
  %44 = load %struct.page*, %struct.page** %7, align 8
  %45 = icmp ne %struct.page* %44, null
  br i1 %45, label %46, label %67

46:                                               ; preds = %3
  %47 = load %struct.page*, %struct.page** %7, align 8
  %48 = call i32 @page_pool_get_dma_addr(%struct.page* %47)
  store i32 %48, i32* %11, align 4
  %49 = load %struct.xdp_frame*, %struct.xdp_frame** %6, align 8
  %50 = getelementptr inbounds %struct.xdp_frame, %struct.xdp_frame* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = add i64 %52, 12
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = add i64 %55, %53
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %11, align 4
  %58 = load %struct.cpdma_chan*, %struct.cpdma_chan** %10, align 8
  %59 = load %struct.xdp_frame*, %struct.xdp_frame** %6, align 8
  %60 = call i32 @cpsw_xdpf_to_handle(%struct.xdp_frame* %59)
  %61 = load i32, i32* %11, align 4
  %62 = load %struct.xdp_frame*, %struct.xdp_frame** %6, align 8
  %63 = getelementptr inbounds %struct.xdp_frame, %struct.xdp_frame* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %13, align 4
  %66 = call i32 @cpdma_chan_submit_mapped(%struct.cpdma_chan* %58, i32 %60, i32 %61, i32 %64, i32 %65)
  store i32 %66, i32* %12, align 4
  br label %90

67:                                               ; preds = %3
  %68 = load %struct.xdp_frame*, %struct.xdp_frame** %6, align 8
  %69 = getelementptr inbounds %struct.xdp_frame, %struct.xdp_frame* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = icmp ugt i64 16, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %67
  %74 = load %struct.xdp_frame*, %struct.xdp_frame** %6, align 8
  %75 = call i32 @xdp_return_frame_rx_napi(%struct.xdp_frame* %74)
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %4, align 4
  br label %105

78:                                               ; preds = %67
  %79 = load %struct.cpdma_chan*, %struct.cpdma_chan** %10, align 8
  %80 = load %struct.xdp_frame*, %struct.xdp_frame** %6, align 8
  %81 = call i32 @cpsw_xdpf_to_handle(%struct.xdp_frame* %80)
  %82 = load %struct.xdp_frame*, %struct.xdp_frame** %6, align 8
  %83 = getelementptr inbounds %struct.xdp_frame, %struct.xdp_frame* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.xdp_frame*, %struct.xdp_frame** %6, align 8
  %86 = getelementptr inbounds %struct.xdp_frame, %struct.xdp_frame* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %13, align 4
  %89 = call i32 @cpdma_chan_submit(%struct.cpdma_chan* %79, i32 %81, i32 %84, i32 %87, i32 %88)
  store i32 %89, i32* %12, align 4
  br label %90

90:                                               ; preds = %78, %46
  %91 = load i32, i32* %12, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %90
  %94 = load %struct.cpsw_priv*, %struct.cpsw_priv** %5, align 8
  %95 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %94, i32 0, i32 1
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %98, align 4
  %101 = load %struct.xdp_frame*, %struct.xdp_frame** %6, align 8
  %102 = call i32 @xdp_return_frame_rx_napi(%struct.xdp_frame* %101)
  br label %103

103:                                              ; preds = %93, %90
  %104 = load i32, i32* %12, align 4
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %103, %73
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i32 @page_pool_get_dma_addr(%struct.page*) #1

declare dso_local i32 @cpdma_chan_submit_mapped(%struct.cpdma_chan*, i32, i32, i32, i32) #1

declare dso_local i32 @cpsw_xdpf_to_handle(%struct.xdp_frame*) #1

declare dso_local i32 @xdp_return_frame_rx_napi(%struct.xdp_frame*) #1

declare dso_local i32 @cpdma_chan_submit(%struct.cpdma_chan*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
