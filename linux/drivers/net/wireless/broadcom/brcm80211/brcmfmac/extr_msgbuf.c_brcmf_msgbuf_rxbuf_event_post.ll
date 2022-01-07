; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_msgbuf.c_brcmf_msgbuf_rxbuf_event_post.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_msgbuf.c_brcmf_msgbuf_rxbuf_event_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_msgbuf = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcmf_msgbuf*)* @brcmf_msgbuf_rxbuf_event_post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmf_msgbuf_rxbuf_event_post(%struct.brcmf_msgbuf* %0) #0 {
  %2 = alloca %struct.brcmf_msgbuf*, align 8
  %3 = alloca i64, align 8
  store %struct.brcmf_msgbuf* %0, %struct.brcmf_msgbuf** %2, align 8
  %4 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %2, align 8
  %5 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %2, align 8
  %8 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = sub nsw i64 %6, %9
  store i64 %10, i64* %3, align 8
  %11 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %2, align 8
  %12 = load i64, i64* %3, align 8
  %13 = call i64 @brcmf_msgbuf_rxbuf_ctrl_post(%struct.brcmf_msgbuf* %11, i32 1, i64 %12)
  store i64 %13, i64* %3, align 8
  %14 = load i64, i64* %3, align 8
  %15 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %2, align 8
  %16 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, %14
  store i64 %18, i64* %16, align 8
  ret void
}

declare dso_local i64 @brcmf_msgbuf_rxbuf_ctrl_post(%struct.brcmf_msgbuf*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
