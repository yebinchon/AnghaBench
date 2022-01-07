; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_bcmsdh.c_brcmf_sdiod_skbuff_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_bcmsdh.c_brcmf_sdiod_skbuff_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_sdio_dev = type { i32 }
%struct.sdio_func = type { i32 }
%struct.sk_buff = type { i32, i64 }

@ENOMEDIUM = common dso_local global i32 0, align 4
@BRCMF_SDIOD_NOMEDIUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_sdio_dev*, %struct.sdio_func*, i32, %struct.sk_buff*)* @brcmf_sdiod_skbuff_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_sdiod_skbuff_write(%struct.brcmf_sdio_dev* %0, %struct.sdio_func* %1, i32 %2, %struct.sk_buff* %3) #0 {
  %5 = alloca %struct.brcmf_sdio_dev*, align 8
  %6 = alloca %struct.sdio_func*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.brcmf_sdio_dev* %0, %struct.brcmf_sdio_dev** %5, align 8
  store %struct.sdio_func* %1, %struct.sdio_func** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.sk_buff* %3, %struct.sk_buff** %8, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = add nsw i32 %13, 3
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = and i32 %15, -4
  store i32 %16, i32* %9, align 4
  %17 = load %struct.sdio_func*, %struct.sdio_func** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i32*
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @sdio_memcpy_toio(%struct.sdio_func* %17, i32 %18, i32* %22, i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @ENOMEDIUM, align 4
  %27 = sub nsw i32 0, %26
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %4
  %30 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %5, align 8
  %31 = load i32, i32* @BRCMF_SDIOD_NOMEDIUM, align 4
  %32 = call i32 @brcmf_sdiod_change_state(%struct.brcmf_sdio_dev* %30, i32 %31)
  br label %33

33:                                               ; preds = %29, %4
  %34 = load i32, i32* %10, align 4
  ret i32 %34
}

declare dso_local i32 @sdio_memcpy_toio(%struct.sdio_func*, i32, i32*, i32) #1

declare dso_local i32 @brcmf_sdiod_change_state(%struct.brcmf_sdio_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
