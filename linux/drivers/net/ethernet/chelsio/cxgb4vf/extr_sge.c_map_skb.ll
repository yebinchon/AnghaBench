; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_sge.c_map_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_sge.c_map_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.sk_buff = type { i32 }
%struct.skb_shared_info = type { i64, i32* }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.sk_buff*, i32*)* @map_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_skb(%struct.device* %0, %struct.sk_buff* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.skb_shared_info*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = call i32 @skb_headlen(%struct.sk_buff* %15)
  %17 = load i32, i32* @DMA_TO_DEVICE, align 4
  %18 = call i32 @dma_map_single(%struct.device* %11, i32 %14, i32 %16, i32 %17)
  %19 = load i32*, i32** %7, align 8
  store i32 %18, i32* %19, align 4
  %20 = load %struct.device*, %struct.device** %5, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @dma_mapping_error(%struct.device* %20, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  br label %89

26:                                               ; preds = %3
  %27 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %28 = call %struct.skb_shared_info* @skb_shinfo(%struct.sk_buff* %27)
  store %struct.skb_shared_info* %28, %struct.skb_shared_info** %10, align 8
  %29 = load %struct.skb_shared_info*, %struct.skb_shared_info** %10, align 8
  %30 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.skb_shared_info*, %struct.skb_shared_info** %10, align 8
  %33 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  store i32* %35, i32** %9, align 8
  %36 = load %struct.skb_shared_info*, %struct.skb_shared_info** %10, align 8
  %37 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %8, align 8
  br label %39

39:                                               ; preds = %59, %26
  %40 = load i32*, i32** %8, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = icmp ult i32* %40, %41
  br i1 %42, label %43, label %62

43:                                               ; preds = %39
  %44 = load %struct.device*, %struct.device** %5, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = call i32 @skb_frag_size(i32* %46)
  %48 = load i32, i32* @DMA_TO_DEVICE, align 4
  %49 = call i32 @skb_frag_dma_map(%struct.device* %44, i32* %45, i32 0, i32 %47, i32 %48)
  %50 = load i32*, i32** %7, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %51, i32** %7, align 8
  store i32 %49, i32* %51, align 4
  %52 = load %struct.device*, %struct.device** %5, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @dma_mapping_error(%struct.device* %52, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %43
  br label %63

58:                                               ; preds = %43
  br label %59

59:                                               ; preds = %58
  %60 = load i32*, i32** %8, align 8
  %61 = getelementptr inbounds i32, i32* %60, i32 1
  store i32* %61, i32** %8, align 8
  br label %39

62:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %92

63:                                               ; preds = %57
  br label %64

64:                                               ; preds = %71, %63
  %65 = load i32*, i32** %8, align 8
  %66 = getelementptr inbounds i32, i32* %65, i32 -1
  store i32* %66, i32** %8, align 8
  %67 = load %struct.skb_shared_info*, %struct.skb_shared_info** %10, align 8
  %68 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = icmp ugt i32* %65, %69
  br i1 %70, label %71, label %80

71:                                               ; preds = %64
  %72 = load %struct.device*, %struct.device** %5, align 8
  %73 = load i32*, i32** %7, align 8
  %74 = getelementptr inbounds i32, i32* %73, i32 -1
  store i32* %74, i32** %7, align 8
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %8, align 8
  %77 = call i32 @skb_frag_size(i32* %76)
  %78 = load i32, i32* @DMA_TO_DEVICE, align 4
  %79 = call i32 @dma_unmap_page(%struct.device* %72, i32 %75, i32 %77, i32 %78)
  br label %64

80:                                               ; preds = %64
  %81 = load %struct.device*, %struct.device** %5, align 8
  %82 = load i32*, i32** %7, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 -1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %86 = call i32 @skb_headlen(%struct.sk_buff* %85)
  %87 = load i32, i32* @DMA_TO_DEVICE, align 4
  %88 = call i32 @dma_unmap_single(%struct.device* %81, i32 %84, i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %80, %25
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %89, %62
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i32 @dma_map_single(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i32) #1

declare dso_local %struct.skb_shared_info* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @skb_frag_dma_map(%struct.device*, i32*, i32, i32, i32) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local i32 @dma_unmap_page(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
