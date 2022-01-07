; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_rx_alloc_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_rx_alloc_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_net_dp = type { i32, i32, i32 }
%struct.page = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to alloc receive page frag\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to map DMA RX buffer\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.nfp_net_dp*, i32*)* @nfp_net_rx_alloc_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @nfp_net_rx_alloc_one(%struct.nfp_net_dp* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.nfp_net_dp*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.page*, align 8
  store %struct.nfp_net_dp* %0, %struct.nfp_net_dp** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %4, align 8
  %9 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %4, align 8
  %14 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i8* @netdev_alloc_frag(i32 %15)
  store i8* %16, i8** %6, align 8
  br label %29

17:                                               ; preds = %2
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.page* @alloc_page(i32 %18)
  store %struct.page* %19, %struct.page** %7, align 8
  %20 = load %struct.page*, %struct.page** %7, align 8
  %21 = icmp ne %struct.page* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load %struct.page*, %struct.page** %7, align 8
  %24 = call i32* @page_address(%struct.page* %23)
  br label %26

25:                                               ; preds = %17
  br label %26

26:                                               ; preds = %25, %22
  %27 = phi i32* [ %24, %22 ], [ null, %25 ]
  %28 = bitcast i32* %27 to i8*
  store i8* %28, i8** %6, align 8
  br label %29

29:                                               ; preds = %26, %12
  %30 = load i8*, i8** %6, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %4, align 8
  %34 = call i32 @nn_dp_warn(%struct.nfp_net_dp* %33, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %3, align 8
  br label %57

35:                                               ; preds = %29
  %36 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %4, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @nfp_net_dma_map_rx(%struct.nfp_net_dp* %36, i8* %37)
  %39 = load i32*, i32** %5, align 8
  store i32 %38, i32* %39, align 4
  %40 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %4, align 8
  %41 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @dma_mapping_error(i32 %42, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %35
  %48 = load i8*, i8** %6, align 8
  %49 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %4, align 8
  %50 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @nfp_net_free_frag(i8* %48, i32 %51)
  %53 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %4, align 8
  %54 = call i32 @nn_dp_warn(%struct.nfp_net_dp* %53, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i8* null, i8** %3, align 8
  br label %57

55:                                               ; preds = %35
  %56 = load i8*, i8** %6, align 8
  store i8* %56, i8** %3, align 8
  br label %57

57:                                               ; preds = %55, %47, %32
  %58 = load i8*, i8** %3, align 8
  ret i8* %58
}

declare dso_local i8* @netdev_alloc_frag(i32) #1

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i32* @page_address(%struct.page*) #1

declare dso_local i32 @nn_dp_warn(%struct.nfp_net_dp*, i8*) #1

declare dso_local i32 @nfp_net_dma_map_rx(%struct.nfp_net_dp*, i8*) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @nfp_net_free_frag(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
