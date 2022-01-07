; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_queues.c_nicvf_sq_append_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_queues.c_nicvf_sq_append_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicvf = type { i32, %struct.nicvf*, i64, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.snd_queue = type { i32 }
%struct.sk_buff = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i64, i32* }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_ATTR_SKIP_CPU_SYNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Not enough SQ descriptors to xmit pkt\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nicvf_sq_append_skb(%struct.nicvf* %0, %struct.snd_queue* %1, %struct.sk_buff* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nicvf*, align 8
  %7 = alloca %struct.snd_queue*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store %struct.nicvf* %0, %struct.nicvf** %6, align 8
  store %struct.snd_queue* %1, %struct.snd_queue** %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %13, align 4
  %17 = load %struct.nicvf*, %struct.nicvf** %6, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %19 = call i32 @nicvf_sq_subdesc_required(%struct.nicvf* %17, %struct.sk_buff* %18)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = load %struct.snd_queue*, %struct.snd_queue** %7, align 8
  %22 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %21, i32 0, i32 0
  %23 = call i32 @atomic_read(i32* %22)
  %24 = icmp sgt i32 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  br label %198

26:                                               ; preds = %4
  %27 = load %struct.snd_queue*, %struct.snd_queue** %7, align 8
  %28 = load i32, i32* %12, align 4
  %29 = call i32 @nicvf_get_sq_desc(%struct.snd_queue* %27, i32 %28)
  store i32 %29, i32* %14, align 4
  %30 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %31 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %30)
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %26
  %36 = load %struct.nicvf*, %struct.nicvf** %6, align 8
  %37 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %35
  %41 = load %struct.nicvf*, %struct.nicvf** %6, align 8
  %42 = load %struct.snd_queue*, %struct.snd_queue** %7, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %14, align 4
  %45 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %46 = call i32 @nicvf_sq_append_tso(%struct.nicvf* %41, %struct.snd_queue* %42, i32 %43, i32 %44, %struct.sk_buff* %45)
  store i32 %46, i32* %5, align 4
  br label %206

47:                                               ; preds = %35, %26
  %48 = load %struct.nicvf*, %struct.nicvf** %6, align 8
  %49 = load %struct.snd_queue*, %struct.snd_queue** %7, align 8
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* %12, align 4
  %52 = sub nsw i32 %51, 1
  %53 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @nicvf_sq_add_hdr_subdesc(%struct.nicvf* %48, %struct.snd_queue* %49, i32 %50, i32 %52, %struct.sk_buff* %53, i32 %56)
  %58 = load i32, i32* %14, align 4
  store i32 %58, i32* %13, align 4
  %59 = load %struct.snd_queue*, %struct.snd_queue** %7, align 8
  %60 = load i32, i32* %14, align 4
  %61 = call i32 @nicvf_get_nxt_sqentry(%struct.snd_queue* %59, i32 %60)
  store i32 %61, i32* %14, align 4
  %62 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %63 = call i64 @skb_is_nonlinear(%struct.sk_buff* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %47
  %66 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %67 = call i32 @skb_headlen(%struct.sk_buff* %66)
  br label %72

68:                                               ; preds = %47
  %69 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %70 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  br label %72

72:                                               ; preds = %68, %65
  %73 = phi i32 [ %67, %65 ], [ %71, %68 ]
  store i32 %73, i32* %11, align 4
  %74 = load %struct.nicvf*, %struct.nicvf** %6, align 8
  %75 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %74, i32 0, i32 3
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %79 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @virt_to_page(i32 %80)
  %82 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %83 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @offset_in_page(i32 %84)
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* @DMA_TO_DEVICE, align 4
  %88 = load i32, i32* @DMA_ATTR_SKIP_CPU_SYNC, align 4
  %89 = call i32 @dma_map_page_attrs(i32* %77, i32 %81, i32 %85, i32 %86, i32 %87, i32 %88)
  store i32 %89, i32* %15, align 4
  %90 = load %struct.nicvf*, %struct.nicvf** %6, align 8
  %91 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %90, i32 0, i32 3
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32, i32* %15, align 4
  %95 = call i64 @dma_mapping_error(i32* %93, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %72
  %98 = load %struct.snd_queue*, %struct.snd_queue** %7, align 8
  %99 = load i32, i32* %14, align 4
  %100 = load i32, i32* %12, align 4
  %101 = call i32 @nicvf_rollback_sq_desc(%struct.snd_queue* %98, i32 %99, i32 %100)
  store i32 0, i32* %5, align 4
  br label %206

102:                                              ; preds = %72
  %103 = load %struct.snd_queue*, %struct.snd_queue** %7, align 8
  %104 = load i32, i32* %14, align 4
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* %15, align 4
  %107 = call i32 @nicvf_sq_add_gather_subdesc(%struct.snd_queue* %103, i32 %104, i32 %105, i32 %106)
  %108 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %109 = call i64 @skb_is_nonlinear(%struct.sk_buff* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %102
  br label %172

112:                                              ; preds = %102
  store i32 0, i32* %10, align 4
  br label %113

113:                                              ; preds = %168, %112
  %114 = load i32, i32* %10, align 4
  %115 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %116 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %115)
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp slt i32 %114, %118
  br i1 %119, label %120, label %171

120:                                              ; preds = %113
  %121 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %122 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %121)
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 2
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %10, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  store i32* %127, i32** %16, align 8
  %128 = load %struct.snd_queue*, %struct.snd_queue** %7, align 8
  %129 = load i32, i32* %14, align 4
  %130 = call i32 @nicvf_get_nxt_sqentry(%struct.snd_queue* %128, i32 %129)
  store i32 %130, i32* %14, align 4
  %131 = load i32*, i32** %16, align 8
  %132 = call i32 @skb_frag_size(i32* %131)
  store i32 %132, i32* %11, align 4
  %133 = load %struct.nicvf*, %struct.nicvf** %6, align 8
  %134 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %133, i32 0, i32 3
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 0
  %137 = load i32*, i32** %16, align 8
  %138 = call i32 @skb_frag_page(i32* %137)
  %139 = load i32*, i32** %16, align 8
  %140 = call i32 @skb_frag_off(i32* %139)
  %141 = load i32, i32* %11, align 4
  %142 = load i32, i32* @DMA_TO_DEVICE, align 4
  %143 = load i32, i32* @DMA_ATTR_SKIP_CPU_SYNC, align 4
  %144 = call i32 @dma_map_page_attrs(i32* %136, i32 %138, i32 %140, i32 %141, i32 %142, i32 %143)
  store i32 %144, i32* %15, align 4
  %145 = load %struct.nicvf*, %struct.nicvf** %6, align 8
  %146 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %145, i32 0, i32 3
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 0
  %149 = load i32, i32* %15, align 4
  %150 = call i64 @dma_mapping_error(i32* %148, i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %162

152:                                              ; preds = %120
  %153 = load %struct.nicvf*, %struct.nicvf** %6, align 8
  %154 = load %struct.snd_queue*, %struct.snd_queue** %7, align 8
  %155 = load i32, i32* %13, align 4
  %156 = load i32, i32* %10, align 4
  %157 = call i32 @nicvf_unmap_sndq_buffers(%struct.nicvf* %153, %struct.snd_queue* %154, i32 %155, i32 %156)
  %158 = load %struct.snd_queue*, %struct.snd_queue** %7, align 8
  %159 = load i32, i32* %14, align 4
  %160 = load i32, i32* %12, align 4
  %161 = call i32 @nicvf_rollback_sq_desc(%struct.snd_queue* %158, i32 %159, i32 %160)
  store i32 0, i32* %5, align 4
  br label %206

162:                                              ; preds = %120
  %163 = load %struct.snd_queue*, %struct.snd_queue** %7, align 8
  %164 = load i32, i32* %14, align 4
  %165 = load i32, i32* %11, align 4
  %166 = load i32, i32* %15, align 4
  %167 = call i32 @nicvf_sq_add_gather_subdesc(%struct.snd_queue* %163, i32 %164, i32 %165, i32 %166)
  br label %168

168:                                              ; preds = %162
  %169 = load i32, i32* %10, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %10, align 4
  br label %113

171:                                              ; preds = %113
  br label %172

172:                                              ; preds = %171, %111
  %173 = load %struct.nicvf*, %struct.nicvf** %6, align 8
  %174 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %192

177:                                              ; preds = %172
  %178 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %179 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %178)
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %192

183:                                              ; preds = %177
  %184 = load %struct.snd_queue*, %struct.snd_queue** %7, align 8
  %185 = load i32, i32* %14, align 4
  %186 = call i32 @nicvf_get_nxt_sqentry(%struct.snd_queue* %184, i32 %185)
  store i32 %186, i32* %14, align 4
  %187 = load %struct.snd_queue*, %struct.snd_queue** %7, align 8
  %188 = load i32, i32* %14, align 4
  %189 = load i32, i32* %13, align 4
  %190 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %191 = call i32 @nicvf_sq_add_cqe_subdesc(%struct.snd_queue* %187, i32 %188, i32 %189, %struct.sk_buff* %190)
  br label %192

192:                                              ; preds = %183, %177, %172
  %193 = load %struct.nicvf*, %struct.nicvf** %6, align 8
  %194 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %195 = load i32, i32* %9, align 4
  %196 = load i32, i32* %12, align 4
  %197 = call i32 @nicvf_sq_doorbell(%struct.nicvf* %193, %struct.sk_buff* %194, i32 %195, i32 %196)
  store i32 1, i32* %5, align 4
  br label %206

198:                                              ; preds = %25
  %199 = load %struct.nicvf*, %struct.nicvf** %6, align 8
  %200 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %199, i32 0, i32 1
  %201 = load %struct.nicvf*, %struct.nicvf** %200, align 8
  store %struct.nicvf* %201, %struct.nicvf** %6, align 8
  %202 = load %struct.nicvf*, %struct.nicvf** %6, align 8
  %203 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = call i32 @netdev_dbg(i32 %204, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %206

206:                                              ; preds = %198, %192, %152, %97, %40
  %207 = load i32, i32* %5, align 4
  ret i32 %207
}

declare dso_local i32 @nicvf_sq_subdesc_required(%struct.nicvf*, %struct.sk_buff*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @nicvf_get_sq_desc(%struct.snd_queue*, i32) #1

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @nicvf_sq_append_tso(%struct.nicvf*, %struct.snd_queue*, i32, i32, %struct.sk_buff*) #1

declare dso_local i32 @nicvf_sq_add_hdr_subdesc(%struct.nicvf*, %struct.snd_queue*, i32, i32, %struct.sk_buff*, i32) #1

declare dso_local i32 @nicvf_get_nxt_sqentry(%struct.snd_queue*, i32) #1

declare dso_local i64 @skb_is_nonlinear(%struct.sk_buff*) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @dma_map_page_attrs(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @virt_to_page(i32) #1

declare dso_local i32 @offset_in_page(i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i32) #1

declare dso_local i32 @nicvf_rollback_sq_desc(%struct.snd_queue*, i32, i32) #1

declare dso_local i32 @nicvf_sq_add_gather_subdesc(%struct.snd_queue*, i32, i32, i32) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local i32 @skb_frag_page(i32*) #1

declare dso_local i32 @skb_frag_off(i32*) #1

declare dso_local i32 @nicvf_unmap_sndq_buffers(%struct.nicvf*, %struct.snd_queue*, i32, i32) #1

declare dso_local i32 @nicvf_sq_add_cqe_subdesc(%struct.snd_queue*, i32, i32, %struct.sk_buff*) #1

declare dso_local i32 @nicvf_sq_doorbell(%struct.nicvf*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @netdev_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
