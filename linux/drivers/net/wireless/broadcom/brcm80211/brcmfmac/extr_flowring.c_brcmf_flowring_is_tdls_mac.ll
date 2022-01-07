; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_flowring.c_brcmf_flowring_is_tdls_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_flowring.c_brcmf_flowring_is_tdls_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_flowring = type { %struct.brcmf_flowring_tdls_entry* }
%struct.brcmf_flowring_tdls_entry = type { %struct.brcmf_flowring_tdls_entry*, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_flowring*, i32*)* @brcmf_flowring_is_tdls_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_flowring_is_tdls_mac(%struct.brcmf_flowring* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.brcmf_flowring*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.brcmf_flowring_tdls_entry*, align 8
  store %struct.brcmf_flowring* %0, %struct.brcmf_flowring** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32, i32* @ETH_ALEN, align 4
  %8 = zext i32 %7 to i64
  %9 = load %struct.brcmf_flowring*, %struct.brcmf_flowring** %4, align 8
  %10 = getelementptr inbounds %struct.brcmf_flowring, %struct.brcmf_flowring* %9, i32 0, i32 0
  %11 = load %struct.brcmf_flowring_tdls_entry*, %struct.brcmf_flowring_tdls_entry** %10, align 8
  store %struct.brcmf_flowring_tdls_entry* %11, %struct.brcmf_flowring_tdls_entry** %6, align 8
  br label %12

12:                                               ; preds = %24, %2
  %13 = load %struct.brcmf_flowring_tdls_entry*, %struct.brcmf_flowring_tdls_entry** %6, align 8
  %14 = icmp ne %struct.brcmf_flowring_tdls_entry* %13, null
  br i1 %14, label %15, label %28

15:                                               ; preds = %12
  %16 = load %struct.brcmf_flowring_tdls_entry*, %struct.brcmf_flowring_tdls_entry** %6, align 8
  %17 = getelementptr inbounds %struct.brcmf_flowring_tdls_entry, %struct.brcmf_flowring_tdls_entry* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* @ETH_ALEN, align 4
  %21 = call i64 @memcmp(i32 %18, i32* %19, i32 %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  store i32 1, i32* %3, align 4
  br label %29

24:                                               ; preds = %15
  %25 = load %struct.brcmf_flowring_tdls_entry*, %struct.brcmf_flowring_tdls_entry** %6, align 8
  %26 = getelementptr inbounds %struct.brcmf_flowring_tdls_entry, %struct.brcmf_flowring_tdls_entry* %25, i32 0, i32 0
  %27 = load %struct.brcmf_flowring_tdls_entry*, %struct.brcmf_flowring_tdls_entry** %26, align 8
  store %struct.brcmf_flowring_tdls_entry* %27, %struct.brcmf_flowring_tdls_entry** %6, align 8
  br label %12

28:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %28, %23
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i64 @memcmp(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
