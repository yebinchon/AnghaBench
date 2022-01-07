; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aurora/extr_nb8800.c_nb8800_alloc_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aurora/extr_nb8800.c_nb8800_alloc_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.nb8800_priv = type { %struct.nb8800_rx_buf*, %struct.nb8800_rx_desc* }
%struct.nb8800_rx_buf = type { i64, %struct.page* }
%struct.page = type { i32 }
%struct.nb8800_rx_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@RX_BUF_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32)* @nb8800_alloc_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nb8800_alloc_rx(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nb8800_priv*, align 8
  %9 = alloca %struct.nb8800_rx_desc*, align 8
  %10 = alloca %struct.nb8800_rx_buf*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.page*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = call %struct.nb8800_priv* @netdev_priv(%struct.net_device* %16)
  store %struct.nb8800_priv* %17, %struct.nb8800_priv** %8, align 8
  %18 = load %struct.nb8800_priv*, %struct.nb8800_priv** %8, align 8
  %19 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %18, i32 0, i32 1
  %20 = load %struct.nb8800_rx_desc*, %struct.nb8800_rx_desc** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.nb8800_rx_desc, %struct.nb8800_rx_desc* %20, i64 %22
  store %struct.nb8800_rx_desc* %23, %struct.nb8800_rx_desc** %9, align 8
  %24 = load %struct.nb8800_priv*, %struct.nb8800_priv** %8, align 8
  %25 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %24, i32 0, i32 0
  %26 = load %struct.nb8800_rx_buf*, %struct.nb8800_rx_buf** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.nb8800_rx_buf, %struct.nb8800_rx_buf* %26, i64 %28
  store %struct.nb8800_rx_buf* %29, %struct.nb8800_rx_buf** %10, align 8
  %30 = load i32, i32* @RX_BUF_SIZE, align 4
  %31 = call i32 @L1_CACHE_ALIGN(i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %3
  %35 = load i32, i32* %11, align 4
  %36 = call i8* @napi_alloc_frag(i32 %35)
  br label %40

37:                                               ; preds = %3
  %38 = load i32, i32* %11, align 4
  %39 = call i8* @netdev_alloc_frag(i32 %38)
  br label %40

40:                                               ; preds = %37, %34
  %41 = phi i8* [ %36, %34 ], [ %39, %37 ]
  store i8* %41, i8** %15, align 8
  %42 = load i8*, i8** %15, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %84

47:                                               ; preds = %40
  %48 = load i8*, i8** %15, align 8
  %49 = call %struct.page* @virt_to_head_page(i8* %48)
  store %struct.page* %49, %struct.page** %13, align 8
  %50 = load i8*, i8** %15, align 8
  %51 = load %struct.page*, %struct.page** %13, align 8
  %52 = call i8* @page_address(%struct.page* %51)
  %53 = ptrtoint i8* %50 to i64
  %54 = ptrtoint i8* %52 to i64
  %55 = sub i64 %53, %54
  store i64 %55, i64* %14, align 8
  %56 = load %struct.net_device*, %struct.net_device** %5, align 8
  %57 = getelementptr inbounds %struct.net_device, %struct.net_device* %56, i32 0, i32 0
  %58 = load %struct.page*, %struct.page** %13, align 8
  %59 = load i64, i64* %14, align 8
  %60 = load i32, i32* @RX_BUF_SIZE, align 4
  %61 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %62 = call i32 @dma_map_page(i32* %57, %struct.page* %58, i64 %59, i32 %60, i32 %61)
  store i32 %62, i32* %12, align 4
  %63 = load %struct.net_device*, %struct.net_device** %5, align 8
  %64 = getelementptr inbounds %struct.net_device, %struct.net_device* %63, i32 0, i32 0
  %65 = load i32, i32* %12, align 4
  %66 = call i64 @dma_mapping_error(i32* %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %47
  %69 = load i8*, i8** %15, align 8
  %70 = call i32 @skb_free_frag(i8* %69)
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %4, align 4
  br label %84

73:                                               ; preds = %47
  %74 = load %struct.page*, %struct.page** %13, align 8
  %75 = load %struct.nb8800_rx_buf*, %struct.nb8800_rx_buf** %10, align 8
  %76 = getelementptr inbounds %struct.nb8800_rx_buf, %struct.nb8800_rx_buf* %75, i32 0, i32 1
  store %struct.page* %74, %struct.page** %76, align 8
  %77 = load i64, i64* %14, align 8
  %78 = load %struct.nb8800_rx_buf*, %struct.nb8800_rx_buf** %10, align 8
  %79 = getelementptr inbounds %struct.nb8800_rx_buf, %struct.nb8800_rx_buf* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  %80 = load i32, i32* %12, align 4
  %81 = load %struct.nb8800_rx_desc*, %struct.nb8800_rx_desc** %9, align 8
  %82 = getelementptr inbounds %struct.nb8800_rx_desc, %struct.nb8800_rx_desc* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  store i32 %80, i32* %83, align 4
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %73, %68, %44
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local %struct.nb8800_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @L1_CACHE_ALIGN(i32) #1

declare dso_local i8* @napi_alloc_frag(i32) #1

declare dso_local i8* @netdev_alloc_frag(i32) #1

declare dso_local %struct.page* @virt_to_head_page(i8*) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i32 @dma_map_page(i32*, %struct.page*, i64, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i32) #1

declare dso_local i32 @skb_free_frag(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
