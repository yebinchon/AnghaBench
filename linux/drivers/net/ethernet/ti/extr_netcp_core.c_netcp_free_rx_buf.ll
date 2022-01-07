; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_netcp_core.c_netcp_free_rx_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_netcp_core.c_netcp_free_rx_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netcp_intf = type { i32, i32, i32, i32* }
%struct.knav_dma_desc = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"failed to unmap Rx desc\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"NULL orig_buff in desc\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"NULL bufptr in desc\0A\00", align 1
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netcp_intf*, i32)* @netcp_free_rx_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netcp_free_rx_buf(%struct.netcp_intf* %0, i32 %1) #0 {
  %3 = alloca %struct.netcp_intf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.knav_dma_desc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.netcp_intf* %0, %struct.netcp_intf** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %10

10:                                               ; preds = %104, %67, %50, %33, %2
  %11 = load %struct.netcp_intf*, %struct.netcp_intf** %3, align 8
  %12 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %11, i32 0, i32 3
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @knav_queue_pop(i32 %17, i32* %7)
  store i32 %18, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %110

20:                                               ; preds = %10
  %21 = load %struct.netcp_intf*, %struct.netcp_intf** %3, align 8
  %22 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call %struct.knav_dma_desc* @knav_pool_desc_unmap(i32 %23, i32 %24, i32 %25)
  store %struct.knav_dma_desc* %26, %struct.knav_dma_desc** %5, align 8
  %27 = load %struct.knav_dma_desc*, %struct.knav_dma_desc** %5, align 8
  %28 = icmp ne %struct.knav_dma_desc* %27, null
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %20
  %34 = load %struct.netcp_intf*, %struct.netcp_intf** %3, align 8
  %35 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %10

38:                                               ; preds = %20
  %39 = load %struct.knav_dma_desc*, %struct.knav_dma_desc** %5, align 8
  %40 = call i32 @get_org_pkt_info(i32* %8, i32* %6, %struct.knav_dma_desc* %39)
  %41 = load %struct.knav_dma_desc*, %struct.knav_dma_desc** %5, align 8
  %42 = call i64 @GET_SW_DATA0(%struct.knav_dma_desc* %41)
  %43 = inttoptr i64 %42 to i8*
  store i8* %43, i8** %9, align 8
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %38
  %51 = load %struct.netcp_intf*, %struct.netcp_intf** %3, align 8
  %52 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @dev_err(i32 %53, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %55 = load %struct.netcp_intf*, %struct.netcp_intf** %3, align 8
  %56 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.knav_dma_desc*, %struct.knav_dma_desc** %5, align 8
  %59 = call i32 @knav_pool_desc_put(i32 %57, %struct.knav_dma_desc* %58)
  br label %10

60:                                               ; preds = %38
  %61 = load i8*, i8** %9, align 8
  %62 = icmp ne i8* %61, null
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = call i64 @unlikely(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %60
  %68 = load %struct.netcp_intf*, %struct.netcp_intf** %3, align 8
  %69 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @dev_err(i32 %70, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %72 = load %struct.netcp_intf*, %struct.netcp_intf** %3, align 8
  %73 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.knav_dma_desc*, %struct.knav_dma_desc** %5, align 8
  %76 = call i32 @knav_pool_desc_put(i32 %74, %struct.knav_dma_desc* %75)
  br label %10

77:                                               ; preds = %60
  %78 = load i32, i32* %4, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %94

80:                                               ; preds = %77
  %81 = load %struct.netcp_intf*, %struct.netcp_intf** %3, align 8
  %82 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %87 = call i32 @dma_unmap_single(i32 %83, i32 %84, i32 %85, i32 %86)
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @PAGE_SIZE, align 4
  %90 = icmp ule i32 %88, %89
  %91 = zext i1 %90 to i32
  %92 = load i8*, i8** %9, align 8
  %93 = call i32 @netcp_frag_free(i32 %91, i8* %92)
  br label %104

94:                                               ; preds = %77
  %95 = load %struct.netcp_intf*, %struct.netcp_intf** %3, align 8
  %96 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %101 = call i32 @dma_unmap_page(i32 %97, i32 %98, i32 %99, i32 %100)
  %102 = load i8*, i8** %9, align 8
  %103 = call i32 @__free_page(i8* %102)
  br label %104

104:                                              ; preds = %94, %80
  %105 = load %struct.netcp_intf*, %struct.netcp_intf** %3, align 8
  %106 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.knav_dma_desc*, %struct.knav_dma_desc** %5, align 8
  %109 = call i32 @knav_pool_desc_put(i32 %107, %struct.knav_dma_desc* %108)
  br label %10

110:                                              ; preds = %10
  ret void
}

declare dso_local i32 @knav_queue_pop(i32, i32*) #1

declare dso_local %struct.knav_dma_desc* @knav_pool_desc_unmap(i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @get_org_pkt_info(i32*, i32*, %struct.knav_dma_desc*) #1

declare dso_local i64 @GET_SW_DATA0(%struct.knav_dma_desc*) #1

declare dso_local i32 @knav_pool_desc_put(i32, %struct.knav_dma_desc*) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @netcp_frag_free(i32, i8*) #1

declare dso_local i32 @dma_unmap_page(i32, i32, i32, i32) #1

declare dso_local i32 @__free_page(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
