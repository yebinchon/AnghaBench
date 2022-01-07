; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_dma.c_prep_ampdu_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_dma.c_prep_ampdu_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_info = type { %struct.brcms_ampdu_session }
%struct.brcms_ampdu_session = type { i32 }
%struct.sk_buff = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_info*, %struct.sk_buff*)* @prep_ampdu_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prep_ampdu_frame(%struct.dma_info* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.dma_info*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.brcms_ampdu_session*, align 8
  %6 = alloca i32, align 4
  store %struct.dma_info* %0, %struct.dma_info** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %8 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %7, i32 0, i32 0
  store %struct.brcms_ampdu_session* %8, %struct.brcms_ampdu_session** %5, align 8
  %9 = load %struct.brcms_ampdu_session*, %struct.brcms_ampdu_session** %5, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = call i32 @brcms_c_ampdu_add_frame(%struct.brcms_ampdu_session* %9, %struct.sk_buff* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @ENOSPC, align 4
  %14 = sub nsw i32 0, %13
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %18 = call i32 @ampdu_finalize(%struct.dma_info* %17)
  %19 = load %struct.brcms_ampdu_session*, %struct.brcms_ampdu_session** %5, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = call i32 @brcms_c_ampdu_add_frame(%struct.brcms_ampdu_session* %19, %struct.sk_buff* %20)
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %16, %2
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @WARN_ON(i32 %23)
  ret void
}

declare dso_local i32 @brcms_c_ampdu_add_frame(%struct.brcms_ampdu_session*, %struct.sk_buff*) #1

declare dso_local i32 @ampdu_finalize(%struct.dma_info*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
