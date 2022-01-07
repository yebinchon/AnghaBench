; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_ring.c_aq_ring_tx_clean.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_ring.c_aq_ring_tx_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_ring_s = type { i64, i64, %struct.aq_ring_buff_s*, i32 }
%struct.aq_ring_buff_s = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.device = type { i32 }

@AQ_CFG_TX_CLEAN_BUDGET = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aq_ring_tx_clean(%struct.aq_ring_s* %0) #0 {
  %2 = alloca %struct.aq_ring_s*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.aq_ring_buff_s*, align 8
  store %struct.aq_ring_s* %0, %struct.aq_ring_s** %2, align 8
  %6 = load %struct.aq_ring_s*, %struct.aq_ring_s** %2, align 8
  %7 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.device* @aq_nic_get_dev(i32 %8)
  store %struct.device* %9, %struct.device** %3, align 8
  %10 = load i32, i32* @AQ_CFG_TX_CLEAN_BUDGET, align 4
  store i32 %10, i32* %4, align 4
  br label %11

11:                                               ; preds = %110, %1
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %11
  %15 = load %struct.aq_ring_s*, %struct.aq_ring_s** %2, align 8
  %16 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.aq_ring_s*, %struct.aq_ring_s** %2, align 8
  %19 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %17, %20
  br label %22

22:                                               ; preds = %14, %11
  %23 = phi i1 [ false, %11 ], [ %21, %14 ]
  br i1 %23, label %24, label %113

24:                                               ; preds = %22
  %25 = load %struct.aq_ring_s*, %struct.aq_ring_s** %2, align 8
  %26 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %25, i32 0, i32 2
  %27 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %26, align 8
  %28 = load %struct.aq_ring_s*, %struct.aq_ring_s** %2, align 8
  %29 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %27, i64 %30
  store %struct.aq_ring_buff_s* %31, %struct.aq_ring_buff_s** %5, align 8
  %32 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %5, align 8
  %33 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @likely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %87

37:                                               ; preds = %24
  %38 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %5, align 8
  %39 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %76

43:                                               ; preds = %37
  %44 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %5, align 8
  %45 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %66, label %48

48:                                               ; preds = %43
  %49 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %5, align 8
  %50 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 65535
  br i1 %52, label %53, label %66

53:                                               ; preds = %48
  %54 = load %struct.aq_ring_s*, %struct.aq_ring_s** %2, align 8
  %55 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %5, align 8
  %58 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.aq_ring_s*, %struct.aq_ring_s** %2, align 8
  %61 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @aq_ring_dx_in_range(i64 %56, i32 %59, i64 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %53
  br label %113

66:                                               ; preds = %53, %48, %43
  %67 = load %struct.device*, %struct.device** %3, align 8
  %68 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %5, align 8
  %69 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %5, align 8
  %72 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @DMA_TO_DEVICE, align 4
  %75 = call i32 @dma_unmap_single(%struct.device* %67, i32 %70, i32 %73, i32 %74)
  br label %86

76:                                               ; preds = %37
  %77 = load %struct.device*, %struct.device** %3, align 8
  %78 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %5, align 8
  %79 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %5, align 8
  %82 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @DMA_TO_DEVICE, align 4
  %85 = call i32 @dma_unmap_page(%struct.device* %77, i32 %80, i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %76, %66
  br label %87

87:                                               ; preds = %86, %24
  %88 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %5, align 8
  %89 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @unlikely(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %87
  %94 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %5, align 8
  %95 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @dev_kfree_skb_any(i32 %96)
  br label %98

98:                                               ; preds = %93, %87
  %99 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %5, align 8
  %100 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %99, i32 0, i32 1
  store i32 0, i32* %100, align 4
  %101 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %5, align 8
  %102 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %101, i32 0, i32 0
  store i32 65535, i32* %102, align 4
  %103 = load %struct.aq_ring_s*, %struct.aq_ring_s** %2, align 8
  %104 = load %struct.aq_ring_s*, %struct.aq_ring_s** %2, align 8
  %105 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = call i64 @aq_ring_next_dx(%struct.aq_ring_s* %103, i64 %106)
  %108 = load %struct.aq_ring_s*, %struct.aq_ring_s** %2, align 8
  %109 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %108, i32 0, i32 0
  store i64 %107, i64* %109, align 8
  br label %110

110:                                              ; preds = %98
  %111 = load i32, i32* %4, align 4
  %112 = add i32 %111, -1
  store i32 %112, i32* %4, align 4
  br label %11

113:                                              ; preds = %65, %22
  %114 = load i32, i32* %4, align 4
  %115 = icmp ne i32 %114, 0
  %116 = xor i1 %115, true
  %117 = xor i1 %116, true
  %118 = zext i1 %117 to i32
  ret i32 %118
}

declare dso_local %struct.device* @aq_nic_get_dev(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @aq_ring_dx_in_range(i64, i32, i64) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_page(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(i32) #1

declare dso_local i64 @aq_ring_next_dx(%struct.aq_ring_s*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
