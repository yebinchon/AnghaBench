; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_sdio.c_brcmf_sdio_hdpack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_sdio.c_brcmf_sdio_hdpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_sdio = type { i64 }
%struct.brcmf_sdio_hdrinfo = type { i32, i32, i32, i32, i32, i64 }

@SDPCM_HWHDR_LEN = common dso_local global i32 0, align 4
@SDPCM_HWEXT_LEN = common dso_local global i32 0, align 4
@SDPCM_CHANNEL_SHIFT = common dso_local global i32 0, align 4
@SDPCM_CHANNEL_MASK = common dso_local global i32 0, align 4
@SDPCM_DOFFSET_SHIFT = common dso_local global i32 0, align 4
@SDPCM_DOFFSET_MASK = common dso_local global i32 0, align 4
@SDPCM_TX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcmf_sdio*, i32*, %struct.brcmf_sdio_hdrinfo*)* @brcmf_sdio_hdpack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmf_sdio_hdpack(%struct.brcmf_sdio* %0, i32* %1, %struct.brcmf_sdio_hdrinfo* %2) #0 {
  %4 = alloca %struct.brcmf_sdio*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.brcmf_sdio_hdrinfo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.brcmf_sdio* %0, %struct.brcmf_sdio** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.brcmf_sdio_hdrinfo* %2, %struct.brcmf_sdio_hdrinfo** %6, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = load %struct.brcmf_sdio_hdrinfo*, %struct.brcmf_sdio_hdrinfo** %6, align 8
  %11 = getelementptr inbounds %struct.brcmf_sdio_hdrinfo, %struct.brcmf_sdio_hdrinfo* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @brcmf_sdio_update_hwhdr(i32* %9, i32 %12)
  %14 = load i32, i32* @SDPCM_HWHDR_LEN, align 4
  store i32 %14, i32* %8, align 4
  %15 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %4, align 8
  %16 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %53

19:                                               ; preds = %3
  %20 = load %struct.brcmf_sdio_hdrinfo*, %struct.brcmf_sdio_hdrinfo** %6, align 8
  %21 = getelementptr inbounds %struct.brcmf_sdio_hdrinfo, %struct.brcmf_sdio_hdrinfo* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sub nsw i32 %22, %23
  %25 = load %struct.brcmf_sdio_hdrinfo*, %struct.brcmf_sdio_hdrinfo** %6, align 8
  %26 = getelementptr inbounds %struct.brcmf_sdio_hdrinfo, %struct.brcmf_sdio_hdrinfo* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = shl i32 %27, 24
  %29 = or i32 %24, %28
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i64 @cpu_to_le32(i32 %30)
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = bitcast i32* %35 to i64*
  store i64 %31, i64* %36, align 8
  %37 = load %struct.brcmf_sdio_hdrinfo*, %struct.brcmf_sdio_hdrinfo** %6, align 8
  %38 = getelementptr inbounds %struct.brcmf_sdio_hdrinfo, %struct.brcmf_sdio_hdrinfo* %37, i32 0, i32 5
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = shl i32 %40, 16
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i64 @cpu_to_le32(i32 %42)
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = bitcast i32* %47 to i64*
  %49 = getelementptr inbounds i64, i64* %48, i64 1
  store i64 %43, i64* %49, align 8
  %50 = load i32, i32* @SDPCM_HWEXT_LEN, align 4
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, %50
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %19, %3
  %54 = load %struct.brcmf_sdio_hdrinfo*, %struct.brcmf_sdio_hdrinfo** %6, align 8
  %55 = getelementptr inbounds %struct.brcmf_sdio_hdrinfo, %struct.brcmf_sdio_hdrinfo* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* %7, align 4
  %57 = load %struct.brcmf_sdio_hdrinfo*, %struct.brcmf_sdio_hdrinfo** %6, align 8
  %58 = getelementptr inbounds %struct.brcmf_sdio_hdrinfo, %struct.brcmf_sdio_hdrinfo* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @SDPCM_CHANNEL_SHIFT, align 4
  %61 = shl i32 %59, %60
  %62 = load i32, i32* @SDPCM_CHANNEL_MASK, align 4
  %63 = and i32 %61, %62
  %64 = load i32, i32* %7, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %7, align 4
  %66 = load %struct.brcmf_sdio_hdrinfo*, %struct.brcmf_sdio_hdrinfo** %6, align 8
  %67 = getelementptr inbounds %struct.brcmf_sdio_hdrinfo, %struct.brcmf_sdio_hdrinfo* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @SDPCM_DOFFSET_SHIFT, align 4
  %70 = shl i32 %68, %69
  %71 = load i32, i32* @SDPCM_DOFFSET_MASK, align 4
  %72 = and i32 %70, %71
  %73 = load i32, i32* %7, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = call i64 @cpu_to_le32(i32 %75)
  %77 = load i32*, i32** %5, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = bitcast i32* %80 to i64*
  store i64 %76, i64* %81, align 8
  %82 = load i32*, i32** %5, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = bitcast i32* %85 to i64*
  %87 = getelementptr inbounds i64, i64* %86, i64 1
  store i64 0, i64* %87, align 8
  %88 = load i64, i64* @SDPCM_TX, align 8
  %89 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %4, align 8
  %90 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  %93 = xor i1 %92, true
  %94 = xor i1 %93, true
  %95 = zext i1 %94 to i32
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %88, %96
  %98 = load i32*, i32** %5, align 8
  %99 = call i32 @trace_brcmf_sdpcm_hdr(i64 %97, i32* %98)
  ret void
}

declare dso_local i32 @brcmf_sdio_update_hwhdr(i32*, i32) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @trace_brcmf_sdpcm_hdr(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
