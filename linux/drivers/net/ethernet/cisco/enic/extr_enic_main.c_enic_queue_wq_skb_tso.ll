; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_main.c_enic_queue_wq_skb_tso.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_main.c_enic_queue_wq_skb_tso.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enic = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.vnic_wq = type { i32 }
%struct.sk_buff = type { i32, i32, i64 }
%struct.TYPE_3__ = type { i32* }

@WQ_ENET_MAX_DESC_LEN = common dso_local global i64 0, align 8
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.enic*, %struct.vnic_wq*, %struct.sk_buff*, i32, i32, i32, i32)* @enic_queue_wq_skb_tso to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enic_queue_wq_skb_tso(%struct.enic* %0, %struct.vnic_wq* %1, %struct.sk_buff* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.enic*, align 8
  %10 = alloca %struct.vnic_wq*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  store %struct.enic* %0, %struct.enic** %9, align 8
  store %struct.vnic_wq* %1, %struct.vnic_wq** %10, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %24 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %25 = call i32 @skb_headlen(%struct.sk_buff* %24)
  store i32 %25, i32* %16, align 4
  %26 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %16, align 4
  %30 = sub i32 %28, %29
  store i32 %30, i32* %17, align 4
  %31 = load i32, i32* %17, align 4
  %32 = icmp eq i32 %31, 0
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %34 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %7
  %39 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %40 = call i32 @skb_inner_transport_header(%struct.sk_buff* %39)
  %41 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = sub i32 %40, %43
  store i32 %44, i32* %20, align 4
  %45 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %46 = call i64 @inner_tcp_hdrlen(%struct.sk_buff* %45)
  %47 = load i32, i32* %20, align 4
  %48 = zext i32 %47 to i64
  %49 = add nsw i64 %48, %46
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %20, align 4
  %51 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %52 = call i32 @enic_preload_tcp_csum_encap(%struct.sk_buff* %51)
  br label %61

53:                                               ; preds = %7
  %54 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %55 = call i32 @skb_transport_offset(%struct.sk_buff* %54)
  %56 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %57 = call i32 @tcp_hdrlen(%struct.sk_buff* %56)
  %58 = add i32 %55, %57
  store i32 %58, i32* %20, align 4
  %59 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %60 = call i32 @enic_preload_tcp_csum(%struct.sk_buff* %59)
  br label %61

61:                                               ; preds = %53, %38
  br label %62

62:                                               ; preds = %104, %61
  %63 = load i32, i32* %16, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %115

65:                                               ; preds = %62
  %66 = load i32, i32* %16, align 4
  %67 = load i64, i64* @WQ_ENET_MAX_DESC_LEN, align 8
  %68 = trunc i64 %67 to i32
  %69 = call i32 @min(i32 %66, i32 %68)
  store i32 %69, i32* %22, align 4
  %70 = load %struct.enic*, %struct.enic** %9, align 8
  %71 = getelementptr inbounds %struct.enic, %struct.enic* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %74 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %19, align 4
  %77 = add i32 %75, %76
  %78 = load i32, i32* %22, align 4
  %79 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %80 = call i32 @pci_map_single(%struct.TYPE_4__* %72, i32 %77, i32 %78, i32 %79)
  store i32 %80, i32* %21, align 4
  %81 = load %struct.enic*, %struct.enic** %9, align 8
  %82 = load i32, i32* %21, align 4
  %83 = call i32 @enic_dma_map_check(%struct.enic* %81, i32 %82)
  %84 = call i64 @unlikely(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %65
  %87 = load i32, i32* @ENOMEM, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %8, align 4
  br label %186

89:                                               ; preds = %65
  %90 = load %struct.vnic_wq*, %struct.vnic_wq** %10, align 8
  %91 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %92 = load i32, i32* %21, align 4
  %93 = load i32, i32* %22, align 4
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* %20, align 4
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* %14, align 4
  %98 = load i32, i32* %18, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %89
  %101 = load i32, i32* %22, align 4
  %102 = load i32, i32* %16, align 4
  %103 = icmp eq i32 %101, %102
  br label %104

104:                                              ; preds = %100, %89
  %105 = phi i1 [ false, %89 ], [ %103, %100 ]
  %106 = zext i1 %105 to i32
  %107 = load i32, i32* %15, align 4
  %108 = call i32 @enic_queue_wq_desc_tso(%struct.vnic_wq* %90, %struct.sk_buff* %91, i32 %92, i32 %93, i32 %94, i32 %95, i32 %96, i32 %97, i32 %106, i32 %107)
  %109 = load i32, i32* %22, align 4
  %110 = load i32, i32* %16, align 4
  %111 = sub i32 %110, %109
  store i32 %111, i32* %16, align 4
  %112 = load i32, i32* %22, align 4
  %113 = load i32, i32* %19, align 4
  %114 = add i32 %113, %112
  store i32 %114, i32* %19, align 4
  br label %62

115:                                              ; preds = %62
  %116 = load i32, i32* %18, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %115
  store i32 0, i32* %8, align 4
  br label %186

119:                                              ; preds = %115
  %120 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %121 = call %struct.TYPE_3__* @skb_shinfo(%struct.sk_buff* %120)
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  store i32* %123, i32** %23, align 8
  br label %124

124:                                              ; preds = %182, %119
  %125 = load i32, i32* %17, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %185

127:                                              ; preds = %124
  %128 = load i32*, i32** %23, align 8
  %129 = call i32 @skb_frag_size(i32* %128)
  %130 = load i32, i32* %17, align 4
  %131 = sub i32 %130, %129
  store i32 %131, i32* %17, align 4
  %132 = load i32*, i32** %23, align 8
  %133 = call i32 @skb_frag_size(i32* %132)
  store i32 %133, i32* %16, align 4
  store i32 0, i32* %19, align 4
  br label %134

134:                                              ; preds = %170, %127
  %135 = load i32, i32* %16, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %181

137:                                              ; preds = %134
  %138 = load i32, i32* %16, align 4
  %139 = load i64, i64* @WQ_ENET_MAX_DESC_LEN, align 8
  %140 = trunc i64 %139 to i32
  %141 = call i32 @min(i32 %138, i32 %140)
  store i32 %141, i32* %22, align 4
  %142 = load %struct.enic*, %struct.enic** %9, align 8
  %143 = getelementptr inbounds %struct.enic, %struct.enic* %142, i32 0, i32 0
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = load i32*, i32** %23, align 8
  %147 = load i32, i32* %19, align 4
  %148 = load i32, i32* %22, align 4
  %149 = load i32, i32* @DMA_TO_DEVICE, align 4
  %150 = call i32 @skb_frag_dma_map(i32* %145, i32* %146, i32 %147, i32 %148, i32 %149)
  store i32 %150, i32* %21, align 4
  %151 = load %struct.enic*, %struct.enic** %9, align 8
  %152 = load i32, i32* %21, align 4
  %153 = call i32 @enic_dma_map_check(%struct.enic* %151, i32 %152)
  %154 = call i64 @unlikely(i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %137
  %157 = load i32, i32* @ENOMEM, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %8, align 4
  br label %186

159:                                              ; preds = %137
  %160 = load %struct.vnic_wq*, %struct.vnic_wq** %10, align 8
  %161 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %162 = load i32, i32* %21, align 4
  %163 = load i32, i32* %22, align 4
  %164 = load i32, i32* %17, align 4
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %159
  %167 = load i32, i32* %22, align 4
  %168 = load i32, i32* %16, align 4
  %169 = icmp eq i32 %167, %168
  br label %170

170:                                              ; preds = %166, %159
  %171 = phi i1 [ false, %159 ], [ %169, %166 ]
  %172 = zext i1 %171 to i32
  %173 = load i32, i32* %15, align 4
  %174 = call i32 @enic_queue_wq_desc_cont(%struct.vnic_wq* %160, %struct.sk_buff* %161, i32 %162, i32 %163, i32 %172, i32 %173)
  %175 = load i32, i32* %22, align 4
  %176 = load i32, i32* %16, align 4
  %177 = sub i32 %176, %175
  store i32 %177, i32* %16, align 4
  %178 = load i32, i32* %22, align 4
  %179 = load i32, i32* %19, align 4
  %180 = add i32 %179, %178
  store i32 %180, i32* %19, align 4
  br label %134

181:                                              ; preds = %134
  br label %182

182:                                              ; preds = %181
  %183 = load i32*, i32** %23, align 8
  %184 = getelementptr inbounds i32, i32* %183, i32 1
  store i32* %184, i32** %23, align 8
  br label %124

185:                                              ; preds = %124
  store i32 0, i32* %8, align 4
  br label %186

186:                                              ; preds = %185, %156, %118, %86
  %187 = load i32, i32* %8, align 4
  ret i32 %187
}

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @skb_inner_transport_header(%struct.sk_buff*) #1

declare dso_local i64 @inner_tcp_hdrlen(%struct.sk_buff*) #1

declare dso_local i32 @enic_preload_tcp_csum_encap(%struct.sk_buff*) #1

declare dso_local i32 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local i32 @tcp_hdrlen(%struct.sk_buff*) #1

declare dso_local i32 @enic_preload_tcp_csum(%struct.sk_buff*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @pci_map_single(%struct.TYPE_4__*, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @enic_dma_map_check(%struct.enic*, i32) #1

declare dso_local i32 @enic_queue_wq_desc_tso(%struct.vnic_wq*, %struct.sk_buff*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_3__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local i32 @skb_frag_dma_map(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @enic_queue_wq_desc_cont(%struct.vnic_wq*, %struct.sk_buff*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
