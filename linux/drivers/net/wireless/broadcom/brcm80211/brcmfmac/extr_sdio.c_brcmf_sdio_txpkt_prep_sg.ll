; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_sdio.c_brcmf_sdio_txpkt_prep_sg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_sdio.c_brcmf_sdio_txpkt_prep_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_sdio = type { i32, i64, %struct.brcmf_sdio_dev* }
%struct.brcmf_sdio_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff_head = type { i32 }
%struct.sk_buff = type { i32, i32, i32, i32, i64, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@ALIGN_SKB_FLAG = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_sdio*, %struct.sk_buff_head*, %struct.sk_buff*, i32)* @brcmf_sdio_txpkt_prep_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_sdio_txpkt_prep_sg(%struct.brcmf_sdio* %0, %struct.sk_buff_head* %1, %struct.sk_buff* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.brcmf_sdio*, align 8
  %7 = alloca %struct.sk_buff_head*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.brcmf_sdio_dev*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.brcmf_sdio* %0, %struct.brcmf_sdio** %6, align 8
  store %struct.sk_buff_head* %1, %struct.sk_buff_head** %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store i32 %3, i32* %9, align 4
  %19 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %6, align 8
  %20 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %19, i32 0, i32 2
  %21 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %20, align 8
  store %struct.brcmf_sdio_dev* %21, %struct.brcmf_sdio_dev** %10, align 8
  %22 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %10, align 8
  %23 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %15, align 4
  %28 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %6, align 8
  %29 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = urem i32 %27, %30
  %32 = call i32 @WARN_ON(i32 %31)
  %33 = load %struct.sk_buff_head*, %struct.sk_buff_head** %7, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %35 = call i32 @skb_queue_is_last(%struct.sk_buff_head* %33, %struct.sk_buff* %34)
  store i32 %35, i32* %16, align 4
  store i32 0, i32* %12, align 4
  %36 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %6, align 8
  %40 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = urem i32 %38, %41
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %4
  %46 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %6, align 8
  %47 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %13, align 4
  %50 = sub i32 %48, %49
  store i32 %50, i32* %12, align 4
  br label %51

51:                                               ; preds = %45, %4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %12, align 4
  %54 = add nsw i32 %52, %53
  %55 = load i32, i32* %15, align 4
  %56 = urem i32 %54, %55
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %16, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %51
  %60 = load i32, i32* %14, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %59
  %63 = load i32, i32* %15, align 4
  %64 = load i32, i32* %14, align 4
  %65 = sub i32 %63, %64
  %66 = load i32, i32* %12, align 4
  %67 = add i32 %66, %65
  store i32 %67, i32* %12, align 4
  br label %68

68:                                               ; preds = %62, %59, %51
  %69 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %70 = call i32 @skb_tailroom(%struct.sk_buff* %69)
  %71 = load i32, i32* %12, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %147

73:                                               ; preds = %68
  %74 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %75 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %15, align 4
  %78 = icmp ugt i32 %76, %77
  br i1 %78, label %79, label %147

79:                                               ; preds = %73
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* %13, align 4
  %82 = add nsw i32 %80, %81
  %83 = sext i32 %82 to i64
  %84 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %6, align 8
  %85 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %83, %86
  %88 = call %struct.sk_buff* @brcmu_pkt_buf_get_skb(i64 %87)
  store %struct.sk_buff* %88, %struct.sk_buff** %11, align 8
  %89 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %90 = icmp eq %struct.sk_buff* %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %79
  %92 = load i32, i32* @ENOMEM, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %5, align 4
  br label %190

94:                                               ; preds = %79
  %95 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %6, align 8
  %96 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %97 = call i32 @brcmf_sdio_txpkt_hdalign(%struct.brcmf_sdio* %95, %struct.sk_buff* %96)
  store i32 %97, i32* %18, align 4
  %98 = load i32, i32* %18, align 4
  %99 = icmp slt i32 %98, 0
  %100 = zext i1 %99 to i32
  %101 = call i64 @unlikely(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %94
  %104 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %105 = call i32 @kfree_skb(%struct.sk_buff* %104)
  %106 = load i32, i32* %18, align 4
  store i32 %106, i32* %5, align 4
  br label %190

107:                                              ; preds = %94
  %108 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %109 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %108, i32 0, i32 5
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %112 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %111, i32 0, i32 5
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %115 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = sext i32 %116 to i64
  %118 = add nsw i64 %113, %117
  %119 = load i32, i32* %13, align 4
  %120 = sext i32 %119 to i64
  %121 = sub nsw i64 %118, %120
  %122 = load i32, i32* %13, align 4
  %123 = call i32 @memcpy(i64 %110, i64 %121, i32 %122)
  %124 = load i32, i32* @ALIGN_SKB_FLAG, align 4
  %125 = load i32, i32* %13, align 4
  %126 = add nsw i32 %124, %125
  %127 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %128 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %127, i32 0, i32 4
  %129 = load i64, i64* %128, align 8
  %130 = inttoptr i64 %129 to i32*
  store i32 %126, i32* %130, align 4
  %131 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %132 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %133 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* %13, align 4
  %136 = sub nsw i32 %134, %135
  %137 = call i32 @skb_trim(%struct.sk_buff* %131, i32 %136)
  %138 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %139 = load i32, i32* %12, align 4
  %140 = load i32, i32* %13, align 4
  %141 = add nsw i32 %139, %140
  %142 = call i32 @skb_trim(%struct.sk_buff* %138, i32 %141)
  %143 = load %struct.sk_buff_head*, %struct.sk_buff_head** %7, align 8
  %144 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %145 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %146 = call i32 @__skb_queue_after(%struct.sk_buff_head* %143, %struct.sk_buff* %144, %struct.sk_buff* %145)
  br label %188

147:                                              ; preds = %73, %68
  %148 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %149 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %12, align 4
  %152 = add nsw i32 %150, %151
  %153 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %154 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %157 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = sub nsw i32 %155, %158
  %160 = sub nsw i32 %152, %159
  store i32 %160, i32* %17, align 4
  %161 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %162 = call i64 @skb_cloned(%struct.sk_buff* %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %167, label %164

164:                                              ; preds = %147
  %165 = load i32, i32* %17, align 4
  %166 = icmp sgt i32 %165, 0
  br i1 %166, label %167, label %177

167:                                              ; preds = %164, %147
  %168 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %169 = load i32, i32* %17, align 4
  %170 = load i32, i32* @GFP_ATOMIC, align 4
  %171 = call i64 @pskb_expand_head(%struct.sk_buff* %168, i32 0, i32 %169, i32 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %167
  %174 = load i32, i32* @ENOMEM, align 4
  %175 = sub nsw i32 0, %174
  store i32 %175, i32* %5, align 4
  br label %190

176:                                              ; preds = %167
  br label %177

177:                                              ; preds = %176, %164
  %178 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %179 = call i64 @skb_linearize(%struct.sk_buff* %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %177
  %182 = load i32, i32* @ENOMEM, align 4
  %183 = sub nsw i32 0, %182
  store i32 %183, i32* %5, align 4
  br label %190

184:                                              ; preds = %177
  %185 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %186 = load i32, i32* %12, align 4
  %187 = call i32 @__skb_put(%struct.sk_buff* %185, i32 %186)
  br label %188

188:                                              ; preds = %184, %107
  %189 = load i32, i32* %12, align 4
  store i32 %189, i32* %5, align 4
  br label %190

190:                                              ; preds = %188, %181, %173, %103, %91
  %191 = load i32, i32* %5, align 4
  ret i32 %191
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @skb_queue_is_last(%struct.sk_buff_head*, %struct.sk_buff*) #1

declare dso_local i32 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @brcmu_pkt_buf_get_skb(i64) #1

declare dso_local i32 @brcmf_sdio_txpkt_hdalign(%struct.brcmf_sdio*, %struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

declare dso_local i32 @__skb_queue_after(%struct.sk_buff_head*, %struct.sk_buff*, %struct.sk_buff*) #1

declare dso_local i64 @skb_cloned(%struct.sk_buff*) #1

declare dso_local i64 @pskb_expand_head(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i64 @skb_linearize(%struct.sk_buff*) #1

declare dso_local i32 @__skb_put(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
