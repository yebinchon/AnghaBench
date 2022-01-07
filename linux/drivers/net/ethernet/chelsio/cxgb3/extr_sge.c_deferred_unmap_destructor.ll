; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_sge.c_deferred_unmap_destructor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_sge.c_deferred_unmap_destructor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.skb_shared_info = type { i32, i32* }
%struct.deferred_unmap_info = type { i32, i32* }

@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*)* @deferred_unmap_destructor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @deferred_unmap_destructor(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.skb_shared_info*, align 8
  %6 = alloca %struct.deferred_unmap_info*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.deferred_unmap_info*
  store %struct.deferred_unmap_info* %10, %struct.deferred_unmap_info** %6, align 8
  %11 = load %struct.deferred_unmap_info*, %struct.deferred_unmap_info** %6, align 8
  %12 = getelementptr inbounds %struct.deferred_unmap_info, %struct.deferred_unmap_info* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %4, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %15 = call i64 @skb_tail_pointer(%struct.sk_buff* %14)
  %16 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %17 = call i64 @skb_transport_header(%struct.sk_buff* %16)
  %18 = sub nsw i64 %15, %17
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %1
  %21 = load %struct.deferred_unmap_info*, %struct.deferred_unmap_info** %6, align 8
  %22 = getelementptr inbounds %struct.deferred_unmap_info, %struct.deferred_unmap_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = getelementptr inbounds i32, i32* %24, i32 1
  store i32* %25, i32** %4, align 8
  %26 = load i32, i32* %24, align 4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %28 = call i64 @skb_tail_pointer(%struct.sk_buff* %27)
  %29 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %30 = call i64 @skb_transport_header(%struct.sk_buff* %29)
  %31 = sub nsw i64 %28, %30
  %32 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %33 = call i32 @pci_unmap_single(i32 %23, i32 %26, i64 %31, i32 %32)
  br label %34

34:                                               ; preds = %20, %1
  %35 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %36 = call %struct.skb_shared_info* @skb_shinfo(%struct.sk_buff* %35)
  store %struct.skb_shared_info* %36, %struct.skb_shared_info** %5, align 8
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %59, %34
  %38 = load i32, i32* %3, align 4
  %39 = load %struct.skb_shared_info*, %struct.skb_shared_info** %5, align 8
  %40 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %62

43:                                               ; preds = %37
  %44 = load %struct.deferred_unmap_info*, %struct.deferred_unmap_info** %6, align 8
  %45 = getelementptr inbounds %struct.deferred_unmap_info, %struct.deferred_unmap_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32*, i32** %4, align 8
  %48 = getelementptr inbounds i32, i32* %47, i32 1
  store i32* %48, i32** %4, align 8
  %49 = load i32, i32* %47, align 4
  %50 = load %struct.skb_shared_info*, %struct.skb_shared_info** %5, align 8
  %51 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = call i32 @skb_frag_size(i32* %55)
  %57 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %58 = call i32 @pci_unmap_page(i32 %46, i32 %49, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %43
  %60 = load i32, i32* %3, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %3, align 4
  br label %37

62:                                               ; preds = %37
  ret void
}

declare dso_local i64 @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local i64 @skb_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i64, i32) #1

declare dso_local %struct.skb_shared_info* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @pci_unmap_page(i32, i32, i32, i32) #1

declare dso_local i32 @skb_frag_size(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
