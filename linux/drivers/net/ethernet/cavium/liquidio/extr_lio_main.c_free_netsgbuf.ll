; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_main.c_free_netsgbuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_main.c_free_netsgbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octnet_buf_free_info = type { %struct.octnic_gather*, %struct.lio*, %struct.sk_buff* }
%struct.octnic_gather = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32* }
%struct.lio = type { i32*, i32*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.sk_buff = type { i64, i64 }
%struct.TYPE_6__ = type { i32, i32* }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @free_netsgbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_netsgbuf(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.octnet_buf_free_info*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.lio*, align 8
  %6 = alloca %struct.octnic_gather*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = bitcast i8* %11 to %struct.octnet_buf_free_info*
  store %struct.octnet_buf_free_info* %12, %struct.octnet_buf_free_info** %3, align 8
  %13 = load %struct.octnet_buf_free_info*, %struct.octnet_buf_free_info** %3, align 8
  %14 = getelementptr inbounds %struct.octnet_buf_free_info, %struct.octnet_buf_free_info* %13, i32 0, i32 2
  %15 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  store %struct.sk_buff* %15, %struct.sk_buff** %4, align 8
  %16 = load %struct.octnet_buf_free_info*, %struct.octnet_buf_free_info** %3, align 8
  %17 = getelementptr inbounds %struct.octnet_buf_free_info, %struct.octnet_buf_free_info* %16, i32 0, i32 1
  %18 = load %struct.lio*, %struct.lio** %17, align 8
  store %struct.lio* %18, %struct.lio** %5, align 8
  %19 = load %struct.octnet_buf_free_info*, %struct.octnet_buf_free_info** %3, align 8
  %20 = getelementptr inbounds %struct.octnet_buf_free_info, %struct.octnet_buf_free_info* %19, i32 0, i32 0
  %21 = load %struct.octnic_gather*, %struct.octnic_gather** %20, align 8
  store %struct.octnic_gather* %21, %struct.octnic_gather** %6, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %22)
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %8, align 4
  %26 = load %struct.lio*, %struct.lio** %5, align 8
  %27 = getelementptr inbounds %struct.lio, %struct.lio* %26, i32 0, i32 2
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load %struct.octnic_gather*, %struct.octnic_gather** %6, align 8
  %33 = getelementptr inbounds %struct.octnic_gather, %struct.octnic_gather* %32, i32 0, i32 1
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i64 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = sub nsw i64 %42, %45
  %47 = load i32, i32* @DMA_TO_DEVICE, align 4
  %48 = call i32 @dma_unmap_single(i32* %31, i32 %39, i64 %46, i32 %47)
  store i32 1, i32* %7, align 4
  br label %49

49:                                               ; preds = %53, %1
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %8, align 4
  %52 = icmp ne i32 %50, 0
  br i1 %52, label %53, label %87

53:                                               ; preds = %49
  %54 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %55 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %54)
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sub nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  store i32* %61, i32** %10, align 8
  %62 = load %struct.lio*, %struct.lio** %5, align 8
  %63 = getelementptr inbounds %struct.lio, %struct.lio* %62, i32 0, i32 2
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = load %struct.octnic_gather*, %struct.octnic_gather** %6, align 8
  %68 = getelementptr inbounds %struct.octnic_gather, %struct.octnic_gather* %67, i32 0, i32 1
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = ashr i32 %70, 2
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = and i32 %76, 3
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %75, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** %10, align 8
  %82 = call i32 @skb_frag_size(i32* %81)
  %83 = load i32, i32* @DMA_TO_DEVICE, align 4
  %84 = call i32 @pci_unmap_page(%struct.TYPE_8__* %66, i32 %80, i32 %82, i32 %83)
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %7, align 4
  br label %49

87:                                               ; preds = %49
  %88 = load %struct.lio*, %struct.lio** %5, align 8
  %89 = getelementptr inbounds %struct.lio, %struct.lio* %88, i32 0, i32 2
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %89, align 8
  %91 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %92 = call i32 @skb_iq(%struct.TYPE_7__* %90, %struct.sk_buff* %91)
  store i32 %92, i32* %9, align 4
  %93 = load %struct.lio*, %struct.lio** %5, align 8
  %94 = getelementptr inbounds %struct.lio, %struct.lio* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = call i32 @spin_lock(i32* %98)
  %100 = load %struct.octnic_gather*, %struct.octnic_gather** %6, align 8
  %101 = getelementptr inbounds %struct.octnic_gather, %struct.octnic_gather* %100, i32 0, i32 0
  %102 = load %struct.lio*, %struct.lio** %5, align 8
  %103 = getelementptr inbounds %struct.lio, %struct.lio* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = call i32 @list_add_tail(i32* %101, i32* %107)
  %109 = load %struct.lio*, %struct.lio** %5, align 8
  %110 = getelementptr inbounds %struct.lio, %struct.lio* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %9, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = call i32 @spin_unlock(i32* %114)
  %116 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %117 = call i32 @tx_buffer_free(%struct.sk_buff* %116)
  ret void
}

declare dso_local %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i64, i32) #1

declare dso_local i32 @pci_unmap_page(%struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local i32 @skb_iq(%struct.TYPE_7__*, %struct.sk_buff*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @tx_buffer_free(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
