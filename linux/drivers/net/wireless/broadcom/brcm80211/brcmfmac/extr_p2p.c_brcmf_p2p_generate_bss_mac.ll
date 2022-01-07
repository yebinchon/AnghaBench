; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_p2p.c_brcmf_p2p_generate_bss_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_p2p.c_brcmf_p2p_generate_bss_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_p2p_info = type { i32*, i32* }

@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcmf_p2p_info*, i32*)* @brcmf_p2p_generate_bss_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmf_p2p_generate_bss_mac(%struct.brcmf_p2p_info* %0, i32* %1) #0 {
  %3 = alloca %struct.brcmf_p2p_info*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.brcmf_p2p_info* %0, %struct.brcmf_p2p_info** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32*, i32** %4, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load i32*, i32** %4, align 8
  %10 = call i64 @is_zero_ether_addr(i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8, %2
  store i32 1, i32* %5, align 4
  br label %13

13:                                               ; preds = %12, %8
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %3, align 8
  %18 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @eth_random_addr(i32* %19)
  br label %28

21:                                               ; preds = %13
  %22 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %3, align 8
  %23 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* @ETH_ALEN, align 4
  %27 = call i32 @memcpy(i32* %24, i32* %25, i32 %26)
  br label %28

28:                                               ; preds = %21, %16
  %29 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %3, align 8
  %30 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %3, align 8
  %33 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* @ETH_ALEN, align 4
  %36 = call i32 @memcpy(i32* %31, i32* %34, i32 %35)
  %37 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %3, align 8
  %38 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, 2
  store i32 %42, i32* %40, align 4
  %43 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %3, align 8
  %44 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 4
  %47 = load i32, i32* %46, align 4
  %48 = xor i32 %47, 128
  store i32 %48, i32* %46, align 4
  ret void
}

declare dso_local i64 @is_zero_ether_addr(i32*) #1

declare dso_local i32 @eth_random_addr(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
