; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_napi_alloc_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_napi_alloc_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_net_dp = type { i32, i32, i32 }
%struct.page = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Failed to map DMA RX buffer\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.nfp_net_dp*, i32*)* @nfp_net_napi_alloc_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @nfp_net_napi_alloc_one(%struct.nfp_net_dp* %0, i32* %1) #0 {
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
  br i1 %11, label %25, label %12

12:                                               ; preds = %2
  %13 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %4, align 8
  %14 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i8* @napi_alloc_frag(i32 %15)
  store i8* %16, i8** %6, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = icmp ne i8* %17, null
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %12
  store i8* null, i8** %3, align 8
  br label %59

24:                                               ; preds = %12
  br label %37

25:                                               ; preds = %2
  %26 = call %struct.page* (...) @dev_alloc_page()
  store %struct.page* %26, %struct.page** %7, align 8
  %27 = load %struct.page*, %struct.page** %7, align 8
  %28 = icmp ne %struct.page* %27, null
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  store i8* null, i8** %3, align 8
  br label %59

34:                                               ; preds = %25
  %35 = load %struct.page*, %struct.page** %7, align 8
  %36 = call i8* @page_address(%struct.page* %35)
  store i8* %36, i8** %6, align 8
  br label %37

37:                                               ; preds = %34, %24
  %38 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %4, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @nfp_net_dma_map_rx(%struct.nfp_net_dp* %38, i8* %39)
  %41 = load i32*, i32** %5, align 8
  store i32 %40, i32* %41, align 4
  %42 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %4, align 8
  %43 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @dma_mapping_error(i32 %44, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %37
  %50 = load i8*, i8** %6, align 8
  %51 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %4, align 8
  %52 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @nfp_net_free_frag(i8* %50, i32 %53)
  %55 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %4, align 8
  %56 = call i32 @nn_dp_warn(%struct.nfp_net_dp* %55, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %3, align 8
  br label %59

57:                                               ; preds = %37
  %58 = load i8*, i8** %6, align 8
  store i8* %58, i8** %3, align 8
  br label %59

59:                                               ; preds = %57, %49, %33, %23
  %60 = load i8*, i8** %3, align 8
  ret i8* %60
}

declare dso_local i8* @napi_alloc_frag(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.page* @dev_alloc_page(...) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i32 @nfp_net_dma_map_rx(%struct.nfp_net_dp*, i8*) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @nfp_net_free_frag(i8*, i32) #1

declare dso_local i32 @nn_dp_warn(%struct.nfp_net_dp*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
