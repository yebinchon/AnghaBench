; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aeroflex/extr_greth.c_greth_clean_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aeroflex/extr_greth.c_greth_clean_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.greth_private = type { i32, i64, i32, i32*, i32*, %struct.greth_bd*, %struct.sk_buff**, %struct.sk_buff**, i64, %struct.greth_bd* }
%struct.sk_buff = type { i32 }
%struct.greth_bd = type { i32 }
%struct.TYPE_2__ = type { i32, i32* }

@GRETH_RXBD_NUM = common dso_local global i32 0, align 4
@MAX_FRAME_SIZE = common dso_local global i64 0, align 8
@NET_IP_ALIGN = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@GRETH_TXBD_NUM = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.greth_private*)* @greth_clean_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @greth_clean_rings(%struct.greth_private* %0) #0 {
  %2 = alloca %struct.greth_private*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.greth_bd*, align 8
  %5 = alloca %struct.greth_bd*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.greth_private* %0, %struct.greth_private** %2, align 8
  %9 = load %struct.greth_private*, %struct.greth_private** %2, align 8
  %10 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %9, i32 0, i32 9
  %11 = load %struct.greth_bd*, %struct.greth_bd** %10, align 8
  store %struct.greth_bd* %11, %struct.greth_bd** %4, align 8
  %12 = load %struct.greth_private*, %struct.greth_private** %2, align 8
  %13 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %12, i32 0, i32 5
  %14 = load %struct.greth_bd*, %struct.greth_bd** %13, align 8
  store %struct.greth_bd* %14, %struct.greth_bd** %5, align 8
  %15 = load %struct.greth_private*, %struct.greth_private** %2, align 8
  %16 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %15, i32 0, i32 8
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %154

19:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %54, %19
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @GRETH_RXBD_NUM, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %59

24:                                               ; preds = %20
  %25 = load %struct.greth_private*, %struct.greth_private** %2, align 8
  %26 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %25, i32 0, i32 7
  %27 = load %struct.sk_buff**, %struct.sk_buff*** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %27, i64 %29
  %31 = load %struct.sk_buff*, %struct.sk_buff** %30, align 8
  %32 = icmp ne %struct.sk_buff* %31, null
  br i1 %32, label %33, label %53

33:                                               ; preds = %24
  %34 = load %struct.greth_private*, %struct.greth_private** %2, align 8
  %35 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %34, i32 0, i32 7
  %36 = load %struct.sk_buff**, %struct.sk_buff*** %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %36, i64 %38
  %40 = load %struct.sk_buff*, %struct.sk_buff** %39, align 8
  %41 = call i32 @dev_kfree_skb(%struct.sk_buff* %40)
  %42 = load %struct.greth_private*, %struct.greth_private** %2, align 8
  %43 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.greth_bd*, %struct.greth_bd** %4, align 8
  %46 = getelementptr inbounds %struct.greth_bd, %struct.greth_bd* %45, i32 0, i32 0
  %47 = call i32 @greth_read_bd(i32* %46)
  %48 = load i64, i64* @MAX_FRAME_SIZE, align 8
  %49 = load i64, i64* @NET_IP_ALIGN, align 8
  %50 = add nsw i64 %48, %49
  %51 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %52 = call i32 @dma_unmap_single(i32 %44, i32 %47, i64 %50, i32 %51)
  br label %53

53:                                               ; preds = %33, %24
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %3, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %3, align 4
  %57 = load %struct.greth_bd*, %struct.greth_bd** %4, align 8
  %58 = getelementptr inbounds %struct.greth_bd, %struct.greth_bd* %57, i32 1
  store %struct.greth_bd* %58, %struct.greth_bd** %4, align 8
  br label %20

59:                                               ; preds = %20
  br label %60

60:                                               ; preds = %144, %59
  %61 = load %struct.greth_private*, %struct.greth_private** %2, align 8
  %62 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @GRETH_TXBD_NUM, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %153

66:                                               ; preds = %60
  %67 = load %struct.greth_private*, %struct.greth_private** %2, align 8
  %68 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %67, i32 0, i32 6
  %69 = load %struct.sk_buff**, %struct.sk_buff*** %68, align 8
  %70 = load %struct.greth_private*, %struct.greth_private** %2, align 8
  %71 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %69, i64 %72
  %74 = load %struct.sk_buff*, %struct.sk_buff** %73, align 8
  store %struct.sk_buff* %74, %struct.sk_buff** %6, align 8
  %75 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %76 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %75)
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  store i32 %78, i32* %7, align 4
  %79 = load %struct.greth_private*, %struct.greth_private** %2, align 8
  %80 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %79, i32 0, i32 5
  %81 = load %struct.greth_bd*, %struct.greth_bd** %80, align 8
  %82 = load %struct.greth_private*, %struct.greth_private** %2, align 8
  %83 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds %struct.greth_bd, %struct.greth_bd* %81, i64 %84
  store %struct.greth_bd* %85, %struct.greth_bd** %5, align 8
  %86 = load %struct.greth_private*, %struct.greth_private** %2, align 8
  %87 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = trunc i64 %88 to i32
  %90 = call i8* @NEXT_TX(i32 %89)
  %91 = ptrtoint i8* %90 to i64
  %92 = load %struct.greth_private*, %struct.greth_private** %2, align 8
  %93 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %92, i32 0, i32 1
  store i64 %91, i64* %93, align 8
  %94 = load %struct.greth_private*, %struct.greth_private** %2, align 8
  %95 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.greth_bd*, %struct.greth_bd** %5, align 8
  %98 = getelementptr inbounds %struct.greth_bd, %struct.greth_bd* %97, i32 0, i32 0
  %99 = call i32 @greth_read_bd(i32* %98)
  %100 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %101 = call i64 @skb_headlen(%struct.sk_buff* %100)
  %102 = load i32, i32* @DMA_TO_DEVICE, align 4
  %103 = call i32 @dma_unmap_single(i32 %96, i32 %99, i64 %101, i32 %102)
  store i32 0, i32* %3, align 4
  br label %104

104:                                              ; preds = %141, %66
  %105 = load i32, i32* %3, align 4
  %106 = load i32, i32* %7, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %144

108:                                              ; preds = %104
  %109 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %110 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %109)
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %3, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  store i32* %115, i32** %8, align 8
  %116 = load %struct.greth_private*, %struct.greth_private** %2, align 8
  %117 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %116, i32 0, i32 5
  %118 = load %struct.greth_bd*, %struct.greth_bd** %117, align 8
  %119 = load %struct.greth_private*, %struct.greth_private** %2, align 8
  %120 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = getelementptr inbounds %struct.greth_bd, %struct.greth_bd* %118, i64 %121
  store %struct.greth_bd* %122, %struct.greth_bd** %5, align 8
  %123 = load %struct.greth_private*, %struct.greth_private** %2, align 8
  %124 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.greth_bd*, %struct.greth_bd** %5, align 8
  %127 = getelementptr inbounds %struct.greth_bd, %struct.greth_bd* %126, i32 0, i32 0
  %128 = call i32 @greth_read_bd(i32* %127)
  %129 = load i32*, i32** %8, align 8
  %130 = call i32 @skb_frag_size(i32* %129)
  %131 = load i32, i32* @DMA_TO_DEVICE, align 4
  %132 = call i32 @dma_unmap_page(i32 %125, i32 %128, i32 %130, i32 %131)
  %133 = load %struct.greth_private*, %struct.greth_private** %2, align 8
  %134 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = trunc i64 %135 to i32
  %137 = call i8* @NEXT_TX(i32 %136)
  %138 = ptrtoint i8* %137 to i64
  %139 = load %struct.greth_private*, %struct.greth_private** %2, align 8
  %140 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %139, i32 0, i32 1
  store i64 %138, i64* %140, align 8
  br label %141

141:                                              ; preds = %108
  %142 = load i32, i32* %3, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %3, align 4
  br label %104

144:                                              ; preds = %104
  %145 = load i32, i32* %7, align 4
  %146 = add nsw i32 %145, 1
  %147 = load %struct.greth_private*, %struct.greth_private** %2, align 8
  %148 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = add nsw i32 %149, %146
  store i32 %150, i32* %148, align 8
  %151 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %152 = call i32 @dev_kfree_skb(%struct.sk_buff* %151)
  br label %60

153:                                              ; preds = %60
  br label %211

154:                                              ; preds = %1
  store i32 0, i32* %3, align 4
  br label %155

155:                                              ; preds = %177, %154
  %156 = load i32, i32* %3, align 4
  %157 = load i32, i32* @GRETH_RXBD_NUM, align 4
  %158 = icmp slt i32 %156, %157
  br i1 %158, label %159, label %182

159:                                              ; preds = %155
  %160 = load %struct.greth_private*, %struct.greth_private** %2, align 8
  %161 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %160, i32 0, i32 4
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* %3, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @kfree(i32 %166)
  %168 = load %struct.greth_private*, %struct.greth_private** %2, align 8
  %169 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.greth_bd*, %struct.greth_bd** %4, align 8
  %172 = getelementptr inbounds %struct.greth_bd, %struct.greth_bd* %171, i32 0, i32 0
  %173 = call i32 @greth_read_bd(i32* %172)
  %174 = load i64, i64* @MAX_FRAME_SIZE, align 8
  %175 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %176 = call i32 @dma_unmap_single(i32 %170, i32 %173, i64 %174, i32 %175)
  br label %177

177:                                              ; preds = %159
  %178 = load i32, i32* %3, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %3, align 4
  %180 = load %struct.greth_bd*, %struct.greth_bd** %4, align 8
  %181 = getelementptr inbounds %struct.greth_bd, %struct.greth_bd* %180, i32 1
  store %struct.greth_bd* %181, %struct.greth_bd** %4, align 8
  br label %155

182:                                              ; preds = %155
  store i32 0, i32* %3, align 4
  br label %183

183:                                              ; preds = %205, %182
  %184 = load i32, i32* %3, align 4
  %185 = load i32, i32* @GRETH_TXBD_NUM, align 4
  %186 = icmp slt i32 %184, %185
  br i1 %186, label %187, label %210

187:                                              ; preds = %183
  %188 = load %struct.greth_private*, %struct.greth_private** %2, align 8
  %189 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %188, i32 0, i32 3
  %190 = load i32*, i32** %189, align 8
  %191 = load i32, i32* %3, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @kfree(i32 %194)
  %196 = load %struct.greth_private*, %struct.greth_private** %2, align 8
  %197 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.greth_bd*, %struct.greth_bd** %5, align 8
  %200 = getelementptr inbounds %struct.greth_bd, %struct.greth_bd* %199, i32 0, i32 0
  %201 = call i32 @greth_read_bd(i32* %200)
  %202 = load i64, i64* @MAX_FRAME_SIZE, align 8
  %203 = load i32, i32* @DMA_TO_DEVICE, align 4
  %204 = call i32 @dma_unmap_single(i32 %198, i32 %201, i64 %202, i32 %203)
  br label %205

205:                                              ; preds = %187
  %206 = load i32, i32* %3, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %3, align 4
  %208 = load %struct.greth_bd*, %struct.greth_bd** %5, align 8
  %209 = getelementptr inbounds %struct.greth_bd, %struct.greth_bd* %208, i32 1
  store %struct.greth_bd* %209, %struct.greth_bd** %5, align 8
  br label %183

210:                                              ; preds = %183
  br label %211

211:                                              ; preds = %210, %153
  ret void
}

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i64, i32) #1

declare dso_local i32 @greth_read_bd(i32*) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i8* @NEXT_TX(i32) #1

declare dso_local i64 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @dma_unmap_page(i32, i32, i32, i32) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
