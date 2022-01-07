; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_fill_rx_channels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_fill_rx_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpsw_priv = type { i32, %struct.cpsw_common* }
%struct.cpsw_common = type { i32, i32, %struct.TYPE_2__*, %struct.page_pool** }
%struct.TYPE_2__ = type { i32 }
%struct.page_pool = type { i32 }
%struct.cpsw_meta_xdp = type { i32, i32 }
%struct.page = type { i32 }

@ifup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"allocate rx page err\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@CPSW_XMETA_OFFSET = common dso_local global i32 0, align 4
@CPSW_HEADROOM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"cannot submit page to channel %d rx, error %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"ch %d rx, submitted %d descriptors\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpsw_fill_rx_channels(%struct.cpsw_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpsw_priv*, align 8
  %4 = alloca %struct.cpsw_common*, align 8
  %5 = alloca %struct.cpsw_meta_xdp*, align 8
  %6 = alloca %struct.page_pool*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.cpsw_priv* %0, %struct.cpsw_priv** %3, align 8
  %13 = load %struct.cpsw_priv*, %struct.cpsw_priv** %3, align 8
  %14 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %13, i32 0, i32 1
  %15 = load %struct.cpsw_common*, %struct.cpsw_common** %14, align 8
  store %struct.cpsw_common* %15, %struct.cpsw_common** %4, align 8
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %108, %1
  %17 = load i32, i32* %9, align 4
  %18 = load %struct.cpsw_common*, %struct.cpsw_common** %4, align 8
  %19 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %111

22:                                               ; preds = %16
  %23 = load %struct.cpsw_common*, %struct.cpsw_common** %4, align 8
  %24 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %23, i32 0, i32 3
  %25 = load %struct.page_pool**, %struct.page_pool*** %24, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.page_pool*, %struct.page_pool** %25, i64 %27
  %29 = load %struct.page_pool*, %struct.page_pool** %28, align 8
  store %struct.page_pool* %29, %struct.page_pool** %6, align 8
  %30 = load %struct.cpsw_common*, %struct.cpsw_common** %4, align 8
  %31 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @cpdma_chan_get_rx_buf_num(i32 %37)
  store i32 %38, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %39

39:                                               ; preds = %99, %22
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %102

43:                                               ; preds = %39
  %44 = load %struct.page_pool*, %struct.page_pool** %6, align 8
  %45 = call %struct.page* @page_pool_dev_alloc_pages(%struct.page_pool* %44)
  store %struct.page* %45, %struct.page** %7, align 8
  %46 = load %struct.page*, %struct.page** %7, align 8
  %47 = icmp ne %struct.page* %46, null
  br i1 %47, label %54, label %48

48:                                               ; preds = %43
  %49 = load %struct.cpsw_priv*, %struct.cpsw_priv** %3, align 8
  %50 = load i32, i32* @ifup, align 4
  %51 = call i32 (%struct.cpsw_priv*, i32, i8*, ...) @cpsw_err(%struct.cpsw_priv* %49, i32 %50, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %112

54:                                               ; preds = %43
  %55 = load %struct.page*, %struct.page** %7, align 8
  %56 = call %struct.cpsw_meta_xdp* @page_address(%struct.page* %55)
  %57 = load i32, i32* @CPSW_XMETA_OFFSET, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.cpsw_meta_xdp, %struct.cpsw_meta_xdp* %56, i64 %58
  store %struct.cpsw_meta_xdp* %59, %struct.cpsw_meta_xdp** %5, align 8
  %60 = load %struct.cpsw_priv*, %struct.cpsw_priv** %3, align 8
  %61 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.cpsw_meta_xdp*, %struct.cpsw_meta_xdp** %5, align 8
  %64 = getelementptr inbounds %struct.cpsw_meta_xdp, %struct.cpsw_meta_xdp* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.cpsw_meta_xdp*, %struct.cpsw_meta_xdp** %5, align 8
  %67 = getelementptr inbounds %struct.cpsw_meta_xdp, %struct.cpsw_meta_xdp* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  %68 = load %struct.page*, %struct.page** %7, align 8
  %69 = call i64 @page_pool_get_dma_addr(%struct.page* %68)
  %70 = load i64, i64* @CPSW_HEADROOM, align 8
  %71 = add nsw i64 %69, %70
  store i64 %71, i64* %12, align 8
  %72 = load %struct.cpsw_common*, %struct.cpsw_common** %4, align 8
  %73 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %72, i32 0, i32 2
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.page*, %struct.page** %7, align 8
  %81 = load i64, i64* %12, align 8
  %82 = load %struct.cpsw_common*, %struct.cpsw_common** %4, align 8
  %83 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @cpdma_chan_idle_submit_mapped(i32 %79, %struct.page* %80, i64 %81, i32 %84, i32 0)
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* %11, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %54
  %89 = load %struct.cpsw_priv*, %struct.cpsw_priv** %3, align 8
  %90 = load i32, i32* @ifup, align 4
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* %11, align 4
  %93 = call i32 (%struct.cpsw_priv*, i32, i8*, ...) @cpsw_err(%struct.cpsw_priv* %89, i32 %90, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %91, i32 %92)
  %94 = load %struct.page_pool*, %struct.page_pool** %6, align 8
  %95 = load %struct.page*, %struct.page** %7, align 8
  %96 = call i32 @page_pool_recycle_direct(%struct.page_pool* %94, %struct.page* %95)
  %97 = load i32, i32* %11, align 4
  store i32 %97, i32* %2, align 4
  br label %112

98:                                               ; preds = %54
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %10, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %10, align 4
  br label %39

102:                                              ; preds = %39
  %103 = load %struct.cpsw_priv*, %struct.cpsw_priv** %3, align 8
  %104 = load i32, i32* @ifup, align 4
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @cpsw_info(%struct.cpsw_priv* %103, i32 %104, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %102
  %109 = load i32, i32* %9, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %9, align 4
  br label %16

111:                                              ; preds = %16
  store i32 0, i32* %2, align 4
  br label %112

112:                                              ; preds = %111, %88, %48
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local i32 @cpdma_chan_get_rx_buf_num(i32) #1

declare dso_local %struct.page* @page_pool_dev_alloc_pages(%struct.page_pool*) #1

declare dso_local i32 @cpsw_err(%struct.cpsw_priv*, i32, i8*, ...) #1

declare dso_local %struct.cpsw_meta_xdp* @page_address(%struct.page*) #1

declare dso_local i64 @page_pool_get_dma_addr(%struct.page*) #1

declare dso_local i32 @cpdma_chan_idle_submit_mapped(i32, %struct.page*, i64, i32, i32) #1

declare dso_local i32 @page_pool_recycle_direct(%struct.page_pool*, %struct.page*) #1

declare dso_local i32 @cpsw_info(%struct.cpsw_priv*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
