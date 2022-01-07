; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_dma.c_setup_rx_descbuffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_dma.c_setup_rx_descbuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_dmaring = type { i32, i32 }
%struct.b43legacy_dmadesc32 = type { i32 }
%struct.b43legacy_dmadesc_meta = type { i32, %struct.sk_buff* }
%struct.sk_buff = type { i64 }
%struct.b43legacy_rxhdr_fw3 = type { i64 }
%struct.b43legacy_hwtxstatus = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43legacy_dmaring*, %struct.b43legacy_dmadesc32*, %struct.b43legacy_dmadesc_meta*, i32)* @setup_rx_descbuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_rx_descbuffer(%struct.b43legacy_dmaring* %0, %struct.b43legacy_dmadesc32* %1, %struct.b43legacy_dmadesc_meta* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.b43legacy_dmaring*, align 8
  %7 = alloca %struct.b43legacy_dmadesc32*, align 8
  %8 = alloca %struct.b43legacy_dmadesc_meta*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.b43legacy_rxhdr_fw3*, align 8
  %11 = alloca %struct.b43legacy_hwtxstatus*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.sk_buff*, align 8
  store %struct.b43legacy_dmaring* %0, %struct.b43legacy_dmaring** %6, align 8
  store %struct.b43legacy_dmadesc32* %1, %struct.b43legacy_dmadesc32** %7, align 8
  store %struct.b43legacy_dmadesc_meta* %2, %struct.b43legacy_dmadesc_meta** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %6, align 8
  %15 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @B43legacy_WARN_ON(i32 %16)
  %18 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %6, align 8
  %19 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call %struct.sk_buff* @__dev_alloc_skb(i32 %20, i32 %21)
  store %struct.sk_buff* %22, %struct.sk_buff** %13, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %24 = icmp ne %struct.sk_buff* %23, null
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %4
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %116

32:                                               ; preds = %4
  %33 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %6, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %6, align 8
  %38 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @map_descbuffer(%struct.b43legacy_dmaring* %33, i64 %36, i32 %39, i32 0)
  store i32 %40, i32* %12, align 4
  %41 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %6, align 8
  %42 = load i32, i32* %12, align 4
  %43 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %6, align 8
  %44 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @b43legacy_dma_mapping_error(%struct.b43legacy_dmaring* %41, i32 %42, i32 %45, i32 0)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %77

48:                                               ; preds = %32
  %49 = load i32, i32* @GFP_DMA, align 4
  %50 = load i32, i32* %9, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %9, align 4
  %52 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %53 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %52)
  %54 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %6, align 8
  %55 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call %struct.sk_buff* @__dev_alloc_skb(i32 %56, i32 %57)
  store %struct.sk_buff* %58, %struct.sk_buff** %13, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %60 = icmp ne %struct.sk_buff* %59, null
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = call i64 @unlikely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %48
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %5, align 4
  br label %116

68:                                               ; preds = %48
  %69 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %6, align 8
  %70 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %71 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %6, align 8
  %74 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @map_descbuffer(%struct.b43legacy_dmaring* %69, i64 %72, i32 %75, i32 0)
  store i32 %76, i32* %12, align 4
  br label %77

77:                                               ; preds = %68, %32
  %78 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %6, align 8
  %79 = load i32, i32* %12, align 4
  %80 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %6, align 8
  %81 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @b43legacy_dma_mapping_error(%struct.b43legacy_dmaring* %78, i32 %79, i32 %82, i32 0)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %77
  %86 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %87 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %86)
  %88 = load i32, i32* @EIO, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %5, align 4
  br label %116

90:                                               ; preds = %77
  %91 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %92 = load %struct.b43legacy_dmadesc_meta*, %struct.b43legacy_dmadesc_meta** %8, align 8
  %93 = getelementptr inbounds %struct.b43legacy_dmadesc_meta, %struct.b43legacy_dmadesc_meta* %92, i32 0, i32 1
  store %struct.sk_buff* %91, %struct.sk_buff** %93, align 8
  %94 = load i32, i32* %12, align 4
  %95 = load %struct.b43legacy_dmadesc_meta*, %struct.b43legacy_dmadesc_meta** %8, align 8
  %96 = getelementptr inbounds %struct.b43legacy_dmadesc_meta, %struct.b43legacy_dmadesc_meta* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  %97 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %6, align 8
  %98 = load %struct.b43legacy_dmadesc32*, %struct.b43legacy_dmadesc32** %7, align 8
  %99 = load i32, i32* %12, align 4
  %100 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %6, align 8
  %101 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @op32_fill_descriptor(%struct.b43legacy_dmaring* %97, %struct.b43legacy_dmadesc32* %98, i32 %99, i32 %102, i32 0, i32 0, i32 0)
  %104 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %105 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = inttoptr i64 %106 to %struct.b43legacy_rxhdr_fw3*
  store %struct.b43legacy_rxhdr_fw3* %107, %struct.b43legacy_rxhdr_fw3** %10, align 8
  %108 = load %struct.b43legacy_rxhdr_fw3*, %struct.b43legacy_rxhdr_fw3** %10, align 8
  %109 = getelementptr inbounds %struct.b43legacy_rxhdr_fw3, %struct.b43legacy_rxhdr_fw3* %108, i32 0, i32 0
  store i64 0, i64* %109, align 8
  %110 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %111 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = inttoptr i64 %112 to %struct.b43legacy_hwtxstatus*
  store %struct.b43legacy_hwtxstatus* %113, %struct.b43legacy_hwtxstatus** %11, align 8
  %114 = load %struct.b43legacy_hwtxstatus*, %struct.b43legacy_hwtxstatus** %11, align 8
  %115 = getelementptr inbounds %struct.b43legacy_hwtxstatus, %struct.b43legacy_hwtxstatus* %114, i32 0, i32 0
  store i64 0, i64* %115, align 8
  store i32 0, i32* %5, align 4
  br label %116

116:                                              ; preds = %90, %85, %65, %29
  %117 = load i32, i32* %5, align 4
  ret i32 %117
}

declare dso_local i32 @B43legacy_WARN_ON(i32) #1

declare dso_local %struct.sk_buff* @__dev_alloc_skb(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @map_descbuffer(%struct.b43legacy_dmaring*, i64, i32, i32) #1

declare dso_local i64 @b43legacy_dma_mapping_error(%struct.b43legacy_dmaring*, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @op32_fill_descriptor(%struct.b43legacy_dmaring*, %struct.b43legacy_dmadesc32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
