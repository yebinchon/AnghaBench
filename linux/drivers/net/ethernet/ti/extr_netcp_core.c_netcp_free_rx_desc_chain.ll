; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_netcp_core.c_netcp_free_rx_desc_chain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_netcp_core.c_netcp_free_rx_desc_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netcp_intf = type { i32, i32, i32 }
%struct.knav_dma_desc = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"failed to unmap Rx desc\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netcp_intf*, %struct.knav_dma_desc*)* @netcp_free_rx_desc_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netcp_free_rx_desc_chain(%struct.netcp_intf* %0, %struct.knav_dma_desc* %1) #0 {
  %3 = alloca %struct.netcp_intf*, align 8
  %4 = alloca %struct.knav_dma_desc*, align 8
  %5 = alloca %struct.knav_dma_desc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.netcp_intf* %0, %struct.netcp_intf** %3, align 8
  store %struct.knav_dma_desc* %1, %struct.knav_dma_desc** %4, align 8
  store i32 4, i32* %9, align 4
  %12 = load %struct.knav_dma_desc*, %struct.knav_dma_desc** %4, align 8
  %13 = getelementptr inbounds %struct.knav_dma_desc, %struct.knav_dma_desc* %12, i32 0, i32 0
  %14 = call i32 @get_words(i64* %6, i32 1, i32* %13)
  br label %15

15:                                               ; preds = %36, %2
  %16 = load i64, i64* %6, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %59

18:                                               ; preds = %15
  %19 = load %struct.netcp_intf*, %struct.netcp_intf** %3, align 8
  %20 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i64, i64* %6, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call %struct.knav_dma_desc* @knav_pool_desc_unmap(i32 %21, i64 %22, i32 %23)
  store %struct.knav_dma_desc* %24, %struct.knav_dma_desc** %5, align 8
  %25 = load %struct.knav_dma_desc*, %struct.knav_dma_desc** %5, align 8
  %26 = icmp ne %struct.knav_dma_desc* %25, null
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %18
  %32 = load %struct.netcp_intf*, %struct.netcp_intf** %3, align 8
  %33 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @dev_err(i32 %34, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %59

36:                                               ; preds = %18
  %37 = load %struct.knav_dma_desc*, %struct.knav_dma_desc** %5, align 8
  %38 = call i32 @get_pkt_info(i64* %7, i32* %11, i64* %6, %struct.knav_dma_desc* %37)
  %39 = load %struct.knav_dma_desc*, %struct.knav_dma_desc** %5, align 8
  %40 = call i64 @GET_SW_DATA0(%struct.knav_dma_desc* %39)
  %41 = inttoptr i64 %40 to i8*
  store i8* %41, i8** %10, align 8
  %42 = load %struct.knav_dma_desc*, %struct.knav_dma_desc** %4, align 8
  %43 = call i64 @GET_SW_DATA1(%struct.knav_dma_desc* %42)
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %8, align 4
  %45 = load %struct.netcp_intf*, %struct.netcp_intf** %3, align 8
  %46 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i64, i64* %7, align 8
  %49 = load i32, i32* @PAGE_SIZE, align 4
  %50 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %51 = call i32 @dma_unmap_page(i32 %47, i64 %48, i32 %49, i32 %50)
  %52 = load i8*, i8** %10, align 8
  %53 = call i32 @__free_page(i8* %52)
  %54 = load %struct.netcp_intf*, %struct.netcp_intf** %3, align 8
  %55 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.knav_dma_desc*, %struct.knav_dma_desc** %4, align 8
  %58 = call i32 @knav_pool_desc_put(i32 %56, %struct.knav_dma_desc* %57)
  br label %15

59:                                               ; preds = %31, %15
  %60 = load %struct.knav_dma_desc*, %struct.knav_dma_desc** %4, align 8
  %61 = call i64 @GET_SW_DATA0(%struct.knav_dma_desc* %60)
  %62 = inttoptr i64 %61 to i8*
  store i8* %62, i8** %10, align 8
  %63 = load %struct.knav_dma_desc*, %struct.knav_dma_desc** %4, align 8
  %64 = call i64 @GET_SW_DATA1(%struct.knav_dma_desc* %63)
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %8, align 4
  %66 = load i8*, i8** %10, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %75

68:                                               ; preds = %59
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @PAGE_SIZE, align 4
  %71 = icmp ule i32 %69, %70
  %72 = zext i1 %71 to i32
  %73 = load i8*, i8** %10, align 8
  %74 = call i32 @netcp_frag_free(i32 %72, i8* %73)
  br label %75

75:                                               ; preds = %68, %59
  %76 = load %struct.netcp_intf*, %struct.netcp_intf** %3, align 8
  %77 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.knav_dma_desc*, %struct.knav_dma_desc** %4, align 8
  %80 = call i32 @knav_pool_desc_put(i32 %78, %struct.knav_dma_desc* %79)
  ret void
}

declare dso_local i32 @get_words(i64*, i32, i32*) #1

declare dso_local %struct.knav_dma_desc* @knav_pool_desc_unmap(i32, i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @get_pkt_info(i64*, i32*, i64*, %struct.knav_dma_desc*) #1

declare dso_local i64 @GET_SW_DATA0(%struct.knav_dma_desc*) #1

declare dso_local i64 @GET_SW_DATA1(%struct.knav_dma_desc*) #1

declare dso_local i32 @dma_unmap_page(i32, i64, i32, i32) #1

declare dso_local i32 @__free_page(i8*) #1

declare dso_local i32 @knav_pool_desc_put(i32, %struct.knav_dma_desc*) #1

declare dso_local i32 @netcp_frag_free(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
