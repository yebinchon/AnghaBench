; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_msgbuf.c_brcmf_msgbuf_init_pktids.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_msgbuf.c_brcmf_msgbuf_init_pktids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_msgbuf_pktids = type { i32, %struct.brcmf_msgbuf_pktid* }
%struct.brcmf_msgbuf_pktid = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.brcmf_msgbuf_pktids* (i32, i32)* @brcmf_msgbuf_init_pktids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.brcmf_msgbuf_pktids* @brcmf_msgbuf_init_pktids(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.brcmf_msgbuf_pktids*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.brcmf_msgbuf_pktid*, align 8
  %7 = alloca %struct.brcmf_msgbuf_pktids*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.brcmf_msgbuf_pktid* @kcalloc(i32 %8, i32 4, i32 %9)
  store %struct.brcmf_msgbuf_pktid* %10, %struct.brcmf_msgbuf_pktid** %6, align 8
  %11 = load %struct.brcmf_msgbuf_pktid*, %struct.brcmf_msgbuf_pktid** %6, align 8
  %12 = icmp ne %struct.brcmf_msgbuf_pktid* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store %struct.brcmf_msgbuf_pktids* null, %struct.brcmf_msgbuf_pktids** %3, align 8
  br label %30

14:                                               ; preds = %2
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.brcmf_msgbuf_pktids* @kzalloc(i32 16, i32 %15)
  store %struct.brcmf_msgbuf_pktids* %16, %struct.brcmf_msgbuf_pktids** %7, align 8
  %17 = load %struct.brcmf_msgbuf_pktids*, %struct.brcmf_msgbuf_pktids** %7, align 8
  %18 = icmp ne %struct.brcmf_msgbuf_pktids* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load %struct.brcmf_msgbuf_pktid*, %struct.brcmf_msgbuf_pktid** %6, align 8
  %21 = call i32 @kfree(%struct.brcmf_msgbuf_pktid* %20)
  store %struct.brcmf_msgbuf_pktids* null, %struct.brcmf_msgbuf_pktids** %3, align 8
  br label %30

22:                                               ; preds = %14
  %23 = load %struct.brcmf_msgbuf_pktid*, %struct.brcmf_msgbuf_pktid** %6, align 8
  %24 = load %struct.brcmf_msgbuf_pktids*, %struct.brcmf_msgbuf_pktids** %7, align 8
  %25 = getelementptr inbounds %struct.brcmf_msgbuf_pktids, %struct.brcmf_msgbuf_pktids* %24, i32 0, i32 1
  store %struct.brcmf_msgbuf_pktid* %23, %struct.brcmf_msgbuf_pktid** %25, align 8
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.brcmf_msgbuf_pktids*, %struct.brcmf_msgbuf_pktids** %7, align 8
  %28 = getelementptr inbounds %struct.brcmf_msgbuf_pktids, %struct.brcmf_msgbuf_pktids* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.brcmf_msgbuf_pktids*, %struct.brcmf_msgbuf_pktids** %7, align 8
  store %struct.brcmf_msgbuf_pktids* %29, %struct.brcmf_msgbuf_pktids** %3, align 8
  br label %30

30:                                               ; preds = %22, %19, %13
  %31 = load %struct.brcmf_msgbuf_pktids*, %struct.brcmf_msgbuf_pktids** %3, align 8
  ret %struct.brcmf_msgbuf_pktids* %31
}

declare dso_local %struct.brcmf_msgbuf_pktid* @kcalloc(i32, i32, i32) #1

declare dso_local %struct.brcmf_msgbuf_pktids* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.brcmf_msgbuf_pktid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
