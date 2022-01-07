; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_sdio.c_brcmf_sdio_pad.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_sdio.c_brcmf_sdio_pad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_sdio = type { i32, i32, i32 }

@BRCMF_FIRSTREAD = common dso_local global i64 0, align 8
@MAX_RX_DATASZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcmf_sdio*, i32*, i32*)* @brcmf_sdio_pad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmf_sdio_pad(%struct.brcmf_sdio* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.brcmf_sdio*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.brcmf_sdio* %0, %struct.brcmf_sdio** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %4, align 8
  %8 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %66

11:                                               ; preds = %3
  %12 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %4, align 8
  %13 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %66

16:                                               ; preds = %11
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %4, align 8
  %20 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp sgt i32 %18, %21
  br i1 %22, label %23, label %66

23:                                               ; preds = %16
  %24 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %4, align 8
  %25 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %4, align 8
  %30 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = srem i32 %28, %31
  %33 = sub nsw i32 %26, %32
  %34 = load i32*, i32** %5, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %4, align 8
  %38 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp sle i32 %36, %39
  br i1 %40, label %41, label %65

41:                                               ; preds = %23
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %4, align 8
  %45 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %65

48:                                               ; preds = %41
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %5, align 8
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %50, %52
  %54 = sext i32 %53 to i64
  %55 = load i64, i64* @BRCMF_FIRSTREAD, align 8
  %56 = add nsw i64 %54, %55
  %57 = load i64, i64* @MAX_RX_DATASZ, align 8
  %58 = icmp slt i64 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %48
  %60 = load i32*, i32** %5, align 8
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %6, align 8
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, %61
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %59, %48, %41, %23
  br label %89

66:                                               ; preds = %16, %11, %3
  %67 = load i32*, i32** %6, align 8
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %4, align 8
  %70 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = srem i32 %68, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %88

74:                                               ; preds = %66
  %75 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %4, align 8
  %76 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %6, align 8
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %4, align 8
  %81 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = srem i32 %79, %82
  %84 = sub nsw i32 %77, %83
  %85 = load i32*, i32** %6, align 8
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, %84
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %74, %66
  br label %89

89:                                               ; preds = %88, %65
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
