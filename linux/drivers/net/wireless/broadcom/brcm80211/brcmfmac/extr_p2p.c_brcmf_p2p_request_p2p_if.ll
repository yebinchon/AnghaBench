; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_p2p.c_brcmf_p2p_request_p2p_if.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_p2p.c_brcmf_p2p_request_p2p_if.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_p2p_info = type { i32 }
%struct.brcmf_if = type { i32 }
%struct.brcmf_fil_p2p_if_le = type { i8*, i8*, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"p2p_ifadd\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_p2p_info*, %struct.brcmf_if*, i32*, i32)* @brcmf_p2p_request_p2p_if to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_p2p_request_p2p_if(%struct.brcmf_p2p_info* %0, %struct.brcmf_if* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.brcmf_p2p_info*, align 8
  %6 = alloca %struct.brcmf_if*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.brcmf_fil_p2p_if_le, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.brcmf_p2p_info* %0, %struct.brcmf_p2p_info** %5, align 8
  store %struct.brcmf_if* %1, %struct.brcmf_if** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* @ETH_ALEN, align 4
  %13 = zext i32 %12 to i64
  %14 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %5, align 8
  %15 = call i32 @brcmf_p2p_get_current_chanspec(%struct.brcmf_p2p_info* %14, i32* %11)
  %16 = getelementptr inbounds %struct.brcmf_fil_p2p_if_le, %struct.brcmf_fil_p2p_if_le* %9, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* @ETH_ALEN, align 4
  %20 = call i32 @memcpy(i32 %17, i32* %18, i32 %19)
  %21 = load i32, i32* %8, align 4
  %22 = call i8* @cpu_to_le16(i32 %21)
  %23 = getelementptr inbounds %struct.brcmf_fil_p2p_if_le, %struct.brcmf_fil_p2p_if_le* %9, i32 0, i32 1
  store i8* %22, i8** %23, align 8
  %24 = load i32, i32* %11, align 4
  %25 = call i8* @cpu_to_le16(i32 %24)
  %26 = getelementptr inbounds %struct.brcmf_fil_p2p_if_le, %struct.brcmf_fil_p2p_if_le* %9, i32 0, i32 0
  store i8* %25, i8** %26, align 8
  %27 = load %struct.brcmf_if*, %struct.brcmf_if** %6, align 8
  %28 = call i32 @brcmf_fil_iovar_data_set(%struct.brcmf_if* %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.brcmf_fil_p2p_if_le* %9, i32 24)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  ret i32 %29
}

declare dso_local i32 @brcmf_p2p_get_current_chanspec(%struct.brcmf_p2p_info*, i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @brcmf_fil_iovar_data_set(%struct.brcmf_if*, i8*, %struct.brcmf_fil_p2p_if_le*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
