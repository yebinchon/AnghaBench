; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_vf_main.c_free_netsgbuf_with_resp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_vf_main.c_free_netsgbuf_with_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octnet_buf_free_info = type { %struct.octnic_gather*, %struct.lio* }
%struct.octnic_gather = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32* }
%struct.lio = type { i32*, i32*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.octeon_soft_command = type { i64 }
%struct.sk_buff = type { i64, i64, i32 }
%struct.TYPE_6__ = type { i32, i32* }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @free_netsgbuf_with_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_netsgbuf_with_resp(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.octnet_buf_free_info*, align 8
  %4 = alloca %struct.octeon_soft_command*, align 8
  %5 = alloca %struct.octnic_gather*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.lio*, align 8
  %11 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = bitcast i8* %12 to %struct.octeon_soft_command*
  store %struct.octeon_soft_command* %13, %struct.octeon_soft_command** %4, align 8
  %14 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %4, align 8
  %15 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.sk_buff*
  store %struct.sk_buff* %17, %struct.sk_buff** %6, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 2
  %20 = bitcast i32* %19 to %struct.octnet_buf_free_info*
  store %struct.octnet_buf_free_info* %20, %struct.octnet_buf_free_info** %3, align 8
  %21 = load %struct.octnet_buf_free_info*, %struct.octnet_buf_free_info** %3, align 8
  %22 = getelementptr inbounds %struct.octnet_buf_free_info, %struct.octnet_buf_free_info* %21, i32 0, i32 1
  %23 = load %struct.lio*, %struct.lio** %22, align 8
  store %struct.lio* %23, %struct.lio** %10, align 8
  %24 = load %struct.octnet_buf_free_info*, %struct.octnet_buf_free_info** %3, align 8
  %25 = getelementptr inbounds %struct.octnet_buf_free_info, %struct.octnet_buf_free_info* %24, i32 0, i32 0
  %26 = load %struct.octnic_gather*, %struct.octnic_gather** %25, align 8
  store %struct.octnic_gather* %26, %struct.octnic_gather** %5, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %28 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %27)
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %8, align 4
  %31 = load %struct.lio*, %struct.lio** %10, align 8
  %32 = getelementptr inbounds %struct.lio, %struct.lio* %31, i32 0, i32 2
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load %struct.octnic_gather*, %struct.octnic_gather** %5, align 8
  %38 = getelementptr inbounds %struct.octnic_gather, %struct.octnic_gather* %37, i32 0, i32 1
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i64 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = sub nsw i64 %47, %50
  %52 = load i32, i32* @DMA_TO_DEVICE, align 4
  %53 = call i32 @dma_unmap_single(i32* %36, i32 %44, i64 %51, i32 %52)
  store i32 1, i32* %7, align 4
  br label %54

54:                                               ; preds = %58, %1
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %8, align 4
  %57 = icmp ne i32 %55, 0
  br i1 %57, label %58, label %92

58:                                               ; preds = %54
  %59 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %60 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %59)
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sub nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  store i32* %66, i32** %11, align 8
  %67 = load %struct.lio*, %struct.lio** %10, align 8
  %68 = getelementptr inbounds %struct.lio, %struct.lio* %67, i32 0, i32 2
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = load %struct.octnic_gather*, %struct.octnic_gather** %5, align 8
  %73 = getelementptr inbounds %struct.octnic_gather, %struct.octnic_gather* %72, i32 0, i32 1
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = ashr i32 %75, 2
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = and i32 %81, 3
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %80, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** %11, align 8
  %87 = call i32 @skb_frag_size(i32* %86)
  %88 = load i32, i32* @DMA_TO_DEVICE, align 4
  %89 = call i32 @pci_unmap_page(%struct.TYPE_8__* %71, i32 %85, i32 %87, i32 %88)
  %90 = load i32, i32* %7, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %7, align 4
  br label %54

92:                                               ; preds = %54
  %93 = load %struct.lio*, %struct.lio** %10, align 8
  %94 = getelementptr inbounds %struct.lio, %struct.lio* %93, i32 0, i32 2
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %97 = call i32 @skb_iq(%struct.TYPE_7__* %95, %struct.sk_buff* %96)
  store i32 %97, i32* %9, align 4
  %98 = load %struct.lio*, %struct.lio** %10, align 8
  %99 = getelementptr inbounds %struct.lio, %struct.lio* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = call i32 @spin_lock(i32* %103)
  %105 = load %struct.octnic_gather*, %struct.octnic_gather** %5, align 8
  %106 = getelementptr inbounds %struct.octnic_gather, %struct.octnic_gather* %105, i32 0, i32 0
  %107 = load %struct.lio*, %struct.lio** %10, align 8
  %108 = getelementptr inbounds %struct.lio, %struct.lio* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %9, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = call i32 @list_add_tail(i32* %106, i32* %112)
  %114 = load %struct.lio*, %struct.lio** %10, align 8
  %115 = getelementptr inbounds %struct.lio, %struct.lio* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %9, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = call i32 @spin_unlock(i32* %119)
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

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
