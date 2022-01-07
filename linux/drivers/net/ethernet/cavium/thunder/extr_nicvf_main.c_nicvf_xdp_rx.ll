; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_main.c_nicvf_xdp_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_main.c_nicvf_xdp_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicvf = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.bpf_prog = type { i32 }
%struct.cqe_rx_t = type { i64 }
%struct.snd_queue = type { i32 }
%struct.rcv_queue = type { i32 }
%struct.sk_buff = type { i32 }
%struct.xdp_buff = type { i8*, i8*, i32*, i32 }
%struct.page = type { i32 }

@PAGE_MASK = common dso_local global i32 0, align 4
@RCV_FRAG_LEN = common dso_local global i64 0, align 8
@XDP_PACKET_HEADROOM = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_ATTR_SKIP_CPU_SYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nicvf*, %struct.bpf_prog*, %struct.cqe_rx_t*, %struct.snd_queue*, %struct.rcv_queue*, %struct.sk_buff**)* @nicvf_xdp_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nicvf_xdp_rx(%struct.nicvf* %0, %struct.bpf_prog* %1, %struct.cqe_rx_t* %2, %struct.snd_queue* %3, %struct.rcv_queue* %4, %struct.sk_buff** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nicvf*, align 8
  %9 = alloca %struct.bpf_prog*, align 8
  %10 = alloca %struct.cqe_rx_t*, align 8
  %11 = alloca %struct.snd_queue*, align 8
  %12 = alloca %struct.rcv_queue*, align 8
  %13 = alloca %struct.sk_buff**, align 8
  %14 = alloca %struct.xdp_buff, align 8
  %15 = alloca %struct.page*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  store %struct.nicvf* %0, %struct.nicvf** %8, align 8
  store %struct.bpf_prog* %1, %struct.bpf_prog** %9, align 8
  store %struct.cqe_rx_t* %2, %struct.cqe_rx_t** %10, align 8
  store %struct.snd_queue* %3, %struct.snd_queue** %11, align 8
  store %struct.rcv_queue* %4, %struct.rcv_queue** %12, align 8
  store %struct.sk_buff** %5, %struct.sk_buff*** %13, align 8
  store i32 0, i32* %18, align 4
  %22 = load %struct.cqe_rx_t*, %struct.cqe_rx_t** %10, align 8
  %23 = bitcast %struct.cqe_rx_t* %22 to i8*
  %24 = getelementptr i8, i8* %23, i64 12
  %25 = bitcast i8* %24 to i32*
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %17, align 4
  %27 = load %struct.cqe_rx_t*, %struct.cqe_rx_t** %10, align 8
  %28 = bitcast %struct.cqe_rx_t* %27 to i8*
  %29 = getelementptr i8, i8* %28, i64 28
  %30 = bitcast i8* %29 to i32*
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %19, align 4
  %32 = load %struct.nicvf*, %struct.nicvf** %8, align 8
  %33 = load i32, i32* %19, align 4
  %34 = call i32 @nicvf_iova_to_phys(%struct.nicvf* %32, i32 %33)
  store i32 %34, i32* %20, align 4
  %35 = load i32, i32* %20, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %179

38:                                               ; preds = %6
  %39 = load i32, i32* %20, align 4
  %40 = call i32 @phys_to_virt(i32 %39)
  store i32 %40, i32* %20, align 4
  %41 = load i32, i32* %20, align 4
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i8*
  %44 = call %struct.page* @virt_to_page(i8* %43)
  store %struct.page* %44, %struct.page** %15, align 8
  %45 = load %struct.page*, %struct.page** %15, align 8
  %46 = call i32 @page_address(%struct.page* %45)
  %47 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %14, i32 0, i32 3
  store i32 %46, i32* %47, align 8
  %48 = load i32, i32* %20, align 4
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to i8*
  %51 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %14, i32 0, i32 0
  store i8* %50, i8** %51, align 8
  %52 = call i32 @xdp_set_data_meta_invalid(%struct.xdp_buff* %14)
  %53 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %14, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = load i32, i32* %17, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr i8, i8* %54, i64 %56
  %58 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %14, i32 0, i32 1
  store i8* %57, i8** %58, align 8
  %59 = load %struct.rcv_queue*, %struct.rcv_queue** %12, align 8
  %60 = getelementptr inbounds %struct.rcv_queue, %struct.rcv_queue* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %14, i32 0, i32 2
  store i32* %60, i32** %61, align 8
  %62 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %14, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  store i8* %63, i8** %21, align 8
  %64 = call i32 (...) @rcu_read_lock()
  %65 = load %struct.bpf_prog*, %struct.bpf_prog** %9, align 8
  %66 = call i32 @bpf_prog_run_xdp(%struct.bpf_prog* %65, %struct.xdp_buff* %14)
  store i32 %66, i32* %16, align 4
  %67 = call i32 (...) @rcu_read_unlock()
  %68 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %14, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %14, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = ptrtoint i8* %69 to i64
  %73 = ptrtoint i8* %71 to i64
  %74 = sub i64 %72, %73
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %17, align 4
  %76 = load i8*, i8** %21, align 8
  %77 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %14, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = icmp ne i8* %76, %78
  br i1 %79, label %80, label %91

80:                                               ; preds = %38
  %81 = load i8*, i8** %21, align 8
  %82 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %14, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = ptrtoint i8* %81 to i64
  %85 = ptrtoint i8* %83 to i64
  %86 = sub i64 %84, %85
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %18, align 4
  %88 = load i32, i32* %18, align 4
  %89 = load i32, i32* %19, align 4
  %90 = sub nsw i32 %89, %88
  store i32 %90, i32* %19, align 4
  br label %91

91:                                               ; preds = %80, %38
  %92 = load i32, i32* %16, align 4
  switch i32 %92, label %147 [
    i32 129, label %93
    i32 128, label %138
    i32 131, label %150
    i32 130, label %157
  ]

93:                                               ; preds = %91
  %94 = load %struct.page*, %struct.page** %15, align 8
  %95 = call i32 @page_ref_count(%struct.page* %94)
  %96 = icmp eq i32 %95, 1
  br i1 %96, label %97, label %112

97:                                               ; preds = %93
  %98 = load i32, i32* @PAGE_MASK, align 4
  %99 = load i32, i32* %19, align 4
  %100 = and i32 %99, %98
  store i32 %100, i32* %19, align 4
  %101 = load %struct.nicvf*, %struct.nicvf** %8, align 8
  %102 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %101, i32 0, i32 0
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32, i32* %19, align 4
  %106 = load i64, i64* @RCV_FRAG_LEN, align 8
  %107 = load i64, i64* @XDP_PACKET_HEADROOM, align 8
  %108 = add nsw i64 %106, %107
  %109 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %110 = load i32, i32* @DMA_ATTR_SKIP_CPU_SYNC, align 4
  %111 = call i32 @dma_unmap_page_attrs(i32* %104, i32 %105, i64 %108, i32 %109, i32 %110)
  br label %112

112:                                              ; preds = %97, %93
  %113 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %14, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = load i64, i64* @RCV_FRAG_LEN, align 8
  %116 = load %struct.cqe_rx_t*, %struct.cqe_rx_t** %10, align 8
  %117 = getelementptr inbounds %struct.cqe_rx_t, %struct.cqe_rx_t* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = sub nsw i64 %115, %118
  %120 = load i32, i32* %18, align 4
  %121 = sext i32 %120 to i64
  %122 = add nsw i64 %119, %121
  %123 = trunc i64 %122 to i32
  %124 = call %struct.sk_buff* @build_skb(i8* %114, i32 %123)
  %125 = load %struct.sk_buff**, %struct.sk_buff*** %13, align 8
  store %struct.sk_buff* %124, %struct.sk_buff** %125, align 8
  %126 = load %struct.sk_buff**, %struct.sk_buff*** %13, align 8
  %127 = load %struct.sk_buff*, %struct.sk_buff** %126, align 8
  %128 = icmp ne %struct.sk_buff* %127, null
  br i1 %128, label %132, label %129

129:                                              ; preds = %112
  %130 = load %struct.page*, %struct.page** %15, align 8
  %131 = call i32 @put_page(%struct.page* %130)
  br label %137

132:                                              ; preds = %112
  %133 = load %struct.sk_buff**, %struct.sk_buff*** %13, align 8
  %134 = load %struct.sk_buff*, %struct.sk_buff** %133, align 8
  %135 = load i32, i32* %17, align 4
  %136 = call i32 @skb_put(%struct.sk_buff* %134, i32 %135)
  br label %137

137:                                              ; preds = %132, %129
  store i32 0, i32* %7, align 4
  br label %179

138:                                              ; preds = %91
  %139 = load %struct.nicvf*, %struct.nicvf** %8, align 8
  %140 = load %struct.snd_queue*, %struct.snd_queue** %11, align 8
  %141 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %14, i32 0, i32 0
  %142 = load i8*, i8** %141, align 8
  %143 = ptrtoint i8* %142 to i32
  %144 = load i32, i32* %19, align 4
  %145 = load i32, i32* %17, align 4
  %146 = call i32 @nicvf_xdp_sq_append_pkt(%struct.nicvf* %139, %struct.snd_queue* %140, i32 %143, i32 %144, i32 %145)
  store i32 1, i32* %7, align 4
  br label %179

147:                                              ; preds = %91
  %148 = load i32, i32* %16, align 4
  %149 = call i32 @bpf_warn_invalid_xdp_action(i32 %148)
  br label %150

150:                                              ; preds = %91, %147
  %151 = load %struct.nicvf*, %struct.nicvf** %8, align 8
  %152 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.bpf_prog*, %struct.bpf_prog** %9, align 8
  %155 = load i32, i32* %16, align 4
  %156 = call i32 @trace_xdp_exception(i32 %153, %struct.bpf_prog* %154, i32 %155)
  br label %157

157:                                              ; preds = %91, %150
  %158 = load %struct.page*, %struct.page** %15, align 8
  %159 = call i32 @page_ref_count(%struct.page* %158)
  %160 = icmp eq i32 %159, 1
  br i1 %160, label %161, label %176

161:                                              ; preds = %157
  %162 = load i32, i32* @PAGE_MASK, align 4
  %163 = load i32, i32* %19, align 4
  %164 = and i32 %163, %162
  store i32 %164, i32* %19, align 4
  %165 = load %struct.nicvf*, %struct.nicvf** %8, align 8
  %166 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %165, i32 0, i32 0
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 0
  %169 = load i32, i32* %19, align 4
  %170 = load i64, i64* @RCV_FRAG_LEN, align 8
  %171 = load i64, i64* @XDP_PACKET_HEADROOM, align 8
  %172 = add nsw i64 %170, %171
  %173 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %174 = load i32, i32* @DMA_ATTR_SKIP_CPU_SYNC, align 4
  %175 = call i32 @dma_unmap_page_attrs(i32* %168, i32 %169, i64 %172, i32 %173, i32 %174)
  br label %176

176:                                              ; preds = %161, %157
  %177 = load %struct.page*, %struct.page** %15, align 8
  %178 = call i32 @put_page(%struct.page* %177)
  store i32 1, i32* %7, align 4
  br label %179

179:                                              ; preds = %176, %138, %137, %37
  %180 = load i32, i32* %7, align 4
  ret i32 %180
}

declare dso_local i32 @nicvf_iova_to_phys(%struct.nicvf*, i32) #1

declare dso_local i32 @phys_to_virt(i32) #1

declare dso_local %struct.page* @virt_to_page(i8*) #1

declare dso_local i32 @page_address(%struct.page*) #1

declare dso_local i32 @xdp_set_data_meta_invalid(%struct.xdp_buff*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @bpf_prog_run_xdp(%struct.bpf_prog*, %struct.xdp_buff*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @page_ref_count(%struct.page*) #1

declare dso_local i32 @dma_unmap_page_attrs(i32*, i32, i64, i32, i32) #1

declare dso_local %struct.sk_buff* @build_skb(i8*, i32) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @nicvf_xdp_sq_append_pkt(%struct.nicvf*, %struct.snd_queue*, i32, i32, i32) #1

declare dso_local i32 @bpf_warn_invalid_xdp_action(i32) #1

declare dso_local i32 @trace_xdp_exception(i32, %struct.bpf_prog*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
