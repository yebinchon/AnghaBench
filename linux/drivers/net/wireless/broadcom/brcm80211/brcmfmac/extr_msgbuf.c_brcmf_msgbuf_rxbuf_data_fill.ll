; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_msgbuf.c_brcmf_msgbuf_rxbuf_data_fill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_msgbuf.c_brcmf_msgbuf_rxbuf_data_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_msgbuf = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcmf_msgbuf*)* @brcmf_msgbuf_rxbuf_data_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmf_msgbuf_rxbuf_data_fill(%struct.brcmf_msgbuf* %0) #0 {
  %2 = alloca %struct.brcmf_msgbuf*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.brcmf_msgbuf* %0, %struct.brcmf_msgbuf** %2, align 8
  %5 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %2, align 8
  %6 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %2, align 8
  %9 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = sub nsw i64 %7, %10
  store i64 %11, i64* %3, align 8
  br label %12

12:                                               ; preds = %22, %1
  %13 = load i64, i64* %3, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %12
  %16 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %2, align 8
  %17 = load i64, i64* %3, align 8
  %18 = call i64 @brcmf_msgbuf_rxbuf_data_post(%struct.brcmf_msgbuf* %16, i64 %17)
  store i64 %18, i64* %4, align 8
  %19 = load i64, i64* %4, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  br label %31

22:                                               ; preds = %15
  %23 = load i64, i64* %4, align 8
  %24 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %2, align 8
  %25 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, %23
  store i64 %27, i64* %25, align 8
  %28 = load i64, i64* %4, align 8
  %29 = load i64, i64* %3, align 8
  %30 = sub nsw i64 %29, %28
  store i64 %30, i64* %3, align 8
  br label %12

31:                                               ; preds = %21, %12
  ret void
}

declare dso_local i64 @brcmf_msgbuf_rxbuf_data_post(%struct.brcmf_msgbuf*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
