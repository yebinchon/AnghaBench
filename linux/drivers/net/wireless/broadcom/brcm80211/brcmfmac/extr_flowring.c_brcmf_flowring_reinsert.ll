; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_flowring.c_brcmf_flowring_reinsert.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_flowring.c_brcmf_flowring_reinsert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_flowring = type { %struct.brcmf_flowring_ring** }
%struct.brcmf_flowring_ring = type { i32 }
%struct.sk_buff = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @brcmf_flowring_reinsert(%struct.brcmf_flowring* %0, i64 %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.brcmf_flowring*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.brcmf_flowring_ring*, align 8
  store %struct.brcmf_flowring* %0, %struct.brcmf_flowring** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %8 = load %struct.brcmf_flowring*, %struct.brcmf_flowring** %4, align 8
  %9 = getelementptr inbounds %struct.brcmf_flowring, %struct.brcmf_flowring* %8, i32 0, i32 0
  %10 = load %struct.brcmf_flowring_ring**, %struct.brcmf_flowring_ring*** %9, align 8
  %11 = load i64, i64* %5, align 8
  %12 = getelementptr inbounds %struct.brcmf_flowring_ring*, %struct.brcmf_flowring_ring** %10, i64 %11
  %13 = load %struct.brcmf_flowring_ring*, %struct.brcmf_flowring_ring** %12, align 8
  store %struct.brcmf_flowring_ring* %13, %struct.brcmf_flowring_ring** %7, align 8
  %14 = load %struct.brcmf_flowring_ring*, %struct.brcmf_flowring_ring** %7, align 8
  %15 = getelementptr inbounds %struct.brcmf_flowring_ring, %struct.brcmf_flowring_ring* %14, i32 0, i32 0
  %16 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %17 = call i32 @skb_queue_head(i32* %15, %struct.sk_buff* %16)
  ret void
}

declare dso_local i32 @skb_queue_head(i32*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
