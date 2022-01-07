; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_add_bufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_add_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpaa2_eth_priv = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.dpaa2_eth_channel = type { i32 }
%struct.page = type { i32 }

@DPAA2_ETH_BUFS_PER_CMD = common dso_local global i32 0, align 4
@DPAA2_ETH_RX_BUF_SIZE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@DPAA2_ETH_RX_BUF_RAW_SIZE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpaa2_eth_priv*, %struct.dpaa2_eth_channel*, i32)* @add_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_bufs(%struct.dpaa2_eth_priv* %0, %struct.dpaa2_eth_channel* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dpaa2_eth_priv*, align 8
  %6 = alloca %struct.dpaa2_eth_channel*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.page*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.dpaa2_eth_priv* %0, %struct.dpaa2_eth_priv** %5, align 8
  store %struct.dpaa2_eth_channel* %1, %struct.dpaa2_eth_channel** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %5, align 8
  %17 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.device*, %struct.device** %20, align 8
  store %struct.device* %21, %struct.device** %8, align 8
  %22 = load i32, i32* @DPAA2_ETH_BUFS_PER_CMD, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %9, align 8
  %25 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %10, align 8
  store i32 0, i32* %13, align 4
  br label %26

26:                                               ; preds = %61, %3
  %27 = load i32, i32* %13, align 4
  %28 = load i32, i32* @DPAA2_ETH_BUFS_PER_CMD, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %64

30:                                               ; preds = %26
  %31 = call %struct.page* @dev_alloc_pages(i32 0)
  store %struct.page* %31, %struct.page** %11, align 8
  %32 = load %struct.page*, %struct.page** %11, align 8
  %33 = icmp ne %struct.page* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  br label %90

35:                                               ; preds = %30
  %36 = load %struct.device*, %struct.device** %8, align 8
  %37 = load %struct.page*, %struct.page** %11, align 8
  %38 = load i32, i32* @DPAA2_ETH_RX_BUF_SIZE, align 4
  %39 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %40 = call i32 @dma_map_page(%struct.device* %36, %struct.page* %37, i32 0, i32 %38, i32 %39)
  store i32 %40, i32* %12, align 4
  %41 = load %struct.device*, %struct.device** %8, align 8
  %42 = load i32, i32* %12, align 4
  %43 = call i32 @dma_mapping_error(%struct.device* %41, i32 %42)
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %35
  br label %87

47:                                               ; preds = %35
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %13, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %25, i64 %50
  store i32 %48, i32* %51, align 4
  %52 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %5, align 8
  %53 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = load %struct.page*, %struct.page** %11, align 8
  %56 = load i32, i32* @DPAA2_ETH_RX_BUF_RAW_SIZE, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* @DPAA2_ETH_RX_BUF_SIZE, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @trace_dpaa2_eth_buf_seed(%struct.TYPE_4__* %54, %struct.page* %55, i32 %56, i32 %57, i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %47
  %62 = load i32, i32* %13, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %13, align 4
  br label %26

64:                                               ; preds = %26
  br label %65

65:                                               ; preds = %93, %64
  br label %66

66:                                               ; preds = %76, %65
  %67 = load %struct.dpaa2_eth_channel*, %struct.dpaa2_eth_channel** %6, align 8
  %68 = getelementptr inbounds %struct.dpaa2_eth_channel, %struct.dpaa2_eth_channel* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %13, align 4
  %72 = call i32 @dpaa2_io_service_release(i32 %69, i32 %70, i32* %25, i32 %71)
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* @EBUSY, align 4
  %74 = sub nsw i32 0, %73
  %75 = icmp eq i32 %72, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %66
  %77 = call i32 (...) @cpu_relax()
  br label %66

78:                                               ; preds = %66
  %79 = load i32, i32* %14, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %5, align 8
  %83 = load i32, i32* %13, align 4
  %84 = call i32 @free_bufs(%struct.dpaa2_eth_priv* %82, i32* %25, i32 %83)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %95

85:                                               ; preds = %78
  %86 = load i32, i32* %13, align 4
  store i32 %86, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %95

87:                                               ; preds = %46
  %88 = load %struct.page*, %struct.page** %11, align 8
  %89 = call i32 @__free_pages(%struct.page* %88, i32 0)
  br label %90

90:                                               ; preds = %87, %34
  %91 = load i32, i32* %13, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  br label %65

94:                                               ; preds = %90
  store i32 0, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %95

95:                                               ; preds = %94, %85, %81
  %96 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %96)
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.page* @dev_alloc_pages(i32) #2

declare dso_local i32 @dma_map_page(%struct.device*, %struct.page*, i32, i32, i32) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @dma_mapping_error(%struct.device*, i32) #2

declare dso_local i32 @trace_dpaa2_eth_buf_seed(%struct.TYPE_4__*, %struct.page*, i32, i32, i32, i32) #2

declare dso_local i32 @dpaa2_io_service_release(i32, i32, i32*, i32) #2

declare dso_local i32 @cpu_relax(...) #2

declare dso_local i32 @free_bufs(%struct.dpaa2_eth_priv*, i32*, i32) #2

declare dso_local i32 @__free_pages(%struct.page*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
